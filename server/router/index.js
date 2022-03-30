const express = require('express')
const products = require('../controller/index')
const router = express.Router()

//Search for product table
router.get('/products', products.getProducts)
router.get('/product', products.getProductid)

//Search for categories table
router.get('/categories', products.getCategoriesid)
router.get('/categories2', products.getCategories)
router.get('/categories_id', products.getProductscat_id)
router.post('/elastic', products.postProductElastic)
router.get('/getelastic', products.getProductElastic)
module.exports =  router
