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
                            <p >
                            <p>Collezione dei dati territoriali liberamente disponibili.</p>
                            <p>&nbsp;</p>
                            </p>
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
                    <h2 class="title-xxlarge mb-4 mt-5 mb-lg-10"> Esplora tutti i dataset </h2>
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
                    <p class="mb-4"><strong>{{ found.items.length }}</strong> servizi trovati in ordine alfabetico </p>
                    <div v-for="(dsItem, index) in found.items" :key="dsItem.id" class="app-card" dataelement="service-link">
                        <datasetItem :ds="dsItem"></DatasetItem>
                    </div>
                    
                    <!---->
                </div>
                <div class="col-12 col-lg-4 pt-30 pt-lg-5 ps-lg-5 order-first order-md-last pb-lg-5">
                    <div class="link-list-wrap">
                    <h2 class="title-xsmall-semi-bold"><span>DATASET IN EVIDENZA</span></h2>
                    <ul class="link-list t-primary">
                        <li class="mb-3 mt-3"><a class="list-item ps-0 title-medium" href="/servizi/giustizia-e-sicurezza-pubblica/albo-pretorio-online"><span>Albo pretorio online</span></a></li>
                        <li class="mb-3 mt-3"><a class="list-item ps-0 title-medium" href="/servizi/anagrafe-e-stato-civile/carta-didentita-elettronica-cie-30"><span>Carta d'identità elettronica - Cie 3.0</span></a></li>
                        <li class="mb-3 mt-3"><a class="list-item ps-0 title-medium" href="/servizi/anagrafe-e-stato-civile/pubblicazioni-di-matrimonio"><span>Pubblicazioni di matrimonio</span></a></li>
                        <li class="mb-3 mt-3"><a class="list-item ps-0 title-medium" href="/servizi/autorizzazioni/richiesta-di-patrocinio-comunale"><span>Richiesta di patrocinio comunale</span></a></li>
                        <li class="mb-3 mt-3"><a class="list-item ps-0 title-medium" href="/servizi/vita-lavorativa/servizio-notifiche-atti"><span>Servizio notifiche atti</span></a></li>
                        <!---->
                    </ul>
                    <!----><!---->
                    </div>
                </div>
                </div>
            </div>
        </div>


    </div>
</template>

