<template>
    <!-- Section -->
<section class="hero">
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
      <CategoryHolder></CategoryHolder>
      </div>
      <div class="col-lg-9">
       <SearchHolder></SearchHolder>
       <BannerHolder></BannerHolder>
        </div>
      </div>
    </div>
</section>     

</template>
<script>
import CategoryHolder from "./CategoryHolder.vue"
import SearchHolder from "./SearchHolder.vue"
import BannerHolder from "./BannerHolder.vue"

export default  {
  name: 'SectionHolder',
  components: { CategoryHolder, SearchHolder, BannerHolder
  }  
}
</script>
<style>
</style>