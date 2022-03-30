<template>
    <!-- Products -->
 <section class="featured spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title">
          <h2>Product</h2>
        </div>
        <div class="featured__controls">
        </div>
      </div>
    </div>
    <div class="row featured__filter">
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="featured__item">
           <div
            v-for="item in productDetail"
            :key="item.id"
            @click="getProduct(id)"
          >
            {{ item.name }}
            {{ item.price }}
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</template>
<script>
import ProductsDataService from "../services/ProductsDataService";
export default  {
  name: 'ProductsDetail',
  data() {
      return{
        productDetail:[],
      };
   
  },
created(){
 this.getProducts();
  },
  methods: { 
    getProducts() { 
      ProductsDataService.getAllitems() 
        .then((response) => { 
          this.products = response.data; 
 
          console.log(response); 
          return JSON.parse(JSON.stringfy(this.products)); 
        }) 
        .catch((e) => { 
          console.log(e); 
        }); 
    }, 
  }, 

}
</script>

<style>
</style>