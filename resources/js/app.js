require('./bootstrap');

window.Vue = require('vue');

import Vue from 'vue';
import Vuetify from '../plugins/vuetify'
import common from './common'

Vue.mixin(common)

Vue.component('login-component', require('./components/auth/Login.vue').default);
Vue.component('home-component', require('./components/Home.vue').default);
Vue.component('course-component', require('./components/Course.vue').default);

const app = new Vue({
    vuetify: Vuetify,
    el: '#app',
});
