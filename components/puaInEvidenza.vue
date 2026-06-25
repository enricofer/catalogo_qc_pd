<script lang="ts" setup>
    const config = useRuntimeConfig()
    const baseAPI = config.public.rapperProxy // see nuxt.config.ts
    const { data } = await useFetch(baseAPI + 'iter/?tipologia=PUA');
    const inEvidenza = computed(() => { return data.value.pubblicazioni.slice(0,8) })
    const rootPath = config.app.baseURL
</script>

<template>
    <div>
        <h2 class="title-small-semi-bold"><span>PIANIFICAZIONE ATTUATIVA</span></h2>
        <ul class="link-list t-primary">
            <li v-for="item in inEvidenza" :key="item.id" class="mb-3 mt-3"><a class="list-item ps-0 title-medium" :href="rootPath + 'piano/' + item.id_pua"><span>{{ item.denominazione }}</span></a></li>

            <!---->
        </ul>
    </div>
</template>