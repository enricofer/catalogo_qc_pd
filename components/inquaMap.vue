<script lang="ts" setup>

import proj4 from 'proj4';
import {register} from 'ol/proj/proj4.js';
import {getCenter} from 'ol/extent';
import Map from 'ol/Map.js';
import View from 'ol/View.js';
import OSM from 'ol/source/OSM.js';
import TileLayer from 'ol/layer/Tile.js';
import TileWMS from 'ol/source/TileWMS.js';
import VectorSource from 'ol/source/Vector.js';
import VectorLayer from 'ol/layer/Vector.js';
import Collection from 'ol/Collection.js';
import {Circle, Fill, Stroke, Style} from 'ol/style.js';
import GeoJSON from 'ol/format/GeoJSON.js';
import {buffer} from 'ol/extent';
import LayerSwitcher from "ol-ext/control/LayerSwitcher"

import { ref, useTemplateRef, onMounted, reactive } from 'vue'

const pianoItem = useAttrs().piano;
const tipologia = useAttrs().tipologia;

const queryResult = reactive({
    features: []
})

const config = useRuntimeConfig()
const baseAPI = config.public.rapperProxy // see nuxt.config.ts

const rootPath = config.app.baseURL

const { data } = await useFetch(baseAPI + 'piano/');

onMounted(async () => {

    const mapElementRef2 = useTemplateRef("mapElementRef");
    const mapElementRef = ref(null)
    console.log("mapElement2", mapElementRef, mapElementRef.value, mapElementRef2);

    proj4.defs("EPSG:3003","+proj=tmerc +lat_0=0 +lon_0=9 +k=0.9996 +x_0=1500000 +y_0=0 +ellps=intl +towgs84=-104.1,-49.1,-9.9,0.971,-2.917,0.714,-11.68 +units=m +no_defs");
    register(proj4);
    const pdExtent = [1716014, 5023919, 1737137, 5038662];

    const pi_lyr = new TileLayer({
        //extent: pdExtent,
        title: 'Piano degli Interventi vigente',
        visible: false,
        baseLayer: true,
        source: new TileWMS({
            url: 'https://urbanistica.comune.padova.it/mapproxy',
            projection: 'EPSG:3003',
            params: {layers: 'PI2030'}
        })
    });

    const styles = {
        PUA: new Style({
            stroke: new Stroke({
            color: 'red',
            width: 2
            })
        }),
        PI: new Style({
            stroke: new Stroke({
            color: 'blue',
            width: 2
            })
        }),
        PAT: new Style({
            stroke: new Stroke({
            color: 'blue',
            width: 2
            })
        })
    };

    let features = []
    data.value.piani.forEach((item, index) => {
        features.push({
            type: "Feature",
            geometry: JSON.parse(item.geometry),
            properties: {
                tipo: item.tipologia,
                id: item.id_pua,
            }
        })
    });

    const pianiVector =  {
        type: "FeatureCollection",
        features: features
    }
    
    console.log("piani", JSON.stringify(pianiVector));

    function polygonStyleFunction(feature, resolution) {
        return styles[feature.get('tipo')];
    }

    const perimetri= new VectorLayer({
        source: new VectorSource({
            /*format: ol.format.GeoJSON(),*/
            //url: params.polyJSON
            features: new Collection( new GeoJSON().readFeatures(JSON.stringify(pianiVector)) )//
        }),
        title: 'Perimetri dei piani',
        style: polygonStyleFunction
    });

    const base_lyr = new TileLayer({
        //extent: pdExtent,
        title: 'DB topografico',
        visible: true,
        baseLayer: true,
        source: new TileWMS({
            url: 'https://urbanistica.comune.padova.it/mapproxy',
            projection: 'EPSG:3003',
            params: {layers: 'PI2030_base'}
        })
    });

    const base_osm = new TileLayer({
      className: 'bw',
      title: 'OpenStreetMap',
      baseLayer: true,
      visible: false,
      source: new OSM(),
    });

    let layers = [
        base_osm,
        pi_lyr,
        base_lyr,
        perimetri
    ]

    const map = new Map({
        layers: layers,
        view: new View({
            center: getCenter(pdExtent),
            zoom: 12,
            projection: 'EPSG:3003',
        }),
        target: 'mapa'
    });


    const switcher = new LayerSwitcher;
    map.addControl(switcher);

    map.getView().fit(buffer(perimetri.getSource().getExtent(),50));
    //map.getView().fit(pdExtent)
})

</script>

<template>
    <div>
        <div class="container">
            <div class="row">
                <div id="mapa" ref="mapElementRef" class="col-8 p-0" style="height: 600px;background-color: rgb(235, 238, 240);"></div>
            </div>
        </div>
    </div>
</template>

<style>
    @import '~/node_modules/ol/ol.css';
    @import '~/node_modules/ol-ext/dist/ol-ext.css';

    .hero-text {
        max-width: unset !important;
    } 

    .ol-layerswitcher .panel li label span {
        color: black !important;
    } 

</style>

<style scoped>
</style>