
--Crear tabla tipoPersona
CREATE TABLE tipo_persona(
tipo_persona_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR(30) NULL,
activo bit NOT NULL
)  


--Crear tabla ambiente
CREATE TABLE ambiente(
ambiente_id INT   NOT NULL IDENTITY(1,1) PRIMARY KEY,
nombre_ambiente VARCHAR(50) NOT NULL
)  

--Crear tabla materia
CREATE TABLE materia(
materia_id INT   NOT NULL IDENTITY(1,1) PRIMARY KEY,
nombre_materia VARCHAR(30) NOT NULL
)  

--Crear tabla horario
CREATE TABLE horario(
horario_id INT   NOT NULL IDENTITY(1,1) PRIMARY KEY,
hora_inicio TIME NOT NULL,
hora_fin TIME NOT NULL
)  

--Crear tabla acceso_ambiente
CREATE TABLE acceso_ambiente(
acceso_ambiente_id INT   NOT NULL IDENTITY(1,1) PRIMARY KEY,
ambiente_id INT NOT NULL,
persona_id INT NOT NULL,
horario_id INT NOT NULL,
materia_id INT NOT NULL,
fecha_inicio_ambiente DATE NOT NULL,
fecha_fin_ambiente DATE NOT NULL
)  

--Crear tabla control_ingresos_salidas
CREATE TABLE control_ingresos_salidas(
control_ingresos_salidas_id INT   NOT NULL IDENTITY(1,1) PRIMARY KEY,
persona_id INT NOT NULL,
fecha_ingreso DATE NOT NULL,
fecha_salida DATE NOT NULL,
hora_ingreso TIME NOT NULL,
hora_salida TIME NOT NULL,
tiempo_permanencia TIME NOT NULL,
ambiente_id INT NOT NULL
)  