window._ = require('lodash');
window.axios = require('axios');
window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';


window.Vue = require('vue').default;

// import store from './store'
import  store  from './store/index.js';

import { BootstrapVue, IconsPlugin } from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'



Vue.use(BootstrapVue)
Vue.use(IconsPlugin)


Vue.component('article-component', require('./components/ArticleComponent.vue').default);
Vue.component('comments-component', require('./components/CommentComponent.vue').default);
Vue.component('add-component', require('./components/AddArticleComponent').default);





const app = new Vue({
    store,
    el: '#app',
    created(){
        let url = window.location.pathname
        let slug = url.substring(url.lastIndexOf('/')+1)

        console.log(url)
        console.log(slug)
        this.$store.commit('SET_SLUG', slug)
        this.$store.dispatch('article/getArticleData',slug)
        this.$store.dispatch('article/getArticle')
    }


});
