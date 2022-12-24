import axios from "axios";

export  const namespaced = true

export const state = {
    articles:[],
    article: {
        comments: [],
        tags: [],
        statistic: {
            likes: 0,
            views: 0
        }
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
            console.log('Ошибка');
        })
    },
    getArticle(context, payload) {
        axios.get('/api/article').then((response) => {
            context.commit('SET_STATE', response.data);
        }).catch(() => {
            console.log('Ошибка');
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
            console.log(error)
            if (error.response.status === 422) {
                context.state.errors = error.response.data.errors;
            }
        })
    },
    addArticle(context,payload){
        axios.post('/api/article-add-article', {title:payload.name, body:payload.email,slug:payload.text}).then((response)=>{
            context.dispatch('getArticle', response)
        }).catch((error)=>{
            // console.log(error.response.data.errors)
            if (error.response.status === 422) {
                context.state.errors = error.response.data.errors;
            }
        })
    }
}

export const getters = {
    getArticles(state){
        return state.articles
    },
    articleViews(state) {
        return state.article.statistic.views;
    },
    articleLikes(state) {
        return state.article.statistic.likes;
    }
}

export const mutations = {
    SET_STATE(state, payload){
        return state.articles = payload;
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
