-- Crear una tabla para almacenar información de productos
CREATE TABLE productos (
  id INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  precio DECIMAL(10, 2) NOT NULL,
  descripcion TEXT
);

-- Crear una tabla para almacenar información de clientes
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL
);

-- Crear una tabla para almacenar información de pedidos
CREATE TABLE pedidos (
  id INT PRIMARY KEY,
  fecha_pedido DATE NOT NULL,
  cliente_id INT NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Crear una tabla de detalle de pedido
CREATE TABLE detalle_pedido (
  id INT PRIMARY KEY,
  pedido_id INT NOT NULL,
  producto_id INT NOT NULL,
  cantidad INT NOT NULL,
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
  FOREIGN KEY (producto_id) REFERENCES productos(id)
);

-- Agregar algunos datos a las tablas
INSERT INTO productos (id, nombre, precio, descripcion)
VALUES (1, 'Laptop', 800.00, 'Laptop Dell con procesador Core i5 y 8GB de RAM'),
       (2, 'Monitor', 250.00, 'Monitor LG de 24 pulgadas con resolución Full HD'),
       (3, 'Teclado', 50.00, 'Teclado Logitech inalámbrico con touchpad integrado');

INSERT INTO clientes (id, nombre, email)
VALUES (1, 'Juan Pérez', 'juan.perez@gmail.com'),
       (2, 'María González', 'maria.gonzalez@gmail.com'),
       (3, 'Pedro Ramírez', 'pedro.ramirez@gmail.com');

INSERT INTO pedidos (id, fecha_pedido, cliente_id)
VALUES (1, '2022-01-15', 1),
       (2, '2022-02-10', 2),
       (3, '2022-03-05', 3);

INSERT INTO detalle_pedido (id, pedido_id, producto_id, cantidad)
VALUES (1, 1, 1, 1),
       (2, 1, 2, 2),
       (3, 2, 3, 1),
       (4, 3, 1, 2),
       (5, 3, 2, 1);
