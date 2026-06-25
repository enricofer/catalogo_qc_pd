<script lang="ts" setup>

const config = useRuntimeConfig()

const rootPath = config.app.baseURL


</script>

<template>
    <div>

        <div class="container">

                <div class="row ">
                    <div class="col-12 col-lg-10">
                        <div role="navigation" class="cmp-breadcrumbs">
                        <nav aria-label="breadcrumb" class="breadcrumb-container">
                            <ol data-element="breadcrumb" class="breadcrumb p-0">
                            <li class="breadcrumb-item"><a :href="rootPath">Home</a></li>
                            </ol>
                        </nav>
                        </div>
                    </div>
                </div>

            <div class="row">
                <div class="col-12 col-lg-10">
                <div class="cmp-hero">
                    <section class="it-hero-wrapper bg-white align-items-start">
                        <div class="it-hero-text-wrapper pt-0 ps-0 pb-4 pb-lg-60">
                            <h1 data-element="page-name" class="text-black">Settore Urbanistica e servizi catastali</h1>
                            <div class="hero-text">
                            <!--<p>Attività di pianificazione</p>
                            <small>Quadro conoscitivo ai sensi della L.R. 11/2004.</small>-->
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
                    <h2 class="title-xxlarge mb-4 mt-5 mb-lg-10"> Attività in evidenza </h2>
                </div>

                <div class="col-12 col-lg-4 pt-30 pt-lg-5 ps-lg-3 order-first order-md-last pb-lg-1">
                    <div class="link-list-wrap">
                        <pianiInEvidenza></pianiInEvidenza>
                    </div>
                </div>

                <div class="col-12 col-lg-4 pt-30 pt-lg-5 ps-lg-3 order-first order-md-last pb-lg-1">
                    <div class="link-list-wrap">
                        <puaInEvidenza></puaInEvidenza>
                    </div>
                </div>

                <div class="col-12 col-lg-4 pt-30 pt-lg-5 ps-lg-3 order-first order-md-last pb-lg-1">
                    <div class="link-list-wrap">
                        <datasetInEvidenza></datasetInEvidenza>
                    </div>
                </div>

                </div>
            </div>
        </div>


    </div>
</template>

