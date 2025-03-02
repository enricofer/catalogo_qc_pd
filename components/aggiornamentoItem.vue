<script lang="ts" setup>

const aggItem = useAttrs().var

</script>

<template>
    <div>
        <h3>Aggiornamento del {{ aggItem.data }}</h3>
        <ul>
            <li>{{ aggItem.causale }}</li>
            <li v-for="dsItem in aggItem.datasets" :key="dsItem">
                    <datasetItem :ds="dsItem"></DatasetItem>
            </li>
        </ul>
    </div>
</template>