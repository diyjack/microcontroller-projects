include ../../../../../build/variables.mk

PROJECT=MMA7455L_test
MMCU=atmega644
F_CPU=20000000
SOURCES=MMA7455L_test.c accel_MMA7455L.c ../../../lib/serial/serial.c ../../../lib/serial/serial_sync_tx.c ../../../lib/serial/serial_sync_rx.c ../../../lib/i2c/i2c_master.c ../../../lib/eeprom/eeprom.c ../../persist/eeprom/persist_eeprom.c ../../../lib/shift/shift.c ../../status/status_shift.c
PROGRAMMER=usbtiny

# You can also define anything here and it will override 
# the definitions in variables.mk
CDEFS += -Wl,-u,vfprintf -lprintf_flt -lm 

include ../../../../../build/targets.mk
