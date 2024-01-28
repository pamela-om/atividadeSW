import { Router } from 'express';
import { CreateTipoSanguineoController } from '../controller/tiposSanguineos/CreateTipoSanguineoController.js';
import { GetAllTipoSanguineoController } from '../controller/tiposSanguineos/GetAllTipoSanguineoController.js'
import { GetByIdTipoSanguineoController } from '../controller/tiposSanguineos/GetByIdTipoSanguineoController.js';
import { UpdateTipoSanguineoController } from '../controller/tiposSanguineos/UpdateTipoSanguineoController.js';
import { DeleteTipoSanguineoController } from '../controller/tiposSanguineos/DeleteTipoSanguineoController.js';

const tipoRouter = Router()

// Create
const createTipoSanguineoController = new CreateTipoSanguineoController();
tipoRouter.post('/tipos', createTipoSanguineoController.handle)

// Get All
const getAllTipoSanguineoController = new GetAllTipoSanguineoController();
estadoRouter.get('/tiposSanguineos', getAllTipoSanguineoController.handle)

// Get by ID
const getByIdTipoSanguineoController = new GetByIdTipoSanguineoController();
estadoRouter.get('/tiposSanguineos/:id', getByIdTipoSanguineoController.handle);

// Update
const updateTipoSanguineoController = new UpdateTipoSanguineoController()
estadoRouter.put('/tiposSanguineos', updateTipoSanguineoController.handle)

// Delete
const deleteTipoSanguineoController = new DeleteTipoSanguineoController();
estadoRouter.delete('/tiposSanguineos', deleteTipoSanguineoController.handle)

export { tipoRouter } 