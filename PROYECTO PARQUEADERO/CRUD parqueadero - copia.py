import mysql.connector

mydb = mysql.connector.connect(
    user='root', password='0129',
    host='localhost', database='parqueadero',
    auth_plugin='mysql_native_password'
)
cursor = mydb.cursor()

ciclo = 15

def crear_propietario(nombre, apellido, contacto, fecha_inicio, dia_corte):
    cursor.callproc("CrearPropietario", (nombre, apellido, contacto, fecha_inicio, dia_corte))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def actualizar_propietario(nuevo_id_prop, nuevo_nombre, nuevo_apellido, nuevo_contacto, nuevo_fecha_inicio, nuevo_dia_corte):
    cursor.callproc("ActualizarPropietario", (nuevo_id_prop, nuevo_nombre, nuevo_apellido, nuevo_contacto, nuevo_fecha_inicio, nuevo_dia_corte))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def eliminar_propietario(id_delete_prop):
    cursor.callproc("EliminarPropietario", (id_delete_prop,))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def crear_vehiculo(id_prop, tipo_tarifa, placa, tiempo):
    cursor.callproc("CrearVehiculo", (id_prop, tipo_tarifa, placa, tiempo))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def actualizar_vehiculo(nuevo_id_vehiculo, nuevo_propietario, nuevo_tarifa, nuevo_placa, nuevo_tiempo):
    cursor.callproc("ActualizarVehiculo", (nuevo_id_vehiculo, nuevo_propietario, nuevo_tarifa, nuevo_placa, nuevo_tiempo))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def eliminar_vehiculo(id_delete_vehiculo):
    cursor.callproc("EliminarVehiculo", (id_delete_vehiculo,))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def crear_factura(id_prop, id_vehiculo, tipo_tarifa, tiempo, total, fecha, dia_corte):
    cursor.callproc("CrearFactura", (id_prop, id_vehiculo, tipo_tarifa, tiempo, total, fecha, dia_corte))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def actualizar_factura(nuevo_id_fac, nuevo_id_prop, nuevo_id_vehiculo, nuevo_tipo_tarifa, nuevo_tiempo, nuevo_total, nuevo_fecha, nuevo_dia_corte):
    cursor.callproc("ActualizarFactura", (nuevo_id_fac, nuevo_id_prop, nuevo_id_vehiculo, nuevo_tipo_tarifa, nuevo_tiempo, nuevo_total, nuevo_fecha, nuevo_dia_corte))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def eliminar_factura(id_delete_fac):
    cursor.callproc("EliminarFactura", (id_delete_fac,))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def crear_pago(id_prop, id_factura, dia_pago):
    cursor.callproc("CrearPago", (id_prop, id_factura, dia_pago))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def actualizar_pago(nuevo_num_pago, nuevo_id_prop, nuevo_id_fac, nuevo_dia_pago):
    cursor.callproc("ActualizarPago", (nuevo_num_pago, nuevo_id_prop, nuevo_id_fac, nuevo_dia_pago))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

def eliminar_pago(num_pago_delete):
    cursor.callproc("EliminarPago", (num_pago_delete,))
    for result in cursor.stored_results():
        print(result.fetchall())
    mydb.commit()

while ciclo != 0:
    print("MENU PRINCIPAL:" + "\n" +
          "1. Agregar Registro:" + "\n" +
          "2. Actualizar Tablas " + "\n" +
          "3. Eliminar registros" + "\n")

    menu = int(input("Ingrese una opcion: "))
    
    if menu == 1:
        print("1. Agregar Propietario" + "\n" + "2. Agregar vehiculos" + "\n" + "3. Agregar Factura" + "\n" + "4. Agregar Pago" + "\n")
        menu1 = int(input("Ingrese una opcion: "))
        
        if menu1 == 1:
            nuevo_nombre = input("Ingrese el nombre del propietario: " + "\n")
            nuevo_apellido = input("Ingrese el apellido del propietario: " + "\n")
            nuevo_contacto = input("Ingrese el contacto del propietario: " + "\n")
            nuevo_fecha_inicio = input("Ingrese la fecha de inicio: " + "\n")
            nuevo_dia_corte = input("Ingrese el dia de corte para el pago: " + "\n")
            crear_propietario(nuevo_nombre, nuevo_apellido, nuevo_contacto, nuevo_fecha_inicio, nuevo_dia_corte)
            
        elif menu1 == 2:
            nuevo_id_prop = input("Ingrese el ID del propietario del vehiculo: " + "\n")
            nuevo_tipo_tarifa = input("Ingrese el tipo de tarifa para este vehiculo: " + "\n")
            nuevo_placa = input("Ingrese la placa del vehiculo: " + "\n")
            nuevo_tiempo = input("Ingrese el tiempo que duró el vehiculo: " + "\n")
            crear_vehiculo(nuevo_id_prop, nuevo_tipo_tarifa, nuevo_placa, nuevo_tiempo)
            
        elif menu1 == 3:
            id = input("Ingrese el ID del propietario: " + "\n")
            id_v = input("Ingrese el ID del vehiculo: " + "\n")
            tipo = input("Ingrese el tipo de tarifa para este vehiculo: " + "\n")
            tiempo = input("Ingrese los minutos de permanencia del vehiculo en el parqueadero: " + "\n")
            if tipo == "MENSUALIDAD":
                total = 140000
            else:
                total = int(tiempo) * 90
            fecha = input("Ingrese la fecha de la factura: " + "\n")
            diaC = input("Ingrese el dia de corte del propietario: " + "\n")
            crear_factura(id, id_v, tipo, tiempo, total, fecha, diaC)
            
        elif menu1 == 4:
            id_propietario = input("Ingrese el ID del propietario: " + "\n")
            id_fac = input("Ingrese el ID de la factura: " + "\n")
            diap = input("Ingrese el dia de pago de la factura: " + "\n")
            crear_pago(id_propietario, id_fac, diap)
    
    elif menu == 2:
        print("1. Actualizar Propietario" + "\n" + "2. Actualizar vehiculos" + "\n" + "3. Actualizar Factura" + "\n" + "4. Actualizar Pago" + "\n")
        menu2 = int(input("Ingrese una opcion: "))
        
        if menu2 == 1:
            nuevo_id_prop = input("Ingrese el ID del Propietario que desea actualizar: " + "\n")
            nuevo_nombre = input("Ingrese el nuevo nombre del propietario: " + "\n")
            nuevo_apellido = input("Ingrese el nuevo apellido del propietario: " + "\n")
            nuevo_contacto = input("Ingrese el nuevo contacto del propietario: " + "\n")
            nuevo_fecha_inicio = input("Ingrese la nueva fecha de inicio del propietario: " + "\n")
            nuevo_dia_corte = input("Ingrese el nuevo dia de corte del propietario: " + "\n")
            actualizar_propietario(nuevo_id_prop, nuevo_nombre, nuevo_apellido, nuevo_contacto, nuevo_fecha_inicio, nuevo_dia_corte)
            
        elif menu2 == 2:
            nuevo_id_vehiculo = input("Ingrese el ID del vehiculo que desea actualizar: " + "\n")
            nuevo_propietario = input("Ingrese el nuevo ID del propietario: " + "\n")
            nuevo_tarifa = input("Ingrese la nueva tarifa: " + "\n")
            nuevo_placa = input("Ingrese la nueva placa: " + "\n")
            nuevo_tiempo = input("Ingrese el nuevo tiempo: " + "\n")
            actualizar_vehiculo(nuevo_id_vehiculo, nuevo_propietario, nuevo_tarifa, nuevo_placa, nuevo_tiempo)
            
        elif menu2 == 3:
            nuevo_id_fac = input("Ingrese el ID de la factura que desea modificar: " + "\n")
            nuevo_id_prop = input("Ingrese el nuevo ID del propietario: " + "\n")
            nuevo_id_vehiculo = input("Ingrese el nuevo ID del vehiculo: " + "\n")
            nuevo_tipo_tarifa = input("Ingrese el nuevo tipo de tarifa: " + "\n")
            nuevo_tiempo = input("Ingrese el nuevo tiempo: " + "\n")
            nuevo_total = input("Ingrese el nuevo total: " + "\n")
            nuevo_fecha = input("Ingrese la nueva fecha: " + "\n")
            nuevo_dia_corte = input("Ingrese el nuevo dia de corte: " + "\n")
            actualizar_factura(nuevo_id_fac, nuevo_id_prop, nuevo_id_vehiculo, nuevo_tipo_tarifa, nuevo_tiempo, nuevo_total, nuevo_fecha, nuevo_dia_corte)
            
        elif menu2 == 4:
            nuevo_num_pago = input("Ingrese el numero de pago que desea actualizar: " + "\n")
            nuevo_id_prop = input("Ingrese el nuevo ID del propietario: " + "\n")
            nuevo_id_fac = input("Ingrese el nuevo ID de la factura: " + "\n")
            nuevo_dia_pago = input("Ingrese el nuevo dia de pago: " + "\n")
            actualizar_pago(nuevo_num_pago, nuevo_id_prop, nuevo_id_fac, nuevo_dia_pago)
    
    elif menu == 3:
        print("1. Eliminar registro de Propietario" + "\n" + "2. Eliminar registro de vehiculos" + "\n" + "3. Eliminar registro de Factura" + "\n" + "4. Eliminar registro de Pago" + "\n")
        menu3 = int(input("Ingrese una opcion: "))
        
        if menu3 == 1:
            id_delete_prop = input("Ingrese el ID del propietario que desea eliminar: " + "\n")
            eliminar_propietario(id_delete_prop)
            
        elif menu3 == 2:
            id_delete_vehiculo = input("Ingrese el ID del vehiculo que desea eliminar: " + "\n")
            eliminar_vehiculo(id_delete_vehiculo)
            
        elif menu3 == 3:
            id_delete_fac = input("Ingrese el ID de la factura que desea eliminar: " + "\n")
            eliminar_factura(id_delete_fac)
            
        elif menu3 == 4:
            num_pago_delete = input("Ingrese el numero del pago que desea eliminar: " + "\n")
            eliminar_pago(num_pago_delete)

    ciclo -= 1

cursor.close()
mydb.close()
