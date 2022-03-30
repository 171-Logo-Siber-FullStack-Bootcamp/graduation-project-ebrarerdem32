const express = require('express')
const ProductRouter=require ('./router/index')
const elasticClient = require('./elasticsearch/elasticClient');
const app = express()
const winston = require('winston');
var cors = require('cors')

const logger = winston.createLogger({
  level: 'info',
  format: winston.format.json(),
  defaultMeta: { service: 'user-service' },
  transports: [
    //
    // - Write all logs with importance level of `error` or less to `error.log`
    // - Write all logs with importance level of `info` or less to `combined.log`
    //
    new winston.transports.File({ filename: 'error.log', level: 'error' }),
    new winston.transports.File({ filename: 'combined.log' }),
  ],
});
logger.error("Error catched")

elasticClient.ping({    
  requestTimeout: 1000
}, function (error) {
  if (error) {
      console.trace('Elasticsearch\'e erişilmiyor!');
  } else {
      console.log('Elasticsearch ayakta :)');
  }
});
app.use(express.json());
app.get('/', function (req, res) {
  res.send('Hello World')
})
app.use(cors())
app.listen(4000)
app.use('/js', ProductRouter)