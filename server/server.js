import express from 'express'
import cors from 'cors';
import { estadoRouter } from './server/src/routes/estados.js';
import { cidadeRouter } from './server/src/routes/cidades.js'
import { pessoaRouter } from './server/src/routes/pessoas.js';
import { tipoRouter } from './server/src/routes/tipos.js';
import { localRouter } from './server/src/routes/locais.js';
import { doacaoRouter } from './server/src/routes/doacoes.js';

const server = express();
const PORT = 5000

// Routes
server.get('/', (request, response) => {
    response.json({
        message: 'Status: Server is running.'
    })
})

server.use(express.json())
server.use(cors());
server.use(estadoRouter);
server.use(cidadeRouter);
server.use(pessoaRouter);
server.use(tipoRouter);
server.use(localRouter);
server.use(doacaoRouter);


server.listen(PORT, () => {
    console.log(`[SERVER] Server is running on port ${PORT}`)
})