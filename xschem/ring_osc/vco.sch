v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 220 60 220 70 { lab=VGND}
N -300 80 -300 90 { lab=VGND}
N -300 50 -220 50 { lab=VGND}
N -220 50 -220 90 { lab=VGND}
N -300 -80 -300 -70 { lab=VPWR}
N -300 -40 -240 -40 { lab=VPWR}
N -240 -80 -240 -40 { lab=VPWR}
N -300 -10 -300 20 { lab=CONT_P}
N -360 0 -300 0 { lab=CONT_P}
N -360 -40 -360 0 { lab=CONT_P}
N -360 -40 -340 -40 { lab=CONT_P}
N 270 -120 270 -80 { lab=CONT_P}
N -360 50 -340 50 { lab=CONT_N}
N 270 60 270 120 { lab=CONT_N}
N 330 -10 330 20 { lab=MID}
N 330 20 390 20 { lab=MID}
N 430 90 430 100 { lab=VGND}
N 480 90 480 140 { lab=CONT_N}
N 480 -90 480 -50 { lab=CONT_P}
N 180 -80 220 -80 { lab=VPWR}
N 410 -50 430 -50 { lab=VPWR}
N 110 160 550 160 { lab=#net1}
N 20 60 20 70 { lab=VGND}
N 70 -120 70 -80 { lab=CONT_P}
N 70 60 70 120 { lab=CONT_N}
N -20 -80 20 -80 { lab=VPWR}
N 120 -10 180 -10 { lab=#net2}
N -60 160 110 160 { lab=#net1}
N 620 70 620 80 { lab=VGND}
N 670 -110 670 -70 { lab=CONT_P}
N 670 70 670 130 { lab=CONT_N}
N 580 -70 620 -70 { lab=VPWR}
N 530 20 580 20 { lab=#net3}
N 580 -0 580 20 { lab=#net3}
N 550 160 930 160 { lab=#net1}
N -70 -10 -20 -10 { lab=#net1}
N -70 -10 -70 160 { lab=#net1}
N -70 160 -60 160 { lab=#net1}
N 1240 80 1240 90 { lab=VGND}
N 1240 -80 1240 -70 { lab=VPWR}
N 1240 -10 1240 20 { lab=OUT}
N 1240 0 1310 0 { lab=OUT}
N 1240 -100 1240 -80 { lab=VPWR}
N 1180 -40 1200 -40 { lab=#net1}
N 1180 -40 1180 50 { lab=#net1}
N 1180 50 1200 50 { lab=#net1}
N 320 -10 330 -10 { lab=MID}
N 1240 -40 1300 -40 { lab=VPWR}
N 1300 -80 1300 -40 { lab=VPWR}
N 1240 -80 1300 -80 { lab=VPWR}
N 1240 50 1320 50 { lab=VGND}
N 1320 50 1320 90 { lab=VGND}
N 1240 90 1240 110 {
lab=VGND}
N 880 30 880 40 { lab=#net4}
N 880 -130 880 -120 { lab=VPWR}
N 880 -60 880 -30 { lab=#net1}
N 880 -50 950 -50 { lab=#net1}
N 880 -150 880 -130 { lab=VPWR}
N 820 -90 840 -90 { lab=#net5}
N 880 -90 940 -90 { lab=VPWR}
N 940 -130 940 -90 { lab=VPWR}
N 880 -130 940 -130 { lab=VPWR}
N 880 0 960 0 { lab=VGND}
N 960 0 960 40 { lab=VGND}
N 880 40 880 50 { lab=#net4}
N 880 110 880 130 {
lab=VGND}
N 880 80 960 80 {
lab=VGND}
N 960 40 960 80 {
lab=VGND}
N 960 80 960 120 {
lab=VGND}
N 880 120 960 120 {
lab=VGND}
N 1240 90 1320 90 {
lab=VGND}
N 1000 -90 1010 -90 {
lab=EN}
N 950 -50 1050 -50 {
lab=#net1}
N 1050 -60 1050 -50 {
lab=#net1}
N 1050 -130 1050 -120 {
lab=VPWR}
N 940 -130 1050 -130 {
lab=VPWR}
N 1050 -90 1120 -90 {
lab=VPWR}
N 1120 -130 1120 -90 {
lab=VPWR}
N 1050 -130 1120 -130 {
lab=VPWR}
N 930 160 1040 160 {
lab=#net1}
N 1040 -50 1040 160 {
lab=#net1}
N 1040 0 1180 -0 {
lab=#net1}
N -250 90 -250 130 {
lab=VGND}
N -260 -150 -260 -80 {
lab=VPWR}
N -300 -80 -240 -80 {
lab=VPWR}
N 780 -220 1000 -220 {
lab=EN}
N 1000 -220 1000 -110 {
lab=EN}
N 1000 -110 1000 -90 {
lab=EN}
N 760 -90 820 -90 {
lab=#net5}
N 760 -90 760 0 {
lab=#net5}
N 720 0 760 0 {
lab=#net5}
N 800 0 840 0 {
lab=EN}
N 800 -220 800 0 {
lab=EN}
N 760 80 840 80 {
lab=#net5}
N 760 -0 760 80 {
lab=#net5}
N -300 90 -220 90 {}
C {delay_cell.sym} 330 -10 0 0 {name=x1}
C {sky130_fd_pr/nfet_01v8.sym} -320 50 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -320 -40 0 0 {name=M2
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -360 -40 0 0 {name=l6 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} 270 -120 0 0 {name=l7 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} 270 120 0 0 {name=l8 sig_type=std_logic lab=CONT_N}
C {delay_cell.sym} 540 20 0 0 {name=x2}
C {devices/lab_pin.sym} 480 140 0 0 {name=l11 sig_type=std_logic lab=CONT_N}
C {devices/lab_pin.sym} 480 -90 0 0 {name=l12 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} 180 -80 0 0 {name=l14 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 410 -50 0 0 {name=l15 sig_type=std_logic lab=VPWR}
C {delay_cell.sym} 130 -10 0 0 {name=x3}
C {devices/lab_pin.sym} 70 -120 0 0 {name=l17 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} 70 120 0 0 {name=l18 sig_type=std_logic lab=CONT_N}
C {devices/lab_pin.sym} -20 -80 0 0 {name=l19 sig_type=std_logic lab=VPWR}
C {delay_cell.sym} 730 0 0 0 {name=x5}
C {devices/lab_pin.sym} 670 -110 0 0 {name=l25 sig_type=std_logic lab=CONT_P}
C {devices/lab_pin.sym} 670 130 0 0 {name=l26 sig_type=std_logic lab=CONT_N}
C {devices/lab_pin.sym} 580 -70 0 0 {name=l27 sig_type=std_logic lab=VPWR}
C {sky130_fd_pr/nfet_01v8.sym} 1220 50 0 0 {name=M3
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1220 -40 0 0 {name=M4
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1240 -100 0 0 {name=l29 sig_type=std_logic lab=VPWR}
C {devices/lab_pin.sym} 330 -10 0 1 {name=l30 sig_type=std_logic lab=MID}
C {sky130_fd_pr/nfet_01v8.sym} 860 0 0 0 {name=M6
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 860 -90 0 0 {name=M7
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 880 -150 0 0 {name=l31 sig_type=std_logic lab=VPWR}
C {sky130_fd_pr/nfet_01v8.sym} 860 80 0 0 {name=M8
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1030 -90 0 0 {name=M5
L=0.15
W=1.5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -360 50 0 0 {name=p1 lab=CONT_N}
C {devices/ipin.sym} -250 130 0 0 {name=p3 lab=VGND}
C {devices/lab_pin.sym} 20 70 0 0 {name=l2 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 220 70 0 0 {name=l4 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 430 100 0 0 {name=l1 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 620 80 0 0 {name=l5 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 880 130 0 0 {name=l9 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} 1240 110 0 0 {name=l10 sig_type=std_logic lab=VGND}
C {devices/ipin.sym} -260 -150 0 0 {name=p4 lab=VPWR}
C {devices/ipin.sym} 780 -220 0 0 {name=p2 lab=EN}
C {devices/opin.sym} 1310 0 0 0 {name=p5 lab=OUT}
