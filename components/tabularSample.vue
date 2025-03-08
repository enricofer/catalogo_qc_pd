<script lang="ts" setup>

const features = useAttrs().features;
console.log(features)
const fieldNames = features[0].properties


</script>

<template>
    <div>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th v-for="([field, value]) in Object.entries(fieldNames)" :key="field" scope="col">{{ field }}</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="feat in features" :key="feat" >
                        <th v-for="([field, value]) in Object.entries(feat.properties)" :key="field" scope="row"><small>{{ value }}</small></th>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>