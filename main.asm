.386
.model flat,stdcall
option casemap:none


include windows.inc
include kernel32.inc
include user32.inc
includelib kernel32.lib
includelib user32.lib

.data
	dzHello db 'title',0
	szTitle db 'Content',0
	
.code 
quick_sort proc 
	cmp [ebx-8],[ebx-4]
	jge quick_sort_end
quick_sort_end:
	ret
quick_sort endp

start:
	push 0xa0h
	push 0
	push dword ptr [eax]
	call quick_sort
	push 0
	call ExitProcess
end start	




