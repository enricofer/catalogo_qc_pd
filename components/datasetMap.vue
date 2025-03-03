<script lang="ts" setup>

import Map from 'ol/Map.js';
import View from 'ol/View.js';
import OSM from 'ol/source/OSM.js';
import TileLayer from 'ol/layer/Tile.js';

import { ref, useTemplateRef, onMounted } from 'vue'

const datasetItem = useAttrs().ds;

onMounted(async () => {
    const mapElementRef2 = useTemplateRef("mapElementRef");
    const mapElementRef = ref(null)
    console.log("mapElement2", mapElementRef, mapElementRef.value, mapElementRef2);
    const map = new Map({
        layers: [
            new TileLayer({source: new OSM()}),
        ],
        view: new View({
            center: [0, 0],
            zoom: 2,
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
    @import '~/node_modules/ol/ol.css'
</style>