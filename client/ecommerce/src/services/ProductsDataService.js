import http from "../http-common";
class ProductsDataService {
 getCategories() {
        return http.get("/categories2");
 }
 getProductscat_id(param) {
    return http.get("/categories_id?category_id="+param);
  }
  get(id) {
    return http.get(`/products/${id}`);
  }
    elastichcall(searchword) {
    return http.get(`/getelastich?query=${searchword}`);
  }
  getAllitems()
  {
    return http.get("/products");
  }
}
export default new ProductsDataService();