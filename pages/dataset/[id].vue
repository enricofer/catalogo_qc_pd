
<script lang="ts" setup>

const { id } = useRoute().params;

console.log(id)

const { data } = await useFetch('https://urbanistica.comune.padova.it/dbtman/qc/dataset/' + id + '/');

const rootPath = useRootPath();

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
                            <li class="breadcrumb-item"><a :href="rootPath">Home</a><span class="separator">/</span></li>
                            <li class="breadcrumb-item">
                                <!----><!---->
                            </li>
                            <li class="breadcrumb-item"><a :href="rootPath + 'catalogo'">Catalogo</a><span class="separator">/</span></li>
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
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">{{ data.metadati_selection.Titolo }}</li>
                                    <li class="list-group-item">{{ data.metadati_selection.Descrizione }}</li>
                                    <li class="list-group-item">Collocazione: {{ data.matrice }}/{{ data.tema }}</li>
                                    <li v-if="data.aggiornamenti.length > 0" class="list-group-item">Aggiornamento: {{ data.aggiornamenti[0].causale }} del <a :href="'/aggiornamento/' + data.aggiornamenti[0].id">{{ data.aggiornamenti[0].data }}</a></li>
                                    <li class="list-group-item">hash MD5: {{ data.hash_md5 }} </li>
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
                <div class="col-12">
                    <h2 class="title-xxlarge mb-4 mt-5 mb-lg-10"> Altre informazioni </h2>
                </div>
                <div class="col-12 col-lg-8  pb-lg-50">

                    <br/>

                            

                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Licenza d'uso: {{ data.licenza }}</li>
                        <li class="list-group-item">                            

                                
                                <span  v-if="data.tipo == 'cartella'">Cartella di dati non strutturati </span>  
                                <span  v-if="data.tipo == 'dati sciolti'">Dati strutturati in formato {{ data.estensione }} </span>  
                                <span class="badge badge-warning pl-2 ml-2" style="background-color: #006242; margin-left:10px;" ><a style="color: white;" :href="'https://urbanistica.comune.padova.it/dbtman/qc/download/' + data.id.toString() + '/'">Download</a></span>

                        </li>
                        <li class="list-group-item">Servizio {{ data.tipo_servizio }} Online : {{ data.servizio }}</li>
                        <li class="list-group-item"><datasetMap v-if="data.estensione == 'shp'" :ds="data"></datasetMap></li>

                    </ul>
                    <!---->
                            
                    <!---->
                </div>
                <div class="col-12 col-lg-4 pt-30 pt-lg-5 ps-lg-5 order-first order-md-last pb-lg-5">
                    <div class="link-list-wrap">
                    <h2 class="title-small-semi-bold"><span>AGGIORNAMENTI DEL DATASET</span></h2>
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

<style scoped>
scarica {
  background-color: #006242 !important;
  color: white;
  padding-left: 15px;
}
</style>