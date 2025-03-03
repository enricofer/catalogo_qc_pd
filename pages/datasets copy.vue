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

        <div class="container">
            
            <div id="main-container" class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-10">
                        <div role="navigation" class="cmp-breadcrumbs">
                        <nav aria-label="breadcrumb" class="breadcrumb-container">
                            <ol data-element="breadcrumb" class="breadcrumb p-0">
                            <li class="breadcrumb-item"><a href="/">Home</a><span class="separator">/</span></li>
                            <li class="breadcrumb-item">
                                <!----><!---->
                            </li>
                            <li class="breadcrumb-item active">Dataset</li>
                            <!----><!----><!---->
                            </ol>
                        </nav>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row justify-content-center row-shadow">
                <div class="col-12 col-lg-10">
                <div class="cmp-hero">
                    <section class="it-hero-wrapper bg-white align-items-start">
                        <div class="it-hero-text-wrapper pt-0 ps-0 pb-4 pb-lg-60">
                            <h1 data-element="page-name" class="text-black">Datasets</h1>
                            <div class="hero-text">
                            <p>Catalogo dei dati territoriali.</p>
                            <small>Quadro conoscitivo ai sensi della L.R. 11/2004</small>
                            </div>
                            <!---->
                        </div>
                    </section>
                </div>
                </div>
            </div>
        </div>
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

