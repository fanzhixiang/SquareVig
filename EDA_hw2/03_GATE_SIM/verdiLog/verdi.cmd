srcSourceCodeView
srcResizeWindow 0 22 804 500
debImport \
          "/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM/square_root_finder_syn.v" \
          "/home/m103/m103061604/EDA_hw2/tsmc18.v" -path \
          {/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM}
wvCreateWindow
wvResizeWindow -win $_nWave2 50 214 960 332
wvResizeWindow -win $_nWave2 50 214 960 332
debImport \
          "/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM/square_root_finder_syn.v" \
          "/home/m103/m103061604/EDA_hw2/tsmc18.v" \
          "/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM/testbench.v" \
          -path {/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM}
wvCreateWindow
wvResizeWindow -win $_nWave3 50 214 960 332
wvResizeWindow -win $_nWave3 50 236 960 332
srcHBSelect "testbench" -win $_nTrace1
srcHBSelect "testbench" -win $_nTrace1
srcSetScope -win $_nTrace1 "testbench" -delim "."
srcHBSelect "testbench.square_root_finder1" -win $_nTrace1
srcSetScope -win $_nTrace1 "testbench.square_root_finder1" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 2 1 7 1 2} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 2 6 7 1 2} -backward
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 2 7 8 3 1}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcAction -pos 1 6 1 -win $_nTrace1 -name "rst" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 2 7 7 1 2} -backward
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
srcAction -pos 1 6 1 -win $_nTrace1 -name "rst" -ctrlKey off
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -win $_nTrace1
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM/square_root_finder_syn.fsdb}
wvAddSignal -win $_nWave3 "/testbench/square_root_finder1/clk"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst" -win $_nTrace1
wvSetPosition -win $_nWave3 {("G1" 0)}
wvAddSignal -win $_nWave3 "/testbench/square_root_finder1/rst"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "in" -win $_nTrace1
wvSetPosition -win $_nWave3 {("G1" 0)}
wvAddSignal -win $_nWave3 "/testbench/square_root_finder1/in\[15:0\]"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "sqrt" -win $_nTrace1
wvSetPosition -win $_nWave3 {("G1" 0)}
wvAddSignal -win $_nWave3 "/testbench/square_root_finder1/sqrt\[31:0\]"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "sqrt" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sqrt" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "sqrt" -win $_nTrace1
srcTraceDriver "testbench.square_root_finder1.sqrt\[31:0\]" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "n132" -win $_nTrace1
wvSetPosition -win $_nWave3 {("G2" 0)}
wvAddSignal -win $_nWave3 "/testbench/square_root_finder1/n132"
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G2" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "n132" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "n132" -win $_nTrace1
srcTraceDriver "testbench.square_root_finder1.n132" -win $_nTrace1
wvAddSignal -win $_nWave3 "/testbench/square_root_finder1/n132"
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G2" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "sqrt\[31\]" -win $_nTrace1
wvAddSignal -win $_nWave3 "/testbench/square_root_finder1/sqrt\[31\]"
wvSetPosition -win $_nWave3 {("G2" 2)}
wvSetPosition -win $_nWave3 {("G2" 3)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "n134" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "n134" -win $_nTrace1
wvAddSignal -win $_nWave3 "/testbench/square_root_finder1/n134"
wvSetPosition -win $_nWave3 {("G2" 3)}
wvSetPosition -win $_nWave3 {("G2" 4)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "n134" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "n134" -win $_nTrace1
simEnable 1
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 2)}
srcSearchString "state" -win $_nTrace1 -next -case
srcSearchString "state" -win $_nTrace1 -next -case
srcSearchString "state" -win $_nTrace1 -next -case
srcAction -pos 60 2 -cmdMessage -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "U186" -win $_nTrace1
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
debReload
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
srcSearchString "state" -win $_nTrace1 -next -case
srcSearchString "state" -win $_nTrace1 -next -case
srcSearchString "state" -win $_nTrace1 -next -case
debImport "/home/m103/m103061604/EDA_hw2/tsmc18.v" -path \
          {/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM}
debImport "/home/m103/m103061604/EDA_hw2/tsmc18.v" \
          "/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM/square_root_finder_syn.v" \
          "/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM/testbench.v" \
          -path {/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM}
srcHBSelect "testbench" -win $_nTrace1
srcHBSelect "testbench.square_root_finder1" -win $_nTrace1
srcHBSelect "testbench.square_root_finder1" -win $_nTrace1
srcSetScope -win $_nTrace1 "testbench.square_root_finder1" -delim "."
srcSearchString "state" -win $_nTrace1 -next -case
srcSearchString "sta" -win $_nTrace1 -next -case
srcSearchString "sta" -win $_nTrace1 -next -case
srcSearchString "sta" -win $_nTrace1 -next -case
srcSearchString "sta" -win $_nTrace1 -next -case
debExit
