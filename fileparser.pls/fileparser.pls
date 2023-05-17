-- MiArchivoPLSQL.pls
DECLARE
   v_nombre_empleado employees.first_name%TYPE;
BEGIN
   -- Procesamiento de empleados
   FOR c_empleado IN (SELECT * FROM employees) LOOP
      -- Realizar operaciones en cada empleado
      -- ...

      -- Ejemplo: Imprimir información del empleado
      v_nombre_empleado := c_empleado.first_name || ' ' || c_empleado.last_name;
      DBMS_OUTPUT.PUT_LINE('Nombre: ' || v_nombre_empleado);
      DBMS_OUTPUT.PUT_LINE('Salario: ' || c_empleado.salary);
      DBMS_OUTPUT.PUT_LINE('Departamento: ' || c_empleado.department_id);
      DBMS_OUTPUT.PUT_LINE('------------------------------');
   END LOOP;
   
   -- Otro procesamiento o lógica adicional
   -- ...
   
   -- Fin del programa
   DBMS_OUTPUT.PUT_LINE('¡Procesamiento finalizado!');
END;
/
