<script lang="ts" setup>

const atto = useAttrs().rif
const data = useAttrs().data
const link = useAttrs().link
const config = useRuntimeConfig()

console.log("atto", atto,data,link, !link)

function formatAtto() {
    let attomod = atto
    if (!atto) {
        attomod = 'Atto'
    }
    if (atto.toUpperCase().includes('DCC')) {
        attomod = atto.toUpperCase().replace('DCC', 'Deliberazione di Consiglio Comunale');
    }
    if (atto.toUpperCase().includes('DGC')) {
        attomod = atto.toUpperCase().replace('DGC', 'Deliberazione di Giunta Comunale');
    }
    if (atto.toUpperCase().includes('DET')) {
        attomod = attomod.toUpperCase().replace('DET', 'Determinazione Dirigenziale');
    }

    let post = '';
    if (data) {
        post = ' del ' + data;
    }

    return attomod + post;

}

</script>

<template>
    <div>
        <a v-if="link" :href="config.public.downloadHelper + atto" target="_blank" rel="noopener noreferrer">{{ formatAtto() }}</a>
        <div v-if="!link" >{{ formatAtto() }}</div>
    </div>
</template>