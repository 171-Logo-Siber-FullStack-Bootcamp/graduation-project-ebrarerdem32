const pool= require('../config/index')
const elasticClient = require('../elasticsearch/elasticClient');
getProducts=(req,response)=> {
    pool.query('SELECT * FROM products', function(err, res) {
        if(err) {
            return console.error('error running query', err);
        }
        return response.status(200).json(res.rows);
    });  
}
getProductid=(request,response)=> {
    console.log(request.query.id)
    pool.query(`SELECT * FROM products where id=${request.query.id}`, function(err, res) {
        if(err) {
            return console.error('error running query', err);
        }
        return response.status(200).json(res.rows);
    });  
}

getCategoriesid=(request,response)=> {
    console.log(request.query.category_id)
    pool.query(`SELECT * FROM categories where category_id=${request.query.category_id}`, function(err, res) {
        if(err) {
            return console.error('error running query', err);
        }
        return response.status(200).json(res.rows);
    });  
}

getCategories=(request,response)=> {
   
    pool.query(`SELECT * FROM categories`, function(err, res) {
        if(err) {
            return console.error('error running query', err);
        }
        return response.status(200).json(res.rows);
    });  
}

getProductscat_id=(request,response)=> {
    console.log(request.query.category_id)
    pool.query(`SELECT * FROM products where category_id=${request.query.category_id}`, function(err, res) {
        if(err) {
            return console.error('error running query', err);
        }
        return response.status(200).json(res.rows);
    });  
    
}

getProductElastic=(req, res) => {
 
    elasticClient.search({
      index:"ecommerce",
      body:{query: {
        match_phrase_prefix: {
            "title":   req.query.query
        }
    } }
    },(err,rest)=>{
      if (err) {
        console.log(err);
      }
      else{
        return    res.status(200).json(rest.hits);
      }
    })
  
    
  }

postProductElastic=(req, res) => {
    elasticClient.index({
      index:"ecommerce",
      type:  'products',
      body:req.body
    },(err)=>{
      if (err) {
        console.log(err);
      }
      else{
        return  res.status(201).json(req.body);
      }
    })
  }




module.exports = {
    getProducts,
    getProductid,
    getCategoriesid,
    getProductscat_id,
    getCategories,
    postProductElastic,
    getProductElastic
}