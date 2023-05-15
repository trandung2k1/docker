import express, { Request, Response } from 'express';
const port: number = 4000;
const app = express()
app.get("/", (req: Request, res: Response) => {
    return res.status(200).json({
        message: 'Welcome to the server 👋👋',
    })
})
console.log(process.env.PORT)
app.listen(port, () => {
    console.log(`Server listening on http://localhost:${port}`)
}).on('error', (error: Error) => {
    console.log(error)
})