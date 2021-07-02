import express, { Request, Response } from 'express'

const app = express()

app.get('/', (request: Request, response: Response) => {
  response.send('Hello world')
})

app.listen(3000, () => {
  console.log('Server starting on port 3000')
})
