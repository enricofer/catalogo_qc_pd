<script lang="ts" setup>
import { ref, reactive } from 'vue';

const { data } = await useFetch('https://urbanistica.comune.padova.it/dbtman/qc/var/');

const searchTerm = defineModel();

const filterItems = (filter) => {
    const items = [];
    data.value.result.forEach(function (item, index) {
        let bindInfo = JSON.stringify(item);
        if (filter == "" || bindInfo.toLowerCase().includes(searchTerm.value.toLowerCase()) ) {
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
        <h2>Aggiornamenti</h2>
        <input type="text" v-model="searchTerm" v-on:input="search" >
        <div>
            <ul>
                <li v-for="(aggItem, index) in found.items" :key="aggItem.id">
                    <aggiornamentoItem :var="aggItem"></aggiornamentoItem>
                
                </li>
            </ul>
        </div>
    </div>
</template>

