#!/bin/bash

export WINEPREFIX="$HOME/.wine32"
export WINEARCH=win32

die() {
    echo "command failure"
    exit 1
}

wine "c:\\Wincupl\\Shared\\cupl.exe" -uabm4kb "c:\\Wincupl\\Shared\\cupl.dl" MEM.pld || die

wine "c:\\Wincupl\\WinCupl\\Fitters\\fit1504.exe" MEM.tt2 -device P1504C44 -preassign keep -strategy JTAG = off -strategy pin_keep off -strategy output_fast on || die
