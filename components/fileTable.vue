<script lang="ts" setup>

const files = useAttrs().files;

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
                    <tr v-for="f in files" :key="f" >
                        <th v-for="([field, value]) in Object.entries(f)" :key="field" scope="row"><small>{{ value }}</small></th>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>