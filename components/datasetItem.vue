<script lang="ts" setup>

const datasetItem = useAttrs().ds

const rootPath = useRootPath();

</script>

<template>
    <div>
        <div class="cmp-card-latest-messages mb-3 mb-30">
            <div class="card shadow-sm px-4 pt-4 pb-4 rounded">
                <span class="visually-hidden">Dataset:</span><!---->
                <div class="card-body p-0 my-2">
                    <h3 class="green-title-big t-primary mb-8">
                    <a class="text-decoration-none" data-element="service-link" :href="rootPath + 'dataset/' + datasetItem.dataset + '/'">{{ datasetItem.dataset }}</a><!---->
                    </h3>
                    <p class="text-paragraph"> {{ datasetItem.descrizione }} </p>
                    <!---->
                </div>
            </div>
        </div>


    </div>
</template>