<script lang="ts" setup>
import { ref, reactive } from 'vue';

const { data } = await useFetch('https://urbanistica.comune.padova.it/dbtman/qc/dataset/');

data.value.pagina = useAttrs().pag || 1

data.value.itemPerPag = 20;

const sfoglia = (step) => {
    const fromItem = (data.value.pagina + step) * data.value.itemPerPag;
    const toItem = fromItem + data.value.itemPerPag;

    if (fromItem >= 0 && toItem <= data.value.result.length) {
        data.value.pagina += step;
    }
};


</script>

<template>
    <div>

        <datasetPag :data="data.value"></datasetPag>
        <a @click="sfoglia(-1)"><</a>|<a @click="sfoglia(1)">></a>

    </div>
</template>

