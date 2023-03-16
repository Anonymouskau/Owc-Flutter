import  express  from "express"
import cors from 'cors'
import app1 from './config.js'


const app= express()

app.use(express.json())
app.use(express.urlencoded())
app.use(cors())
app.post("/get",(req,res)=>{
user.add(req.body)

 
res.send("Successful")
})
app.listen(6000,()=>console.log("listen"))
