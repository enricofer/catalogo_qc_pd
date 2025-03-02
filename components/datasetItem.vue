<script lang="ts" setup>

const datasetItem = useAttrs().ds

</script>

<template>
    <div>
        <h4>Dataset <a :href="'/dataset/' + datasetItem + '/'">{{ datasetItem }}</a></h4>
    </div>
</template>