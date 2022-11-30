-- creación de la tabla roles
CREATE TABLE roles (
                     idRol tinyint primary key auto_increment NOT NULL,
                     rol varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO roles (idRol, rol)
VALUES
    (1, 'Administrador'),
    (2, 'Supervisor'),
    (3, 'Usuario'),
    (4, 'Invitado');


