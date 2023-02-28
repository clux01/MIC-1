# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  #Adding Group
  set Inputs/Outputs [ipgui::add_group $IPINST -name "Inputs/Outputs" -parent ${Page_0}]
  set use_vectors [ipgui::add_param $IPINST -name "use_vectors" -parent ${Inputs/Outputs}]
  set_property tooltip {reg0 : 4095 downto 0     reg1 : 8191 downto 4096} ${use_vectors}
  ipgui::add_param $IPINST -name "outputs_g" -parent ${Inputs/Outputs}
  ipgui::add_param $IPINST -name "inputs_g" -parent ${Inputs/Outputs}

  #Adding Group
  set UART_settings [ipgui::add_group $IPINST -name "UART settings" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "core_clk_freq_g" -parent ${UART_settings}
  ipgui::add_param $IPINST -name "baudrate_g" -parent ${UART_settings}

  #Adding Group
  set register/bus_pipelining [ipgui::add_group $IPINST -name "register/bus pipelining" -parent ${Page_0}]
  set mbus_pipe_g [ipgui::add_param $IPINST -name "mbus_pipe_g" -parent ${register/bus_pipelining}]
  set_property tooltip {entering a one will add two pipelining stages} ${mbus_pipe_g}
  ipgui::add_param $IPINST -name "reg_pipe_in_g" -parent ${register/bus_pipelining}
  ipgui::add_param $IPINST -name "reg_pipe_out_g" -parent ${register/bus_pipelining}

  #Adding Group
  set simulation [ipgui::add_group $IPINST -name "simulation" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "simulate0_g" -parent ${simulation}
  ipgui::add_param $IPINST -name "commandfile_g" -parent ${simulation}



}

proc update_PARAM_VALUE.baudrate_g { PARAM_VALUE.baudrate_g } {
	# Procedure called to update baudrate_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.baudrate_g { PARAM_VALUE.baudrate_g } {
	# Procedure called to validate baudrate_g
	return true
}

proc update_PARAM_VALUE.commandfile_g { PARAM_VALUE.commandfile_g } {
	# Procedure called to update commandfile_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.commandfile_g { PARAM_VALUE.commandfile_g } {
	# Procedure called to validate commandfile_g
	return true
}

proc update_PARAM_VALUE.core_clk_freq_g { PARAM_VALUE.core_clk_freq_g } {
	# Procedure called to update core_clk_freq_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.core_clk_freq_g { PARAM_VALUE.core_clk_freq_g } {
	# Procedure called to validate core_clk_freq_g
	return true
}

proc update_PARAM_VALUE.inputs_g { PARAM_VALUE.inputs_g } {
	# Procedure called to update inputs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.inputs_g { PARAM_VALUE.inputs_g } {
	# Procedure called to validate inputs_g
	return true
}

proc update_PARAM_VALUE.mbus_pipe_g { PARAM_VALUE.mbus_pipe_g } {
	# Procedure called to update mbus_pipe_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.mbus_pipe_g { PARAM_VALUE.mbus_pipe_g } {
	# Procedure called to validate mbus_pipe_g
	return true
}

proc update_PARAM_VALUE.outputs_g { PARAM_VALUE.outputs_g } {
	# Procedure called to update outputs_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outputs_g { PARAM_VALUE.outputs_g } {
	# Procedure called to validate outputs_g
	return true
}

proc update_PARAM_VALUE.reg_pipe_in_g { PARAM_VALUE.reg_pipe_in_g } {
	# Procedure called to update reg_pipe_in_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg_pipe_in_g { PARAM_VALUE.reg_pipe_in_g } {
	# Procedure called to validate reg_pipe_in_g
	return true
}

proc update_PARAM_VALUE.reg_pipe_out_g { PARAM_VALUE.reg_pipe_out_g } {
	# Procedure called to update reg_pipe_out_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.reg_pipe_out_g { PARAM_VALUE.reg_pipe_out_g } {
	# Procedure called to validate reg_pipe_out_g
	return true
}

proc update_PARAM_VALUE.simulate0_g { PARAM_VALUE.simulate0_g } {
	# Procedure called to update simulate0_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.simulate0_g { PARAM_VALUE.simulate0_g } {
	# Procedure called to validate simulate0_g
	return true
}

proc update_PARAM_VALUE.simulate1_g { PARAM_VALUE.simulate1_g } {
	# Procedure called to update simulate1_g when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.simulate1_g { PARAM_VALUE.simulate1_g } {
	# Procedure called to validate simulate1_g
	return true
}

proc update_PARAM_VALUE.use_vectors { PARAM_VALUE.use_vectors } {
	# Procedure called to update use_vectors when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.use_vectors { PARAM_VALUE.use_vectors } {
	# Procedure called to validate use_vectors
	return true
}


proc update_MODELPARAM_VALUE.inputs_g { MODELPARAM_VALUE.inputs_g PARAM_VALUE.inputs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.inputs_g}] ${MODELPARAM_VALUE.inputs_g}
}

proc update_MODELPARAM_VALUE.outputs_g { MODELPARAM_VALUE.outputs_g PARAM_VALUE.outputs_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outputs_g}] ${MODELPARAM_VALUE.outputs_g}
}

proc update_MODELPARAM_VALUE.core_clk_freq_g { MODELPARAM_VALUE.core_clk_freq_g PARAM_VALUE.core_clk_freq_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.core_clk_freq_g}] ${MODELPARAM_VALUE.core_clk_freq_g}
}

proc update_MODELPARAM_VALUE.baudrate_g { MODELPARAM_VALUE.baudrate_g PARAM_VALUE.baudrate_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.baudrate_g}] ${MODELPARAM_VALUE.baudrate_g}
}

proc update_MODELPARAM_VALUE.simulate0_g { MODELPARAM_VALUE.simulate0_g PARAM_VALUE.simulate0_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.simulate0_g}] ${MODELPARAM_VALUE.simulate0_g}
}

proc update_MODELPARAM_VALUE.simulate1_g { MODELPARAM_VALUE.simulate1_g PARAM_VALUE.simulate1_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.simulate1_g}] ${MODELPARAM_VALUE.simulate1_g}
}

proc update_MODELPARAM_VALUE.commandfile_g { MODELPARAM_VALUE.commandfile_g PARAM_VALUE.commandfile_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.commandfile_g}] ${MODELPARAM_VALUE.commandfile_g}
}

proc update_MODELPARAM_VALUE.mbus_pipe_g { MODELPARAM_VALUE.mbus_pipe_g PARAM_VALUE.mbus_pipe_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.mbus_pipe_g}] ${MODELPARAM_VALUE.mbus_pipe_g}
}

proc update_MODELPARAM_VALUE.use_vectors { MODELPARAM_VALUE.use_vectors PARAM_VALUE.use_vectors } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.use_vectors}] ${MODELPARAM_VALUE.use_vectors}
}

proc update_MODELPARAM_VALUE.reg_pipe_out_g { MODELPARAM_VALUE.reg_pipe_out_g PARAM_VALUE.reg_pipe_out_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg_pipe_out_g}] ${MODELPARAM_VALUE.reg_pipe_out_g}
}

proc update_MODELPARAM_VALUE.reg_pipe_in_g { MODELPARAM_VALUE.reg_pipe_in_g PARAM_VALUE.reg_pipe_in_g } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.reg_pipe_in_g}] ${MODELPARAM_VALUE.reg_pipe_in_g}
}

