<script lang="ts" setup>

const aggItem = useAttrs().var

const rootPath = useRootPath();

</script>

<template>
    <div>

        <div class="cmp-card-latest-messages mb-3 mb-30">
            <div class="card shadow-sm px-4 pt-4 pb-4 rounded">
                <span class="visually-hidden">{{ aggItem.data }}</span><!---->
                <div class="card-body p-0 my-2">
                    <h3 class="green-title-big t-primary mb-8">
                    <a class="text-decoration-none" data-element="service-link" :href="rootPath + 'aggiornamento/' + aggItem.id + '/'">{{ aggItem.data }}</a><!---->
                    </h3>
                    <p class="text-paragraph"> {{ aggItem.causale }} </p>
                    <p class="text-paragraph pt-2"> Dataset aggiornati: </p>
                    <div class="row">
                        <div class="col-12 col-lg-4" v-for="dsItem in aggItem.datasets" :key="dsItem">
                                <datasetCardItem :ds="dsItem"></DatasetCardItem>
                        </div>
                    </div>
                    <!---->
                </div>
            </div>
        </div>

    </div>
</template>