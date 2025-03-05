
<script lang="ts" setup>

const { id } = useRoute().params;

console.log(id)

const { data } = await useFetch('https://urbanistica.comune.padova.it/dbtman/qc/var/' + id + '/');

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
                            <li class="breadcrumb-item"><a href="/aggiornamenti">Aggiornamenti</a><span class="separator">/</span></li>
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
                            <h1 data-element="page-name" class="text-black">Aggiornamento del {{ data.data }}</h1>
                            <div class="hero-text">
                                <p>{{ data.causale }}</p>
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
                    <h2 class="title-xxlarge mb-4 mt-5 mb-lg-10"> Dataset correlati </h2>
                </div>
                <div class="col-12 col-lg-8  pb-lg-50">

                    <div class="row">
                        <div class="col-12 col-lg-4" v-for="dsItem in data.datasets" :key="dsItem">
                                <datasetCardItem :ds="dsItem"></DatasetCardItem>
                        </div>
                    </div>

                </div>
                <div class="col-12 col-lg-4 pt-30 pt-lg-5 ps-lg-5 order-first order-md-last pb-lg-5">
                    <div class="link-list-wrap">
                        <aggiornamentiInEvidenza id="0"></aggiornamentiInEvidenza>
                    </div>
                </div>
                </div>
            </div>
        </div>

    </div>
</template>
