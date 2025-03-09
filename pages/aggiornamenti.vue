<script lang="ts" setup>
import { ref, reactive } from 'vue';

const { data } = await useFetch('https://urbanistica.comune.padova.it/dbtman/qc/var/');

const inEvidenza = computed(() => { return data.value.result.slice(0,3) })

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
                            <li class="breadcrumb-item active">Aggiornamenti</li>
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
                            <h1 data-element="page-name" class="text-black">Aggiornamenti del Quadro Conoscitivo</h1>
                            <div class="hero-text">
                            <p>Ai sensi dell'art. 12 della L.R. 11/2004</p>
                            </div>
                            <!---->
                        </div>
                    </section>
                </div>
                </div>
            </div>
            </div>

            <div class="bg-grey-card">
            <div class="container">
                <div class="row">
                <div class="col-12">
                    <h2 class="title-xxlarge mb-4 mt-5 mb-lg-10"> Esplora tutti gli aggiornamenti </h2>
                </div>
                <div class="col-12 col-lg-8 pt-lg-50 pb-lg-50">
                    <div class="cmp-input-search">
                        <div class="form-group autocomplete-wrapper mb-2 mb-lg-4">
                            <div class="input-group">
                            <label for="autocomplete-autocomplete-three" class="visually-hidden">Cerca una parola chiave</label>
                            <input v-model="searchTerm" v-on:input="search" type="search" placeholder="Cerca una parola chiave" id="autocomplete-autocomplete-three" name="autocomplete-three" class="autocomplete form-control">
                            <div class="input-group-append"><button type="button" id="button-3" class="btn btn-primary"> Invio </button></div>
                            <span aria-hidden="true" class="autocomplete-icon">
                                <svg class="icon icon-sm icon-primary">
                                <use href="/bootstrap-italia/svg/sprites.svg#it-search"></use>
                                </svg>
                            </span>
                            </div>
                        </div>
                    </div>
                    <!---->
                    <p class="mb-4"><strong>{{ found.items.length }}</strong> aggiornamenti trovati in ordine cronologico </p>
                    <div v-for="(aggItem, index) in found.items" :key="aggItem.id" class="app-card" dataelement="service-link">
                        <aggiornamentoItem :var="aggItem"></aggiornamentoItem>
                    </div>
                    
                    <!---->
                </div>
                <div class="col-12 col-lg-4 pt-30 pt-lg-5 ps-lg-5 order-first order-md-last pb-lg-5">
                    <div class="link-list-wrap">
                    <aggiornamentiInEvidenza></aggiornamentiInEvidenza>
                    </div>
                </div>
                </div>
            </div>
        </div>

    </div>
</template>

