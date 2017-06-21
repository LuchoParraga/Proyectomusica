
CREATE TABLE estudiante(
  idEstudiante int NOT NULL IDENTITY(1,1),
   estudioMusica int NOT NULL,
   disponeInstrumentos int NOT NULL,
   idTipoEstudiante int NOT NULL,
   idPadre int NOT NULL
) 

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla  estudios 
--

CREATE TABLE  estudios (
   idEstudio int NOT NULL  IDENTITY(1,1),
   institucionEstudio varchar(50) NOT NULL,
   tiempoEstudio varchar(50) NOT NULL,
   instrumentoEstudio varchar(50) NOT NULL,
   idEstudiante int NOT NULL
) 

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla  matricula 
--

CREATE TABLE  matricula (
   idMatricula int NOT NULL  IDENTITY(1,1),
   fechaMatricula date NOT NULL,
   montoTotal int NOT NULL,
   idEstudiante int NOT NULL,
   idCurso int NOT NULL
) 

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla  mensualidad 
--

CREATE TABLE  mensualidad (
   idMensualidad int NOT NULL  IDENTITY(1,1),
   idMatricula int NOT NULL,
   descripcionMensualidad varchar(100) NOT NULL,
   numeroFactura int NOT NULL,
   totalPago int NOT NULL
) 

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla  padres 
--

CREATE TABLE  padres (
   idPadre int NOT NULL  IDENTITY(1,1),
   idEstudiante int NOT NULL
) 

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla  persona 
--

CREATE TABLE  persona (
   idPersona int NOT NULL  IDENTITY(1,1),
   primerNombreP varchar(30) NOT NULL,
   segundoNombreP varchar(30) NOT NULL,
   primerApellidoP varchar(30) NOT NULL,
   segundoApellidoP varchar(30) NOT NULL,
   ciPersona varchar(30) NOT NULL,
   direccionPersona varchar(100) NOT NULL,
   telefonoPersona varchar(50) NOT NULL,
   fechaNacimPersona date NOT NULL,
   sexoPersona varchar(10) NOT NULL,
   emailPersona varchar(30) NOT NULL,
   profecionPersona varchar(100) NOT NULL
) 

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla  roles 
--

CREATE TABLE  roles (
   idRol int NOT NULL  IDENTITY(1,1),
   nombreRol varchar(30) NOT NULL,
   descripcionRol varchar(200) NOT NULL
) 

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla  tipoestudiante 
--

CREATE TABLE  tipoestudiante (
   idTipoEstudiante int NOT NULL  IDENTITY(1,1),
   tipoEstudiante varchar(30) NOT NULL
) 

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla  usuario 
--

CREATE TABLE  usuario (
   idUsuario int NOT NULL  IDENTITY(1,1),
   nombreUsuario varchar(30) NOT NULL,
   passUsuario varchar(50) NOT NULL,
   idPersona int NOT NULL,
   idRol int NOT NULL
) 

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla  estudiante 
--
ALTER TABLE  estudiante 
  ADD PRIMARY KEY ( idEstudiante );

--
-- Indices de la tabla  estudios 
--
ALTER TABLE  estudios 
  ADD PRIMARY KEY ( idEstudio );

--
-- Indices de la tabla  matricula 
--
ALTER TABLE  matricula 
  ADD PRIMARY KEY ( idMatricula );

--
-- Indices de la tabla  padres 
--
ALTER TABLE  padres 
  ADD PRIMARY KEY ( idPadre );

--
-- Indices de la tabla  persona 
--
ALTER TABLE  persona 
  ADD PRIMARY KEY ( idPersona );

--
-- Indices de la tabla  roles 
--
ALTER TABLE  roles 
  ADD PRIMARY KEY ( idRol );

--
-- Indices de la tabla  tipoestudiante 
--
ALTER TABLE  tipoestudiante 
  ADD PRIMARY KEY ( idTipoEstudiante );

--
-- Indices de la tabla  usuario 
--

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- --
-- Filtros para la tabla  usuario 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
