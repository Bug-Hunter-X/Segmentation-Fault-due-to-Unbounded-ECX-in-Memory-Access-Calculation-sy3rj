mov ecx, [some_ecx_value] ;Assume some_ecx_value is taken from user input
;Check if ecx is within bounds
mov eax, 1000 ;Max value of ecx allowed
cmp ecx, eax
jge handle_out_of_bounds
mov ebx, some_ebx_value ;Assume some_ebx_value is also taken from user input
mov eax, [ebx+ecx*4]
jmp end
handle_out_of_bounds:
;Handle out of bound error, maybe set ecx to a safe value and proceed 
mov ecx, 0
mov eax, [ebx+ecx*4]
end: ;Continue with the program