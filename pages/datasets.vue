<script lang="ts" setup>
import { ref, reactive } from 'vue';

const { data } = await useFetch('https://urbanistica.comune.padova.it/dbtman/qc/dataset/');

const searchTerm = defineModel();

const filterItems = (filter) => {
    const items = [];
    data.value.result.forEach(function (item, index) {
        if (filter == "" || item.dataset.toLowerCase().includes(searchTerm.value.toLowerCase()) ) {
            items.push(item);
        };
    });
    return items
};

const found = reactive({
    items: filterItems("")
})

const search = () => {
    found.items = filterItems(searchTerm.value)
};

</script>

<template>
    <div>
        <h2>datasets</h2>
        <input type="text" v-model="searchTerm" v-on:input="search" >
        <div>
            <ul>
                <li v-for="(dsItem, index) in found.items" :key="dsItem.id">
                    <datasetItem :ds="dsItem.dataset"></DatasetItem>
                
                </li>
            </ul>
        </div>
    </div>
</template>

