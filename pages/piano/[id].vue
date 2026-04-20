
<script lang="ts" setup>

const { id } = useRoute().params;

const config = useRuntimeConfig()
const baseAPI = config.public.rapperProxy

console.log(id)

const { data } = await useFetch(baseAPI + 'piano/' + id + '/');

const rootPath = config.app.baseURL

const licenza_link = function(licenza) {
    switch (licenza) {
        case "IODL v2.0":
            return "https://www.dati.gov.it/content/italian-open-data-license-v20";
        case "IODL v1.0":
            return "https://opendefinition.org/licenses-md/inreview/IODL-1.0/";
    }
}

</script>

<template>
    <div>


        <div class="container">

            <div class="row ">
                <div class="col-12 col-lg-10">
                    <div role="navigation" class="cmp-breadcrumbs">
                    <nav aria-label="breadcrumb" class="breadcrumb-container">
                        <ol data-element="breadcrumb" class="breadcrumb p-0">
                        <li class="breadcrumb-item"><a :href="rootPath">Home</a><span class="separator">/</span></li>
                        <li class="breadcrumb-item">
                            <!----><!---->
                        </li>
                        <li v-if="data.tipologia != 'PUA'" class="breadcrumb-item"><a :href="rootPath + 'piani'">Pianificazione Generale</a><span class="separator">/</span></li>
                        <li v-if="data.tipologia == 'PUA'" class="breadcrumb-item"><a :href="rootPath + 'pua'">Pianificazione Attuativa</a><span class="separator">/</span></li>
                        <li class="breadcrumb-item active">{{ id }}</li>
                        <!----><!----><!---->
                        </ol>
                    </nav>

                    </div>
                </div>
            </div>

            <div class="row row-shadow">
                <div class="col-12 col-lg-10">
                <div class="cmp-hero">
                    <section class="bg-white align-items-start">
                        <div class="pt-0 ps-0 pb-4 pb-lg-60">
                            <h1 data-element="page-name" class="text-black">{{ data.tipologia_display }}</h1>
                            <h2 data-element="page-name" class="text-black">{{ data.sottocategoria_display }} {{ data.id_pua }}</h2>
                            <div class="hero-text">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">{{ data.denominazione }}</li>
                                    <li class="list-group-item" v-if="data.descrizione != undefined"><span v-html="data.descrizione"></span></li>
                                    <li class="list-group-item">Fase del procedimento di pianificazione: {{ data.stato }} / {{ data.data_stato }}</li>
                                </ul>
                                <div class="w-100"><pianoMap :piano="data" :tipologia="data.tipologia"></pianoMap></div>
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
                    <h2 class="title-xxlarge mb-4 mt-5 mb-lg-10">Cronologia dell'attività di pianificazione</h2>
                </div>
                <div class="col-12 col-lg-8 pt-30 pt-lg-5 ps-lg-5 order-first order-md-last pb-lg-5">
                    <div class="link-list-wrap">
                    <ul class="link-list t-primary mb-4">
                        <li v-for="(agg, index) in data.iter"  class="mt-3">
                            <a class="list-item ps-0 title-medium" :href="rootPath +'iter/' + agg.id.toString() +'/'" ><span>{{agg.data}} {{ agg.titolo }}</span></a>
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

<style scoped>
scarica {
  background-color: #006242 !important;
  color: white;
  padding-left: 15px;
}
</style>