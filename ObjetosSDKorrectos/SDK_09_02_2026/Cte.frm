[Forma]
Clave=Cte
Nombre=<T>Clientes<T>
Icono=4
Modulos=(Todos)
ListaCarpetas=(Lista)
CarpetaPrincipal=Ficha
PosicionInicialIzquierda=39
PosicionInicialArriba=11
PosicionInicialAltura=593
PosicionInicialAncho=1578
Menus=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
VentanaTipoMarco=Normal
VentanaPosicionInicial=Centrado
PosicionSeccion1=7
BarraAyuda=S
DialogoAbrir=S
Plantillas=S
PermiteCopiarDoc=S
PlantillasExcepciones=(Lista)
MovModulo=CXC
PosicionInicialAlturaCliente=799
BarraAyudaBold=S
VentanaEstadoInicial=Normal
PosicionSec1=238

VentanaColor=Plata
ExpresionesAlMostrar=Asigna(Info.Copiar, Falso)<BR>Asigna(Info.Etiqueta, Nulo)<BR>Asigna(Info.Etiqueta,SQL(<T>SELECT Valor FROM VersionLista AS vl WHERE vl.Nombre = :tNom<T>, <T>Generar Cta Complementaria<T>))
MenuPrincipal=(Lista)
[Lista.Cte.Cliente]
Carpeta=Lista
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Cte.Nombre]
Carpeta=Lista
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco
ColorFuente=Negro

[Lista.Columnas]
Cliente=110
Nombre=304
0=99
1=375
Fecha=148
Usuario=82
Sucursal=64
Nombre_1=154
Empresa=69

Posicion=64
Tipo=106
ArticuloEsp=124
Pasillo=45
Nivel=37
Zona=64
Descripcion=130
Estatus=54
2=55
3=347
[Ficha]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Generales
Clave=Ficha
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S
PermiteEditar=S

[Ficha.Cte.Cliente]
Carpeta=Ficha
Clave=Cte.Cliente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
Efectos=[Negritas]

[Ficha.Cte.Categoria]
Carpeta=Ficha
Clave=Cte.Categoria
Editar=S
ValidaNombre=S
3D=S
Tamano=30
LineaNueva=S
ColorFondo=Blanco

[Ficha.Cte.Nombre]
Carpeta=Ficha
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
Efectos=[Negritas]
EspacioPrevio=S
ColorFondo=Blanco

[Ficha.Cte.RFC]
Carpeta=Ficha
Clave=Cte.RFC
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.Direccion]
Carpeta=Ficha
Clave=Cte.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=54
ColorFondo=Blanco

[Ficha.Cte.CodigoPostal]
Carpeta=Ficha
Clave=Cte.CodigoPostal
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.Colonia]
Carpeta=Ficha
Clave=Cte.Colonia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.Poblacion]
Carpeta=Ficha
Clave=Cte.Poblacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
LineaNueva=N
ColorFondo=Blanco

[Ficha.Cte.Estado]
Carpeta=Ficha
Clave=Cte.Estado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.Pais]
Carpeta=Ficha
Clave=Cte.Pais
Editar=S
ValidaNombre=S
3D=S
Tamano=20
LineaNueva=N
ColorFondo=Blanco

[Ficha.Cte.Telefonos]
Carpeta=Ficha
Clave=Cte.Telefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=60
ColorFondo=Blanco

[Ficha.Cte.Fax]
Carpeta=Ficha
Clave=Cte.Fax
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.PedirTono]
Carpeta=Ficha
Clave=Cte.PedirTono
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.Contacto1]
Carpeta=Ficha
Clave=Cte.Contacto1
Editar=S
3D=S
Tamano=24
LineaNueva=S
ValidaNombre=S
ColorFondo=Blanco

[Ficha.Cte.Contacto2]
Carpeta=Ficha
Clave=Cte.Contacto2
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=29
ColorFondo=Blanco

[Ficha.Cte.eMail1]
Carpeta=Ficha
Clave=Cte.eMail1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.Familia]
Carpeta=Ficha
Clave=Cte.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.Grupo]
Carpeta=Ficha
Clave=Cte.Grupo
Editar=S
ValidaNombre=S
3D=S
Tamano=30
LineaNueva=S
ColorFondo=Blanco

[Notas.Cte.Notas]
Carpeta=Notas
Clave=Cte.Notas
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75x18

[Notas.Cte.DirInternet]
Carpeta=Notas
Clave=Cte.DirInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75

[RevisiónPagos.Cte.DiaRevision1]
Carpeta=RevisiónPagos
Clave=Cte.DiaRevision1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[RevisiónPagos.Cte.DiaRevision2]
Carpeta=RevisiónPagos
Clave=Cte.DiaRevision2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[RevisiónPagos.Cte.HorarioRevision]
Carpeta=RevisiónPagos
Clave=Cte.HorarioRevision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[RevisiónPagos.Cte.DiaPago1]
Carpeta=RevisiónPagos
Clave=Cte.DiaPago1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
EspacioPrevio=S

[RevisiónPagos.Cte.DiaPago2]
Carpeta=RevisiónPagos
Clave=Cte.DiaPago2
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[RevisiónPagos.Cte.HorarioPago]
Carpeta=RevisiónPagos
Clave=Cte.HorarioPago
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30

[Acciones.Nuevo]
Nombre=Nuevo
Boton=1
Menu=&Archivo
NombreDesplegar=&Nuevo
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Nuevo
Visible=S
Activo=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+N

[Acciones.Eliminar]
Nombre=Eliminar
Boton=5
Menu=&Archivo
NombreDesplegar=E&liminar
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Documento Eliminar
Visible=S
EnBarraHerramientas=S

ConCondicion=S
Antes=S
ActivoCondicion=no Cte:Cte.TieneMovimientos
EjecucionCondicion=Forma.ActualizarVista<BR>Forma.ActualizarControles           <BR>Si<BR>  Cte:Cte.TieneMovimientos<BR>Entonces           <BR>  Error(<T>El cliente ya tiene movimientos activos<T> , BotonAceptar  )<BR>Fin
AntesExpresiones=Asigna(Info.Cuenta,Cte:Cte.Cliente)<BR>EjecutarSQL(<T>spMESCatalogos :tCatalogo, :tINTCuenta, :nEliminar<T>,<T>CteMES<T>,Info.Cuenta,1)
[Acciones.Navegador]
Nombre=Navegador
Boton=0
NombreDesplegar=Navegador
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Herramientas Captura
ClaveAccion=Navegador (Documentos)
Visible=S
Activo=S

BarraBtnFondo=Plata
BarraBtnFuente={MS Sans Serif, 8, Negro, []}
BarraBtnTxtAlign=Izquierda
BarraBtnTxtPos=Arriba
BarraBtnSubtitFuente={MS Sans Serif, 8, Negro, []}
BarraBtnDescripFuente={MS Sans Serif, 8, Negro, []}
BarraBtnImgPos=Arriba
BarraBtnImgAlign=Izquierda
BarraBtnSubtituloAli=Izquierda
BarraBtnDescripcionAli=Izquierda
BarraBtnSubtituloPos=Arriba
BarraBtnDescripcionPos=Arriba
AccionSecTextoFuente={MS Sans Serif, 8, Negro, []}
AccionSecColor=Plata
AccionSecAli=Izquierda
[Acciones.Cerrar]
Nombre=Cerrar
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Alt+F4
NombreDesplegar=&Cerrar
EnMenu=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Visible=S
Activo=S

[Acciones.EnviarA]
Nombre=EnviarA
Boton=16
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+S
NombreDesplegar=&Sucursales
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteEnviarA
Visible=S
Antes=S
GuardarAntes=S
ConCondicion=S
DespuesGuardar=S
ActivoCondicion=Cte:Cte.Tipo<><T>Estructura<T>
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[EnviarA.Cte.EnviarA]
Carpeta=EnviarA
Clave=Cte.EnviarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15

[EnviarA.CteEnviarA.Nombre]
Carpeta=EnviarA
Clave=CteEnviarA.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

[EnviarA.CteEnviarA.Direccion]
Carpeta=EnviarA
Clave=CteEnviarA.Direccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=56
ColorFondo=Plata

[Venta]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Ventas
Clave=Venta
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={MS Sans Serif, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=130
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos)
[Venta.Cte.EnviarA]
Carpeta=Venta
Clave=Cte.EnviarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.Agente]
Carpeta=Venta
Clave=Cte.Agente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Venta.Agente.Nombre]
Carpeta=Venta
Clave=Agente.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Venta.Cte.DiaRevision1]
Carpeta=Venta
Clave=Cte.DiaRevision1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.DiaRevision2]
Carpeta=Venta
Clave=Cte.DiaRevision2
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.HorarioRevision]
Carpeta=Venta
Clave=Cte.HorarioRevision
Editar=S
ValidaNombre=S
3D=S
Tamano=39
Pegado=N
ColorFondo=Blanco

[Venta.Cte.DiaPago1]
Carpeta=Venta
Clave=Cte.DiaPago1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.DiaPago2]
Carpeta=Venta
Clave=Cte.DiaPago2
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.HorarioPago]
Carpeta=Venta
Clave=Cte.HorarioPago
Editar=S
ValidaNombre=S
3D=S
Tamano=39
Pegado=N
ColorFondo=Blanco

[Notas.Cte.Mensaje]
Carpeta=Notas
Clave=Cte.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=75

[ID.Cte.Cliente]
Carpeta=ID
Clave=Cte.Cliente
Editar=S
LineaNueva=N
3D=N
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]
Pegado=S

[ID.Cte.Nombre]
Carpeta=ID
Clave=Cte.Nombre
Editar=S
3D=N
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]
LineaNueva=S

[Acciones.Propiedades]
Nombre=Propiedades
Boton=35
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F11
NombreDesplegar=&Propiedades
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=Prop
Activo=S
Antes=S
Visible=S
GuardarAntes=S
ConCondicion=S
DespuesGuardar=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion, Cte:Cte.Nombre)

[Venta.Cte.Cliente]
Carpeta=Venta
Clave=Cte.Cliente
Editar=N
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]
ValidaNombre=S

[Venta.Cte.Nombre]
Carpeta=Venta
Clave=Cte.Nombre
Editar=N
3D=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]
ValidaNombre=S

[Acciones.Conciliar]
Nombre=Conciliar
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F8
NombreDesplegar=&Conciliar Movimientos
EnMenu=S
TipoAccion=Formas
ClaveAccion=Conciliar
Visible=S
GuardarAntes=S
Antes=S
ConCondicion=S
DespuesGuardar=S
ActivoCondicion=Cte:Cte.Conciliar
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.TituloDialogo, <T>Cliente<T>)<BR>Asigna(Info.Cuenta,Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion,Cte:Cte.Nombre)

[Acciones.Informacion]
Nombre=Informacion
Boton=34
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+I
NombreDesplegar=&Información
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteInfo
Antes=S
Visible=S
ConCondicion=S
ActivoCondicion=(Cte:Cte.Tipo<><T>Estructura<T>) y Usuario.CteInfo
EjecucionCondicion=(Cte:Cte.Tipo<><T>Deudor<T>) o Usuario.VerInfoDeudores
AntesExpresiones=Asigna( Info.Cliente,Cte:Cte.Cliente )

[Ficha.Cte.NombreCorto]
Carpeta=Ficha
Clave=Cte.NombreCorto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.eMail2]
Carpeta=Ficha
Clave=Cte.eMail2
Editar=S
3D=S
Tamano=35
ColorFondo=Blanco

[Ficha.Cte.Tipo]
Carpeta=Ficha
Clave=Cte.Tipo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
Efectos=[Negritas]
ColorFondo=Blanco
Pegado=N

[Acciones.Tareas]
Nombre=Tareas
Boton=70
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+T
NombreDesplegar=&Tareas
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=Tarea
Activo=S
Visible=S
Antes=S
ConCondicion=S

EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.PuedeEditar, Verdadero)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)<BR>Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Proveedor, Nulo)<BR>Asigna(Info.Agente, Nulo)<BR>Asigna(Info.Personal, Nulo)<BR>Asigna(Info.Proyecto, Nulo)<BR>Asigna(Info.UEN, Nulo)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.ID, Nulo)<BR>Asigna(Info.Reporte, Nulo)<BR>Asigna(Info.Contacto,Nulo)<BR>Asigna(Info.Alumno,Nulo)
BarraBtnFondo=Plata
BarraBtnFuente={MS Sans Serif, 8, Negro, []}
BarraBtnTxtAlign=Izquierda
BarraBtnTxtPos=Arriba
BarraBtnSubtitFuente={MS Sans Serif, 8, Negro, []}
BarraBtnDescripFuente={MS Sans Serif, 8, Negro, []}
BarraBtnImgPos=Arriba
BarraBtnImgAlign=Izquierda
AccionSecTextoFuente={MS Sans Serif, 8, Negro, []}
AccionSecColor=Plata
AccionSecAli=Izquierda
[Ficha.Cte.EntreCalles]
Carpeta=Ficha
Clave=Cte.EntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Ficha.Cte.Plano]
Carpeta=Ficha
Clave=Cte.Plano
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.Observaciones]
Carpeta=Ficha
Clave=Cte.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Venta.Cte.AgenteServicio]
Carpeta=Venta
Clave=Cte.AgenteServicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.AgenteServicio.Nombre]
Carpeta=Venta
Clave=AgenteServicio.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Acciones.Anexos]
Nombre=Anexos
Boton=77
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=F4
NombreDesplegar=Ane&xos
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=AnexoCta
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.AnexoCfg, Verdadero)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion, Cte:Cte.Nombre)
RefrescarDespues=S

[Acciones.CteRelacion]
Nombre=CteRelacion
Boton=0
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+R
NombreDesplegar=&Relaciones del Cliente
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteRelacion
Visible=S
Antes=S
ActivoCondicion=Cte:Cte.Tipo<><T>Estructura<T>
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)

[Credito.Cte.Cliente]
Carpeta=Credito
Clave=Cte.Cliente
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
ValidaNombre=S

[Credito.Cte.Nombre]
Carpeta=Credito
Clave=Cte.Nombre
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]
ValidaNombre=S

[Credito.Cte.CreditoConLimite]
Carpeta=Credito
Clave=Cte.CreditoConLimite
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=30

[Credito.Cte.CreditoLimite]
Carpeta=Credito
Clave=Cte.CreditoLimite
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Credito.Cte.CreditoMoneda]
Carpeta=Credito
Clave=Cte.CreditoMoneda
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Credito.Cte.CreditoConDias]
Carpeta=Credito
Clave=Cte.CreditoConDias
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=30

[Credito.Cte.CreditoDias]
Carpeta=Credito
Clave=Cte.CreditoDias
Editar=S
LineaNueva=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Credito.Cte.CreditoConCondiciones]
Carpeta=Credito
Clave=Cte.CreditoConCondiciones
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Credito.Cte.CreditoCondiciones]
Carpeta=Credito
Clave=Cte.CreditoCondiciones
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.AgregarEvento]
Nombre=AgregarEvento
Boton=56
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+E
NombreDesplegar=Agregar &Evento
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaBitacoraAgregar
Activo=S
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion, Cte:Cte.Nombre)

[Acciones.Bitacora]
Nombre=Bitacora
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+B
NombreDesplegar=&Bitácora
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtaBitacora
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Modulo, <T>CXC<T>)<BR>Asigna(Info.Tipo, Cte:Cte.Tipo)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Descripcion, Cte:Cte.Nombre)<BR>Asigna(Info.PuedeEditar, Verdadero)

[Ficha.Cte.Rama]
Carpeta=Ficha
Clave=Cte.Rama
Editar=S
ValidaNombre=S
3D=S
Pegado=N
Tamano=30
ColorFondo=Blanco
Efectos=[Negritas]
LineaNueva=S

[Acciones.Agentes]
Nombre=Agentes
Boton=0
Menu=&Edición
NombreDesplegar=&Agentes del Cliente
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteAgente
Visible=S
ConCondicion=S
Antes=S

BarraBtnFondo=Plata
BarraBtnFuente={MS Sans Serif, 8, Negro, []}
BarraBtnTxtAlign=Izquierda
BarraBtnTxtPos=Arriba
BarraBtnSubtitFuente={MS Sans Serif, 8, Negro, []}
BarraBtnDescripFuente={MS Sans Serif, 8, Negro, []}
BarraBtnImgPos=Arriba
BarraBtnImgAlign=Izquierda
BarraBtnSubtituloAli=Izquierda
BarraBtnDescripcionAli=Izquierda
BarraBtnSubtituloPos=Arriba
BarraBtnDescripcionPos=Arriba
AccionSecTextoFuente={MS Sans Serif, 8, Negro, []}
AccionSecColor=Plata
AccionSecAli=Izquierda
ActivoCondicion=Cte:Cte.Tipo<><T>Estructura<T>
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente,Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
[Acciones.Doc]
Nombre=Doc
Boton=17
Menu=&Edición
NombreDesplegar=&Documentación
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
Expresion=EditarDocumentacion(<T>CXC<T>, Cte:Cte.Cliente, <T>Documentación - <T>+Cte:Cte.Nombre)
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)

[ReglaNegocio]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Regla Negocio
Clave=ReglaNegocio
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos)

[ReglaNegocio.Cte.Cliente]
Carpeta=ReglaNegocio
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[ReglaNegocio.Cte.Nombre]
Carpeta=ReglaNegocio
Clave=Cte.Nombre
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[ReglaNegocio.Cte.ListaPreciosEsp]
Carpeta=ReglaNegocio
Clave=Cte.ListaPreciosEsp
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S

[ReglaNegocio.Cte.Descuento]
Carpeta=ReglaNegocio
Clave=Cte.Descuento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.Condicion]
Carpeta=ReglaNegocio
Clave=Cte.Condicion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.CreditoEspecial]
Carpeta=ReglaNegocio
Clave=Cte.CreditoEspecial
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S

[ReglaNegocio.Cte.FormaEnvio]
Carpeta=ReglaNegocio
Clave=Cte.FormaEnvio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.VtasConsignacion]
Carpeta=ReglaNegocio
Clave=Cte.VtasConsignacion
Editar=S
LineaNueva=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[ReglaNegocio.Cte.AlmacenVtasConsignacion]
Carpeta=ReglaNegocio
Clave=Cte.AlmacenVtasConsignacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.ChecarCredito]
Carpeta=ReglaNegocio
Clave=Cte.ChecarCredito
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.BloquearMorosos]
Carpeta=ReglaNegocio
Clave=Cte.BloquearMorosos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=N

[ReglaNegocio.Cte.ModificarVencimiento]
Carpeta=ReglaNegocio
Clave=Cte.ModificarVencimiento
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.Credito]
Carpeta=ReglaNegocio
Clave=Cte.Credito
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.PedidosParciales]
Carpeta=ReglaNegocio
Clave=Cte.PedidosParciales
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
LineaNueva=S
EspacioPrevio=S

[ReglaNegocio.Cte.Proyecto]
Carpeta=ReglaNegocio
Clave=Cte.Proyecto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco
ColorFuente=Negro

[Venta.CteEnviarA.Nombre]
Carpeta=Venta
Clave=CteEnviarA.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Venta.Cte.DefMoneda]
Carpeta=Venta
Clave=Cte.DefMoneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Acciones.CteCat]
Nombre=CteCat
Boton=0
Menu=&Maestros
NombreDesplegar=&Categorías
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteCat
Activo=S
Visible=S

[Acciones.CteGrupo]
Nombre=CteGrupo
Boton=0
Menu=&Maestros
NombreDesplegar=&Grupos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteGrupo
Activo=S
Visible=S

[Acciones.CteFam]
Nombre=CteFam
Boton=0
Menu=&Maestros
NombreDesplegar=&Familias
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteFam
Activo=S
Visible=S

[Acciones.ListaPrecioEsp]
Nombre=ListaPrecioEsp
Boton=0
Menu=&Ver
NombreDesplegar=Lista Precios
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=ListaPreciosInfo
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.ListaPreciosEsp) y (Izquierda(Cte:Cte.ListaPreciosEsp, 1)<><T>(<T>))
AntesExpresiones=Asigna(Info.Lista, Cte:Cte.ListaPreciosEsp)

[ReglaNegocio.Cte.ZonaImpuesto]
Carpeta=ReglaNegocio
Clave=Cte.ZonaImpuesto
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cte.Estatus]
Carpeta=Ficha
Clave=Cte.Estatus
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[(Carpeta Abrir)]
Estilo=Iconos
Clave=(Carpeta Abrir)
Filtros=S
BusquedaRapidaControles=S
MenuLocal=S
PermiteLocalizar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Vista=CteA
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Cliente<T>
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
FiltroPredefinido=S
FiltroGrupo1=(Validaciones Memoria)
FiltroValida1=CteCat
FiltroGrupo2=(Validaciones Memoria)
FiltroValida2=CteGrupo
FiltroGrupo3=(Validaciones Memoria)
FiltroValida3=CteFam
FiltroAplicaEn1=Cte.Categoria
FiltroAplicaEn2=Cte.Grupo
FiltroAplicaEn3=Cte.Familia
FiltroNullNombre=(sin clasificar)
FiltroTodo=S
FiltroEnOrden=S
FiltroTodoNombre=Todos
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=Múltiple (por grupos)
FiltroArbol=Clientes
FiltroArbolAplica=Cte.Rama
FiltroEstatus=S
FiltroModificarEstatus=S
FiltroCambiarPeriodo=S
FiltroBuscarEn=S
FiltroFechasCambiar=S
FiltroListaEstatus=(Lista)
FiltroEstatusDefault=ALTA
FiltroFechasNormal=S
FiltroFechasNombre=&Fecha
BusquedaRapida=S
BusquedaInicializar=S
BusquedaRespetarControles=S
BusquedaAncho=20
BusquedaEnLinea=S
CarpetaVisible=S
FiltroListas=S
FiltroListasRama=CXC
FiltroListasAplicaEn=Cte.Cliente
ListaAcciones=(Lista)
PestanaOtroNombre=S
PestanaNombre=Clientes
FiltroSituacion=S
FiltroSituacionTodo=S
FiltroGrupo4=(Validaciones Memoria)
FiltroValida4=CteTipo
FiltroAplicaEn4=Cte.Tipo
FiltroGrupo5=(Validaciones Memoria)
FiltroValida5=Espacio
FiltroAplicaEn5=Cte.Espacio
IconosConPaginas=S
OtroOrden=S
ListaOrden=Cte.Cliente<TAB>(Acendente)

NavAlineacion=Izquierda
NavPosicion=Arriba
NavNumeracionFuente={MS Sans Serif, 8, Negro, []}
NavColorBoton=Plata
NavColorFondo=Plata
FuenteBusqueda={MS Sans Serif, 8, Negro, []}
IconosNombre=CteA:Cte.Cliente
[(Carpeta Abrir).Cte.Nombre]
Carpeta=(Carpeta Abrir)
Clave=Cte.Nombre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[Acciones.Abrir]
Nombre=Abrir
Boton=2
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+A
NombreDesplegar=&Abrir...
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Documento Abrir
Activo=S
Visible=S

[Acciones.Guardar]
Nombre=Guardar
Boton=3
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+G
NombreDesplegar=&Guardar Cambios
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Controles Captura
ClaveAccion=Guardar Cambios
Activo=S
Visible=S

ConCondicion=S
EjecucionConError=S
GuardarAntes=S
Antes=S
DespuesGuardar=S
EjecucionCondicion=Asigna(Info.Mensaje,Nulo)<BR>SI(General.ProdInterfazINFOR,Asigna(Info.Mensaje,SQL(<T>SELECT dbo.fnInforValidarCte(:tNombreCorto)<T>,Cte:Cte.NombreCorto)))<BR>Si<BR>  (VersionConfig.AccesoClientes=Verdadero) y (Cte:Cte.AccesoWeb=Verdadero) y (vacio(Info.Mensaje))<BR>Entonces<BR>  Si<BR>    (Cte:Cte.ContrasenaWeb <> Cte:Cte.ContrasenaWebConfir))<BR>  Entonces<BR>    Error(<T>No coinciden la contraseña web y la confirmación.<T>)<BR>    AbortarOperacion<BR>  Sino<BR>    Si<BR>      Longitud(Cte:Cte.ContrasenaWeb)<32<BR>    Entonces<BR>      Si<BR>        ContrasenaCorrecta(Cte:Cte.Cliente, Cte:Cte.ContrasenaWeb, Cte:Cte.ContrasenaWebConfir)<BR>      Entonces<BR>        Si<BR>          Longitud(Cte:Cte.ContrasenaWeb)<32<BR>        Entonces<BR>          Asigna(Cte:Cte.ContrasenaWeb, MD5(Cte:Cte.ContrasenaWeb, <T>p<T>))<BR>          Asigna(Cte:Cte.ContrasenaWebConfir, MD5(Cte:Cte.ContrasenaWebConfir, <T>p<T>))<BR>        Fin<BR>        Verdadero<BR>      Sino<BR>        Asigna(Info.Mensaje, <T>La contraseña web y la confirmación deben tener valor<T>)<BR>        Falso<BR>      Fin<BR>    Fin<BR>  Fin<BR>Sino<BR>  vacio(Info.Mensaje)<BR>Fin
EjecucionMensaje=Info.Mensaje
AntesExpresiones=Asigna(Info.Cuenta,Cte:Cte.Cliente)<BR>EjecutarSQL(<T>spMESCatalogos :tCatalogo, :tINTCuenta<T>,<T>CteMES<T>,Info.Cuenta)<BR>ProcesarSQL(<T>spValidacionEFOS :nTipo, :tEmpresa, :tContribuyente, :tModulo, :tMov, :tContactoTipo<T>, 1, Empresa, Cte:Cte.RFC, <T><T>,<T><T>, <T><T>)
[(Carpeta Abrir).Columnas]
0=116
1=280

2=115
3=95
4=87
5=76
6=72
[Acciones.Situacion]
Nombre=Situacion
Boton=71
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F12
NombreDesplegar=&Situación
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Controles Captura
ClaveAccion=Cambiar Situacion
Visible=S

ActivoCondicion=Usuario.ModificarSituacion
[Acciones.Actualizar]
Nombre=Actualizar
Boton=0
UsaTeclaRapida=S
TeclaRapida=F5
NombreDesplegar=&Actualizar
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Actualizar Arbol
Activo=S
Visible=S

[Acciones.Imprimir]
Nombre=Imprimir
Boton=0
NombreDesplegar=&Imprimir
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Imprimir
Activo=S
Visible=S

[Acciones.Preliminar]
Nombre=Preliminar
Boton=0
NombreDesplegar=&Presentacion preliminar
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Presentacion preliminar
Activo=S
Visible=S

[Acciones.Excel]
Nombre=Excel
Boton=0
NombreDesplegar=Enviar a E&xcel
EnMenu=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Enviar a Excel
Activo=S
Visible=S

[Acciones.Campos]
Nombre=Campos
Boton=0
NombreDesplegar=Personalizar &Vista
EnMenu=S
EspacioPrevio=S
Carpeta=(Carpeta Abrir)
TipoAccion=Controles Captura
ClaveAccion=Mostrar Campos
Activo=S
Visible=S

[ReglaNegocio.Cte.CreditoConLimite]
Carpeta=ReglaNegocio
Clave=Cte.CreditoConLimite
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S
Tamano=26

[ReglaNegocio.Cte.CreditoConDias]
Carpeta=ReglaNegocio
Clave=Cte.CreditoConDias
Editar=S
ValidaNombre=N
3D=S
Tamano=15
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.CreditoConCondiciones]
Carpeta=ReglaNegocio
Clave=Cte.CreditoConCondiciones
Editar=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.CreditoLimite]
Carpeta=ReglaNegocio
Clave=Cte.CreditoLimite
Editar=S
LineaNueva=S
3D=S
EspacioPrevio=N
Tamano=16
ColorFondo=Blanco
ColorFuente=Negro
ValidaNombre=N

[ReglaNegocio.Cte.CreditoMoneda]
Carpeta=ReglaNegocio
Clave=Cte.CreditoMoneda
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=9
ColorFondo=Blanco
ColorFuente=Negro
Pegado=N

[ReglaNegocio.Cte.CreditoDias]
Carpeta=ReglaNegocio
Clave=Cte.CreditoDias
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=15

[ReglaNegocio.Cte.CreditoCondiciones]
Carpeta=ReglaNegocio
Clave=Cte.CreditoCondiciones
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.CreditoConLimitePedidos]
Carpeta=ReglaNegocio
Clave=Cte.CreditoConLimitePedidos
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.CreditoLimitePedidos]
Carpeta=ReglaNegocio
Clave=Cte.CreditoLimitePedidos
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.Otros1]
Nombre=Otros1
Menu=&Otros
EnMenu=S
TipoAccion=Expresion
Boton=0

[Acciones.Otros2]
Nombre=Otros2
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros3]
Nombre=Otros3
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros4]
Nombre=Otros4
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros5]
Nombre=Otros5
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros6]
Nombre=Otros6
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros7]
Nombre=Otros7
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros8]
Nombre=Otros8
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[Acciones.Otros9]
Nombre=Otros9
Menu=&Otros
EnMenu=S
TipoAccion=Expresion

[ReglaNegocio.Cte.Conciliar]
Carpeta=ReglaNegocio
Clave=Cte.Conciliar
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cte.Delegacion]
Carpeta=Ficha
Clave=Cte.Delegacion
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Ficha.Cte.Ruta]
Carpeta=Ficha
Clave=Cte.Ruta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[ReglaNegocio.Cte.DescuentoRecargos]
Carpeta=ReglaNegocio
Clave=Cte.DescuentoRecargos
Editar=S
LineaNueva=N
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cte.CURP]
Carpeta=Ficha
Clave=Cte.CURP
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.Cte.RecorrerVencimiento]
Carpeta=ReglaNegocio
Clave=Cte.RecorrerVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Venta.Cte.SucursalEmpresa]
Carpeta=Venta
Clave=Cte.SucursalEmpresa
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=S

[Venta.Sucursal.Nombre]
Carpeta=Venta
Clave=Sucursal.Nombre
Editar=S
3D=S
Tamano=60
ColorFondo=Plata
ValidaNombre=S

[Acciones.ListaNegra]
Nombre=ListaNegra
Boton=22
Menu=&Ver
NombreDesplegar=Lista &Negra
EnMenu=S
TipoAccion=Formas
ClaveAccion=ListaNegraLista
Activo=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Mayús+Ctrl+N
EspacioPrevio=S

[Otros]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Otros
Clave=Otros
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CondicionVisible=no Usuario.CteBloquearOtrosDatos
[Otros.Cte.Cliente]
Carpeta=Otros
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Otros.Cte.Nombre]
Carpeta=Otros
Clave=Cte.Nombre
Editar=N
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]

[Otros.Cte.Mensaje]
Carpeta=Otros
Clave=Cte.Mensaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=81
ColorFondo=Blanco
EspacioPrevio=S

[Otros.Cte.DirInternet]
Carpeta=Otros
Clave=Cte.DirInternet
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=81
ColorFondo=Blanco

[Otros.Cte.NivelAcceso]
Carpeta=Otros
Clave=Cte.NivelAcceso
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Internet]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Internet
Clave=Internet
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=113
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FichaEspacioNombresAuto=S
CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos)
[Internet.Cte.Cliente]
Carpeta=Internet
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[Internet.Cte.Nombre]
Carpeta=Internet
Clave=Cte.Nombre
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
Efectos=[Negritas]

[Internet.Cte.Contrasena]
Carpeta=Internet
Clave=Cte.Contrasena
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Internet.Cte.wVerDisponible]
Carpeta=Internet
Clave=Cte.wVerDisponible
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.Cte.Idioma]
Carpeta=Otros
Clave=Cte.Idioma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[ReglaNegocio.Cte.Bonificacion]
Carpeta=ReglaNegocio
Clave=Cte.Bonificacion
Editar=S
ValidaNombre=S
3D=S
Tamano=18
ColorFondo=Blanco
ColorFuente=Negro

[CRM]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Información Adicional
Clave=CRM
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos)
[CRM.Cte.Cliente]
Carpeta=CRM
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
Efectos=[Negritas]

[CRM.Cte.Nombre]
Carpeta=CRM
Clave=Cte.Nombre
ValidaNombre=N
3D=S
Tamano=42
ColorFondo=Plata
Efectos=[Negritas]

[CRM.Cte.Descripcion1]
Carpeta=CRM
Clave=Cte.Descripcion1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion2]
Carpeta=CRM
Clave=Cte.Descripcion2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion3]
Carpeta=CRM
Clave=Cte.Descripcion3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion4]
Carpeta=CRM
Clave=Cte.Descripcion4
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion5]
Carpeta=CRM
Clave=Cte.Descripcion5
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[ReglaNegocio.Cte.BonificacionTipo]
Carpeta=ReglaNegocio
Clave=Cte.BonificacionTipo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CteBonificacion]
Nombre=CteBonificacion
Boton=0
Menu=&Edición
NombreDesplegar=Bonificación Autómatica Multiple
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteBonificacion
Antes=S
Visible=S
ConCondicion=S
GuardarAntes=S
ActivoCondicion=Cte:Cte.BonificacionTipo=<T>Multiple<T>
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
DespuesGuardar=S

[CRM.Cte.Descripcion6]
Carpeta=CRM
Clave=Cte.Descripcion6
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion7]
Carpeta=CRM
Clave=Cte.Descripcion7
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion8]
Carpeta=CRM
Clave=Cte.Descripcion8
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion9]
Carpeta=CRM
Clave=Cte.Descripcion9
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion10]
Carpeta=CRM
Clave=Cte.Descripcion10
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[ReglaNegocio.Cte.FormasPagoRestringidas]
Carpeta=ReglaNegocio
Clave=Cte.FormasPagoRestringidas
Editar=S
LineaNueva=N
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.AlmacenDef]
Carpeta=ReglaNegocio
Clave=Cte.AlmacenDef
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[Otros.Cte.Alta]
Carpeta=Otros
Clave=Cte.Alta
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=20
Editar=S
ColorFondo=Blanco

[Otros.Cte.UltimoCambio]
Carpeta=Otros
Clave=Cte.UltimoCambio
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata

[CRM.Cte.Descripcion11]
Carpeta=CRM
Clave=Cte.Descripcion11
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion12]
Carpeta=CRM
Clave=Cte.Descripcion12
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion13]
Carpeta=CRM
Clave=Cte.Descripcion13
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion14]
Carpeta=CRM
Clave=Cte.Descripcion14
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion15]
Carpeta=CRM
Clave=Cte.Descripcion15
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion16]
Carpeta=CRM
Clave=Cte.Descripcion16
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion17]
Carpeta=CRM
Clave=Cte.Descripcion17
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion18]
Carpeta=CRM
Clave=Cte.Descripcion18
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion19]
Carpeta=CRM
Clave=Cte.Descripcion19
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.Descripcion20]
Carpeta=CRM
Clave=Cte.Descripcion20
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Otros.Cte.CBDir]
Carpeta=Otros
Clave=Cte.CBDir
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Personal]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Datos Personales
Clave=Personal
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
PermiteEditar=S
ListaEnCaptura=(Lista)
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S

CondicionVisible=General.CteDatosPersonales
[Personal.Cte.Cliente]
Carpeta=Personal
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
Efectos=[Negritas]

[Personal.Cte.Nombre]
Carpeta=Personal
Clave=Cte.Nombre
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Personal.Columnas]
Cliente=64
Nombre=244

[Personal.Cte.PersonalDireccion]
Carpeta=Personal
Clave=Cte.PersonalDireccion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco
EspacioPrevio=S

[Personal.Cte.PersonalEntreCalles]
Carpeta=Personal
Clave=Cte.PersonalEntreCalles
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalPlano]
Carpeta=Personal
Clave=Cte.PersonalPlano
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalDelegacion]
Carpeta=Personal
Clave=Cte.PersonalDelegacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalColonia]
Carpeta=Personal
Clave=Cte.PersonalColonia
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalPoblacion]
Carpeta=Personal
Clave=Cte.PersonalPoblacion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalEstado]
Carpeta=Personal
Clave=Cte.PersonalEstado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalPais]
Carpeta=Personal
Clave=Cte.PersonalPais
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalCodigoPostal]
Carpeta=Personal
Clave=Cte.PersonalCodigoPostal
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalTelefonos]
Carpeta=Personal
Clave=Cte.PersonalTelefonos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=19
ColorFondo=Blanco
EspacioPrevio=S

[Personal.Cte.FechaNacimiento]
Carpeta=Personal
Clave=Cte.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
EspacioPrevio=S
Tamano=25

[Personal.Cte.FechaMatrimonio]
Carpeta=Personal
Clave=Cte.FechaMatrimonio
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=20

[Personal.Cte.Conyuge]
Carpeta=Personal
Clave=Cte.Conyuge
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
EspacioPrevio=N

[Personal.Cte.Sexo]
Carpeta=Personal
Clave=Cte.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.Fuma]
Carpeta=Personal
Clave=Cte.Fuma
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
EspacioPrevio=N
Tamano=7

[Personal.Cte.Profesion]
Carpeta=Personal
Clave=Cte.Profesion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.Puesto]
Carpeta=Personal
Clave=Cte.Puesto
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.NumeroHijos]
Carpeta=Personal
Clave=Cte.NumeroHijos
Editar=S
LineaNueva=N
ValidaNombre=N
3D=S
ColorFondo=Blanco
Tamano=5
Pegado=S

[Seguro]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Seguro
Clave=Seguro
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)

CondicionVisible=(Cte:Cte.Tipo<><T>Estructura<T>) y (no Usuario.CteBloquearOtrosDatos) y General.CteDatosAseguradora
[Seguro.Cte.Cliente]
Carpeta=Seguro
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
Efectos=[Negritas]

[Seguro.Cte.Nombre]
Carpeta=Seguro
Clave=Cte.Nombre
3D=S
Tamano=40
ColorFondo=Plata
Efectos=[Negritas]

[Seguro.Cte.Aseguradora]
Carpeta=Seguro
Clave=Cte.Aseguradora
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.PolizaTipo]
Carpeta=Seguro
Clave=Cte.PolizaTipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.PolizaNumero]
Carpeta=Seguro
Clave=Cte.PolizaNumero
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.PolizaReferencia]
Carpeta=Seguro
Clave=Cte.PolizaReferencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.Deducible]
Carpeta=Seguro
Clave=Cte.Deducible
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.DeducibleMoneda]
Carpeta=Seguro
Clave=Cte.DeducibleMoneda
Editar=S
3D=S
Pegado=N
Tamano=10
ColorFondo=Blanco

[Seguro.Cte.Coaseguro]
Carpeta=Seguro
Clave=Cte.Coaseguro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.CteAseguradora.Nombre]
Carpeta=Seguro
Clave=CteAseguradora.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

[Personal.Cte.Responsable]
Carpeta=Personal
Clave=Cte.Responsable
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
EspacioPrevio=N

[Personal.Cte.Parentesco]
Carpeta=Personal
Clave=Cte.Parentesco
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
LineaNueva=S

[Personal.Cte.Religion]
Carpeta=Personal
Clave=Cte.Religion
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.Alergias]
Carpeta=Personal
Clave=Cte.Alergias
Editar=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=N

[Seguro.Cte.NombreAsegurado]
Carpeta=Seguro
Clave=Cte.NombreAsegurado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco

[Personal.Cte.EstadoCivil]
Carpeta=Personal
Clave=Cte.EstadoCivil
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=25
ColorFondo=Blanco

[Personal.Edad]
Carpeta=Personal
Clave=Edad
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata

[Otros.Cte.Espacio]
Carpeta=Otros
Clave=Cte.Espacio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.Espacio.Nombre]
Carpeta=Otros
Clave=Espacio.Nombre
Editar=S
3D=S
Tamano=60
ColorFondo=Plata
ValidaNombre=S

[Acciones.CteParecidos]
Nombre=CteParecidos
Boton=0
Menu=&Ver
UsaTeclaRapida=S
TeclaRapida=Ctrl+P
NombreDesplegar=Clientes Parecidos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteParecidos
Activo=S
Antes=S
Visible=S
AntesExpresiones=Asigna(Info.Nombre, Cte:Cte.Nombre)

[Personal.Cte.FacturarCte]
Carpeta=Personal
Clave=Cte.FacturarCte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco
EspacioPrevio=S

[Personal.CteFacturarA.Nombre]
Carpeta=Personal
Clave=CteFacturarA.Nombre
Editar=S
3D=S
Tamano=20
ColorFondo=Plata

[Personal.Cte.FacturarCteEnviarA]
Carpeta=Personal
Clave=Cte.FacturarCteEnviarA
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=7
Pegado=S

[Personal.CteEnviarAFacturarA.Nombre]
Carpeta=Personal
Clave=CteEnviarAFacturarA.Nombre
Editar=S
3D=S
Tamano=18
ColorFondo=Plata

[ReglaNegocio.Cte.OtrosCargos]
Carpeta=ReglaNegocio
Clave=Cte.OtrosCargos
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Venta.Cte.PersonalCobrador]
Carpeta=Venta
Clave=Cte.PersonalCobrador
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=20
ColorFondo=Blanco

[Venta.PersonalNombre]
Carpeta=Venta
Clave=PersonalNombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Acciones.Cobrador]
Nombre=Cobrador
Boton=0
Menu=&Maestros
NombreDesplegar=C&obradores
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=Cobrador

[Acciones.EspacioAsignacion]
Nombre=EspacioAsignacion
Boton=0
Menu=&Edición
NombreDesplegar=Asignar Espacio
EnMenu=S
TipoAccion=Formas
ClaveAccion=EspacioAsignacion
ConCondicion=S
Antes=S
GuardarAntes=S
DespuesGuardar=S
ActivoCondicion=Config.EspaciosAsignacion y (Cte:Cte.Tipo<><T>Estructura<T>)
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Proyecto, Nulo)
VisibleCondicion=General.Espacios

[Acciones.Cubos]
Nombre=Cubos
Boton=100
Menu=&Ver
NombreDesplegar=<T>Cubos<T>
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Dialogos
ClaveAccion=CuboCliente
Activo=S
Visible=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.CteArt]
Nombre=CteArt
Boton=0
Menu=&Edición
NombreDesplegar=&Artículos del Cliente
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteArt
ConCondicion=S
Antes=S
Visible=S
ActivoCondicion=Usuario.CteArt
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)<BR>Asigna(Info.Articulo, Nulo)

[Internet.Cte.wVerArtListaPreciosEsp]
Carpeta=Internet
Clave=Cte.wVerArtListaPreciosEsp
Editar=S
LineaNueva=S
3D=S
Tamano=50
ColorFondo=Blanco

[CRM.Cte.CRMImporte]
Carpeta=CRM
Clave=Cte.CRMImporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.CRMCantidad]
Carpeta=CRM
Clave=Cte.CRMCantidad
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.CRMPresupuestoAsignado]
Carpeta=CRM
Clave=Cte.CRMPresupuestoAsignado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.CRMEtapa]
Carpeta=CRM
Clave=Cte.CRMEtapa
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.CRMCierreProbabilidad]
Carpeta=CRM
Clave=Cte.CRMCierreProbabilidad
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.CRMCierreFechaAprox]
Carpeta=CRM
Clave=Cte.CRMCierreFechaAprox
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[CRM.Cte.CRMCompetencia]
Carpeta=CRM
Clave=Cte.CRMCompetencia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=68
ColorFondo=Blanco
EspacioPrevio=S

[CRM.Cte.CRMInfluencia]
Carpeta=CRM
Clave=Cte.CRMInfluencia
Editar=S
ValidaNombre=S
3D=S
Tamano=68
ColorFondo=Blanco
LineaNueva=S

[CRM.Cte.CRMFuente]
Carpeta=CRM
Clave=Cte.CRMFuente
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=68
ColorFondo=Blanco

[Internet.Cte.Contrasena2]
Carpeta=Internet
Clave=Cte.Contrasena2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Personal.Cte.PersonalTelefonoMovil]
Carpeta=Personal
Clave=Cte.PersonalTelefonoMovil
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.Titulo]
Carpeta=Personal
Clave=Cte.Titulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Ford]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Ford
Clave=Ford
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CondicionVisible=General.Ford

[Ford.Cte.Cliente]
Carpeta=Ford
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Ford.Cte.Nombre]
Carpeta=Ford
Clave=Cte.Nombre
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Ford.Cte.FordDistribuidor]
Carpeta=Ford
Clave=Cte.FordDistribuidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Flotilla]
Carpeta=Ford
Clave=Cte.Flotilla
Editar=S
LineaNueva=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro
EspacioPrevio=S

[ReglaNegocio.Cte.ExcentoISAN]
Carpeta=ReglaNegocio
Clave=Cte.ExcentoISAN
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cte.Extencion1]
Carpeta=Ficha
Clave=Cte.Extencion1
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco

[Ficha.Cte.Extencion2]
Carpeta=Ficha
Clave=Cte.Extencion2
Editar=S
3D=S
Tamano=6
ColorFondo=Blanco
Pegado=S

[Ford.Cte.Fecha1]
Carpeta=Ford
Clave=Cte.Fecha1
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Fecha2]
Carpeta=Ford
Clave=Cte.Fecha2
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Fecha3]
Carpeta=Ford
Clave=Cte.Fecha3
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Fecha4]
Carpeta=Ford
Clave=Cte.Fecha4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ford.Cte.Fecha5]
Carpeta=Ford
Clave=Cte.Fecha5
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Personal.Cte.PersonalNombres]
Carpeta=Personal
Clave=Cte.PersonalNombres
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Personal.Cte.PersonalApellidoPaterno]
Carpeta=Personal
Clave=Cte.PersonalApellidoPaterno
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco

[Personal.Cte.PersonalApellidoMaterno]
Carpeta=Personal
Clave=Cte.PersonalApellidoMaterno
Editar=S
3D=S
Tamano=20
ColorFondo=Blanco
Pegado=S

[Perfiles]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Perfiles
Clave=Perfiles
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Arriba
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Perfiles.Cte.EsProveedor]
Carpeta=Perfiles
Clave=Cte.EsProveedor
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Perfiles.Cte.EsPersonal]
Carpeta=Perfiles
Clave=Cte.EsPersonal
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Perfiles.Cte.EsAgente]
Carpeta=Perfiles
Clave=Cte.EsAgente
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Perfiles.Cte.EsAlmacen]
Carpeta=Perfiles
Clave=Cte.EsAlmacen
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Perfiles.Cte.EsEspacio]
Carpeta=Perfiles
Clave=Cte.EsEspacio
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Perfiles.Cte.EsCentroCostos]
Carpeta=Perfiles
Clave=Cte.EsCentroCostos
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Perfiles.Cte.EsProyecto]
Carpeta=Perfiles
Clave=Cte.EsProyecto
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Perfiles.Cte.EsCentroTrabajo]
Carpeta=Perfiles
Clave=Cte.EsCentroTrabajo
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Perfiles.Cte.EsEstacionTrabajo]
Carpeta=Perfiles
Clave=Cte.EsEstacionTrabajo
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Perfiles.Cte.Cliente]
Carpeta=Perfiles
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Perfiles.Cte.Nombre]
Carpeta=Perfiles
Clave=Cte.Nombre
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[Acciones.Historico]
Nombre=Historico
Boton=0
Menu=&Ver
NombreDesplegar=Histórico de Cambios
EnMenu=S
TipoAccion=Expresion
Activo=S
ConCondicion=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+H
Antes=S

Expresion=Asigna(Info.Tabla, <T>Cte<T>)<BR>Asigna(Info.Llave, Carpeta.LlavePrimaria(<T>Ficha<T>, <T>|<T>))<BR>Si<BR> VersionConfig.RegHist y (SQL(<T>SELECT Estatus FROM CfgRegHist WHERE SysTabla=:tTabla<T>, Info.Tabla)=EstatusActivo)<BR>Entonces<BR> Forma(<T>CteHist<T>)<BR>Sino<BR> Informacion(<T>Es necesario activar la opción Registro Cambios Históricos (Automático) en la configuración de Versión<T>)<BR>Fin
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
[Acciones.Evaluaciones]
Nombre=Evaluaciones
Boton=103
Menu=&Edición
NombreDesplegar=E&valuaciones
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=EvaluacionCalificacion
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Asigna(Info.Clave, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)<BR>Asigna(Info.Aplica, <T>Clientes<T>)<BR>Asigna(Info.Nombre2, Cte:Agente.Nombre)

[Seguro.Cte.PolizaImporte]
Carpeta=Seguro
Clave=Cte.PolizaImporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Venta.Cte.Licencias]
Carpeta=Venta
Clave=Cte.Licencias
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Venta.Cte.LicenciasTipo]
Carpeta=Venta
Clave=Cte.LicenciasTipo
Editar=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
Efectos=[Negritas]

[Acciones.Movimientos]
Nombre=Movimientos
Boton=50
Menu=&Ver
UsaTeclaRapida=S
NombreDesplegar=&Movimientos del Cliente
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteMov
Activo=S
Visible=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Otros.Cte.Cuenta]
Carpeta=Otros
Clave=Cte.Cuenta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
EspacioPrevio=S

[Otros.Cta.Descripcion]
Carpeta=Otros
Clave=Cta.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Acciones.MovCte]
Nombre=MovCte
Boton=25
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=F12
NombreDesplegar=Generar &Movimientos...
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
ClaveAccion=MovCte
ActivoCondicion=Usuario.CteMov
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Aseguradora, Cte:Cte.Aseguradora)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.CteAcceso]
Nombre=CteAcceso
Boton=0
Menu=&Edición
NombreDesplegar=Acceso Especifico...
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CteAcceso
Activo=S
ConCondicion=S
Antes=S
GuardarAntes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
VisibleCondicion=General.NivelAccesoEsp y (Cte:Cte.NivelAcceso=<T>(Especifico)<T>)

[Acciones.CteOtrosDatos]
Nombre=CteOtrosDatos
Boton=58
Menu=&Edición
NombreDesplegar=&Otros Datos...
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteOtrosDatos
Activo=S
ConCondicion=S
Antes=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Ctrl+O
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Otros.Cte.CuentaRetencion]
Carpeta=Otros
Clave=Cte.CuentaRetencion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.CtaRetencion.Descripcion]
Carpeta=Otros
Clave=CtaRetencion.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[ReglaNegocio.Cte.PreciosInferioresMinimo]
Carpeta=ReglaNegocio
Clave=Cte.PreciosInferioresMinimo
Editar=S
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[Fiscal]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Fiscal
Clave=Fiscal
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
CarpetaVisible=S

[Fiscal.Cte.Cliente]
Carpeta=Fiscal
Clave=Cte.Cliente
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Plata
Efectos=[Negritas]
ColorFuente=Negro

[Fiscal.Cte.Nombre]
Carpeta=Fiscal
Clave=Cte.Nombre
3D=S
Tamano=39
ColorFondo=Plata
Efectos=[Negritas]

[Fiscal.Cte.FiscalRegimen]
Carpeta=Fiscal
Clave=Cte.FiscalRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.RFC]
Carpeta=Fiscal
Clave=Cte.RFC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.CURP]
Carpeta=Fiscal
Clave=Cte.CURP
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ford.Cte.FordZona]
Carpeta=Ford
Clave=Cte.FordZona
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.CtePedidoDef]
Nombre=CtePedidoDef
Boton=0
Menu=&Edición
NombreDesplegar=Pedido por O&misión...
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtePedidoDef
ConCondicion=S
Antes=S
DespuesGuardar=S
Visible=S
GuardarAntes=S
ActivoCondicion=Cte:Cte.PedidoDef
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[ReglaNegocio.Cte.PedidoDef]
Carpeta=ReglaNegocio
Clave=Cte.PedidoDef
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Ficha.Cte.eMailAuto]
Carpeta=Ficha
Clave=Cte.eMailAuto
Editar=S
LineaNueva=N
3D=S
Tamano=30
ColorFondo=Blanco

Pegado=S
[Acciones.CteEvento]
Nombre=CteEvento
Boton=0
Menu=&Edición
NombreDesplegar=Participación en Eventos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteEvento
Activo=S
Antes=S
GuardarAntes=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
DespuesGuardar=S
VisibleCondicion=General.Espacios

[Ficha.Cte.DireccionNumero]
Carpeta=Ficha
Clave=Cte.DireccionNumero
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco

[Ficha.Cte.TelefonosLada]
Carpeta=Ficha
Clave=Cte.TelefonosLada
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco
ValidaNombre=N

[Personal.Cte.PersonalTelefonosLada]
Carpeta=Personal
Clave=Cte.PersonalTelefonosLada
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco

[Acciones.CteTel]
Nombre=CteTel
Boton=0
Menu=&Edición
NombreDesplegar=Otros &Teléfonos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteTel
Activo=S
Visible=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.CtePension]
Nombre=CtePension
Boton=0
Menu=&Edición
NombreDesplegar=&Pensiones Alimenticias
EnMenu=S
TipoAccion=Formas
ClaveAccion=CtePension
Activo=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
VisibleCondicion=General.Autotransportes

[Fiscal.Cte.IEPS]
Carpeta=Fiscal
Clave=Cte.IEPS
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Internet.Cte.wMovVentas]
Carpeta=Internet
Clave=Cte.wMovVentas
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Fiscal.Cte.PITEX]
Carpeta=Fiscal
Clave=Cte.PITEX
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Acciones.CteUEN]
Nombre=CteUEN
Boton=0
Menu=&Edición
NombreDesplegar=Límite de Crédito a Nivel UEN
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteUEN
Antes=S
Activo=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
VisibleCondicion=Config.VentaLimiteCreditoNivelUEN


[Acciones.Politica]
Nombre=Politica
Boton=22
Menu=&Edición
NombreDesplegar=Política
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=Politica
Activo=S
ConCondicion=S
Antes=S
Visible=S
UsaTeclaRapida=S
TeclaRapida=Mayús+Ctrl+O
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CTE<T>)<BR>Asigna(Info.Clave, Cte:Cte.Cliente)

[AC.Cte.Cliente]
Carpeta=AC
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[AC.Cte.Nombre]
Carpeta=AC
Clave=Cte.Nombre
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata
ColorFuente=Negro
Efectos=[Negritas]

[AC.Cte.CapacidadPago]
Carpeta=AC
Clave=Cte.CapacidadPago
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFuente=Negro
ColorFondo=Plata

[Acciones.CapacidadPago]
Nombre=CapacidadPago
Boton=0
Menu=&Edición
NombreDesplegar=Capacidad Pago...
EnMenu=S
TipoAccion=Formas
Activo=S
ConCondicion=S
Antes=S
GuardarAntes=S
RefrescarDespues=S
ClaveAccion=CteCapacidadPago
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
VisibleCondicion=General.AC

[Otros.Cte.Intercompania]
Carpeta=Otros
Clave=Cte.Intercompania
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
EspacioPrevio=S
Tamano=20
ColorFondo=Blanco

[Venta.Cte.Agente3]
Carpeta=Venta
Clave=Cte.Agente3
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Agente3.Nombre]
Carpeta=Venta
Clave=Agente3.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Venta.Cte.Agente4]
Carpeta=Venta
Clave=Cte.Agente4
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Venta.Agente4.Nombre]
Carpeta=Venta
Clave=Agente4.Nombre
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata

[Venta.Cte.Publico]
Carpeta=Venta
Clave=Cte.Publico
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.OtrosDatosCteRep]
Nombre=OtrosDatosCteRep
Boton=0
Menu=&Edición
NombreDesplegar=Otros Datos - &Reportes
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteRep
Activo=S
ConCondicion=S
Antes=S
Visible=S
EspacioPrevio=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)


[Personal.Cte.Extranjero]
Carpeta=Personal
Clave=Cte.Extranjero
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco

[ReglaNegocio.Cte.DocumentacionCompleta]
Carpeta=ReglaNegocio
Clave=Cte.DocumentacionCompleta
Editar=S
LineaNueva=N
3D=S
Tamano=30
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.OperacionLimite]
Carpeta=ReglaNegocio
Clave=Cte.OperacionLimite
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[ReglaNegocio.Cte.CRMovVenta]
Carpeta=ReglaNegocio
Clave=Cte.CRMovVenta
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Acciones.RefCta]
Nombre=RefCta
Boton=110
Menu=&Edición
NombreDesplegar=&Referencias
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=RefCta
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Rama, <T>CXC<T>)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.PlantillasOffice]
Nombre=PlantillasOffice
Boton=0
Menu=&Archivo
UsaTeclaRapida=S
TeclaRapida=Ctrl+F11
NombreDesplegar=Plantillas &Office
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S
EspacioPrevio=S
Expresion=Asigna(Info.Forma, <T>Cte<T>)<BR>Asigna(Info.Nombre, <T>Clientes<T>)<BR>Asigna(Info.Modulo, Nulo)<BR>Asigna(Info.Mov, Nulo)<BR>Si<BR>  Forma(<T>PlantillasOffice<T>)<BR>Entonces<BR>   PlantillaOffice( Info.PlantillaID ) <BR>Fin

[Acciones.Mensajes]
Nombre=Mensajes
Boton=112
Menu=&Ver
NombreDesplegar=Mensajes
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=OutlookCte
Activo=S
ConCondicion=S
Antes=S
Visible=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)

[Fiscal.Cte.ImportadorRegimen]
Carpeta=Fiscal
Clave=Cte.ImportadorRegimen
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.ImportadorRegistro]
Carpeta=Fiscal
Clave=Cte.ImportadorRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Ficha.Cte.Grado]
Carpeta=Ficha
Clave=Cte.Grado
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco

[Acciones.ListaPoliticos]
Nombre=ListaPoliticos
Boton=0
Menu=&Ver
NombreDesplegar=Lista &Poíiticos
EnMenu=S
TipoAccion=Formas
ClaveAccion=ListaPoliticosLista
Activo=S
Visible=S

[Ficha.Cte.GLN]
Carpeta=Ficha
Clave=Cte.GLN
Editar=S
3D=S
Tamano=10
ColorFondo=Blanco

[Personal.Cte.PersonalSMS]
Carpeta=Personal
Clave=Cte.PersonalSMS
Editar=S
3D=S
Tamano=13
ColorFondo=Blanco

[Ficha.Cte.DireccionNumeroInt]
Carpeta=Ficha
Clave=Cte.DireccionNumeroInt
Editar=S
3D=S
Pegado=S
Tamano=6
ColorFondo=Blanco

[Acciones.CteDepto]
Nombre=CteDepto
Boton=0
Menu=&Edición
NombreDesplegar=&Departamentos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteDepto
Activo=S
Visible=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)

[Acciones.CteCFD]
Nombre=CteCFD
Boton=0
Menu=&Edición
NombreDesplegar=Datos CFD
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteCFD
Activo=S
ConCondicion=S
Antes=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
VisibleCondicion=(Empresa.CFD) o (General.CFDFlex)

[Fiscal.Cte.RPU]
Carpeta=Fiscal
Clave=Cte.RPU
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.SIRAC]
Carpeta=Fiscal
Clave=Cte.SIRAC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Valores.Columnas]
0=278
1=234
VerCampo=340
VerValor=318

[FormaExtraValor]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Características
Clave=FormaExtraValor
Filtros=S
OtroOrden=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=FormaExtraValor
Fuente={Tahoma, 8, Negro, []}
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Plata
ListaEnCaptura=(Lista)
ListaOrden=(Lista)
FiltroAplicaEn=FormaExtraCampo.Grupo
FiltroPredefinido=S
FiltroAutoCampo=FormaExtraCampo.Grupo
FiltroAutoValidar=FormaExtraCampo.Grupo
FiltroAutoOrden=FormaExtraCampo.Orden
FiltroGrupo1=FormaExtraCampo.Grupo
FiltroValida1=FormaExtraCampo.Grupo
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroTodoFinal=S
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
HojaFondoGris=S
HojaSinBorde=S
PermiteEditar=S

FiltroGeneral=FormaExtraValor.FormaTipo IN (SELECT FormaTipo FROM dbo.fnFormaExtraVisibleCliente(<T>{Cte:Cte.Categoria}<T>, <T>{Cte:Cte.Grupo}<T>, <T>{Cte:Cte.Familia}<T>)) AND FormaExtraValor.Aplica=<T>Cliente<T> AND FormaExtraValor.AplicaClave=<T>{Cte:Cte.Cliente}<T>
CondicionVisible=General.CamposExtras<><T>Campos Extras<T>
[FormaExtraValor.VerCampo]
Carpeta=FormaExtraValor
Clave=VerCampo
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Plata
IgnoraFlujo=N

[FormaExtraValor.VerValor]
Carpeta=FormaExtraValor
Clave=VerValor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
Efectos=[Negritas]

[FormaExtraValor.Columnas]
VerCampo=346
VerValor=364

[Acciones.CteMapeoMov]
Nombre=CteMapeoMov
Boton=0
Menu=&Edición
NombreDesplegar=Mapeo Movimientos
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteMapeoMov
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
Visible=S

[Comentarios]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Comentarios
Clave=Comentarios
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Cte.Comentarios
CarpetaVisible=S
AlinearTodaCarpeta=S

[Comentarios.Cte.Comentarios]
Carpeta=Comentarios
Clave=Cte.Comentarios
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100x10
ColorFondo=Blanco
ColorFuente=Negro

[Fiscal.Cte.IFE]
Carpeta=Fiscal
Clave=Cte.IFE
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Fiscal.Cte.Pasaporte]
Carpeta=Fiscal
Clave=Cte.Pasaporte
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco

[Seguro.Cte.PolizaFechaEmision]
Carpeta=Seguro
Clave=Cte.PolizaFechaEmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=25

[Seguro.Cte.PolizaVencimiento]
Carpeta=Seguro
Clave=Cte.PolizaVencimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=25

[Seguro.Cte.NotificarA]
Carpeta=Seguro
Clave=Cte.NotificarA
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco
EspacioPrevio=S

[Seguro.Cte.NoriticarATelefonos]
Carpeta=Seguro
Clave=Cte.NoriticarATelefonos
Editar=S
ValidaNombre=S
3D=S
Tamano=66
ColorFondo=Blanco
LineaNueva=S

[Foto.Cte.Foto]
Carpeta=Foto
Clave=Cte.Foto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100x100
ColorFondo=Blanco
ColorFuente=Negro

[Personal.Cte.Peso]
Carpeta=Personal
Clave=Cte.Peso
Editar=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco
LineaNueva=S
EspacioPrevio=S

[Personal.Cte.Estatura]
Carpeta=Personal
Clave=Cte.Estatura
Editar=S
ValidaNombre=S
3D=S
Tamano=8
ColorFondo=Blanco
Pegado=S

[Personal.Cte.GrupoSanguineo]
Carpeta=Personal
Clave=Cte.GrupoSanguineo
Editar=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[Personal.Cte.GrupoSanguineoRH]
Carpeta=Personal
Clave=Cte.GrupoSanguineoRH
Editar=S
ValidaNombre=N
3D=S
Pegado=N
Tamano=14
ColorFondo=Blanco

[Acciones.SugerirRFC]
Nombre=SugerirRFC
Boton=0
Menu=&Edición
NombreDesplegar=Sugerir &RFC (Personas Fisicas)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S

Expresion=Asigna(Temp.Texto, SQL(<T>SELECT dbo.fnCalculaRFC(:tNombre, :tPaterno, :tMaterno, :fNacimiento, :tRegimen)<T>, Cte:Cte.PersonalNombres, Cte:Cte.PersonalApellidoPaterno, Cte:Cte.PersonalApellidoMaterno, Cte:Cte.FechaNacimiento, Cte:Cte.FiscalRegimen))<BR>Si(SQL(<T>spRegistroOk :tCual, :tRegistro, :tEmpresa<T>, <T>RFC<T>, Temp.Texto, Empresa),Asigna(Cte:Cte.RFC, Temp.Texto))
[Personal.Cte.RFC]
Carpeta=Personal
Clave=Cte.RFC
3D=S
Tamano=15
ColorFondo=Plata
Efectos=[Negritas]

[Acciones.ExpedienteFamiliar]
Nombre=ExpedienteFamiliar
Boton=0
Menu=&Maestros
NombreDesplegar=E&xpedientes Familiares
EnMenu=S
TipoAccion=Formas
ClaveAccion=ExpedienteFamiliar
Activo=S
Visible=S
EspacioPrevio=S

[Personal.Cte.ExpedienteFamiliar]
Carpeta=Personal
Clave=Cte.ExpedienteFamiliar
Editar=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco
LineaNueva=S

[Personal.ExpedienteFamiliar.Nombre]
Carpeta=Personal
Clave=ExpedienteFamiliar.Nombre
Editar=S
3D=S
Tamano=40
ColorFondo=Plata

[Acciones.CteEntregaMercancia]
Nombre=CteEntregaMercancia
Boton=0
Menu=&Edición
NombreDesplegar=Datos Entrega Mercancia
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteEntregaMercancia
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
Visible=S

[Acciones.CteCto]
Nombre=CteCto
Boton=60
Menu=&Edición
NombreDesplegar=&Contactos del Cliente
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteCto
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
Visible=S

[Acciones.CamposExtras]
Nombre=CamposExtras
Boton=104
Menu=&Edición
UsaTeclaRapida=S
TeclaRapida=Ctrl+1
NombreDesplegar=General.CamposExtras+<T>...<T>
GuardarAntes=S
RefrescarDespues=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Expresion
Expresion=Si<BR>  General.CamposExtras=<T>Campos Extras<T><BR>Entonces<BR>  CamposExtrasContacto(<T>Cliente<T>, Cte:Cte.Tipo, Cte:Cte.Cliente)<BR>Sino<BR>  Asigna(Info.Aplica, <T>Cliente<T>)<BR>  Asigna(Info.Clave, Cte:Cte.Cliente)<BR>  Asigna(Info.Nombre, Cte:Cte.Nombre)<BR>  Asigna(Info.Modulo, Nulo)<BR>  Asigna(Info.Mov, Nulo)<BR>  Asigna(Info.Categoria, Cte:Cte.Categoria)<BR>  Asigna(Info.Grupo, Cte:Cte.Grupo)<BR>  Asigna(Info.Familia, Cte:Cte.Familia)<BR>  Asigna(Info.Departamento, Nulo)<BR>  Asigna(Info.Puesto, Nulo)<BR>  Asigna(Info.SIC, Nulo)<BR><BR>  Asigna(Temp.Reg, SQL(<T>spFormaExtraVisible :tAplica, :tModulo, :tMov, :tCat, :tGrupo, :tFam, :tDepto, :tPuesto, :tSIC<T>, Info.Aplica, Info.Modulo, Info.Mov, Info.Categoria, Info.Grupo, Info.Familia, Info.Departamento, Info.Puesto, Info.SIC))<BR>  Si(Temp.Reg[1]>1, Si(no Forma(<T>EspecificarFormaTipo<T>), AbortarOperacion), Asigna(Info.FormaTipo, Temp.Reg[2]))<BR>  Si(ConDatos(Info.FormaTipo), iForma(Info.FormaTipo, Info.Aplica, Info.Clave, Info.Nombre), Informacion(<T>No Tiene Definida Ninguna Forma<T>))<BR>Fin
Activo=S
ConCondicion=S
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
Visible=S

[Ficha.Cte.SIC]
Carpeta=Ficha
Clave=Cte.SIC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[Ficha.SIC.Nombre]
Carpeta=Ficha
Clave=SIC.Nombre
3D=S
Tamano=46
ColorFondo=Plata

[Ficha.Cte.ReferenciaBancaria]
Carpeta=Ficha
Clave=Cte.ReferenciaBancaria
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco
EspacioPrevio=S

[Oportunidad.CteOportunidad.ImporteEstimado]
Carpeta=Oportunidad
Clave=CteOportunidad.ImporteEstimado
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.Etapa]
Carpeta=Oportunidad
Clave=CteOportunidad.Etapa
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
ColorFuente=Negro

[Oportunidad.CteOportunidad.Avance]
Carpeta=Oportunidad
Clave=CteOportunidad.Avance
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.ProbabilidadCierre]
Carpeta=Oportunidad
Clave=CteOportunidad.ProbabilidadCierre
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.FechaEstimadaCierre]
Carpeta=Oportunidad
Clave=CteOportunidad.FechaEstimadaCierre
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Oportunidad.CteOportunidad.PresupuestoAsignado]
Carpeta=Oportunidad
Clave=CteOportunidad.PresupuestoAsignado
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro
Tamano=20

[Competidores.CteCompetidor.Competidor]
Carpeta=Competidores
Clave=CteCompetidor.Competidor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Producto]
Carpeta=Competidores
Clave=CteCompetidor.Producto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Orden]
Carpeta=Competidores
Clave=CteCompetidor.Orden
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Importe]
Carpeta=Competidores
Clave=CteCompetidor.Importe
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Moneda]
Carpeta=Competidores
Clave=CteCompetidor.Moneda
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Situacion]
Carpeta=Competidores
Clave=CteCompetidor.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Fecha]
Carpeta=Competidores
Clave=CteCompetidor.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.CteCompetidor.Observaciones]
Carpeta=Competidores
Clave=CteCompetidor.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco
ColorFuente=Negro

[Competidores.Columnas]
Competidor=191
Producto=120
Orden=36
Importe=90
Moneda=64
Situacion=134
Fecha=64
Observaciones=438

[Oportunidad.CteOportunidad.Observaciones]
Carpeta=Oportunidad
Clave=CteOportunidad.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=N
Tamano=80x3
ColorFondo=Blanco
ColorFuente=Negro

[UsoServicio]
Estilo=Hoja
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Uso de Servicios
Clave=UsoServicio
Detalle=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=CteUsoServicio
Fuente={Tahoma, 8, Negro, []}
VistaMaestra=Cte
LlaveLocal=CteUsoServicio.Cliente
LlaveMaestra=Cte.Cliente
HojaTitulos=S
HojaMostrarColumnas=S
HojaMostrarRenglones=S
HojaColoresPorEstatus=S
HojaPermiteInsertar=S
HojaPermiteEliminar=S
HojaVistaOmision=Automática
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CondicionVisible=General.CteUsoServicio
[UsoServicio.CteUsoServicio.Servicio]
Carpeta=UsoServicio
Clave=CteUsoServicio.Servicio
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Fecha]
Carpeta=UsoServicio
Clave=CteUsoServicio.Fecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Porcentaje]
Carpeta=UsoServicio
Clave=CteUsoServicio.Porcentaje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Evaluacion]
Carpeta=UsoServicio
Clave=CteUsoServicio.Evaluacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[UsoServicio.CteUsoServicio.Observaciones]
Carpeta=UsoServicio
Clave=CteUsoServicio.Observaciones
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=255
ColorFondo=Blanco

[UsoServicio.Columnas]
Servicio=293
Fecha=94
Porcentaje=38
Evaluacion=87
Observaciones=189

[Acciones.UsoServicio]
Nombre=UsoServicio
Boton=0
Menu=&Maestros
NombreDesplegar=Servicios (Usos)
EnMenu=S
TipoAccion=Formas
ClaveAccion=UsoServicio
Activo=S
VisibleCondicion=General.CteUsoServicio

[Detalle.Columnas]
CampoNombre=311
Valor=303
ValorAnterior=285

[Acciones.MapaTodos]
Nombre=MapaTodos
Boton=0
NombreDesplegar=Ver Mapa (&Todos)
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
Activo=S
Visible=S

ClaveAccion=ExplorarMapaCte
BarraBtnFondo=Plata
BarraBtnFuente={MS Sans Serif, 8, Negro, []}
BarraBtnTxtAlign=Izquierda
BarraBtnTxtPos=Arriba
BarraBtnSubtitFuente={MS Sans Serif, 8, Negro, []}
BarraBtnDescripFuente={MS Sans Serif, 8, Negro, []}
BarraBtnImgPos=Arriba
BarraBtnImgAlign=Izquierda
BarraBtnSubtituloAli=Izquierda
BarraBtnDescripcionAli=Izquierda
BarraBtnSubtituloPos=Arriba
BarraBtnDescripcionPos=Arriba
AccionSecTextoFuente={MS Sans Serif, 8, Negro, []}
AccionSecColor=Plata
AccionSecAli=Izquierda
[Acciones.MapaSeleccion]
Nombre=MapaSeleccion
Boton=0
NombreDesplegar=Ver Mapa (&Selección)
EnMenu=S
TipoAccion=Expresion
Activo=S
Visible=S


Expresion=RegistrarSeleccion(<T>(Carpeta Abrir)<T>)<BR>Forma(<T>ExpMapaCteSeleccion<T>)
BarraBtnFondo=Plata
BarraBtnFuente={MS Sans Serif, 8, Negro, []}
BarraBtnTxtAlign=Izquierda
BarraBtnTxtPos=Arriba
BarraBtnSubtitFuente={MS Sans Serif, 8, Negro, []}
BarraBtnDescripFuente={MS Sans Serif, 8, Negro, []}
BarraBtnImgPos=Arriba
BarraBtnImgAlign=Izquierda
BarraBtnSubtituloAli=Izquierda
BarraBtnDescripcionAli=Izquierda
BarraBtnSubtituloPos=Arriba
BarraBtnDescripcionPos=Arriba
AccionSecTextoFuente={MS Sans Serif, 8, Negro, []}
AccionSecColor=Plata
AccionSecAli=Izquierda

[ReglaNegocio.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.ListaPreciosEsp
Cte.ListaPreciosEsp=Cte.Descuento
Cte.Descuento=Cte.BonificacionTipo
Cte.BonificacionTipo=Cte.Bonificacion
Cte.Bonificacion=Cte.Condicion
Cte.Condicion=Cte.FormaEnvio
Cte.FormaEnvio=Cte.ZonaImpuesto
Cte.ZonaImpuesto=Cte.Proyecto
Cte.Proyecto=Cte.AlmacenDef
Cte.AlmacenDef=Cte.OperacionLimite
Cte.OperacionLimite=Cte.VtasConsignacion
Cte.VtasConsignacion=Cte.AlmacenVtasConsignacion
Cte.AlmacenVtasConsignacion=Cte.BloquearMorosos
Cte.BloquearMorosos=Cte.ChecarCredito
Cte.ChecarCredito=Cte.RecorrerVencimiento
Cte.RecorrerVencimiento=Cte.ModificarVencimiento
Cte.ModificarVencimiento=Cte.CreditoEspecial
Cte.CreditoEspecial=Cte.Credito
Cte.Credito=Cte.OtrosCargos
Cte.OtrosCargos=Cte.CRMovVenta
Cte.CRMovVenta=Cte.CreditoConLimite
Cte.CreditoConLimite=Cte.CreditoConLimitePedidos
Cte.CreditoConLimitePedidos=Cte.CreditoConDias
Cte.CreditoConDias=Cte.CreditoConCondiciones
Cte.CreditoConCondiciones=Cte.CreditoLimite
Cte.CreditoLimite=Cte.CreditoMoneda
Cte.CreditoMoneda=Cte.CreditoLimitePedidos
Cte.CreditoLimitePedidos=Cte.CreditoDias
Cte.CreditoDias=Cte.CreditoCondiciones
Cte.CreditoCondiciones=Cte.PedidosParciales
Cte.PedidosParciales=Cte.DescuentoRecargos
Cte.DescuentoRecargos=Cte.ExcentoISAN
Cte.ExcentoISAN=Cte.Conciliar
Cte.Conciliar=Cte.FormasPagoRestringidas
Cte.FormasPagoRestringidas=Cte.PreciosInferioresMinimo
Cte.PreciosInferioresMinimo=Cte.PedidoDef
Cte.PedidoDef=Cte.DocumentacionCompleta
Cte.DocumentacionCompleta=(Fin)






[Ford.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.FordDistribuidor
Cte.FordDistribuidor=Cte.FordZona
Cte.FordZona=Cte.Fecha1
Cte.Fecha1=Cte.Fecha2
Cte.Fecha2=Cte.Fecha3
Cte.Fecha3=Cte.Fecha4
Cte.Fecha4=Cte.Fecha5
Cte.Fecha5=Cte.Flotilla
Cte.Flotilla=(Fin)

[Perfiles.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.EsProveedor
Cte.EsProveedor=Cte.EsPersonal
Cte.EsPersonal=Cte.EsAgente
Cte.EsAgente=Cte.EsAlmacen
Cte.EsAlmacen=Cte.EsCentroCostos
Cte.EsCentroCostos=Cte.EsProyecto
Cte.EsProyecto=Cte.EsCentroTrabajo
Cte.EsCentroTrabajo=Cte.EsEstacionTrabajo
Cte.EsEstacionTrabajo=Cte.EsEspacio
Cte.EsEspacio=(Fin)



[Acciones.CteArtEmpaque]
Nombre=CteArtEmpaque
Boton=0
Menu=&Edición
NombreDesplegar=Empaques por Cliente...
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteArtEmpaque
ConCondicion=S
Antes=S
Visible=S

















GuardarAntes=S








ActivoCondicion=Config.VentaCteArtEmpaqueCorrugado
EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)
























































































































[Acciones.IntelisisSL]
Nombre=IntelisisSL
Boton=0
Menu=&Edición
NombreDesplegar=&Licencias
GuardarAntes=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=IntelisisSL
ActivoCondicion=General.Intelisis
Antes=S
AntesExpresiones=Asigna(Info.Cliente, Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
DespuesGuardar=S
VisibleCondicion=General.Intelisis

[SituacionCta]
Estilo=Iconos
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Situaciones por Área
Clave=SituacionCta
Filtros=S
RefrescarAlEntrar=S
AlineacionAutomatica=S
AcomodarTexto=S
Zona=A1
Vista=SituacionCta
Fuente={Tahoma, 8, Negro, []}
IconosCampo=CtaSituacion.Icono
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
ElementosPorPagina=200
CampoColorLetras=Negro
CampoColorFondo=Blanco
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
IconosSubTitulo=<T>Área<T>
ListaEnCaptura=(Lista)

IconosNombre=SituacionCta:SituacionCta.Area
FiltroGeneral=SituacionCta.Rama=<T>CXC<T> AND SituacionCta.Cuenta=<T>{Cte:Cte.Cliente}<T>
CondicionVisible=General.SituacionesPorArea
[SituacionCta.SituacionCta.Situacion]
Carpeta=SituacionCta
Clave=SituacionCta.Situacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionFecha]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionFecha
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionUsuario]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionUsuario
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=10
ColorFondo=Blanco

[SituacionCta.SituacionCta.SituacionNota]
Carpeta=SituacionCta
Clave=SituacionCta.SituacionNota
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco

[FormaExtraValor.ListaEnCaptura]
(Inicio)=VerCampo
VerCampo=VerValor
VerValor=(Fin)

[FormaExtraValor.ListaOrden]
(Inicio)=GrupoOrden	(Acendente)
GrupoOrden	(Acendente)=FormaExtraCampo.Orden	(Acendente)
FormaExtraCampo.Orden	(Acendente)=(Fin)


[SituacionCta.Columnas]
0=188
1=148
2=102
3=109
4=222


[Ecuador]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Ecuador
Clave=Ecuador
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=Cte.TipoRegistro

CondicionVisible=Empresa.EsEcuador
[Ecuador.Cte.TipoRegistro]
Carpeta=Ecuador
Clave=Cte.TipoRegistro
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco










































































[Fiscal.Cte.FiscalGenerar]
Carpeta=Fiscal
Clave=Cte.FiscalGenerar
Editar=S
LineaNueva=S
3D=S
Tamano=30
ColorFondo=Blanco

EspacioPrevio=S









[Fiscal.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.FiscalRegimen
Cte.FiscalRegimen=Cte.FiscalZona
Cte.FiscalZona=Cte.RFC
Cte.RFC=Cte.CURP
Cte.CURP=Cte.IFE
Cte.IFE=Cte.Pasaporte
Cte.Pasaporte=Cte.IEPS
Cte.IEPS=Cte.PITEX
Cte.PITEX=Cte.RPU
Cte.RPU=Cte.SIRAC
Cte.SIRAC=Cte.ImportadorRegimen
Cte.ImportadorRegimen=Cte.ImportadorRegistro
Cte.ImportadorRegistro=Cte.FiscalGenerar
Cte.FiscalGenerar=(Fin)

[Fiscal.Cte.FiscalZona]
Carpeta=Fiscal
Clave=Cte.FiscalZona
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=25
ColorFondo=Blanco





























[Personal.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.PersonalNombres
Cte.PersonalNombres=Cte.PersonalApellidoPaterno
Cte.PersonalApellidoPaterno=Cte.PersonalApellidoMaterno
Cte.PersonalApellidoMaterno=Cte.RFC
Cte.RFC=Cte.Parentesco
Cte.Parentesco=Cte.Responsable
Cte.Responsable=Cte.ExpedienteFamiliar
Cte.ExpedienteFamiliar=ExpedienteFamiliar.Nombre
ExpedienteFamiliar.Nombre=Cte.PersonalDireccion
Cte.PersonalDireccion=Cte.PersonalEntreCalles
Cte.PersonalEntreCalles=Cte.PersonalPlano
Cte.PersonalPlano=Cte.PersonalDelegacion
Cte.PersonalDelegacion=Cte.PersonalColonia
Cte.PersonalColonia=Cte.PersonalCodigoPostal
Cte.PersonalCodigoPostal=Cte.PersonalPoblacion
Cte.PersonalPoblacion=Cte.PersonalEstado
Cte.PersonalEstado=Cte.PersonalPais
Cte.PersonalPais=Cte.PersonalTelefonos
Cte.PersonalTelefonos=Cte.PersonalTelefonosLada
Cte.PersonalTelefonosLada=Cte.PersonalTelefonoMovil
Cte.PersonalTelefonoMovil=Cte.PersonalSMS
Cte.PersonalSMS=Cte.FechaNacimiento
Cte.FechaNacimiento=Edad
Edad=Cte.Extranjero
Cte.Extranjero=Cte.Sexo
Cte.Sexo=Cte.Religion
Cte.Religion=Cte.Profesion
Cte.Profesion=Cte.Puesto
Cte.Puesto=Cte.Titulo
Cte.Titulo=Cte.EstadoCivil
Cte.EstadoCivil=Cte.Conyuge
Cte.Conyuge=Cte.FechaMatrimonio
Cte.FechaMatrimonio=Cte.NumeroHijos
Cte.NumeroHijos=Cte.Peso
Cte.Peso=Cte.Estatura
Cte.Estatura=Cte.GrupoSanguineo
Cte.GrupoSanguineo=Cte.GrupoSanguineoRH
Cte.GrupoSanguineoRH=Cte.Alergias
Cte.Alergias=Cte.Fuma
Cte.Fuma=Cte.FacturarCte
Cte.FacturarCte=CteFacturarA.Nombre
CteFacturarA.Nombre=Cte.FacturarCteEnviarA
Cte.FacturarCteEnviarA=CteEnviarAFacturarA.Nombre
CteEnviarAFacturarA.Nombre=Cte.TieneMovimientos
Cte.TieneMovimientos=(Fin)

[Personal.Cte.TieneMovimientos]
Carpeta=Personal
Clave=Cte.TieneMovimientos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco






[Otros.Cte.TieneMovimientos]
Carpeta=Otros
Clave=Cte.TieneMovimientos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco









[WMS]
Estilo=Ficha
Pestana=S
Clave=WMS
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)
PestanaOtroNombre=S
PestanaNombre=WMS

CondicionVisible=General.WMS
[WMS.Cte.DefPosicionRecibo]
Carpeta=WMS
Clave=Cte.DefPosicionRecibo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

EspacioPrevio=S
[WMS.Cte.DefPosicionSurtido]
Carpeta=WMS
Clave=Cte.DefPosicionSurtido
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[WMS.Cte.TarimasChep]
Carpeta=WMS
Clave=Cte.TarimasChep
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco
Tamano=20

[Acciones.CteTarimaChep]
Nombre=CteTarimaChep
Boton=0
Menu=&Edición
NombreDesplegar=Tarimas Chep
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteTarimaChep
Activo=S
ConCondicion=S
Antes=S






EjecucionCondicion=ConDatos(Cte:Cte.Cliente)
AntesExpresiones=Asigna(Info.Cliente,Cte:Cte.Cliente)<BR>Asigna(Info.Nombre, Cte:Cte.Nombre)
VisibleCondicion=(General.WMS) y (Cte:Cte.TarimasChep)
[WMS.ListaEnCaptura]
(Inicio)=Cte.AlmacenDef
Cte.AlmacenDef=Cte.DefPosicionRecibo
Cte.DefPosicionRecibo=Cte.DefPosicionSurtido
Cte.DefPosicionSurtido=Cte.TarimasChep
Cte.TarimasChep=(Fin)

[WMS.Cte.AlmacenDef]
Carpeta=WMS
Clave=Cte.AlmacenDef
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






























[CRM.Cte.SincronizarCRM]
Carpeta=CRM
Clave=Cte.SincronizarCRM
Editar=S
LineaNueva=S
ValidaNombre=N
3D=S
ColorFondo=Blanco
EspacioPrevio=S









Tamano=20
[Acciones.ActividadesCRM]
Nombre=ActividadesCRM
Boton=0
EsDefault=S
NombreDesplegar=Actividades Dynamics CRM
EnMenu=S
TipoAccion=Expresion
Activo=S
Menu=&Edición





















































EspacioPrevio=S








Expresion=asigna(CteX.Direccion, SQL(<T>SELECT UrlCRM FROM EmpresaGral WHERE empresa = :tEmpresa<T>,  Empresa ))<BR>Asigna(Info.Descripcion,CteX.Direccion + <T>/Workplace/home_activities.aspx<T>)<BR>Browser(Info.Descripcion ,<T>Informacion de CRM<T>)
VisibleCondicion=Cte:Cte.SincronizarCRM









[Adicionales]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Adicionales
Clave=Adicionales
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaColorFondo=Plata
FichaAlineacionDerecha=S
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)


PermiteEditar=S
CondicionVisible=General.POS
[Adicionales.Cte.FechaNacimiento]
Carpeta=Adicionales
Clave=Cte.FechaNacimiento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[Adicionales.Cte.Religion]
Carpeta=Adicionales
Clave=Cte.Religion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Adicionales.Cte.Sexo]
Carpeta=Adicionales
Clave=Cte.Sexo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Adicionales.Cte.Profesion]
Carpeta=Adicionales
Clave=Cte.Profesion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Adicionales.Cte.Puesto]
Carpeta=Adicionales
Clave=Cte.Puesto
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Adicionales.Cte.EstadoCivil]
Carpeta=Adicionales
Clave=Cte.EstadoCivil
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Adicionales.Cte.Conyuge]
Carpeta=Adicionales
Clave=Cte.Conyuge
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Adicionales.Cte.NumeroHijos]
Carpeta=Adicionales
Clave=Cte.NumeroHijos
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20
[Adicionales.Cte.Fuma]
Carpeta=Adicionales
Clave=Cte.Fuma
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

Tamano=20










[CRM.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.CRMImporte
Cte.CRMImporte=Cte.CRMCantidad
Cte.CRMCantidad=Cte.CRMPresupuestoAsignado
Cte.CRMPresupuestoAsignado=Cte.CRMEtapa
Cte.CRMEtapa=Cte.CRMCierreProbabilidad
Cte.CRMCierreProbabilidad=Cte.CRMCierreFechaAprox
Cte.CRMCierreFechaAprox=Cte.CRMCompetencia
Cte.CRMCompetencia=Cte.CRMInfluencia
Cte.CRMInfluencia=Cte.CRMFuente
Cte.CRMFuente=Cte.Descripcion1
Cte.Descripcion1=Cte.Descripcion2
Cte.Descripcion2=Cte.Descripcion3
Cte.Descripcion3=Cte.Descripcion4
Cte.Descripcion4=Cte.Descripcion5
Cte.Descripcion5=Cte.Descripcion6
Cte.Descripcion6=Cte.Descripcion7
Cte.Descripcion7=Cte.Descripcion8
Cte.Descripcion8=Cte.Descripcion9
Cte.Descripcion9=Cte.Descripcion10
Cte.Descripcion10=Cte.Descripcion11
Cte.Descripcion11=Cte.Descripcion12
Cte.Descripcion12=Cte.Descripcion13
Cte.Descripcion13=Cte.Descripcion14
Cte.Descripcion14=Cte.Descripcion15
Cte.Descripcion15=Cte.Descripcion16
Cte.Descripcion16=Cte.Descripcion17
Cte.Descripcion17=Cte.Descripcion18
Cte.Descripcion18=Cte.Descripcion19
Cte.Descripcion19=Cte.Descripcion20
Cte.Descripcion20=Cte.SincronizarCRM
Cte.SincronizarCRM=(Fin)


























[Ficha.Cte.MapaUbicacion]
Carpeta=Ficha
Clave=Cte.MapaUbicacion
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco






























































































[Acciones.CteDireccionFiscal]
Nombre=CteDireccionFiscal
Boton=104
Menu=&Edición
NombreDesplegar=Dirección Fiscal
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CteDireccionFiscal
Activo=S
Visible=S









































[Adicionales.ListaEnCaptura]
(Inicio)=Cte.FechaNacimiento
Cte.FechaNacimiento=Cte.Religion
Cte.Religion=Cte.Sexo
Cte.Sexo=Cte.Profesion
Cte.Profesion=Cte.Puesto
Cte.Puesto=Cte.EstadoCivil
Cte.EstadoCivil=Cte.Conyuge
Cte.Conyuge=Cte.NumeroHijos
Cte.NumeroHijos=Cte.Fuma
Cte.Fuma=(Fin)
























[Ficha.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Tipo
Cte.Tipo=Cte.Rama
Cte.Rama=Cte.Estatus
Cte.Estatus=Cte.Nombre
Cte.Nombre=Cte.Grado
Cte.Grado=Cte.Categoria
Cte.Categoria=Cte.NombreCorto
Cte.NombreCorto=Cte.Grupo
Cte.Grupo=Cte.RFC
Cte.RFC=Cte.GLN
Cte.GLN=Cte.Familia
Cte.Familia=Cte.CURP
Cte.CURP=Cte.SIC
Cte.SIC=SIC.Nombre
SIC.Nombre=Cte.Direccion
Cte.Direccion=Cte.DireccionNumero
Cte.DireccionNumero=Cte.DireccionNumeroInt
Cte.DireccionNumeroInt=Cte.EntreCalles
Cte.EntreCalles=Cte.Plano
Cte.Plano=Cte.Observaciones
Cte.Observaciones=Cte.Delegacion
Cte.Delegacion=Cte.Colonia
Cte.Colonia=Cte.CodigoPostal
Cte.CodigoPostal=Cte.Ruta
Cte.Ruta=Cte.Poblacion
Cte.Poblacion=Cte.Estado
Cte.Estado=Cte.Pais
Cte.Pais=Cte.MapaUbicacion
Cte.MapaUbicacion=Cte.ReferenciaBancaria
Cte.ReferenciaBancaria=Cte.Telefonos
Cte.Telefonos=Cte.TelefonosLada
Cte.TelefonosLada=Cte.Fax
Cte.Fax=Cte.PedirTono
Cte.PedirTono=Cte.eMailAuto
Cte.eMailAuto=Cte.Contacto1
Cte.Contacto1=Cte.Extencion1
Cte.Extencion1=Cte.Contacto2
Cte.Contacto2=Cte.Extencion2
Cte.Extencion2=Cte.eMail1
Cte.eMail1=Cte.eMail2
Cte.eMail2=(Fin)





























[Acciones.CECuotasClientes]
Nombre=CECuotasClientes
Boton=0
Menu=&Edición
NombreDesplegar=Configuración de Cuotas para Alumnos
GuardarAntes=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Formas
ClaveAccion=CECuotasClientes
Activo=S
Antes=S
BarraBtnFondo=Plata
BarraBtnFuente={MS Sans Serif, 8, Negro, []}
BarraBtnTxtAlign=Izquierda
BarraBtnTxtPos=Arriba
BarraBtnSubtitFuente={MS Sans Serif, 8, Negro, []}
BarraBtnDescripFuente={MS Sans Serif, 8, Negro, []}
BarraBtnImgPos=Arriba
BarraBtnImgAlign=Izquierda
AccionSecTextoFuente={MS Sans Serif, 8, Negro, []}
AccionSecColor=Plata
AccionSecAli=Izquierda













AntesExpresiones=Asigna(Info.Cliente,Cte:Cte.Cliente)
VisibleCondicion=Usuario.CE
BarraBtnSubtituloAli=Izquierda
BarraBtnDescripcionAli=Izquierda
BarraBtnSubtituloPos=Arriba
BarraBtnDescripcionPos=Arriba
[Acciones.CEExportarAlumno]
Nombre=CEExportarAlumno
Boton=81
NombreDesplegar=Exportar a Alumno
GuardarAntes=S
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CEExportarAlumno
Activo=S
ConCondicion=S
EjecucionConError=S
Antes=S
BarraBtnFondo=Plata
BarraBtnFuente={MS Sans Serif, 8, Negro, []}
BarraBtnTxtAlign=Izquierda
BarraBtnTxtPos=Arriba
BarraBtnSubtitFuente={MS Sans Serif, 8, Negro, []}
BarraBtnDescripFuente={MS Sans Serif, 8, Negro, []}
BarraBtnImgPos=Arriba
BarraBtnImgAlign=Izquierda
BarraBtnSubtituloAli=Izquierda
BarraBtnDescripcionAli=Izquierda
BarraBtnSubtituloPos=Arriba
BarraBtnDescripcionPos=Arriba
AccionSecTextoFuente={MS Sans Serif, 8, Negro, []}
AccionSecColor=Plata
AccionSecAli=Izquierda













EspacioPrevio=S











Menu=&Edición
EjecucionCondicion=Condatos(Cte:Cte.PersonalNombres) y Condatos(Cte:Cte.PersonalApellidoPaterno) y Condatos(Cte:Cte.PersonalApellidoMaterno)<BR>y Condatos(Cte:Cte.PersonalEstado) y Condatos(Cte:Cte.PersonalPais) y Condatos(Cte:Cte.FechaNacimiento)<BR>y Condatos(Cte:Cte.CURP) y Condatos(Cte:Cte.RFC)
EjecucionMensaje=<T>Verifique los campos CURP, RFC de la pestaña Datos Generales y los campos Nombres, Apellido Paterno, Apellido Materno, Estado, País y Fecha de Nacimiento de la pestaña Datos Personales<T>
AntesExpresiones=Asigna(Info.Cliente,Cte:Cte.Cliente)<BR>Asigna(Info.Tipo,<T>Cliente<T>)
VisibleCondicion=General.CteDatosPersonales y Usuario.CE
[SituacionCta.ListaEnCaptura]
(Inicio)=SituacionCta.Situacion
SituacionCta.Situacion=SituacionCta.SituacionFecha
SituacionCta.SituacionFecha=SituacionCta.SituacionUsuario
SituacionCta.SituacionUsuario=SituacionCta.SituacionNota
SituacionCta.SituacionNota=(Fin)














[Otros.Cte.CuentaAnticipo]
Carpeta=Otros
Clave=Cte.CuentaAnticipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Otros.Cte.CuentaCompleAnticipo]
Carpeta=Otros
Clave=Cte.CuentaCompleAnticipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco


















[Otros.CtaAnticipo.Descripcion]
Carpeta=Otros
Clave=CtaAnticipo.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata



















[Otros.CtaCompleAnticipo.Descripcion]
Carpeta=Otros
Clave=CtaCompleAnticipo.Descripcion
Editar=S
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Plata





















[Acciones.CtasContablesMoneda]
Nombre=CtasContablesMoneda
Boton=17
NombreEnBoton=S
Menu=&Edición
NombreDesplegar=Cuentas Contables
EnBarraHerramientas=S
EnMenu=S
TipoAccion=Formas
ClaveAccion=CatCuentasContablesMoneda
Activo=S
BarraBtnFondo=Plata
BarraBtnFuente={MS Sans Serif, 8, Negro, []}
BarraBtnTxtAlign=Izquierda
BarraBtnTxtPos=Arriba
NombreEnBotonX=S
BarraBtnSubtitFuente={MS Sans Serif, 8, Negro, []}
BarraBtnDescripFuente={MS Sans Serif, 8, Negro, []}
BarraBtnImgPos=Arriba
BarraBtnImgAlign=Izquierda
BarraBtnSubtituloAli=Izquierda
BarraBtnDescripcionAli=Izquierda
BarraBtnSubtituloPos=Arriba
BarraBtnDescripcionPos=Arriba
AccionSecTextoFuente={MS Sans Serif, 8, Negro, []}
AccionSecColor=Plata
AccionSecAli=Izquierda













GuardarAntes=S
Antes=S
DespuesGuardar=S








































































































































































































































































































































EspacioPrevio=S
















































































































AntesExpresiones=Asigna(Info.ContactoTipo, <T>Cte<T>)<BR>Asigna(Info.Cuenta, Cte:Cte.Cliente)
VisibleCondicion=Info.Etiqueta <> <T>No<T>
















































[Acciones.Mapa]
Nombre=Mapa
Boton=105
Menu=&Ver
NombreDesplegar=&Mapa
EnBarraHerramientas=S
EnMenu=S
EspacioPrevio=S
TipoAccion=Expresion
Visible=S
BarraBtnFondo=Plata
BarraBtnFuente={MS Sans Serif, 8, Negro, []}
BarraBtnTxtAlign=Izquierda
BarraBtnTxtPos=Arriba
BarraBtnSubtitFuente={MS Sans Serif, 8, Negro, []}
BarraBtnDescripFuente={MS Sans Serif, 8, Negro, []}
BarraBtnImgPos=Arriba
BarraBtnImgAlign=Izquierda
BarraBtnSubtituloAli=Izquierda
BarraBtnDescripcionAli=Izquierda
BarraBtnSubtituloPos=Arriba
BarraBtnDescripcionPos=Arriba
AccionSecTextoFuente={MS Sans Serif, 8, Negro, []}
AccionSecColor=Plata
AccionSecAli=Izquierda

























































Expresion=EjecutarSQL(<T>EXEC spExpMapaClientes :nEstacion, :nOpcion, :tCliente<T>, EstacionTrabajo, 1, Cte:Cte.Cliente)<BR>Forma(<T>ExpMapaCteSeleccion<T>)
ActivoCondicion=ConDatos(Cte:Cte.MapaUbicacion)




















































[Otros.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Espacio
Cte.Espacio=Espacio.Nombre
Espacio.Nombre=Cte.Cuenta
Cte.Cuenta=Cta.Descripcion
Cta.Descripcion=Cte.CuentaRetencion
Cte.CuentaRetencion=CtaRetencion.Descripcion
CtaRetencion.Descripcion=Cte.CuentaAnticipo
Cte.CuentaAnticipo=CtaAnticipo.Descripcion
CtaAnticipo.Descripcion=Cte.CuentaCompleAnticipo
Cte.CuentaCompleAnticipo=CtaCompleAnticipo.Descripcion
CtaCompleAnticipo.Descripcion=Cte.Mensaje
Cte.Mensaje=Cte.DirInternet
Cte.DirInternet=Cte.NivelAcceso
Cte.NivelAcceso=Cte.CBDir
Cte.CBDir=Cte.Idioma
Cte.Idioma=Cte.Alta
Cte.Alta=Cte.UltimoCambio
Cte.UltimoCambio=Cte.Intercompania
Cte.Intercompania=Cte.TieneMovimientos
Cte.TieneMovimientos=(Fin)


































































[(Carpeta Abrir).Cte.Tipo]
Carpeta=(Carpeta Abrir)
Clave=Cte.Tipo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Categoria]
Carpeta=(Carpeta Abrir)
Clave=Cte.Categoria
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Familia]
Carpeta=(Carpeta Abrir)
Clave=Cte.Familia
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Grupo]
Carpeta=(Carpeta Abrir)
Clave=Cte.Grupo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[(Carpeta Abrir).Cte.Estatus]
Carpeta=(Carpeta Abrir)
Clave=Cte.Estatus
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=15
ColorFondo=Blanco

[(Carpeta Abrir).ListaEnCaptura]
(Inicio)=Cte.Nombre
Cte.Nombre=Cte.Categoria
Cte.Categoria=Cte.Familia
Cte.Familia=Cte.Grupo
Cte.Grupo=Cte.Tipo
Cte.Tipo=Cte.Estatus
Cte.Estatus=(Fin)

[(Carpeta Abrir).FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ALTA
ALTA=BLOQ_AVISO
BLOQ_AVISO=BLOQUEADO
BLOQUEADO=BAJA
BAJA=(Fin)

[(Carpeta Abrir).ListaAcciones]
(Inicio)=Actualizar
Actualizar=Imprimir
Imprimir=Preliminar
Preliminar=Excel
Excel=MapaTodos
MapaTodos=MapaSeleccion
MapaSeleccion=Campos
Campos=(Fin)

[Internet.Cte.AccesoWeb]
Carpeta=Internet
Clave=Cte.AccesoWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
EspacioPrevio=S
ColorFondo=Blanco
Tamano=20

[Internet.Cte.RolWeb]
Carpeta=Internet
Clave=Cte.RolWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Internet.Cte.ContrasenaWeb]
Carpeta=Internet
Clave=Cte.ContrasenaWeb
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco
LineaNueva=N

[Internet.Cte.ContrasenaWebConfir]
Carpeta=Internet
Clave=Cte.ContrasenaWebConfir
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Internet.Cte.DefEmpresaWeb]
Carpeta=Internet
Clave=Cte.DefEmpresaWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Internet.Cte.DefSucursalWeb]
Carpeta=Internet
Clave=Cte.DefSucursalWeb
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Internet.UsuarioSucAccNombre]
Carpeta=Internet
Clave=UsuarioSucAccNombre
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Internet.EmpresaAccNombre]
Carpeta=Internet
Clave=EmpresaAccNombre
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Venta.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.EnviarA
Cte.EnviarA=CteEnviarA.Nombre
CteEnviarA.Nombre=Cte.DefMoneda
Cte.DefMoneda=Cte.Licencias
Cte.Licencias=Cte.LicenciasTipo
Cte.LicenciasTipo=Cte.Agente
Cte.Agente=Agente.Nombre
Agente.Nombre=Cte.AgenteServicio
Cte.AgenteServicio=AgenteServicio.Nombre
AgenteServicio.Nombre=Cte.Agente3
Cte.Agente3=Agente3.Nombre
Agente3.Nombre=Cte.Agente4
Cte.Agente4=Agente4.Nombre
Agente4.Nombre=Cte.PersonalCobrador
Cte.PersonalCobrador=PersonalNombre
PersonalNombre=Cte.SucursalEmpresa
Cte.SucursalEmpresa=Sucursal.Nombre
Sucursal.Nombre=Cte.Publico
Cte.Publico=Cte.DiaRevision1
Cte.DiaRevision1=Cte.DiaRevision2
Cte.DiaRevision2=Cte.HorarioRevision
Cte.HorarioRevision=Cte.DiaPago1
Cte.DiaPago1=Cte.DiaPago2
Cte.DiaPago2=Cte.HorarioPago
Cte.HorarioPago=(Fin)

[Internet.Cte.UsuarioSt]
Carpeta=Internet
Clave=Cte.UsuarioSt
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Internet.Cte.UsuarioResp]
Carpeta=Internet
Clave=Cte.UsuarioResp
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Internet.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Contrasena
Cte.Contrasena=Cte.Contrasena2
Cte.Contrasena2=Cte.wMovVentas
Cte.wMovVentas=Cte.wVerDisponible
Cte.wVerDisponible=Cte.wVerArtListaPreciosEsp
Cte.wVerArtListaPreciosEsp=Cte.AccesoWeb
Cte.AccesoWeb=Cte.RolWeb
Cte.RolWeb=Cte.ContrasenaWeb
Cte.ContrasenaWeb=Cte.ContrasenaWebConfir
Cte.ContrasenaWebConfir=Cte.DefEmpresaWeb
Cte.DefEmpresaWeb=EmpresaAccNombre
EmpresaAccNombre=Cte.DefSucursalWeb
Cte.DefSucursalWeb=UsuarioSucAccNombre
UsuarioSucAccNombre=Cte.UsuarioSt
Cte.UsuarioSt=UsuarioStCte.Nombre
UsuarioStCte.Nombre=Cte.UsuarioResp
Cte.UsuarioResp=UsuarioRespCte.Nombre
UsuarioRespCte.Nombre=(Fin)

[Internet.UsuarioStCte.Nombre]
Carpeta=Internet
Clave=UsuarioStCte.Nombre
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

[Internet.UsuarioRespCte.Nombre]
Carpeta=Internet
Clave=UsuarioRespCte.Nombre
ValidaNombre=S
3D=S
Tamano=60
ColorFondo=Blanco

















[Seguro.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=Cte.Aseguradora
Cte.Aseguradora=CteAseguradora.Nombre
CteAseguradora.Nombre=Cte.NombreAsegurado
Cte.NombreAsegurado=Cte.PolizaTipo
Cte.PolizaTipo=Cte.PolizaNumero
Cte.PolizaNumero=Cte.PolizaReferencia
Cte.PolizaReferencia=Cte.PolizaImporte
Cte.PolizaImporte=Cte.PolizaFechaEmision
Cte.PolizaFechaEmision=Cte.PolizaVencimiento
Cte.PolizaVencimiento=Cte.Deducible
Cte.Deducible=Cte.DeducibleMoneda
Cte.DeducibleMoneda=Cte.Coaseguro
Cte.Coaseguro=Cte.NotificarA
Cte.NotificarA=Cte.NoriticarATelefonos
Cte.NoriticarATelefonos=(Fin)

[UsoServicio.ListaEnCaptura]
(Inicio)=CteUsoServicio.Servicio
CteUsoServicio.Servicio=CteUsoServicio.Fecha
CteUsoServicio.Fecha=CteUsoServicio.Porcentaje
CteUsoServicio.Porcentaje=CteUsoServicio.Evaluacion
CteUsoServicio.Evaluacion=CteUsoServicio.Observaciones
CteUsoServicio.Observaciones=(Fin)


























[Navitek.ListaEnCaptura]
(Inicio)=nvk_tb_CuotasClientesAnual.Descuento
nvk_tb_CuotasClientesAnual.Descuento=nvk_tb_CuotasClientesAnual.CuotaAnual
nvk_tb_CuotasClientesAnual.CuotaAnual=nvk_tb_CuotasClientesAnual.CuotaMensual
nvk_tb_CuotasClientesAnual.CuotaMensual=(Fin)








[CteNavitek]
Estilo=Ficha
Pestana=S
PestanaOtroNombre=S
PestanaNombre=Navitek
Clave=CteNavitek
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=Cte
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=10
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

CarpetaVisible=S

[CteNavitek.nvk_tb_CuotasClientesAnual.Descuento]
Carpeta=CteNavitek
Clave=nvk_tb_CuotasClientesAnual.Descuento
ValidaNombre=S
3D=S
ColorFondo=Blanco

LineaNueva=S
Tamano=20
EspacioPrevio=S
[CteNavitek.nvk_tb_CuotasClientesAnual.CuotaAnual]
Carpeta=CteNavitek
Clave=nvk_tb_CuotasClientesAnual.CuotaAnual
ValidaNombre=S
3D=S
ColorFondo=Blanco

LineaNueva=S
Tamano=20
[CteNavitek.nvk_tb_CuotasClientesAnual.CuotaMensual]
Carpeta=CteNavitek
Clave=nvk_tb_CuotasClientesAnual.CuotaMensual
ValidaNombre=S
3D=S
ColorFondo=Blanco














LineaNueva=S
Tamano=20
[CteNavitek.Cte.Cliente]
Carpeta=CteNavitek
Clave=Cte.Cliente
Editar=N
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[CteNavitek.Cte.Nombre]
Carpeta=CteNavitek
Clave=Cte.Nombre
Editar=N
LineaNueva=N
ValidaNombre=N
3D=S
Tamano=60
ColorFondo=Blanco





Pegado=N


































[CteNavitek.ListaEnCaptura]
(Inicio)=Cte.Cliente
Cte.Cliente=Cte.Nombre
Cte.Nombre=nvk_tb_CuotasClientesAnual.Descuento
nvk_tb_CuotasClientesAnual.Descuento=nvk_tb_CuotasClientesAnual.CuotaAnual
nvk_tb_CuotasClientesAnual.CuotaAnual=nvk_tb_CuotasClientesAnual.CuotaMensual
nvk_tb_CuotasClientesAnual.CuotaMensual=(Fin)





[Forma.ListaCarpetas]
(Inicio)=Ficha
Ficha=Personal
Personal=Fiscal
Fiscal=Seguro
Seguro=Venta
Venta=ReglaNegocio
ReglaNegocio=UsoServicio
UsoServicio=Perfiles
Perfiles=Ford
Ford=CRM
CRM=Internet
Internet=Otros
Otros=WMS
WMS=Adicionales
Adicionales=Comentarios
Comentarios=FormaExtraValor
FormaExtraValor=SituacionCta
SituacionCta=Ecuador
Ecuador=CteNavitek
CteNavitek=(Fin)

[Forma.ListaAcciones]
(Inicio)=Nuevo
Nuevo=Abrir
Abrir=Guardar
Guardar=Situacion
Situacion=PlantillasOffice
PlantillasOffice=Eliminar
Eliminar=MovCte
MovCte=Cerrar
Cerrar=CteRelacion
CteRelacion=CteBonificacion
CteBonificacion=EspacioAsignacion
EspacioAsignacion=CteEvento
CteEvento=CteUEN
CteUEN=EnviarA
EnviarA=CteCto
CteCto=CamposExtras
CamposExtras=Agentes
Agentes=CtePedidoDef
CtePedidoDef=Conciliar
Conciliar=Tareas
Tareas=Propiedades
Propiedades=Evaluaciones
Evaluaciones=Anexos
Anexos=Doc
Doc=Politica
Politica=RefCta
RefCta=AgregarEvento
AgregarEvento=CteArt
CteArt=CapacidadPago
CapacidadPago=CteOtrosDatos
CteOtrosDatos=CteTel
CteTel=CtePension
CtePension=CteDepto
CteDepto=CteMapeoMov
CteMapeoMov=CteCFD
CteCFD=CteEntregaMercancia
CteEntregaMercancia=SugerirRFC
SugerirRFC=OtrosDatosCteRep
OtrosDatosCteRep=IntelisisSL
IntelisisSL=CteAcceso
CteAcceso=ListaPrecioEsp
ListaPrecioEsp=Bitacora
Bitacora=Informacion
Informacion=Cubos
Cubos=Mensajes
Mensajes=Movimientos
Movimientos=ListaNegra
ListaNegra=ListaPoliticos
ListaPoliticos=Historico
Historico=CteParecidos
CteParecidos=CteDireccionFiscal
CteDireccionFiscal=Mapa
Mapa=CtasContablesMoneda
CtasContablesMoneda=Navegador
Navegador=CEExportarAlumno
CEExportarAlumno=CteCat
CteCat=CteGrupo
CteGrupo=CteFam
CteFam=Cobrador
Cobrador=ExpedienteFamiliar
ExpedienteFamiliar=UsoServicio
UsoServicio=CteArtEmpaque
CteArtEmpaque=CteTarimaChep
CteTarimaChep=Otros1
Otros1=Otros2
Otros2=Otros3
Otros3=Otros4
Otros4=Otros5
Otros5=Otros6
Otros6=Otros7
Otros7=Otros8
Otros8=Otros9
Otros9=ActividadesCRM
ActividadesCRM=CECuotasClientes
CECuotasClientes=(Fin)

[Forma.MenuPrincipal]
(Inicio)=&Archivo
&Archivo=&Edición
&Edición=&Ver
&Ver=&Maestros
&Maestros=&Otros
&Otros=(Fin)

[Forma.PlantillasExcepciones]
(Inicio)=Cte:Cte.EnviarA
Cte:Cte.EnviarA=Cte:Cte.Estatus
Cte:Cte.Estatus=Cte:Cte.TieneMovimientos
Cte:Cte.TieneMovimientos=(Fin)
