import express from "express";

import { getKelas, createKelas, deleteKelas } from "../controllers/Kelas.js";
import { veryfyUser } from "../middleware/Authuser.js";

const router = express.Router();

router.get("/kelas", veryfyUser, getKelas);
router.post("/kelas", veryfyUser, createKelas);
router.delete("/kelas/:id", veryfyUser, deleteKelas);

export default router;
