.386
.model flat,stdcall
.	casemap:none

include windows.h
include kernel32.h
include user32.h
includelib kernel32.lib
includelib user32.lib

.data
	szHello db 'Hello',0

.code
start:
	push 0
	push offset szHello
	push offset szHello
	push 0
	call MessageBoxA

	QuickSort proc s_array,start,end

	QuickSort endp
end start
