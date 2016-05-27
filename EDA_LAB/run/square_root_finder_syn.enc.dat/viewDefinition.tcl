create_library_set -name lib_min\
   -timing\
    [list /home/m103/m103061630/lab/T18/SOCE/lib/fast.lib]\
   -si\
    [list /home/m103/m103061630/lab/T18/SOCE/celtic/fast.cdB]
create_library_set -name lib_max\
   -timing\
    [list /home/m103/m103061630/lab/T18/SOCE/lib/slow.lib]\
   -si\
    [list /home/m103/m103061630/lab/T18/SOCE/celtic/slow.cdB]
create_rc_corner -name RC_corner_max\
   -cap_table /home/m103/m103061630/lab/T18/SOCE/tsmc018.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_rc_corner -name RC_corner_min\
   -cap_table /home/m103/m103061630/lab/T18/SOCE/tsmc018.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
