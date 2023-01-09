<template>
    <div class="row">
        <form class="form-block" @submit.prevent="submit_form">
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <div class="form-group fl_icon">
                        <div class="icon"><i class="fa fa-user"></i></div>
                        <input v-model="name" class="form-input" type="text" placeholder="Your name">
                        <div class="alert alert-warning" role="alert" v-if="errorMessage.name">{{
                                errorMessage.name[0]
                            }}
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 fl_icon">
                    <div class="form-group fl_icon">
                        <div class="icon"><i class="fa fa-envelope-o"></i></div>
                        <input class="form-input" type="text" placeholder="Your email" v-model="email">
                        <div class="alert alert-warning" role="alert" v-if="errorMessage.email">{{
                                errorMessage.email[0]
                            }}
                        </div>
                    </div>
                </div>
                <div class="col-xs-12">
                    <div class="form-group">
                        <input class="form-input" required="" placeholder="Your text" v-model="slug">
                        <div class="alert alert-warning" role="alert" v-if="errorMessage.slug">{{
                                errorMessage.slug[0]
                            }}
                        </div>
                    </div>
                </div>
                <div class="col-xs-12">
                    <div :class="{mx_recaptcha_failed: !recaptcha}">
                        <vue-recaptcha
                            sitekey="6Lf0BJ0jAAAAAIxB0XMKkJ7b2t-lM5vawQltdohw"
                            @verify="mxVerify">
                        </vue-recaptcha>
                        <br/>
                        <small>Doesn't complete!</small>
                        <button type="submit"
                                class="btn btn-md btn-block btn-danger-gradiant text-white border-0">
                        </button>
                    </div>
                </div>
                <button class="btn btn-primary" type="submit">submit</button>
            </div>
        </form>
        <div class="selected">
            <div>Selected: {{ selected }}</div>
            <select v-model="selected">
                <option disabled value="">Please select one for sorting</option>
                <option>name</option>
                <option>email</option>
                <option>created_at</option>
            </select>
            <button @click="sort(selected)" type="button" value="title">Sort</button>
        </div>
        <div class="container" v-for="article in paginatedArticles">
            <div class="be-comment-block">
                <h1 class="comments-title"></h1>
                <div class="be-comment">
                    <div class="be-img-comment">
                        <a href="blog-detail-2.html">
                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="be-ava-comment">
                        </a>
                    </div>
                    <div class="be-comment-content">

				<span class="be-comment-name">
					<a href="blog-detail-2.html">{{ article.name }}</a>
					</span>
                        <span class="be-comment-time">
					<i class="fa fa-clock-o"></i>
					{{ article.created_at }}
				</span>
                        <span class="be-comment-time">
					<i class="fa fa-clock-o"></i>
					{{ article.email }}
				</span>
                        <p class="be-comment-text">
                            {{ article.slug }}
                        </p>
                    </div>
                    <hr>
                    <div class="post-footer-option container">
                        <ul class="list-unstyled">
                            <li>
                                <button type="button" @click="showComments(article.id)"><i
                                    class="glyphicon glyphicon-comment"></i> Comment
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <template v-if="isCommentsShow(article.id)">
                <comment-component
                    @closeComments="closeComments($event)"
                    :article_slug="article.slug"
                    :article_id="article.id"
                />
            </template>
        </div>
        <div class="pagination">
            <div class="page"
                 v-for="page in pages"
                 :key="page"
                 :class="{'pageSelected': page === pageNumber}"
                 @click="pageClick(page)"
            >{{ page }}
            </div>
        </div>
    </div>


</template>
<script>
import {VueRecaptcha} from 'vue-recaptcha';
import CommentComponent from "./CommentComponent";

export default {
    components: {VueRecaptcha, CommentComponent},
    data() {
        return {
            articlePerPage: 25,
            pageNumber: 1,
            selected: '',
            show: [],
            recaptcha: null,
            formInv: false,
            name: '',
            email: '',
            slug: ''
        }
    },
    computed: {
        paginatedArticles() {
            let from = (this.pageNumber - 1) * this.articlePerPage;
            let to = from + this.articlePerPage;
            return this.articles.slice(from, to);
        },
        pages() {
            return Math.ceil(this.articles.length / 25)
        },
        articles() {
            return this.$store.state.article.articles;
        },
        commentSuccess() {
            return this.$store.state.article.commentSuccess;
        },
        errorMessage() {
            return this.$store.state.article.errors;
        },
    },
    methods: {
        pageClick(page) {
            this.pageNumber = page
            this.selected = ''
        },
        sort(key) {
            this.$store.commit('article/SET_STATE_SORT', key)
            this.selected = ''
        },

        closeComments(id) {
            this.show = this.show.filter(item => item === id)

        },
        isCommentsShow(id) {
            return this.show.includes(id)
        },
        showComments(id) {
            if (this.show.includes(id)) {
                this.show.splice(this.show.indexOf(id), 1)
            } else {
                this.show.push(id)
            }
            this.closeComments(id)

        },
        mxVerify(response) {
            this.recaptcha = response

        },
        submit_form() {
            if (this.recaptcha) {
                this.$store.dispatch('article/addArticle', {
                    name: this.name,
                    email: this.email,
                    slug: this.slug,
                })
                this.name = ''
                this.email = ''
                this.slug = ''
            } else {
                this.formInv = true
            }
            grecaptcha.reset();
        },
    },
}
</script>

<style>
small {
    color: red;
    display: none;
}

.mx_form_inv .mx_empty_field ~ small {
    display: block;
}

.mx_form_inv .mx_recaptcha_failed small {
    display: block;
}

body {
    margin-top: 20px;
    background-color: #e9ebee;
}

.be-comment-block {
    margin-bottom: 50px !important;
    border: 1px solid #edeff2;
    border-radius: 2px;
    padding: 50px 70px;
    border: 1px solid #ffffff;
}

.comments-title {
    font-size: 16px;
    color: #262626;
    margin-bottom: 15px;
    font-family: 'Conv_helveticaneuecyr-bold';
}

.be-img-comment {
    width: 60px;
    height: 60px;
    float: left;
    margin-bottom: 15px;
}

.be-ava-comment {
    width: 60px;
    height: 60px;
    border-radius: 50%;
}

.be-comment-content {
    margin-left: 80px;
}

.be-comment-content span {
    display: inline-block;
    width: 49%;
    margin-bottom: 15px;
}

.be-comment-name {
    font-size: 13px;
    font-family: 'Conv_helveticaneuecyr-bold';
}

.be-comment-content a {
    color: #383b43;
}

.be-comment-content span {
    display: inline-block;
    width: 49%;
    margin-bottom: 15px;
}

.be-comment-time {
    text-align: right;
}

.be-comment-time {
    font-size: 11px;
    color: #b4b7c1;
}

.be-comment-text {
    font-size: 13px;
    line-height: 18px;
    color: #7a8192;
    display: block;
    background: #f6f6f7;
    border: 1px solid #edeff2;
    padding: 15px 20px 20px 20px;
}

.form-group.fl_icon .icon {
    position: absolute;
    top: 1px;
    left: 16px;
    width: 48px;
    height: 48px;
    background: #f6f6f7;
    color: #b5b8c2;
    text-align: center;
    line-height: 50px;
    -webkit-border-top-left-radius: 2px;
    -webkit-border-bottom-left-radius: 2px;
    -moz-border-radius-topleft: 2px;
    -moz-border-radius-bottomleft: 2px;
    border-top-left-radius: 2px;
    border-bottom-left-radius: 2px;
}

.form-group .form-input {
    font-size: 13px;
    line-height: 50px;
    font-weight: 400;
    color: #b4b7c1;
    width: 100%;
    height: 50px;
    padding-left: 20px;
    padding-right: 20px;
    border: 1px solid #edeff2;
    border-radius: 3px;
}

.form-group.fl_icon .form-input {
    padding-left: 70px;
}

.form-group textarea.form-input {
    height: 150px;
}


a {
    color: #47649F;
}


/*-- Bootstrap Override Style --*/


/*-- Content Style --*/
.post-footer-option li {
    float: left;
    margin-right: 50px;
    padding-bottom: 15px;
}

.post-footer-option li a {
    color: #AFB4BD;
    font-weight: 500;
    font-size: 1.3rem;
}

.anchor-username h4 {
    font-weight: bold;
}

.pagination {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    margin-top: 20px;
}

.page {
    padding: 8px;
    border: solid 1px #e7e7e7;
}

.page:hover {
    background: #005cbf;
}

.pageSelected {
    background: #005cbf;
    cursor: pointer;
    color: #e7e7e7;
}
</style>

