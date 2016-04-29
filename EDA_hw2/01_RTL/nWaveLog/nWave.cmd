wvResizeWindow -win $_nWave1 225 236 960 332
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/m103/m103061608/SquareVig/EDA_hw2/01_RTL/square_root_finder.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvGetSignalSetScope -win $_nWave1 "/testbench/square_root_finder1"
wvSetPosition -win $_nWave1 {("G1" 3)}
wvSetPosition -win $_nWave1 {("G1" 3)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/testbench/square_root_finder1/clk} \
{/testbench/square_root_finder1/in\[15:0\]} \
{/testbench/square_root_finder1/sqrt\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvSetPosition -win $_nWave1 {("G1" 3)}
wvGetSignalClose -win $_nWave1
wvOpenFile -win $_nWave1 \
           {/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM/square_root_finder_syn.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/testbench"
wvSetPosition -win $_nWave1 {("G1" 6)}
wvSetPosition -win $_nWave1 {("G1" 6)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvSetActiveFile -win $_nWave1 \
           {/home/m103/m103061608/SquareVig/EDA_hw2/01_RTL/square_root_finder.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/testbench/square_root_finder1/clk} \
{/testbench/square_root_finder1/in\[15:0\]} \
{/testbench/square_root_finder1/sqrt\[31:0\]} \
}
wvSetActiveFile -win $_nWave1 \
           {/home/m103/m103061608/SquareVig/EDA_hw2/03_GATE_SIM/square_root_finder_syn.fsdb}
wvAddSignal -win $_nWave1 -group {"G1" {/testbench/in\[15:0\]} \
{/testbench/sqrt\[31:0\]} \
{/testbench/clk} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSetPosition -win $_nWave1 {("G1" 6)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 181 79 988 566
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/home/m103/m103061608/SquareVig/EDA_hw2/01_RTL/square_root_finder.fsdb}
wvSetActiveFile -win $_nWave1 -applyAnnotation off \
           {/home/m103/m103061608/SquareVig/EDA_hw2/01_RTL/square_root_finder.fsdb}
