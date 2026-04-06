
[Forma]
Clave=nvk_CuotasClientesAnual
Icono=0
BarraHerramientas=S
Modulos=(Todos)
Nombre=Cuotas Clientes
AccionesTamanoBoton=15x5
AccionesDerecha=S

ListaCarpetas=Lista
CarpetaPrincipal=Lista
ListaAcciones=(Lista)
PosicionInicialIzquierda=658
PosicionInicialArriba=382
PosicionInicialAlturaCliente=149
PosicionInicialAncho=374
Comentarios=Info.Cuenta
VentanaTipoMarco=Normal
VentanaPosicionInicial=Por diseño
VentanaExclusiva=S
VentanaEstadoInicial=Normal
VentanaExclusivaOpcion=0
[Lista]
Estilo=Ficha
Clave=Lista
Filtros=S
PermiteEditar=S
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=nvk_vw_CuotasClientesAnual
Fuente={Tahoma, 8, Negro, []}
FichaEspacioEntreLineas=6
FichaEspacioNombres=100
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S
FichaColorFondo=Plata
CampoColorLetras=Negro
CampoColorFondo=Blanco
ListaEnCaptura=(Lista)

FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroRespetar=S
FiltroTipo=General
CarpetaVisible=S

FiltroGeneral=Cte.Cliente = <T>{Info.Cuenta}<T> AND nvk_tb_CuotasClientesAnual.Ejercicio = DATEPART(YYYY,GETDATE())
[Lista.nvk_tb_CuotasClientesAnual.Descuento]
Carpeta=Lista
Clave=nvk_tb_CuotasClientesAnual.Descuento
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.nvk_tb_CuotasClientesAnual.CuotaAnual]
Carpeta=Lista
Clave=nvk_tb_CuotasClientesAnual.CuotaAnual
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Lista.CuotaMensual]
Carpeta=Lista
Clave=CuotaMensual
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco


Tamano=20
[Acciones.Aceptar]
Nombre=Aceptar
Boton=7
NombreEnBoton=S
NombreDesplegar=&Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cerrar
Activo=S
Antes=S
Visible=S

RefrescarDespues=S
GuardarAntes=S
AntesExpresiones=Asigna(Temp.Numerico1,nvk_vw_CuotasClientesAnual:nvk_tb_CuotasClientesAnual.Descuento)<BR>Asigna(Temp.Numerico2,nvk_vw_CuotasClientesAnual:nvk_tb_CuotasClientesAnual.CuotaAnual)<BR>EjecutarSQL(<T>sp_nvk_ActualizaCuotasCte :tCte, :n1, :n2<T>, Info.Cuenta,Temp.Numerico1,Temp.Numerico2)
DespuesGuardar=S
[Acciones.Cancelar]
Nombre=Cancelar
Boton=5
NombreEnBoton=S
NombreDesplegar=&Cancelar
EnBarraHerramientas=S
EspacioPrevio=S
TipoAccion=Ventana
ClaveAccion=Cancelar/Cancelar Cambios
Activo=S
Visible=S






















































[Lista.ListaEnCaptura]
(Inicio)=nvk_tb_CuotasClientesAnual.Descuento
nvk_tb_CuotasClientesAnual.Descuento=nvk_tb_CuotasClientesAnual.CuotaAnual
nvk_tb_CuotasClientesAnual.CuotaAnual=CuotaMensual
CuotaMensual=(Fin)













[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
