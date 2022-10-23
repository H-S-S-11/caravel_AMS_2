v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -265 -60 -250 -60 {
lab=PD}
N -190 -60 -180 -60 {
lab=CONT}
N -180 -60 -180 -45 {
lab=CONT}
N -180 15 -180 25 {
lab=GND}
N 320 -100 360 -100 {
lab=OUT}
N 360 -180 360 -100 {
lab=OUT}
N -410 -80 -390 -80 {
lab=OUT_DIV}
N -410 -180 -410 -80 {
lab=OUT_DIV}
N 10 -40 10 -10 {
lab=GND}
N 10 -40 20 -40 {
lab=GND}
N -40 -100 -40 60 {
lab=VPWR}
N -40 -100 20 -100 {
lab=VPWR}
N -40 120 -40 160 {
lab=GND}
N -480 90 -480 100 {
lab=GND}
N -480 -40 -480 30 {
lab=IN}
N -480 -40 -430 -40 {
lab=IN}
N -430 -40 -385 -40 {
lab=IN}
N -390 -80 -385 -80 {
lab=OUT_DIV}
N -40 -80 20 -80 {
lab=VPWR}
N -180 -60 -130 -60 {
lab=CONT}
N -130 -60 20 -60 {
lab=CONT}
N 80 140 100 140 {
lab=VGND}
N -40 140 20 140 {
lab=GND}
N -410 -230 -100 -230 {
lab=OUT_DIV}
N -410 -230 -410 -180 {
lab=OUT_DIV}
N 80 -230 360 -230 {
lab=OUT}
N 360 -230 360 -180 {
lab=OUT}
N 80 -210 100 -210 {
lab=#net1}
N 100 -210 100 -180 {
lab=#net1}
N -120 -180 100 -180 {
lab=#net1}
N -120 -210 -120 -180 {
lab=#net1}
N -120 -210 -100 -210 {
lab=#net1}
C {vco.sym} 170 -70 0 0 {name=x1}
C {devices/res.sym} -220 -60 1 0 {name=R1
value=2k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -180 -15 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {sky130_stdcells/xor2_2.sym} -325 -60 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} -180 25 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 10 -15 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -40 90 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} -40 -100 0 0 {name=l3 sig_type=std_logic lab=VPWR}
C {devices/gnd.sym} -40 160 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -480 60 0 0 {name=V2 value="PULSE(0 1.8 0.5n 0.1n 0.1n 1n 2n)" }
C {devices/gnd.sym} -480 100 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 360 -190 0 0 {name=l7 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} -480 -40 0 0 {name=l8 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} -160 -60 1 0 {name=l9 sig_type=std_logic lab=CONT}
C {devices/res.sym} 50 140 1 0 {name=R2
value=0.1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 100 140 2 0 {name=l10 sig_type=std_logic lab=VGND}
C {devices/code_shown.sym} -280 250 0 0 {name=s1 only_toplevel=false value="
.lib ~/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include ~/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code_shown.sym} -270 370 0 0 {name=s2 only_toplevel=false value=".control
alter @c1[ic]=1
tran 1p 20n uic
plot V(IN) V(OUT_DIV)
plot V(IN) V(OUT)
plot V(PD) V(CONT)
.endc"}
C {devices/lab_pin.sym} -260 -60 1 0 {name=l5 sig_type=std_logic lab=PD}
C {sky130_stdcells/dfxbp_1.sym} -10 -220 0 1 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -410 -230 0 0 {name=l11 sig_type=std_logic lab=OUT_DIV}
