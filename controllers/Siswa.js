import Siswa from "../models/siswaModel.js";
import Kelas from "../models/kelasModel.js";
import { Op } from "sequelize";
import Walas from "../models/walasModel.js";

export const getSiswa = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Siswa.findAll({
        include: [
          {
            model: Kelas,
            attributes: ["kode_kelas", "nama_kelas"],
            include: [
              {
                model: Walas,
              },
            ],
          },
        ],
      });
    } else {
      response = await Siswa.findAll({
        include: [
          {
            model: Kelas,
            attributes: ["kode_kelas", "nama_kelas"],
          },
        ],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createSiswa = async (req, res) => {
  const { nis, nama_siswa, kode_kelas } = req.body;
  try {
    await Siswa.create({
      nis: nis,
      nama_siswa: nama_siswa,
      kode_kelas: kode_kelas,
    });
    res.status(201).json({ msg: "Siswa Created Successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.massage });
  }
};

export const getSiswaByKelas = async (req, res) => {
  try {
    const siswa = await Siswa.findAll({
      attributes: ["nis", "nama_siswa"],
      include: [
        {
          model: Kelas,
          attributes: ["nama_kelas"],
        },
      ],
      where: {
        kode_kelas: req.params.kode_kelas,
      },
    });
    res.json(siswa);
  } catch (error) {
    res.json({ message: error.message });
  }
};
