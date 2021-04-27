onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /fourbitadder_tb/A3_SIG
add wave -noupdate /fourbitadder_tb/A2_SIG
add wave -noupdate /fourbitadder_tb/A1_SIG
add wave -noupdate /fourbitadder_tb/A0_SIG
add wave -noupdate /fourbitadder_tb/B3_SIG
add wave -noupdate /fourbitadder_tb/B2_SIG
add wave -noupdate /fourbitadder_tb/B1_SIG
add wave -noupdate /fourbitadder_tb/B0_SIG
add wave -noupdate /fourbitadder_tb/C3_SIG
add wave -noupdate /fourbitadder_tb/S3_SIG
add wave -noupdate /fourbitadder_tb/S2_SIG
add wave -noupdate /fourbitadder_tb/S1_SIG
add wave -noupdate /fourbitadder_tb/S0_SIG
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {149567 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 187
configure wave -valuecolwidth 38
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {626657 ps}
