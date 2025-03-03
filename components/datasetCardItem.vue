<script lang="ts" setup>

const datasetItem = useAttrs().ds

</script>

<template>
    <div>

        <div class="card-wrapper mt-2">
            <div class="card">
                <div class="card-body p-2">
                <small><strong><a class="text-decoration-none" data-element="service-link" :href="'/dataset/' + datasetItem.dataset + '/'">{{ datasetItem.dataset }}</a></strong></small><br/>
                <small class="card-text font-sans-serif">{{ datasetItem.descrizione }}</small>
                </div>
            </div>
        </div>

    </div>
</template>