
<script lang="ts" setup>

const { id } = useRoute().params;

const config = useRuntimeConfig()
const baseAPI = config.public.rapperProxy

const { data } = await useFetch(baseAPI + 'iter/' + id + '/');

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

                <div class="row">
                    <div class="col-12 col-lg-10">
                        <div role="navigation" class="cmp-breadcrumbs">
                        <nav aria-label="breadcrumb" class="breadcrumb-container">
                            <ol data-element="breadcrumb" class="breadcrumb p-0">
                            <li class="breadcrumb-item"><a :href="rootPath">Home</a><span class="separator">/</span></li>
                            <li class="breadcrumb-item">
                                <!----><!---->
                            </li>
                            <li class="breadcrumb-item"><a :href="rootPath + 'iterapp'">Iter di approvazione</a><span class="separator">/</span></li>
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
                            <h1 data-element="page-name" class="text-black">{{ data.pua.tipologia_display }}</h1>
                            <h3 data-element="page-name" class="text-black">{{ data.pua.sottocategoria_display }}</h3>
                            <a class="list-item ps-0 title-medium" :href="rootPath +'piano/' + data.pua.id_pua +'/'" ><h3 data-element="page-name" class="text-black">{{ data.pua.id_pua }} {{ data.pua.denominazione }}</h3></a>
                            <div class="hero-text">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">{{ data.titolo }}</li>
                                    <li class="list-group-item">{{ data.descrizione }}</li>
                                    <li class="list-group-item"><atto :rif="data.rif_atto" :data="data.data" ></atto></li>
                                </ul>
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
                
                            
                <div class="col-12 col-lg-4 pt-30 pt-lg-5 ps-lg-5 order-first order-md-last pb-lg-5">
                    <div class="link-list-wrap">
                    <h3 class="title-xlarge mb-4 mt-5 mb-lg-10"><span>Piano</span></h3>
                    <ul class="link-list t-primary">
                        <li class="mb-3 mt-3">
                            <a class="list-item ps-0 title-medium" :href="rootPath +'piano/' + data.pua.id_pua +'/'" ><span>{{ data.pua.id_pua }} {{ data.pua.denominazione }} </span></a>
                        </li>
                    </ul>

                    <h3 v-if="data.allegati" class="title-xlarge mb-4 mt-5 mb-lg-10"><span>Allegati:</span></h3>
                    <ul class="link-list t-primary">
                        <li v-for="(allegato, index) in data.allegati" class="mb-3 mt-3">
                            <a class="list-item ps-0 title-medium" :href="config.public.downloadHelper + allegato.documento" target="_blank" rel="noopener noreferrer"><span>{{ index }}) {{ allegato.tipo_display }}</span></a>
                        </li>

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