import { Router } from 'express';
import { CreatePessoaController } from '../controller/pessoas/CreatePessoaController.js';
import { GetAllPessoaController } from '../controller/pessoas/GetAllPessoaController.js'
import { GetByIdPessoaController } from '../controller/pessoas/GetByIdPessoaController.js';
import { UpdatePessoaController } from '../controller/pessoas/UpdatePessoaController.js';
import { DeletePessoaController } from '../controller/pessoas/DeletePessoaController.js';

const pessoaRouter = Router()

// Create
const createPessoaController = new CreatePessoaController();
pessoaRouter.post('/pessoas', createPessoaController.handle)

// Get All
const getAllPessoaController = new GetAllPessoaController();
estadoRouter.get('/pessoas', getAllPessoaController.handle)

// Get by ID
const getByIdPessoaController = new GetByIdPessoaController();
estadoRouter.get('/pessoas/:id', getByIdPessoaController.handle);

// Update
const updatePessoaController = new UpdatePessoaController()
estadoRouter.put('/pessoas', updatePessoaController.handle)

// Delete
const deletePessoaController = new DeletePessoaController();
estadoRouter.delete('/pessoas', deletePessoaController.handle)


export { pessoaRouter } 