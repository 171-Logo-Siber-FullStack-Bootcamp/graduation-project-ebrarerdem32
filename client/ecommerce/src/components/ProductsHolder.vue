<template>
  <div>
    <div class="container">
      <div class="row">
        <div  class="col-md-3"  v-for="item in products.filter(
            (el) =>{
              if(store.categoryId==0){
                 return el;
              }
        return el.category_id==store.categoryId;
}
           )" :key="item.id"  >
          <div>
          <div  class="card" style="height:450px; width:250px">
            <img
              class="card-img-top"
              v-bind:src="item.url"
              alt="Card image"
              style="height:150px; width:250px"
            />
            <div class="card-body">
              <h4 class="card-title">{{ item.name }}</h4>
              
            </div>
            <a
                type="button"
                class="btn btn-secondary"
                @click="getid(item)"
                data-toggle="modal"
                data-target="#myModal"
                
                >See Details</a
              >
            <div class="card-footer">
              {{ item.price }}TL
            </div>
          </div>
      
          <br>
          <!-- The Modal -->
      
        </div>
     
          </div>

<ModalCard :parentmessage="productscr"/>
      </div>
  
    </div>
    
  </div>
</template>

<script>
import ModalCard from "./ModalCard.vue"
import ProductsDataService from "../services/ProductsDataService"
import { store } from './store'
export default {
  name: "ProductsHolder",
  data() {
    return {
      store,
      products: [],
      productscr: [],
    };
  },
  components:{
ModalCard
  },
  created() {

    this.getProducts();
   
  },

  methods: {

    getid(param)
    {return this.productscr=param},
    
    getProducts() {
      ProductsDataService.getAllitems()
        .then((response) => {
          console.log(store.categoryId);
          console.log(response.data);
          if(store.categoryId==0){
           
     return this.products = response.data;
          }
          else{
            console.log("bring it");
           this.products= this.products.filter(
            (el) =>{
              
        return el.category_id==store.categoryId;
}
           );
          }
          console.log(response);
          return JSON.parse(JSON.stringfy(this.products));
        })
        .catch((e) => {
          console.log(e);
        });
    },
  },
};
</script>

<style>
</style>