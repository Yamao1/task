<template>
    <div class="row">
        <form @submit.prevent="submit_form()" >
            <div class="row">
                <div class="col-xs-12 col-sm-6">
                    <div class="mb-3">
                        <label for="commentBody">Комментарий</label>
                        <textarea rows="3" id="commentBody" class="form-control" v-model="body"></textarea>
                        <div class="alert alert-warning" role="alert" v-if="errorMessage.body">
                            {{ errorMessage.body[0] }}
                        </div>
                    </div>
                    <div class="uk-margin-top uk-width-1-1" id="telegramFile">
                        <div id="files-area" class="uk-margin uk-padding-small uk-text-center">
                            <div id="filesList">
                                <div id="files-names" class="uk-grid uk-grid-collapse uk-child-width-1-1"
                                     data-uk-grid></div>
                            </div>
                        </div>
                        <div class="uk-margin-top-small uk-text-center">
                            <input type="file" name="file" accept=".png,.jpg,.gif" id="attachment"
                                   @change="uploadPreviewFiles"/>
                            <div class="alert alert-warning" role="alert" v-if="errorMessage.img">
                                {{ errorMessage.img[0] }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="btn btn-success" type="submit">Отправить</button>
        </form>
        <div class="container mt-2" style="min-width: 100%; " v-for="comment in comments">
            <div class="toast showing" style="min-width: 100%" v-if="article_id === comment.article_id">
                <div class="toast-header">
                    <img src="https://via.placeholder.com/50/5f113b/ffffff/?text=User" class="rounded me-2" alt="">
                    <strong class="me-auto">{{ comment.subject }}</strong>
                </div>
                <div class="toast-body">
                    {{ comment.body }}
                </div>
                <div v-if="comment.img !== null">
                    <img :src="comment.img" style="width: 320px;height: 240px" class="rounded me-2" alt="">
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            commentArray: [],
            files: [],
            body: ''
        }
    },
    props: {
        article_slug: {
            type: String
        },
        article_id: {
            type: Number
        }
    },
    computed: {
        comments() {
            return this.$store.state.article.article.comments;
        },
        commentSuccess() {
            return this.$store.state.article.commentSuccess;
        },
        errorMessage() {
            return this.$store.state.article.errors;
        }
    },
    methods: {
        showComment(comment) {
            console.log(comment)
        },
        uploadPreviewFiles(event) {
            for (let file of event.target.files) {
                let fileCont = document.createElement('div');
                fileCont.classList.add("file-block", "uk-animation-slide-bottom-small", "uk-display-block");
                let fileBlock = document.createElement('div');
                fileBlock.classList.add("uk-grid", "uk-grid-small", "uk-child-width-auto", "uk-flex-middle");
                let filePrevBox = document.createElement('div');
                filePrevBox.classList.add("uk-width-auto");
                let filePrev = document.createElement('div');
                filePrev.classList.add("prev-img");
                filePrev.style.backgroundImage = "url('" + URL.createObjectURL(file) + "')";


                let fileName = document.createElement('div');
                fileName.classList.add("tm-file-name", "uk-width-expand", "uk-text-left");
                fileName.innerHTML = file.name;
                let fileDelBlock = document.createElement('div');
                let fileDel = document.createElement('div');
                fileDel.classList.add("tm-file-delete", "uk-icon");
                fileDel.innerHTML = '<svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill="none" stroke="#000" stroke-width="1.06" d="M16,16 L4,4"></path><path fill="none" stroke="#000" stroke-width="1.06" d="M16,4 L4,16"></path>';
                fileDel.onclick = () => {
                    this.deleteFileFromList(file, fileCont)
                };
                filePrevBox.append(filePrev);
                fileDelBlock.append(fileDel);
                fileBlock.append(filePrevBox);
                fileBlock.append(fileName);
                fileBlock.append(fileDelBlock);
                fileCont.append(fileBlock);
                let filesField = document.getElementById('files-names');
                filesField.append(fileCont);
                let telegFile = document.querySelector('#telegramFile');
                telegFile.classList.remove('tm-val-error');
                this.files.push(file)
            }
        },
        submit_form() {
            this.$emit("closeComments", this.article_id)
            this.$store.commit('SET_SLUG', this.article_slug)
            let form_data = new FormData()
            form_data.append('body', this.body)
            form_data.append('article_id', this.article_id)
            if (this.files.length > 0) {
                form_data.append('img', this.files[0])

            }
            this.$store.dispatch('article/addComment', form_data)
            this.body = ''
        },
        deleteFileFromList(file, fileCont) {
            this.files.splice(this.files.indexOf(file), 1);
            let filesField = document.getElementById('files-names');
            filesField.removeChild(fileCont);
        }
    },
    async mounted() {
        await this.$store.dispatch('article/getArticleData', this.article_slug)
        this.commentArray = this.$store.state.article.article.comments
        console.log(this.$store)
    },
}
</script>

<style>

.file-block {
    border-radius: 6px;
    background-color: rgba(144, 163, 203, 0.2);
    margin: 5px 0;
}


.uk-animation-slide-bottom-small {
    animation-name: uk-fade-bottom-small;
}


@keyframes uk-fade-bottom-small {
    0% {
        opacity: 0;
        transform: translateY(10px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

.uk-display-block {
    display: block !important;
}


.uk-grid {
    display: flex;
    /* 1 */
    flex-wrap: wrap;
    /* 2 */
    margin: 0;
    padding: 0;
    list-style: none;
}

/*
 * Grid cell
 * Note: Space is allocated solely based on content dimensions, but shrinks: 0 1 auto
 * Reset margin for e.g. paragraphs
 */
.uk-grid > * {
    margin: 0;
}

/*
 * Remove margin from the last-child
 */
.uk-grid > * > :last-child {
    margin-bottom: 0;
}

/* Gutter
 ========================================================================== */
/*
 * Default
 */
/* Horizontal */
.uk-grid {
    margin-left: -30px;
}

.uk-grid > * {
    padding-left: 30px;
}

/* Vertical */
.uk-grid + .uk-grid,
.uk-grid > .uk-grid-margin,
* + .uk-grid-margin {
    margin-top: 30px;
}


.uk-grid-small,
.uk-grid-column-small {
    margin-left: -15px;
}

.uk-grid-small > *,
.uk-grid-column-small > * {
    padding-left: 15px;
}


.uk-child-width-auto > * {
    width: auto;
}

.prev-img {
    width: 100px;
    height: 100px;
    background-color: #ccc;
    background-position: 50%;
    background-size: cover;

}

.prev-img :hover img {
    -webkit-filter: grayscale(0);
    background-color: red;
    color: red;
}
</style>
