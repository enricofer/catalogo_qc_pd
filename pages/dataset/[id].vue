
<script lang="ts" setup>

const { id } = useRoute().params;

console.log(id)

const { data } = await useFetch('https://urbanistica.comune.padova.it/dbtman/qc/dataset/' + id + '/');

</script>

<template>
    <div>
        <h2>dataset {{ id }}</h2>
        <div>
            {{ data }}
        </div>
    </div>
</template>
