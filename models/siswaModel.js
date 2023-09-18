import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Users from "./userModel.js";

const { DataTypes } = Sequelize;

const Siswa = db.define(
  "siswa",
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
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
    userId: {
      type: DataTypes.INTEGER,
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

export default Siswa;