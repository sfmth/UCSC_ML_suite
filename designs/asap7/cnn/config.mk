export DESIGN_NICKNAME ?= cnn
export DESIGN_NAME = cnn
export PLATFORM    = asap7

#export SYNTH_HIERARCHICAL ?= 1

#export SYNTH_MINIMUM_KEEP_SIZE ?= 10000

export VERILOG_FILES = $(sort $(wildcard $(DESIGN_HOME)/src/cnn/*.v))
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/cnn/constraint.sdc

ifeq ($(BLOCKS),)
	export ADDITIONAL_LEFS = $(sort $(wildcard $(DESIGN_HOME)/src/cnn/*.lef))
	export ADDITIONAL_LIBS = $(sort $(wildcard $(DESIGN_HOME)/src/cnn/*.lib))
endif

#export CORE_UTILIZATION       = 40
export DIE_AREA = 0 0 600 600
export CORE_AREA = 10 10 590 590 
#
#export PLACE_DENSITY_LB_ADDON = 0.10

#export IO_CONSTRAINTS     = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/io.tcl
#export MACRO_PLACE_HALO    = 2 2

#export TNS_END_PERCENT   = 100
#
#export CTS_CLUSTER_SIZE = 10
#export CTS_CLUSTER_DIAMETER = 50
