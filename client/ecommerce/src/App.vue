<template>

  <HeaderHolder></HeaderHolder>

  <SectionHolder></SectionHolder>

  <ProductsHolder></ProductsHolder>

  <FooterHolder></FooterHolder>
   
    
</template>

<script>
import { store } from './components/store'
import HeaderHolder from "../src/components/HeaderHolder.vue"
import FooterHolder from "../src/components/FooterHolder.vue"
import SectionHolder from "../src/components/SectionHolder.vue"
import ProductsHolder from "../src/components/ProductsHolder.vue"

export default {
  name: 'App',
  data()
  {
    return {store}
  },
  components: {
   
    HeaderHolder,
    FooterHolder,
    ProductsHolder,
    SectionHolder
    
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
