import Vue from 'vue/dist/vue.esm.js'
import VueRouter from 'vue-router'
import Index from '../components/index.vue'
import Map from '../components/map.vue'
import About from '../components/about.vue'
import Contact from '../components/contact.vue'
 
Vue.use(VueRouter)
 
export default new VueRouter({
  mode: 'history',
  routes: [
    { path: '/home', component: Index },
    { path: '/map', component: Map },
    { path: '/about', component: About },
    { path: '/contact', component: Contact },
  ],
})
