import Absen from "../models/absensiModel.js";
import Siswa from "../models/siswaModel.js";
import Kelas from "../models/kelasModel.js";
import { Op } from "sequelize";
import Walas from "../models/walasModel.js";

export const getAbsensi = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Absen.findAll({
        include: [
          {
            model: Siswa,
            include: [
              {
                model: Kelas,
                attributes: ["nama_kelas"],
              },
            ],
          },
        ],
      });
    } else {
      response = await Absen.findAll({
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

// export const createAbsensi = async (req, res) => {
//   const { nis, jenis_absen } = req.body;
//   try {
//     await Absen.create({
//       nis: nis,
//       jenis_absen: jenis_absen,
//     });
//     res.status(201).json({ msg: "Absensi Created Successfuly" });
//   } catch (error) {
//     res.status(500).json({ msg: error.massage });
//   }
// };

export const createAbsensi = async (req, res) => {
  try {
    await Absen.create(req.body);
    res.json({
      message: "Absen Created",
    });
  } catch (error) {
    res.json({ message: error.message });
  }
};

export const deleteAbsen = async (req, res) => {
  try {
    const absen = await Absen.findOne({
      where: {
        uuid: req.params.id,
      },
    });
    if (!absen) return res.status(404).json({ msg: "Data tidak ditemukan" });
    const { nama_siswa, kelas, jenis_absen } = req.body;
    if (req.role === "admin") {
      await Absen.destroy({
        where: {
          id: absen.id,
        },
      });
    } else {
      if (req.userId !== absen.userId)
        return res.status(403).json({ msg: "Akses terlarang" });
      await absen.destroy({
        where: {
          [Op.and]: [{ id: absen.id }, { userId: req.userId }],
        },
      });
    }
    res.status(200).json({ msg: "Absen deleted successfuly" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
