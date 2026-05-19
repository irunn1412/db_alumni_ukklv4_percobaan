CREATE DATABASE alumni_dbex;
USE alumni_db;

-- Tabel users
CREATE TABLE users ( 
id INT AUTO_INCREMENT PRIMARY KEY, 
username VARCHAR(50), 
password VARCHAR(255), 
nama_lengkap VARCHAR(100), 
role ENUM('admin','user') 
); 

-- Tabel alumni
CREATE TABLE alumni (
    id_alumni INT AUTO_INCREMENT PRIMARY KEY,
    nama_lengkap VARCHAR(100) NOT NULL,
    angkatan YEAR NOT NULL,
    jurusan ENUM(
        'Rekayasa Perangkat Lunak',
        'Teknik Komputer dan Jaringan',
        'Teknik Jaringan Akses Telekomunikasi',
        'Animasi'
    ) NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Tabel alumni reja
CREATE TABLE alumni ( 
    id_alumni INT(11) AUTO_INCREMENT PRIMARY KEY, 
    nama VARCHAR(100) NOT NULL, 
    angkatan YEAR(4) NOT NULL, 
    jurusan VARCHAR(100) NOT NULL
);

INSERT INTO users (username,password,role) 
VALUES ('admin', 'admin123', 'admin');
