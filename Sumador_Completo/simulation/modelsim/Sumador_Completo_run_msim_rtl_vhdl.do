transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/fede_/OneDrive/Documentos/ProyectosQuartus/Tecnicas/V18/Sumador_Completo/Sumador_Completo.vhd}

vcom -93 -work work {C:/Users/fede_/OneDrive/Documentos/ProyectosQuartus/Tecnicas/V18/Sumador_Completo/Prueba_Sumador_Completo.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  Prueba_Sumador_Completo

add wave *
view structure
view signals
run -all
