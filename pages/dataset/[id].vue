
<script lang="ts" setup>

const { id } = useRoute().params;

console.log(id)

const { data } = await useFetch('https://urbanistica.comune.padova.it/dbtman/qc/dataset/' + id + '/');

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
                            <li class="breadcrumb-item"><a href="/datasets">Dataset</a><span class="separator">/</span></li>
                            <li class="breadcrumb-item active">{{ id }}</li>
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
                            <h1 data-element="page-name" class="text-black">Dataset {{ id }}</h1>
                            <div class="hero-text">
                                <p>{{ data.metadati_selection.Titolo }}</p>
                                <p>Collocazione: {{ data.matrice }}/{{ data.tema }}</p>
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
                    <h2 class="title-xxlarge mb-4 mt-5 mb-lg-10"> Altre informazioni </h2>
                </div>
                <div class="col-12 col-lg-8  pb-lg-50">

                    <br/>
                            <p>{{ data.metadati_selection.Descrizione }}</p>
                            <p>{{ data.tipo }} in formato {{ data.estensione }}</p>
                            <p>hash MD5: {{ data.hash_md5 }}</p>
                            <datasetMap :ds="data"></datasetMap>
                    <!---->
                            <h3><a :href="'https://urbanistica.comune.padova.it/dbtman/qc/download/' + data.id.toString() + '/'">Scarica i dati grezzi</a></h3>
                    <!---->
                </div>
                <div class="col-12 col-lg-4 pt-30 pt-lg-5 ps-lg-5 order-first order-md-last pb-lg-5">
                    <div class="link-list-wrap">
                    <h2 class="title-xsmall-semi-bold"><span>Aggiornamenti del dataset</span></h2>
                    <ul class="link-list t-primary">
                        <li v-for="(agg, index) in data.aggiornamenti" :key="agg.id" class="mb-3 mt-3">
                            <a class="list-item ps-0 title-medium" :href="'/aggiornamento/' + agg.id.toString() +'/'" ><span>{{ agg.data }} {{ agg.causale }}</span></a>
                        </li>

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
