<script lang="ts" setup>

import proj4 from 'proj4';
import {register} from 'ol/proj/proj4.js';
import {getCenter} from 'ol/extent';
import Map from 'ol/Map.js';
import View from 'ol/View.js';
import OSM from 'ol/source/OSM.js';
import TileLayer from 'ol/layer/Tile.js';
import TileWMS from 'ol/source/TileWMS.js';

import { ref, useTemplateRef, onMounted } from 'vue'

const datasetItem = useAttrs().ds;

onMounted(async () => {
    const mapElementRef2 = useTemplateRef("mapElementRef");
    const mapElementRef = ref(null)
    console.log("mapElement2", mapElementRef, mapElementRef.value, mapElementRef2);

    proj4.defs("EPSG:3003","+proj=tmerc +lat_0=0 +lon_0=9 +k=0.9996 +x_0=1500000 +y_0=0 +ellps=intl +towgs84=-104.1,-49.1,-9.9,0.971,-2.917,0.714,-11.68 +units=m +no_defs");
    register(proj4);
    const pdExtent = [1716014, 5023919, 1737137, 5038662];

    const ds_lyr = new TileLayer({
        //extent: pdExtent,
        //title: datasetItem.dataset,
        visible: true,
        //type: 'base',
        source: new TileWMS({
            url: 'https://urbanistica.comune.padova.it/dbtman/qs/?MAP=/dati/QC/99_SERVIZI/qc.qgs',
            projection: 'EPSG:3003',
            params: {layers: datasetItem.dataset,format:'image/png',CRS:'EPSG:3003'}
        })
    });

    const base_lyr = new TileLayer({
        //extent: pdExtent,
        //title: 'base',
        visible: true,
        type: 'base',
        source: new TileWMS({
            url: 'https://urbanistica.comune.padova.it/mapproxy',
            projection: 'EPSG:3003',
            params: {layers: 'DBT'}
        })
    });

    const base_osm = new TileLayer({
      className: 'bw',
      source: new OSM(),
    });

    const map = new Map({
        layers: [
            base_osm,
            ds_lyr
        ],
        view: new View({
            center: getCenter(pdExtent),
            zoom: 12,
            projection: 'EPSG:3003',
        }),
        target: 'mapa'
    });
})

</script>

<template>
    <div>
        <div id="mapa" ref="mapElementRef" style="width: 100%; height: 400px"></div>
    </div>
</template>

<style>
    @import '~/node_modules/ol/ol.css';

    .bw {
        filter: grayscale(90%);
    };
</style>