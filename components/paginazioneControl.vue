<script lang="ts" setup>

const state = useAttrs().state

const msg = useAttrs().msg

const sfoglia = (step) => {
    console.log("SFOGLIA1")
    state.fromItem += state.itemPerPag * step;
    state.toItem = state.fromItem + state.itemPerPag;

    if ( state.fromItem < 0 ) {
        state.fromItem = 0;
        state.toItem = state.itemPerPag -1
    }

    if ( state.toItem > state.num_items -1) {
        state.fromItem -= state.itemPerPag * step;
        state.toItem = state.num_items - 1;
    }

    console.log("SFOGLIA2", step, state.num_items, state.fromItem, state.toItem )
    search()
};

</script>

<template>
    <div>

        <div class="container pb-4" style="padding-right: 0; padding-left: 0;">
            <div class="row">
                <div class="col-7" >
                    <span v-if="msg"><strong>{{ state.num_items }}</strong> {{ msg }}</span>
                </div>
                <div class="col-1">
                </div>
                <div class="float-right col-4" style="justify-content: flex-end;display: flex;">
                        da {{ state.fromItem + 1 }} a {{ state.toItem }}<a href="#" @click="sfoglia(-1)"><img src="~/bootstrap-icons/icons/caret-left-fill.svg" alt="Bootstrap" width="20" height="20"></a>|<a href="#" @click="sfoglia(1)"><img src="~/bootstrap-icons/icons/caret-right-fill.svg" alt="Bootstrap" width="20" height="20"></a>
                </div>
            </div>
        </div>


    </div>
</template>