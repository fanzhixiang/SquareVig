VLOG = ncverilog
SRC = testbench.v\
      square_root_finder_sim.v \
	  -v /home/m103/m103061630/lab/T18/Verilog/tsmc18.v
VLOGARG = +access+r \




TMPFILE = *.log \
          ncverilog.key \
          nWaveLog \
          INCA_libs
DBFILE = *.fsdb *.vcd *.bak
RM = -rm -rf

all :: sim

sim :
	$(VLOG) $(SRC) $(VLOGARG)
clean :
	$(RM) $(TMPFILE)
veryclean :
	$(RM) $(TMPFILE) $(DBFILE)	
