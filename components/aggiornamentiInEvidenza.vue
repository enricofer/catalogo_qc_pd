<script lang="ts" setup>
    const { data } = await useFetch('https://urbanistica.comune.padova.it/dbtman/qc/var/');
    const inEvidenza = computed(() => { return data.value.result.slice(0,3) })
</script>

<template>
    <div>
        <h2 class="title-xsmall-semi-bold"><span>AGGIORNAMENTI IN EVIDENZA</span></h2>
        <ul class="link-list t-primary">
            <li v-for="aggItem in inEvidenza" :key="aggItem.id" class="mb-3 mt-3"><a class="list-item ps-0 title-medium" :href="'/aggiornamento/' + aggItem.id.toString()"><span>{{ aggItem.data }} {{ aggItem.causale }}</span></a></li>

            <!---->
        </ul>
    </div>
</template>