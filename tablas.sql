-- Creacion base de datos
CREATE DATABASE debede;
USE debede;

-- Creacion de tablas
-- Tabla Rol
CREATE TABLE IF NOT EXISTS Rol (
    id_rol INT NOT NULL AUTO_INCREMENT,
    nombre_rol VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100),
    PRIMARY KEY (id_rol)
);

-- Tabla Permisos
CREATE TABLE IF NOT EXISTS Permisos (
    id_permiso INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100),
    PRIMARY KEY (id_permiso)
);

-- Tabla Rol_Permisos
CREATE TABLE IF NOT EXISTS Rol_Permisos (
    id_rol INT NOT NULL,
    id_permiso INT NOT NULL,
    PRIMARY KEY (id_rol, id_permiso),
    FOREIGN KEY (id_rol) REFERENCES Rol(id_rol),
    FOREIGN KEY (id_permiso) REFERENCES Permisos(id_permiso)
);