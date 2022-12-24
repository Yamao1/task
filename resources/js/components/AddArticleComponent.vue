<template>
    <div class="row">
        <form @submit.prevent="submit_form" :class="{mx_form_inv: formInv}">
            <div class="bform py-5">
                <!-- Row -->
                <div class="row">
                    <div class="container">
                        <div class="col-lg-6 align-justify-center pr-4 pl-0 contact-form">
                            <div class="">
                                <h2 class="mb-3 font-weight-light">Add New Post</h2>
                                <form class="mt-3">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="name"
                                                       v-model="name">
                                                <div class="alert alert-warning" role="alert" v-if="errorMessage.title">
                                                    {{errorMessage.title[0]}}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <input class="form-control" type="email" placeholder="email address"
                                                       v-model="email">
                                                <div class="alert alert-warning" role="alert" v-if="errorMessage.body">
                                                    {{errorMessage.body[0]}}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Text"
                                                       v-model="text">
                                                <div class="alert alert-warning" role="alert" v-if="errorMessage.slug">
                                                    {{errorMessage.slug[0]}}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <button type="submit"
                                                    class="btn btn-md btn-block btn-danger-gradiant text-white border-0">
                                                <span> Create Account</span></button>
                                            <!-- -->
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="btn btn-success" type="submit">Отправить</button>
        </form>
        <b-container fluid>
            <!-- User Interface controls -->
            <b-row>
                <b-col sm="5" md="6" class="my-1">
                    <b-form-group
                        label="Per page"
                        label-for="per-page-select"
                        label-cols-sm="6"
                        label-cols-md="4"
                        label-cols-lg="3"
                        label-align-sm="right"
                        label-size="sm"
                        class="mb-0">
                        <b-form-select
                            id="per-page-select"
                            v-model="perPage"
                            :options="pageOptions"
                            size="sm"
                        ></b-form-select>
                    </b-form-group>
                </b-col>

                <b-col sm="7" md="6" class="my-1">
                    <b-pagination
                        v-model="currentPage"
                        :total-rows="totalRows"
                        :per-page="perPage"
                        align="fill"
                        size="sm"
                        class="my-0"
                    ></b-pagination>
                </b-col>
            </b-row>
            <!-- Main table element -->
            <b-table
                :items="articles"
                :fields="fields"
                :current-page="currentPage"
                :per-page="perPage"
                :filter="filter"
                :filter-included-fields="filterOn"
                :sort-by.sync="sortBy"
                :sort-desc.sync="sortDesc"
                :sort-direction="sortDirection"
                stacked="md"
                show-empty
                small
                @filtered="onFiltered">
                <template #cell(name)="row">
                    {{ row.value.first }} {{ row.value.last }}
                </template>

                <template #row-details="row">
                    <b-card>
                        <ul>
                            <li v-for="(value, key) in row.item" :key="key">{{ key }}: {{ value }}</li>
                        </ul>
                    </b-card>
                </template>
            <template #cell(actions)="row" v-for="article of articles">
                    <b-button :href="('/articles/'+ article.slug)" class="mr-1">
                        More
                    </b-button>
                </template>
            </b-table>
        </b-container>
    </div>
</template>
<script>
export default {
    data() {
        return {
            totalRows: 1,
            currentPage: 1,
            perPage: 5,
            pageOptions: [5, 10, 15, { value: 100, text: "Show a lot" }],
            sortBy: '',
            sortDesc: false,
            sortDirection: 'asc',
            filter: null,
            filterOn: [],
            fields: [
                { key: 'title', label: 'Article', sortable: true, sortDirection: 'desc' },
                { key: 'body', label: 'email', sortable: true, class: 'text-center' },
                { key: 'slug', label: 'Text', sortable: true, class: 'text-center' },
                {

                    formatter: (value, key, item) => {
                        return value ? 'Yes' : 'No'
                    },
                    sortable: true,
                    sortByFormatted: true,
                    filterByFormatted: true
                },
                { key: 'actions', label: 'Actions' }
            ],
            formInv:false,
            name: '',
            email: '',
            text: ''
        }
    },
    computed: {

        articles(){
            return this.$store.state.article.articles;
        },
        commentSuccess() {
            return this.$store.state.article.commentSuccess;
        },
        errorMessage(){
            return this.$store.state.article.errors;
        },


    },
    methods: {
        onFiltered(articles) {
            // Trigger pagination to update the number of buttons/pages due to filtering
            this.totalRows = articles.length
            this.currentPage = 1
        },
        submit_form() {

            if (this.recaptcha){
                this.$store.dispatch('article/addArticle', {
                    name: this.name,
                    email: this.email,
                    text: this.text,
                })
                this.name = ''
                this.email = ''
                this.text = ''
            }else {
                this.formInv = true
            }
        },
    },
    updated(){
        this.totalRows = this.articles.length
    }
}
</script>

<style>

</style>

