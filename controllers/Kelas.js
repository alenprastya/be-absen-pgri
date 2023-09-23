import Kelas from "../models/kelasModel.js";
import Walas from "../models/walasModel.js";

export const getKelas = async (req, res) => {
  try {
    let response;
    response = await Kelas.findAll({
      include: [
        {
          model: Walas,
        },
      ],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createKelas = async (req, res) => {
  const { kode_kelas, nama_kelas } = req.body;

  try {
    // Check if kode_kelas already exists
    const existingKelas = await Kelas.findOne({
      where: {
        kode_kelas: kode_kelas,
      },
    });

    if (existingKelas) {
      return res.status(400).json({
        message: "Kode Kelas Sudah Terdaftar",
        response: existingKelas,
      });
    }

    // If kode_kelas is not found, create a new record
    const newKelas = await Kelas.create({
      kode_kelas: kode_kelas,
      nama_kelas: nama_kelas,
    });

    res.status(201).json({ msg: "Kelas Created Successfully", newKelas });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const deleteKelas = async (req, res) => {
  try {
    await Kelas.destroy({
      where: {
        kode_kelas: req.params.id,
      },
    });
    res.json({
      message: "Kelas Deleted",
    });
  } catch (error) {
    res.json({ message: error.message });
  }
};
