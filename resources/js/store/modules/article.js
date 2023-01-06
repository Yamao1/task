import axios from "axios";

export  const namespaced = true

export const state = {
    articles:[],
    article: {
        comments: [],
    },
    slug:'',
    likeIt: true,
    commentSuccess:false,
    errors: []
}
export const actions = {
    getArticleData(context, payload) {
        axios.get('/api/article-json', {params: {'slug':payload}}).then((response) => {
            context.commit('SET_ARTICLE', response.data.data);
        }).catch(() => {
        })
    },
    getArticle(context, payload) {
        axios.get('/api/article').then((response) => {
            context.commit('SET_STATE', response.data);
        }).catch(() => {
            console.log('Ошибка');
        })
    },
    getComments(context, payload) {
        axios.get('/api/article/comments').then((response) => {
            context.commit('SET_STATE_COMMENT', response.data);
        }).catch((e) => {
            console.log(e);
        })
    },
    addComment(context,payload){
        const option = {headers: {
                'Content-Type': 'multipart/form-data',
            }}
        axios.post('/api/article-add-comment',  payload ,option).then((response)=>{
            context.commit('SET_COMMENT_SUCCESS', !state.commentSuccess);
            context.dispatch('getArticleData', context.rootState.slug)
        }).catch((error)=>{
            if (error.response.status === 422) {
                context.state.errors = error.response.data.errors;
            }
        })
    },
    addArticle(context,payload){
        axios.post('/api/article-add-article', {name:payload.name, email:payload.email,slug:payload.slug}).then((response)=>{
            context.dispatch('getArticle', response)
        }).catch((error)=>{
            if (error.response.status === 422) {
                context.state.errors = error.response.data.errors;
            }
        })
    },
}
export const getters = {
    getArticles(state){
        return state.articles
    },
    getComments(state){
        return state.article.comments
    },
    articleViews(state) {
        return state.article.statistic.views;
    },
    articleLikes(state) {
        return state.article.statistic.likes;
    }
}

export const mutations = {
    SET_STATE_SORT(state, payload){
            const articles = this.state.article.articles;
        articles.sort((a, b) => {
                let compare = 0;
                if (a[payload] > b[payload]) {
                    compare = 1;
                } else if (b[payload] > a[payload]) {
                    compare = -1;
                }
                return compare;
            });
        this.state.article.articles = articles;
    },
    SET_STATE(state, payload){
        return state.articles = payload;
    },
    SET_STATE_COMMENT(state, payload){
        return state.article.comments = payload;
    },
    SET_ARTICLE(state, payload) {
        return state.article = payload;
    },
    SET_SLUG(state,payload){
        return state.slug = payload;
    },
    SET_LIKE(state,payload){
        return state.likeIt = payload;
    },
    SET_COMMENT_SUCCESS(state,payload){
        state.commentSuccess = payload;
    }
}
