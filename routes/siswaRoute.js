import express from "express";

import {
  getSiswa,
  createSiswa,
  getSiswaByKelas,
} from "../controllers/Siswa.js";
import { veryfyUser } from "../middleware/Authuser.js";

const router = express.Router();

router.get("/siswa", veryfyUser, getSiswa);
router.post("/siswa", veryfyUser, createSiswa);
router.get("/siswa/:kode_kelas", veryfyUser, getSiswaByKelas);
// router.delete("/absen/:id", veryfyUser, deleteAbsen);

export default router;
