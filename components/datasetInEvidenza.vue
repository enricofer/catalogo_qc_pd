<script lang="ts" setup>
    const config = useRuntimeConfig()
    const baseAPI = config.public.rapperProxy // see nuxt.config.ts
    const { data } = await useFetch(baseAPI + 'qc/dataset/');
    const rootPath = config.app.baseURL
</script>

<template>
    <div>
        <h2 class="title-small-semi-bold"><span>QUADRO CONOSCITIVO</span></h2>
        <ul class="link-list t-primary">
            <li v-for="item in data.trending" :key="item.id" class="mb-3 mt-3"><a class="list-item ps-0 title-medium" :href="rootPath + 'dataset/'+item.dataset"><span>{{ item.dataset }}<br/>{{ item.descrizione }}</span></a></li>

            <!---->
        </ul>
    </div>
</template>