# default.vmb configuration file for the example


port 9002
host localhost


#if mother
#debug
#verbose
exec rom -c "#FILE#"
exec ram -c "#FILE#"
exec winvram -c "#FILE#"
exec keyboard.exe -c "#FILE#"
exec button.exe -c "#FILE#"
#exec mmixcpu -i -O soko0.mmo
#endif


#if rom
address 0x0000000000000000
file bios_EWait.img
minimized
#endif


#if ram
# 256 KByte
size    0x40000
address 0x0000000100000000
minimized
#endif


#if winvram
address 0x0002000000000000
fwidth 1024
fheight 480
#you can make the actual width/height smaller than the underlying bitmap to get offscscreen memory
width 640
height 480
zoom 1

mouseaddress 0x0001000000000010
interrupt 42

gpuaddress   0x0001000000000020
gpuinterrupt 43

fontheight 15
fontwidth  8

#endif


#if keyboard
address 0x0001000000000000
interrupt 40
#endif

#if button
interrupt 48
#endif
