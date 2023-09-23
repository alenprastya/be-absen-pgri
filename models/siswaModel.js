import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Walas from "./walasModel.js";
import Users from "./userModel.js";
import Kelas from "./kelasModel.js";

const { DataTypes } = Sequelize;

const Siswa = db.define(
  "siswa",
  {
    nis: {
      type: DataTypes.INTEGER,
      allowNull: false,
      unique: true,
      validate: {
        notEmpty: true,
      },
    },
    nama_siswa: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    kode_kelas: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
  },
  {
    freezeTableName: true,
  }
);

Users.hasMany(Siswa);
Siswa.belongsTo(Users, { foreignKey: "userId" });

Siswa.belongsTo(Kelas, { foreignKey: "kode_kelas", targetKey: "kode_kelas" });

export default Siswa;
