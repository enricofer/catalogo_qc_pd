<script lang="ts" setup>

const files = useAttrs().files;
const base = useAttrs().base;

console.log(files)
console.log(base)

function download_single_file(f) {
    console.log(base + f.filename + "/")
    window.open(base + f.filename + "/", "_blank");
}

</script>

<template>
    <div>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">File</th>
                        <th scope="col">Bytes</th>
                        <th scope="col">Modificato</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="f in files" :key="f" v-on:click="download_single_file(f)">
                        <th v-for="([field, value]) in Object.entries(f)" :key="field" scope="row"><small>{{ value }}</small></th>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>