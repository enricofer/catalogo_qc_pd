<script lang="ts" setup>
    const config = useRuntimeConfig()
    const baseAPI = config.public.rapperProxy // see nuxt.config.ts
    const { data } = await useFetch(baseAPI + 'piano/');
    const inEvidenza = computed(() => { return data.value.piani.slice(0,8) })
    const rootPath = config.app.baseURL
    console.log(inEvidenza)
</script>

<template>
    <div>
        <h2 class="title-small-semi-bold"><span>PIANIFICAZIONE</span></h2>
        <ul class="link-list t-primary">
            <li v-for="item in inEvidenza" :key="item.id" class="mb-3 mt-3"><a class="list-item ps-0 title-medium" :href="rootPath + 'piano/' + item.id_pua"><span>{{ item.denominazione }}</span></a></li>

            <!---->
        </ul>
    </div>
</template>