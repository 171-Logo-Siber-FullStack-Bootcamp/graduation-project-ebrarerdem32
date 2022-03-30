<template>
<div class="card" style="width: 18rem;">
  <ul>
<li v-for="item in categoryProducts" :key="item.category_id" @click="getProductscat(item.category_id)" >
  {{item.url}}
  {{item.name}}
  {{item.price}}
  </li>
</ul>
</div>
</template>
<script>
import ProductsDataService from "../services/ProductsDataService";
export default {
  name: 'CategoryProducts',
  data() {
    return {
    categoryProducts:[],
    }
  },
  created(){
 this.getProductscat();
  },
    methods: {
    getProductscat(param){
      ProductsDataService.getProductscat_id(param)
        .then(response => {
          this.products = response.data;
          
          console.log(response);
          return JSON.parse(JSON.stringfy(this.products));
       
        })
        .catch(e => {
          console.log(e);
        });
    }
    }
}
</script>
<style>
</style>