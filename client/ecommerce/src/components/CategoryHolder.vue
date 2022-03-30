<template>
    <!-- Categories-Placer -->
    
     <div class="hero__categories">
          <div class="hero__categories__all">
            <span> Categories</span>
          </div>
          <ul>
            <li @click="category(item.category_id)"  v-for="item in categories" :key="item.category_id" >{{item.name}}</li>

          </ul>
        </div>
        

</template>
<script>
import { store } from './store';
import ProductsDataService from "../services/ProductsDataService";
export default {
  name: 'CategoryHolder',
  data() {
    return {
      store,
      categories:[],

    };
  },

  created(){
 this.getCategoriesAll();
  },
    methods: {
   
     getCategoriesAll(){
      ProductsDataService.getCategories()
        .then(response => {
         this.categories=response.data;
        })
        .catch(e => {
          console.log(e);
        });
    },
   
    category(param){
      store.added(param);
    },
    d(){
       store.added(0);
    }
  }
}
</script>
<style>

</style>