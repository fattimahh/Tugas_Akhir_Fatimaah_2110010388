/*
 Navicat Premium Data Transfer

 Source Server         : xampp
 Source Server Type    : MySQL
 Source Server Version : 100419
 Source Host           : localhost:3306
 Source Schema         : laporansiswa

 Target Server Type    : MySQL
 Target Server Version : 100419
 File Encoding         : 65001

 Date: 07/07/2023 07:58:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tabel_catatan
-- ----------------------------
DROP TABLE IF EXISTS `tabel_catatan`;
CREATE TABLE `tabel_catatan`  (
  `id_catatan` int NOT NULL AUTO_INCREMENT,
  `tanggal` date NULL DEFAULT NULL,
  `semester` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_siswa` int NULL DEFAULT NULL,
  `id_walikelas` int NULL DEFAULT NULL,
  `id_ortuatauwali` int NULL DEFAULT NULL,
  `id_point` int NULL DEFAULT NULL,
  `keterangan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_catatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabel_catatan
-- ----------------------------
INSERT INTO `tabel_catatan` VALUES (1, '2023-07-01', 'GENAP', 1, 1, 1, 1, 'BAGUS SAJA', 'AKTIF');

-- ----------------------------
-- Table structure for tabel_ortuatauwali
-- ----------------------------
DROP TABLE IF EXISTS `tabel_ortuatauwali`;
CREATE TABLE `tabel_ortuatauwali`  (
  `id_ortuatauwali` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pendidikan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_telepon` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_ortuatauwali`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabel_ortuatauwali
-- ----------------------------
INSERT INTO `tabel_ortuatauwali` VALUES (1, '090909', 'WAWA', 'LAKI-LAKI', 'S2', '089793838', 'JL. MULAWARMAN', 'SWASTA', 'AKTIF');

-- ----------------------------
-- Table structure for tabel_poin
-- ----------------------------
DROP TABLE IF EXISTS `tabel_poin`;
CREATE TABLE `tabel_poin`  (
  `id_poin` int NOT NULL AUTO_INCREMENT,
  `nama_poin` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `total` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_poin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabel_poin
-- ----------------------------
INSERT INTO `tabel_poin` VALUES (1, 'PERFECT', '100', 'BAGUS BENER');

-- ----------------------------
-- Table structure for tabel_siswa
-- ----------------------------
DROP TABLE IF EXISTS `tabel_siswa`;
CREATE TABLE `tabel_siswa`  (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nisn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nik` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tempat_lahir` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tanggal_lahir` date NULL DEFAULT NULL,
  `jenis_kelamin` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tingkat_kelas` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jurusan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_walikelas` int NULL DEFAULT NULL,
  `alamat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_telp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_siswa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabel_siswa
-- ----------------------------
INSERT INTO `tabel_siswa` VALUES (1, '424242', '414141', '404040', 'FATIMAH', 'BANJARMASIN', '2000-07-09', 'Perempuan', 'KELAS', 'PERHOTELAN', 1, 'JL. AKASIA INDAH', '0812112', 'BARU');

-- ----------------------------
-- Table structure for tabel_walikelas
-- ----------------------------
DROP TABLE IF EXISTS `tabel_walikelas`;
CREATE TABLE `tabel_walikelas`  (
  `id_walikelas` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pendidikan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mapel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tingkat_kelas` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_walikelas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tabel_walikelas
-- ----------------------------
INSERT INTO `tabel_walikelas` VALUES (1, '4141', 'ARNOL', 'LAKI-', 'S2', 'PERHOTELAN', 'KELAS', 'GURU');

SET FOREIGN_KEY_CHECKS = 1;
