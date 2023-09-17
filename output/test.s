section .bss
staticvar: resd 31
section .text
global javalangClassClass
javalangClassClass:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangClassClassRETURN
javalangClassClassRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringlength
javalangStringlength:
push dword ebp
mov dword ebp, esp
sub esp, 4*1
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword ecx, 4
mov dword eax, ebx
add eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ecx, eax
mov dword eax, ecx
mov dword esi, eax
mov dword edi, 0
mov dword eax, esi
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz vqINEEAJyS
jmp jhdwZZmFRk
jhdwZZmFRk:
mov dword eax, ecx
mov dword ecx, eax
mov dword ebx, 4
mov dword eax, ecx
sub eax, ebx
mov dword ecx, eax
mov dword eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ecx, eax
vqINEEAJyS:
mov dword eax, ecx
jmp javalangStringlengthRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringlengthRETURN
javalangStringlengthRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringtoString
javalangStringtoString:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
jmp javalangStringtoStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringtoStringRETURN
javalangStringtoStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringhashCode
javalangStringhashCode:
push dword ebp
mov dword ebp, esp
sub esp, 4*12
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 40], 0
mov dword [ebp - 48], 0
yUobZUGbIP:
mov dword eax, [ebp - 48]
mov dword [ebp - 36], eax
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword edi, 0
mov dword eax, esi
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz tiNMTODfuL
jmp eXajuwvAwc
eXajuwvAwc:
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 20], eax
mov dword eax, [ebp - 20]
mov dword eax, [eax]
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
tiNMTODfuL:
mov dword eax, [ebp - 36]
cmp eax, ebx
mov dword [ebp - 8], 0
setl [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz bJlHROYQiH
jmp hraFhcQcRY
bJlHROYQiH:
mov dword ebx, 31
mov dword eax, ebx
imul dword eax, [ebp - 40]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 44], eax
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 32], eax
mov dword eax, [ebp - 32]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz OcHrhEeEAC
jmp WOtUHmSYJB
OcHrhEeEAC:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
WOtUHmSYJB:
mov dword eax, [ebp - 48]
mov dword [ebp - 28], eax
mov dword eax, [ebp - 28]
mov dword esi, eax
mov dword eax, [ebp - 32]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 16], 0
setl [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz DiywuDRAQr
jmp OcHrhEeEAC
DiywuDRAQr:
mov dword eax, [ebp - 32]
mov dword [ebp - 24], eax
mov dword esi, 4
mov dword eax, [ebp - 28]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 24]
add eax, ebx
mov dword [ebp - 24], eax
mov dword eax, [ebp - 24]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, [ebp - 44]
add eax, ebx
mov dword [ebp - 44], eax
mov dword eax, [ebp - 44]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 40], eax
mov dword eax, [ebp - 48]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 48], eax
jmp yUobZUGbIP
hraFhcQcRY:
mov dword eax, [ebp - 40]
jmp javalangStringhashCodeRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringhashCodeRETURN
javalangStringhashCodeRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringsubstringINTINT
javalangStringsubstringINTINT:
push dword ebp
mov dword ebp, esp
sub esp, 4*42
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 164], 0
mov dword eax, [ebp + 16]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
setl [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz NiFKyWraeb
jmp PFDNoEiHjq
NiFKyWraeb:
mov dword [ebp - 136], 0
mov dword eax, [ebp - 136]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
setge [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz RJKYWZIddU
jmp eSPrxnSMNo
eSPrxnSMNo:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
RJKYWZIddU:
mov dword esi, 8
mov dword eax, [ebp - 136]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 144], eax
mov dword eax, [ebp - 144]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 136]
mov dword [eax], edx
mov dword eax, [ebp - 144]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 136]
mov dword [ebp - 108], eax
mov dword eax, [ebp - 144]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
hGYeRRczpd:
mov dword eax, [ebp - 108]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz cxODzuSObc
jmp QFxwTxjvcD
QFxwTxjvcD:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 108]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 108], eax
jmp hGYeRRczpd
cxODzuSObc:
mov dword eax, [ebp - 144]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 116], eax
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 88], eax
mov dword eax, [ebp - 88]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp - 88]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 88]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp + 8], eax
mov dword eax, [ebp - 88]
mov dword edi, eax
mov dword esi, 0
mov dword eax, [ebp - 116]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword edi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 88]
jmp javalangStringsubstringINTINTRETURN
PFDNoEiHjq:
mov dword eax, [ebp + 20]
mov dword [ebp - 68], eax
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 68]
cmp eax, ebx
mov dword [ebp - 16], 0
setg [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz FzcMtNpUvj
jmp ezQCoXUlGD
FzcMtNpUvj:
mov dword [ebp - 132], 0
mov dword eax, [ebp - 132]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 20], 0
setge [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz rSDTjmyBHv
jmp OgMdCEgyVY
OgMdCEgyVY:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
rSDTjmyBHv:
mov dword esi, 8
mov dword eax, [ebp - 132]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 156], eax
mov dword eax, [ebp - 156]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 132]
mov dword [eax], edx
mov dword eax, [ebp - 156]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 132]
mov dword [ebp - 96], eax
mov dword eax, [ebp - 156]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
sHxZkbkUML:
mov dword eax, [ebp - 96]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz mIGYWxFNdW
jmp FxUJktfWrk
FxUJktfWrk:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 96]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 96], eax
jmp sHxZkbkUML
mIGYWxFNdW:
mov dword eax, [ebp - 156]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 124], eax
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 92], eax
mov dword eax, [ebp - 92]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp - 92]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 92]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp + 8], eax
mov dword eax, [ebp - 92]
mov dword esi, eax
mov dword edi, 0
mov dword eax, [ebp - 124]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
push dword esi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 92]
jmp javalangStringsubstringINTINTRETURN
ezQCoXUlGD:
mov dword eax, [ebp + 20]
mov dword ebx, eax
mov dword eax, ebx
cmp eax, [ebp + 16]
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz xVGUBszVoY
jmp NQsDLctzFP
xVGUBszVoY:
mov dword esi, 0
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 32], 0
setge [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz BuoocPpLkw
jmp qtZPqmFRaJ
qtZPqmFRaJ:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
BuoocPpLkw:
mov dword edi, 8
mov dword eax, esi
mov dword ebx, eax
mov dword [ebp - 60], 4
mov dword eax, ebx
imul dword eax, [ebp - 60]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 148], eax
mov dword eax, [ebp - 148]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, esi
mov dword [eax], edx
mov dword eax, [ebp - 148]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp - 120], eax
mov dword eax, [ebp - 148]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
maFXWNBsME:
mov dword eax, [ebp - 120]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 36], 0
sete [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz absDQqPKFM
jmp ZsxdZfQydx
ZsxdZfQydx:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 120]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 120], eax
jmp maFXWNBsME
absDQqPKFM:
mov dword eax, [ebp - 148]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 80], eax
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 100], eax
mov dword eax, [ebp - 100]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp - 100]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 100]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp + 8], eax
mov dword eax, [ebp - 100]
mov dword esi, eax
mov dword edi, 0
mov dword eax, [ebp - 80]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
push dword esi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 100]
jmp javalangStringsubstringINTINTRETURN
NQsDLctzFP:
mov dword eax, [ebp + 20]
mov dword ebx, eax
mov dword eax, ebx
sub eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 128], eax
mov dword eax, [ebp - 128]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 40], 0
setge [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz VcdkOrTXpj
jmp JfseLgzXco
JfseLgzXco:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
VcdkOrTXpj:
mov dword esi, 8
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 152], eax
mov dword eax, [ebp - 152]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 128]
mov dword [eax], edx
mov dword eax, [ebp - 152]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 128]
mov dword [ebp - 84], eax
mov dword eax, [ebp - 152]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
MkTyZeWFVj:
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 44], 0
sete [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz XcKyigmjnz
jmp GocBLyIqtb
GocBLyIqtb:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 84], eax
jmp MkTyZeWFVj
XcKyigmjnz:
mov dword eax, [ebp - 152]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 168], eax
mov dword eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 164], eax
QBbgMRngeL:
mov dword eax, [ebp - 164]
mov dword ebx, eax
mov dword eax, ebx
cmp eax, [ebp + 20]
mov dword [ebp - 48], 0
setl [ebp - 48]
mov dword eax, [ebp - 48]
test eax, [ebp - 48]
jnz GtsgqejiKK
jmp NUwgBkuesY
GtsgqejiKK:
mov dword eax, [ebp - 168]
mov dword [ebp - 160], eax
mov dword eax, [ebp - 160]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 52], 0
sete [ebp - 52]
mov dword eax, [ebp - 52]
test eax, [ebp - 52]
jnz ifHfGUCTeT
jmp YrDkIpFXEP
ifHfGUCTeT:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
YrDkIpFXEP:
mov dword eax, [ebp - 164]
mov dword ebx, eax
mov dword eax, ebx
sub eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 140], eax
mov dword eax, [ebp - 140]
mov dword esi, eax
mov dword eax, [ebp - 160]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 56], 0
setl [ebp - 56]
mov dword eax, [ebp - 56]
test eax, [ebp - 56]
jnz sHojBVrofG
jmp ifHfGUCTeT
sHojBVrofG:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 76], eax
mov dword eax, edi
mov dword edi, eax
mov dword esi, 0
mov dword eax, [ebp - 164]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword edi
mov dword ebx, 60
mov dword eax, [ebp - 76]
add eax, ebx
mov dword [ebp - 76], eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 112], eax
mov dword eax, [ebp - 160]
mov dword [ebp - 72], eax
mov dword esi, 4
mov dword eax, [ebp - 140]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 72]
add eax, ebx
mov dword [ebp - 72], eax
mov dword eax, [ebp - 72]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 112]
mov dword [eax], edx
mov dword eax, [ebp - 164]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 164], eax
jmp QBbgMRngeL
NUwgBkuesY:
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 104], eax
mov dword eax, [ebp - 104]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword [ebp - 64], eax
mov dword eax, [ebp - 104]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 104]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [ebp - 64]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 104]
mov dword esi, eax
mov dword edi, 0
mov dword eax, [ebp - 168]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
push dword esi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 104]
jmp javalangStringsubstringINTINTRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringsubstringINTINTRETURN
javalangStringsubstringINTINTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringtrim
javalangStringtrim:
push dword ebp
mov dword ebp, esp
sub esp, 4*21
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 84], 0
mov dword [ebp - 76], 0
mov dword ebx, 0
mov dword eax, ebx
mov dword [ebp - 84], eax
CTiUiJWgqM:
mov dword eax, [ebp - 84]
mov dword [ebp - 48], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, edi
mov dword edi, eax
mov dword ebx, 0
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 48]
cmp eax, ebx
mov dword [ebp - 4], 0
setl [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz JTgczkMLmW
jmp pRczEfPIrs
JTgczkMLmW:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 36], eax
mov dword eax, ebx
mov dword edi, eax
mov dword esi, 0
mov dword eax, [ebp - 84]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword edi
mov dword ebx, 60
mov dword eax, [ebp - 36]
add eax, ebx
mov dword [ebp - 36], eax
mov dword eax, [ebp - 36]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 32
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
setle [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz FYAJLfITvk
jmp pRczEfPIrs
FYAJLfITvk:
mov dword eax, [ebp - 84]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 84], eax
jmp CTiUiJWgqM
pRczEfPIrs:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 76], eax
iQSjpHNidI:
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 12], 0
setge [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz qTCkrDapDe
jmp USxLFLNcpQ
qTCkrDapDe:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 40], eax
mov dword eax, edi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, [ebp - 76]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword ebx
push dword edi
mov dword ebx, 60
mov dword eax, [ebp - 40]
add eax, ebx
mov dword [ebp - 40], eax
mov dword eax, [ebp - 40]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 32
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 16], 0
setle [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz AaEXXFFeoa
jmp USxLFLNcpQ
AaEXXFFeoa:
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 76], eax
jmp iQSjpHNidI
USxLFLNcpQ:
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword eax, ebx
cmp eax, [ebp - 76]
mov dword [ebp - 20], 0
setg [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz FTUonECFFI
jmp heMKkahrtt
FTUonECFFI:
mov dword [ebp - 72], 0
mov dword eax, [ebp - 72]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 24], 0
setge [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz CrXWhdiEan
jmp yiQwgQhqqW
yiQwgQhqqW:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
CrXWhdiEan:
mov dword edi, 8
mov dword eax, [ebp - 72]
mov dword [ebp - 32], eax
mov dword ebx, 4
mov dword eax, [ebp - 32]
imul dword eax, ebx
mov dword [ebp - 32], eax
mov dword eax, [ebp - 32]
mov dword ebx, eax
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 80], eax
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 72]
mov dword [eax], edx
mov dword eax, [ebp - 80]
mov dword esi, eax
mov dword ebx, 4
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 72]
mov dword [ebp - 64], eax
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
jAnexGuHNt:
mov dword eax, [ebp - 64]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 28], 0
sete [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz npsTqQbEny
jmp oEdVrEwAtx
oEdVrEwAtx:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 64]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 64], eax
jmp jAnexGuHNt
npsTqQbEny:
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 68], eax
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 60], eax
mov dword eax, [ebp - 60]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp - 60]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 60]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp + 8], eax
mov dword eax, [ebp - 60]
mov dword edi, eax
mov dword esi, 0
mov dword eax, [ebp - 68]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword edi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 60]
jmp javalangStringtrimRETURN
jmp gHCIaTVCYG
heMKkahrtt:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 56], eax
mov dword eax, edi
mov dword [ebp - 44], eax
mov dword [ebp - 52], 0
mov dword eax, [ebp - 84]
mov dword esi, eax
mov dword eax, [ebp - 76]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword [ebp - 52]
push dword [ebp - 44]
mov dword ebx, 32
mov dword eax, [ebp - 56]
add eax, ebx
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 16
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringtrimRETURN
gHCIaTVCYG:
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringtrimRETURN
javalangStringtrimRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringvalueOfBYTE
javalangStringvalueOfBYTE:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
call javalangStringvalueOfINT
add esp, 4
pop edx
pop ecx
mov dword ecx, eax
mov dword eax, ecx
pop eax
mov dword eax, ecx
jmp javalangStringvalueOfBYTERETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringvalueOfBYTERETURN
javalangStringvalueOfBYTERETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringcompareTojavalangString
javalangStringcompareTojavalangString:
push dword ebp
mov dword ebp, esp
sub esp, 4*39
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 152], 0
mov dword [ebp - 156], 1
whQWfEIcaW:
mov dword eax, [ebp - 156]
test eax, [ebp - 156]
jnz unsFNfnNuw
jmp ejWnwuPhQE
unsFNfnNuw:
mov dword eax, [ebp - 152]
mov dword [ebp - 132], eax
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword esi, 0
mov dword eax, ebx
cmp eax, esi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz VbYTsSHPaA
jmp EpaEVhoePS
EpaEVhoePS:
mov dword eax, edi
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
VbYTsSHPaA:
mov dword eax, [ebp - 132]
cmp eax, edi
mov dword [ebp - 8], 0
setge [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz FiBslJmGRT
jmp JMXBASOtPJ
FiBslJmGRT:
mov dword eax, [ebp - 152]
mov dword [ebp - 136], eax
mov dword eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword edi, 0
mov dword eax, esi
cmp eax, edi
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz SVxrTWQBwS
jmp zQmvCWTiof
zQmvCWTiof:
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
SVxrTWQBwS:
mov dword eax, [ebp - 136]
cmp eax, ebx
mov dword [ebp - 16], 0
setge [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz UGQrnEeLeO
jmp JMXBASOtPJ
UGQrnEeLeO:
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringcompareTojavalangStringRETURN
JMXBASOtPJ:
mov dword eax, [ebp - 152]
mov dword [ebp - 128], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 76], eax
mov dword eax, [ebp - 76]
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword ebx, 0
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 20], 0
sete [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz XDTGKXYUqp
jmp QOyZkXATqp
QOyZkXATqp:
mov dword eax, edi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
XDTGKXYUqp:
mov dword eax, [ebp - 128]
cmp eax, edi
mov dword [ebp - 24], 0
setge [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz CnseWpLTZi
jmp QqZtphbzEw
CnseWpLTZi:
mov dword ebx, -1
mov dword eax, ebx
jmp javalangStringcompareTojavalangStringRETURN
QqZtphbzEw:
mov dword eax, [ebp - 152]
mov dword [ebp - 140], eax
mov dword eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 28], 0
sete [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz EzamVKxusq
jmp nWiaOopoEv
nWiaOopoEv:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
EzamVKxusq:
mov dword eax, [ebp - 140]
cmp eax, esi
mov dword [ebp - 32], 0
setge [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz aBwlVFsCur
jmp beknbebcNG
aBwlVFsCur:
mov dword ebx, 1
mov dword eax, ebx
jmp javalangStringcompareTojavalangStringRETURN
beknbebcNG:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 116], eax
mov dword eax, [ebp - 116]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 36], 0
sete [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz CxFWKxLFPL
jmp hLCWvuiPCs
CxFWKxLFPL:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
hLCWvuiPCs:
mov dword eax, [ebp - 152]
mov dword [ebp - 96], eax
mov dword eax, [ebp - 96]
mov dword esi, eax
mov dword eax, [ebp - 116]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 40], 0
setl [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz VrrMQfKVru
jmp CxFWKxLFPL
VrrMQfKVru:
mov dword eax, [ebp - 116]
mov dword [ebp - 84], eax
mov dword esi, 4
mov dword eax, [ebp - 96]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 84]
add eax, ebx
mov dword [ebp - 84], eax
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 148], eax
mov dword eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 120], eax
mov dword eax, [ebp - 120]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 44], 0
sete [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz qQsJIjRtaW
jmp mUDsVRHBjk
qQsJIjRtaW:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mUDsVRHBjk:
mov dword eax, [ebp - 152]
mov dword [ebp - 112], eax
mov dword eax, [ebp - 112]
mov dword esi, eax
mov dword eax, [ebp - 120]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 48], 0
setl [ebp - 48]
mov dword eax, [ebp - 48]
test eax, [ebp - 48]
jnz ncsHqzvhzQ
jmp qQsJIjRtaW
ncsHqzvhzQ:
mov dword eax, [ebp - 120]
mov dword [ebp - 88], eax
mov dword esi, 4
mov dword eax, [ebp - 112]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 88]
add eax, ebx
mov dword [ebp - 88], eax
mov dword eax, [ebp - 88]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, [ebp - 148]
cmp eax, edi
mov dword [ebp - 52], 0
setl [ebp - 52]
mov dword eax, [ebp - 52]
test eax, [ebp - 52]
jnz uKmDOThHue
jmp dJiRVlSMra
uKmDOThHue:
mov dword ebx, -1
mov dword eax, ebx
jmp javalangStringcompareTojavalangStringRETURN
dJiRVlSMra:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword esi, 4
mov dword eax, ebx
add eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 108], eax
mov dword eax, [ebp - 108]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 56], 0
sete [ebp - 56]
mov dword eax, [ebp - 56]
test eax, [ebp - 56]
jnz LrWPkxuxSN
jmp WQQpsldQIY
LrWPkxuxSN:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
WQQpsldQIY:
mov dword eax, [ebp - 152]
mov dword [ebp - 100], eax
mov dword eax, [ebp - 100]
mov dword esi, eax
mov dword eax, [ebp - 108]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 60], 0
setl [ebp - 60]
mov dword eax, [ebp - 60]
test eax, [ebp - 60]
jnz PSixjwhIgM
jmp LrWPkxuxSN
PSixjwhIgM:
mov dword eax, [ebp - 108]
mov dword [ebp - 80], eax
mov dword esi, 4
mov dword eax, [ebp - 100]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 80]
add eax, ebx
mov dword [ebp - 80], eax
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 144], eax
mov dword eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 124], eax
mov dword eax, [ebp - 124]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 64], 0
sete [ebp - 64]
mov dword eax, [ebp - 64]
test eax, [ebp - 64]
jnz sInPjkNuGU
jmp QuXIiaAHQf
sInPjkNuGU:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
QuXIiaAHQf:
mov dword eax, [ebp - 152]
mov dword [ebp - 104], eax
mov dword eax, [ebp - 104]
mov dword esi, eax
mov dword eax, [ebp - 124]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 68], 0
setl [ebp - 68]
mov dword eax, [ebp - 68]
test eax, [ebp - 68]
jnz cairwROtan
jmp sInPjkNuGU
cairwROtan:
mov dword eax, [ebp - 124]
mov dword [ebp - 92], eax
mov dword esi, 4
mov dword eax, [ebp - 104]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 92]
add eax, ebx
mov dword [ebp - 92], eax
mov dword eax, [ebp - 92]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, [ebp - 144]
cmp eax, ebx
mov dword [ebp - 72], 0
setg [ebp - 72]
mov dword eax, [ebp - 72]
test eax, [ebp - 72]
jnz SjEkKwwWAJ
jmp LfrxSgHjHn
SjEkKwwWAJ:
mov dword ebx, 1
mov dword eax, ebx
jmp javalangStringcompareTojavalangStringRETURN
LfrxSgHjHn:
mov dword eax, [ebp - 152]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 152], eax
jmp whQWfEIcaW
ejWnwuPhQE:
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringcompareTojavalangStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringcompareTojavalangStringRETURN
javalangStringcompareTojavalangStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringcompareTojavalangObject
javalangStringcompareTojavalangObject:
push dword ebp
mov dword ebp, esp
sub esp, 4*6
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 24], eax
mov dword eax, ebx
mov dword [ebp - 20], eax
mov dword [ebp - 16], 0
mov dword eax, [ebp + 16]
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, [staticvar + 8]
mov dword esi, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 64
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword [ebp - 8], eax
mov dword eax, [ebp - 8]
mov dword eax, [eax]
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz nlUwznRgud
jmp JiGlKyFmtq
JiGlKyFmtq:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
nlUwznRgud:
mov dword eax, [ebp - 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword [ebp - 16]
push dword [ebp - 20]
mov dword ebx, 40
mov dword eax, [ebp - 24]
add eax, ebx
mov dword [ebp - 24], eax
mov dword eax, [ebp - 24]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringcompareTojavalangObjectRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringcompareTojavalangObjectRETURN
javalangStringcompareTojavalangObjectRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringvalueOfINT
javalangStringvalueOfINT:
push dword ebp
mov dword ebp, esp
sub esp, 4*125
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 432], 15
mov dword eax, [ebp - 432]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
setge [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz uhJADPzGpa
jmp AQcPwOSzAj
AQcPwOSzAj:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
uhJADPzGpa:
mov dword esi, 8
mov dword eax, [ebp - 432]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 460], eax
mov dword eax, [ebp - 460]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 432]
mov dword [eax], edx
mov dword eax, [ebp - 460]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 432]
mov dword [ebp - 380], eax
mov dword eax, [ebp - 460]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
NXRXIdkZKj:
mov dword eax, [ebp - 380]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz SCVPZPrvNR
jmp FqdDrmcGTB
FqdDrmcGTB:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 380]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 380], eax
jmp NXRXIdkZKj
SCVPZPrvNR:
mov dword eax, [ebp - 460]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 492], eax
mov dword [ebp - 488], 0
mov dword [ebp - 484], 0
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword edi, -2147483648
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz oFrsnKYScN
jmp fAqksczvQV
oFrsnKYScN:
mov dword [ebp - 436], 11
mov dword eax, [ebp - 436]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 16], 0
setge [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz VcuFeUFwkh
jmp NgAIkqFGhs
NgAIkqFGhs:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
VcuFeUFwkh:
mov dword esi, 8
mov dword eax, [ebp - 436]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 464], eax
mov dword eax, [ebp - 464]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 436]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 436]
mov dword [ebp - 404], eax
mov dword eax, [ebp - 464]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
JoWgzQygeD:
mov dword eax, [ebp - 404]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 20], 0
sete [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz SOuWMuQpCw
jmp mWCDTOFoEX
mWCDTOFoEX:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword eax, esi
mov dword esi, eax
mov dword eax, [ebp - 404]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 404], eax
jmp JoWgzQygeD
SOuWMuQpCw:
mov dword eax, [ebp - 464]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 496], eax
mov dword eax, [ebp - 496]
mov dword [ebp - 356], eax
mov dword eax, [ebp - 356]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz WTytNZSkzX
jmp ZXZtpkRUsS
WTytNZSkzX:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
ZXZtpkRUsS:
mov dword [ebp - 244], 0
mov dword eax, [ebp - 244]
mov dword esi, eax
mov dword eax, [ebp - 356]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz PcchLeyqXc
jmp WTytNZSkzX
PcchLeyqXc:
mov dword [ebp - 288], 45
mov dword eax, [ebp - 356]
mov dword [ebp - 200], eax
mov dword esi, 4
mov dword eax, [ebp - 244]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 200]
add eax, ebx
mov dword [ebp - 200], eax
mov dword eax, [ebp - 200]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 288]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 324], eax
mov dword eax, [ebp - 324]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 32], 0
sete [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz jznCjVCoRg
jmp skXkyyyGOn
jznCjVCoRg:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
skXkyyyGOn:
mov dword [ebp - 268], 1
mov dword eax, [ebp - 268]
mov dword esi, eax
mov dword eax, [ebp - 324]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 36], 0
setl [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz IOnVhnOGhA
jmp jznCjVCoRg
IOnVhnOGhA:
mov dword [ebp - 376], 50
mov dword eax, [ebp - 324]
mov dword [ebp - 192], eax
mov dword esi, 4
mov dword eax, [ebp - 268]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 192]
add eax, ebx
mov dword [ebp - 192], eax
mov dword eax, [ebp - 192]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 376]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 292], eax
mov dword eax, [ebp - 292]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 40], 0
sete [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz wWpkuRgbeS
jmp yEWIRorhcj
wWpkuRgbeS:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
yEWIRorhcj:
mov dword [ebp - 256], 2
mov dword eax, [ebp - 256]
mov dword esi, eax
mov dword eax, [ebp - 292]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 44], 0
setl [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz wECEgvCsPy
jmp wWpkuRgbeS
wECEgvCsPy:
mov dword [ebp - 360], 49
mov dword eax, [ebp - 292]
mov dword [ebp - 188], eax
mov dword esi, 4
mov dword eax, [ebp - 256]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 188]
add eax, ebx
mov dword [ebp - 188], eax
mov dword eax, [ebp - 188]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 360]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 372], eax
mov dword eax, [ebp - 372]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 48], 0
sete [ebp - 48]
mov dword eax, [ebp - 48]
test eax, [ebp - 48]
jnz wdZMhEiNZa
jmp vVRcaFMtiK
wdZMhEiNZa:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
vVRcaFMtiK:
mov dword [ebp - 228], 3
mov dword eax, [ebp - 228]
mov dword esi, eax
mov dword eax, [ebp - 372]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 52], 0
setl [ebp - 52]
mov dword eax, [ebp - 52]
test eax, [ebp - 52]
jnz RChuXFEJRC
jmp wdZMhEiNZa
RChuXFEJRC:
mov dword [ebp - 304], 52
mov dword eax, [ebp - 372]
mov dword [ebp - 212], eax
mov dword esi, 4
mov dword eax, [ebp - 228]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 212]
add eax, ebx
mov dword [ebp - 212], eax
mov dword eax, [ebp - 212]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 304]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 336], eax
mov dword eax, [ebp - 336]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 56], 0
sete [ebp - 56]
mov dword eax, [ebp - 56]
test eax, [ebp - 56]
jnz JOsbgjixPt
jmp nzHXRUXTUB
JOsbgjixPt:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
nzHXRUXTUB:
mov dword [ebp - 232], 4
mov dword eax, [ebp - 232]
mov dword esi, eax
mov dword eax, [ebp - 336]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 60], 0
setl [ebp - 60]
mov dword eax, [ebp - 60]
test eax, [ebp - 60]
jnz eLBINUjBDb
jmp JOsbgjixPt
eLBINUjBDb:
mov dword [ebp - 332], 55
mov dword eax, [ebp - 336]
mov dword [ebp - 184], eax
mov dword esi, 4
mov dword eax, [ebp - 232]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 184]
add eax, ebx
mov dword [ebp - 184], eax
mov dword eax, [ebp - 184]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 332]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 312], eax
mov dword eax, [ebp - 312]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 64], 0
sete [ebp - 64]
mov dword eax, [ebp - 64]
test eax, [ebp - 64]
jnz MVRifDXrsu
jmp YMktoHMtts
MVRifDXrsu:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
YMktoHMtts:
mov dword [ebp - 264], 5
mov dword eax, [ebp - 264]
mov dword esi, eax
mov dword eax, [ebp - 312]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 68], 0
setl [ebp - 68]
mov dword eax, [ebp - 68]
test eax, [ebp - 68]
jnz BXPWHpYMah
jmp MVRifDXrsu
BXPWHpYMah:
mov dword [ebp - 348], 52
mov dword eax, [ebp - 312]
mov dword [ebp - 180], eax
mov dword esi, 4
mov dword eax, [ebp - 264]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 180]
add eax, ebx
mov dword [ebp - 180], eax
mov dword eax, [ebp - 180]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 348]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 308], eax
mov dword eax, [ebp - 308]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 72], 0
sete [ebp - 72]
mov dword eax, [ebp - 72]
test eax, [ebp - 72]
jnz VgQYYnOipS
jmp xAjfvCgpAq
VgQYYnOipS:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
xAjfvCgpAq:
mov dword [ebp - 236], 6
mov dword eax, [ebp - 236]
mov dword esi, eax
mov dword eax, [ebp - 308]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 76], 0
setl [ebp - 76]
mov dword eax, [ebp - 76]
test eax, [ebp - 76]
jnz UsRZNWgQtP
jmp VgQYYnOipS
UsRZNWgQtP:
mov dword [ebp - 296], 56
mov dword eax, [ebp - 308]
mov dword [ebp - 216], eax
mov dword esi, 4
mov dword eax, [ebp - 236]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 216]
add eax, ebx
mov dword [ebp - 216], eax
mov dword eax, [ebp - 216]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 176], eax
mov dword eax, [ebp - 176]
mov dword edx, [ebp - 296]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 344], eax
mov dword eax, [ebp - 344]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 80], 0
sete [ebp - 80]
mov dword eax, [ebp - 80]
test eax, [ebp - 80]
jnz FQsZcozXWw
jmp ntoRUKGcgM
FQsZcozXWw:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
ntoRUKGcgM:
mov dword [ebp - 252], 7
mov dword eax, [ebp - 252]
mov dword esi, eax
mov dword eax, [ebp - 344]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 84], 0
setl [ebp - 84]
mov dword eax, [ebp - 84]
test eax, [ebp - 84]
jnz LpxeKyDzsK
jmp FQsZcozXWw
LpxeKyDzsK:
mov dword [ebp - 284], 51
mov dword eax, [ebp - 344]
mov dword [ebp - 208], eax
mov dword esi, 4
mov dword eax, [ebp - 252]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 208]
add eax, ebx
mov dword [ebp - 208], eax
mov dword eax, [ebp - 208]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 284]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 352], eax
mov dword eax, [ebp - 352]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 88], 0
sete [ebp - 88]
mov dword eax, [ebp - 88]
test eax, [ebp - 88]
jnz lJIGmhnqyP
jmp CVfSfjEKyf
lJIGmhnqyP:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
CVfSfjEKyf:
mov dword [ebp - 240], 8
mov dword eax, [ebp - 240]
mov dword esi, eax
mov dword eax, [ebp - 352]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 92], 0
setl [ebp - 92]
mov dword eax, [ebp - 92]
test eax, [ebp - 92]
jnz xkZtgBGdLW
jmp lJIGmhnqyP
xkZtgBGdLW:
mov dword [ebp - 368], 54
mov dword eax, [ebp - 352]
mov dword [ebp - 196], eax
mov dword esi, 4
mov dword eax, [ebp - 240]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 196]
add eax, ebx
mov dword [ebp - 196], eax
mov dword eax, [ebp - 196]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 368]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 320], eax
mov dword eax, [ebp - 320]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 96], 0
sete [ebp - 96]
mov dword eax, [ebp - 96]
test eax, [ebp - 96]
jnz mzMdUOSQPP
jmp tafzxeMpsq
mzMdUOSQPP:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
tafzxeMpsq:
mov dword [ebp - 272], 9
mov dword eax, [ebp - 272]
mov dword esi, eax
mov dword eax, [ebp - 320]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 100], 0
setl [ebp - 100]
mov dword eax, [ebp - 100]
test eax, [ebp - 100]
jnz gYqXnnODdM
jmp mzMdUOSQPP
gYqXnnODdM:
mov dword [ebp - 340], 52
mov dword eax, [ebp - 320]
mov dword [ebp - 204], eax
mov dword esi, 4
mov dword eax, [ebp - 272]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 204]
add eax, ebx
mov dword [ebp - 204], eax
mov dword eax, [ebp - 204]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 340]
mov dword [eax], edx
mov dword eax, [ebp - 496]
mov dword [ebp - 364], eax
mov dword eax, [ebp - 364]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 104], 0
sete [ebp - 104]
mov dword eax, [ebp - 104]
test eax, [ebp - 104]
jnz gSwIjDtBVa
jmp KTUyAuAyvY
gSwIjDtBVa:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
KTUyAuAyvY:
mov dword [ebp - 260], 10
mov dword eax, [ebp - 260]
mov dword esi, eax
mov dword eax, [ebp - 364]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 108], 0
setl [ebp - 108]
mov dword eax, [ebp - 108]
test eax, [ebp - 108]
jnz lCNDfxbJkr
jmp gSwIjDtBVa
lCNDfxbJkr:
mov dword [ebp - 300], 56
mov dword eax, [ebp - 364]
mov dword [ebp - 220], eax
mov dword esi, 4
mov dword eax, [ebp - 260]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 220]
add eax, ebx
mov dword [ebp - 220], eax
mov dword eax, [ebp - 220]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 300]
mov dword [eax], edx
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 400], eax
mov dword eax, [ebp - 400]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp - 500]
mov dword esi, eax
mov dword eax, [ebp - 400]
mov dword [ebp - 500], eax
mov dword eax, [ebp - 400]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp - 500], eax
mov dword eax, [ebp - 400]
mov dword esi, eax
mov dword edi, 0
mov dword eax, [ebp - 496]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
push dword esi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 400]
jmp javalangStringvalueOfINTRETURN
fAqksczvQV:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 112], 0
setl [ebp - 112]
mov dword eax, [ebp - 112]
test eax, [ebp - 112]
jnz vlskCVQkWY
jmp ZzaRJpZDLM
vlskCVQkWY:
mov dword ebx, 1
mov dword eax, ebx
mov dword [ebp - 484], eax
mov dword ebx, 0
mov dword eax, ebx
sub eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp + 8], eax
ZzaRJpZDLM:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 116], 0
sete [ebp - 116]
mov dword eax, [ebp - 116]
test eax, [ebp - 116]
jnz PgGjXrtCjn
jmp NvKfWrVUxc
PgGjXrtCjn:
mov dword eax, [ebp - 492]
mov dword [ebp - 420], eax
mov dword eax, [ebp - 420]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 120], 0
sete [ebp - 120]
mov dword eax, [ebp - 120]
test eax, [ebp - 120]
jnz fYQBpEqZvQ
jmp DhmVKfvTeP
fYQBpEqZvQ:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
DhmVKfvTeP:
mov dword eax, [ebp - 488]
mov dword [ebp - 392], eax
mov dword eax, [ebp - 392]
mov dword esi, eax
mov dword eax, [ebp - 420]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 124], 0
setl [ebp - 124]
mov dword eax, [ebp - 124]
test eax, [ebp - 124]
jnz vUJxvSEqyc
jmp fYQBpEqZvQ
vUJxvSEqyc:
mov dword [ebp - 424], 48
mov dword eax, [ebp - 420]
mov dword [ebp - 248], eax
mov dword esi, 4
mov dword eax, [ebp - 392]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 248]
add eax, ebx
mov dword [ebp - 248], eax
mov dword eax, [ebp - 248]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 424]
mov dword [eax], edx
mov dword eax, [ebp - 488]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 488], eax
jmp WFMqOpKWAy
NvKfWrVUxc:
xqvYehwMWc:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 128], 0
setg [ebp - 128]
mov dword eax, [ebp - 128]
test eax, [ebp - 128]
jnz udnfpHzBJu
jmp JanURczqeL
udnfpHzBJu:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 10
mov dword eax, edi
cdq
idiv dword ebx
mov dword edi, edx
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 440], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 10
mov dword eax, edi
cdq
idiv dword ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp + 8], eax
mov dword eax, [ebp - 492]
mov dword [ebp - 456], eax
mov dword eax, [ebp - 456]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 132], 0
sete [ebp - 132]
mov dword eax, [ebp - 132]
test eax, [ebp - 132]
jnz UzQfzVgqGX
jmp ShayDlMpAE
UzQfzVgqGX:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
ShayDlMpAE:
mov dword eax, [ebp - 488]
mov dword [ebp - 448], eax
mov dword eax, [ebp - 448]
mov dword esi, eax
mov dword eax, [ebp - 456]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 136], 0
setl [ebp - 136]
mov dword eax, [ebp - 136]
test eax, [ebp - 136]
jnz KsMvyfuCDQ
jmp UzQfzVgqGX
KsMvyfuCDQ:
mov dword eax, [ebp - 440]
mov dword ebx, eax
mov dword edi, 48
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 65535
mov dword eax, ebx
and eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 408], eax
mov dword eax, [ebp - 456]
mov dword [ebp - 276], eax
mov dword esi, 4
mov dword eax, [ebp - 448]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 276]
add eax, ebx
mov dword [ebp - 276], eax
mov dword eax, [ebp - 276]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 408]
mov dword [eax], edx
mov dword eax, [ebp - 488]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 488], eax
jmp xqvYehwMWc
JanURczqeL:
WFMqOpKWAy:
mov dword eax, [ebp - 484]
test eax, [ebp - 484]
jnz aKSWblmAJe
jmp BxFyEpTWWi
aKSWblmAJe:
mov dword eax, [ebp - 492]
mov dword [ebp - 384], eax
mov dword eax, [ebp - 384]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 140], 0
sete [ebp - 140]
mov dword eax, [ebp - 140]
test eax, [ebp - 140]
jnz ycQUrpipYi
jmp PsHDZfboff
ycQUrpipYi:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
PsHDZfboff:
mov dword eax, [ebp - 488]
mov dword [ebp - 316], eax
mov dword eax, [ebp - 316]
mov dword esi, eax
mov dword eax, [ebp - 384]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 144], 0
setl [ebp - 144]
mov dword eax, [ebp - 144]
test eax, [ebp - 144]
jnz EoQMbHexJN
jmp ycQUrpipYi
EoQMbHexJN:
mov dword [ebp - 396], 45
mov dword eax, [ebp - 384]
mov dword [ebp - 224], eax
mov dword esi, 4
mov dword eax, [ebp - 316]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 224]
add eax, ebx
mov dword [ebp - 224], eax
mov dword eax, [ebp - 224]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 396]
mov dword [eax], edx
mov dword eax, [ebp - 488]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 488], eax
BxFyEpTWWi:
mov dword eax, [ebp - 488]
mov dword [ebp - 444], eax
mov dword eax, [ebp - 444]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 148], 0
setge [ebp - 148]
mov dword eax, [ebp - 148]
test eax, [ebp - 148]
jnz uogFKEexpC
jmp dTJiEQStMg
dTJiEQStMg:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
uogFKEexpC:
mov dword esi, 8
mov dword eax, [ebp - 444]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 468], eax
mov dword eax, [ebp - 468]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 444]
mov dword [eax], edx
mov dword eax, [ebp - 468]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 444]
mov dword [ebp - 428], eax
mov dword eax, [ebp - 468]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
FAsLYTfKFF:
mov dword eax, [ebp - 428]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 152], 0
sete [ebp - 152]
mov dword eax, [ebp - 152]
test eax, [ebp - 152]
jnz BzHEvijbmR
jmp fwpuHRwAhJ
fwpuHRwAhJ:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 428]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 428], eax
jmp FAsLYTfKFF
BzHEvijbmR:
mov dword eax, [ebp - 468]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 480], eax
mov dword ebx, 0
mov dword eax, ebx
mov dword [ebp + 8], eax
AmMwOXupEC:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
cmp eax, [ebp - 488]
mov dword [ebp - 156], 0
setl [ebp - 156]
mov dword eax, [ebp - 156]
test eax, [ebp - 156]
jnz JvfBnsZzUs
jmp LrhXiIjgsE
JvfBnsZzUs:
mov dword eax, [ebp - 480]
mov dword [ebp - 476], eax
mov dword eax, [ebp - 476]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 160], 0
sete [ebp - 160]
mov dword eax, [ebp - 160]
test eax, [ebp - 160]
jnz jIxxfKrAyK
jmp LYhdeEenUz
jIxxfKrAyK:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
LYhdeEenUz:
mov dword eax, [ebp + 8]
mov dword [ebp - 472], eax
mov dword eax, [ebp - 472]
mov dword esi, eax
mov dword eax, [ebp - 476]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 164], 0
setl [ebp - 164]
mov dword eax, [ebp - 164]
test eax, [ebp - 164]
jnz PkMhypsLMq
jmp jIxxfKrAyK
PkMhypsLMq:
mov dword eax, [ebp - 492]
mov dword [ebp - 452], eax
mov dword eax, [ebp - 452]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 168], 0
sete [ebp - 168]
mov dword eax, [ebp - 168]
test eax, [ebp - 168]
jnz TnTCXtdBIR
jmp CpIvKVdFpm
TnTCXtdBIR:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
CpIvKVdFpm:
mov dword eax, [ebp - 488]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
sub eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 416], eax
mov dword eax, [ebp - 416]
mov dword esi, eax
mov dword eax, [ebp - 452]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 172], 0
setl [ebp - 172]
mov dword eax, [ebp - 172]
test eax, [ebp - 172]
jnz gDsknsOnbr
jmp TnTCXtdBIR
gDsknsOnbr:
mov dword eax, [ebp - 452]
mov dword [ebp - 328], eax
mov dword esi, 4
mov dword eax, [ebp - 416]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 328]
add eax, ebx
mov dword [ebp - 328], eax
mov dword eax, [ebp - 328]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 412], eax
mov dword eax, [ebp - 476]
mov dword [ebp - 280], eax
mov dword esi, 4
mov dword eax, [ebp - 472]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 280]
add eax, ebx
mov dword [ebp - 280], eax
mov dword eax, [ebp - 280]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 412]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp + 8], eax
jmp AmMwOXupEC
LrhXiIjgsE:
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 388], eax
mov dword eax, [ebp - 388]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp - 500]
mov dword esi, eax
mov dword eax, [ebp - 388]
mov dword [ebp - 500], eax
mov dword eax, [ebp - 388]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp - 500], eax
mov dword eax, [ebp - 388]
mov dword edi, eax
mov dword esi, 0
mov dword eax, [ebp - 480]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword edi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 388]
jmp javalangStringvalueOfINTRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringvalueOfINTRETURN
javalangStringvalueOfINTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringvalueOfSHORT
javalangStringvalueOfSHORT:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
call javalangStringvalueOfINT
add esp, 4
pop edx
pop ecx
mov dword ecx, eax
mov dword eax, ecx
pop eax
mov dword eax, ecx
jmp javalangStringvalueOfSHORTRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringvalueOfSHORTRETURN
javalangStringvalueOfSHORTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringvalueOfBOOLEAN
javalangStringvalueOfBOOLEAN:
push dword ebp
mov dword ebp, esp
sub esp, 4*70
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
test eax, [ebp + 8]
jnz xgjEioTmDh
jmp CnIaexOPzZ
xgjEioTmDh:
mov dword [ebp - 260], 4
mov dword eax, [ebp - 260]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
setge [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz NtDZixKKUp
jmp KllnXhgPNH
KllnXhgPNH:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
NtDZixKKUp:
mov dword esi, 8
mov dword eax, [ebp - 260]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 268], eax
mov dword eax, [ebp - 268]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 260]
mov dword [eax], edx
mov dword eax, [ebp - 268]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 260]
mov dword [ebp - 252], eax
mov dword eax, [ebp - 268]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
LESDcLuvPA:
mov dword eax, [ebp - 252]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz CNqoAjqgRi
jmp owFrMLlHQj
owFrMLlHQj:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 252]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 252], eax
jmp LESDcLuvPA
CNqoAjqgRi:
mov dword eax, [ebp - 268]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 272], eax
mov dword eax, [ebp - 272]
mov dword [ebp - 224], eax
mov dword eax, [ebp - 224]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz wAVEONJDlu
jmp EUCOEjLSqE
wAVEONJDlu:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
EUCOEjLSqE:
mov dword [ebp - 152], 0
mov dword eax, [ebp - 152]
mov dword esi, eax
mov dword eax, [ebp - 224]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 16], 0
setl [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz dSGqFjJaiq
jmp wAVEONJDlu
dSGqFjJaiq:
mov dword [ebp - 220], 116
mov dword eax, [ebp - 224]
mov dword [ebp - 116], eax
mov dword esi, 4
mov dword eax, [ebp - 152]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 116]
add eax, ebx
mov dword [ebp - 116], eax
mov dword eax, [ebp - 116]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 220]
mov dword [eax], edx
mov dword eax, [ebp - 272]
mov dword [ebp - 176], eax
mov dword eax, [ebp - 176]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 20], 0
sete [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz dPXbwykXHn
jmp qYzJteywKW
dPXbwykXHn:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
qYzJteywKW:
mov dword [ebp - 132], 1
mov dword eax, [ebp - 132]
mov dword esi, eax
mov dword eax, [ebp - 176]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 24], 0
setl [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz TmuuNBCyjI
jmp dPXbwykXHn
TmuuNBCyjI:
mov dword [ebp - 228], 114
mov dword eax, [ebp - 176]
mov dword [ebp - 100], eax
mov dword esi, 4
mov dword eax, [ebp - 132]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 100]
add eax, ebx
mov dword [ebp - 100], eax
mov dword eax, [ebp - 100]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 228]
mov dword [eax], edx
mov dword eax, [ebp - 272]
mov dword [ebp - 208], eax
mov dword eax, [ebp - 208]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 28], 0
sete [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz fzQOoEknjs
jmp PEPUBcwxxj
fzQOoEknjs:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
PEPUBcwxxj:
mov dword [ebp - 148], 2
mov dword eax, [ebp - 148]
mov dword esi, eax
mov dword eax, [ebp - 208]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 32], 0
setl [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz hgkanjkwjn
jmp fzQOoEknjs
hgkanjkwjn:
mov dword [ebp - 180], 117
mov dword eax, [ebp - 208]
mov dword [ebp - 108], eax
mov dword esi, 4
mov dword eax, [ebp - 148]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 108]
add eax, ebx
mov dword [ebp - 108], eax
mov dword eax, [ebp - 108]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 180]
mov dword [eax], edx
mov dword eax, [ebp - 272]
mov dword [ebp - 168], eax
mov dword eax, [ebp - 168]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 36], 0
sete [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz ALIgabkfhR
jmp QqTCtmLKxZ
ALIgabkfhR:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
QqTCtmLKxZ:
mov dword [ebp - 136], 3
mov dword eax, [ebp - 136]
mov dword esi, eax
mov dword eax, [ebp - 168]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 40], 0
setl [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz CrjfeayNaX
jmp ALIgabkfhR
CrjfeayNaX:
mov dword [ebp - 200], 101
mov dword eax, [ebp - 168]
mov dword [ebp - 96], eax
mov dword esi, 4
mov dword eax, [ebp - 136]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 96]
add eax, ebx
mov dword [ebp - 96], eax
mov dword eax, [ebp - 96]
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 200]
mov dword [eax], edx
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 248], eax
mov dword eax, [ebp - 248]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp - 280]
mov dword esi, eax
mov dword eax, [ebp - 248]
mov dword [ebp - 280], eax
mov dword eax, [ebp - 248]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp - 280], eax
mov dword eax, [ebp - 248]
mov dword esi, eax
mov dword edi, 0
mov dword eax, [ebp - 272]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
push dword esi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 248]
jmp javalangStringvalueOfBOOLEANRETURN
jmp VljAaSgOHa
CnIaexOPzZ:
mov dword [ebp - 256], 5
mov dword eax, [ebp - 256]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 44], 0
setge [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz fnrUsasYLf
jmp kYzVKFuZnm
kYzVKFuZnm:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
fnrUsasYLf:
mov dword esi, 8
mov dword eax, [ebp - 256]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 264], eax
mov dword eax, [ebp - 264]
mov dword esi, eax
mov dword eax, esi
mov dword edx, [ebp - 256]
mov dword [eax], edx
mov dword eax, [ebp - 264]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 256]
mov dword [ebp - 240], eax
mov dword eax, [ebp - 264]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
UMLGybwOTY:
mov dword eax, [ebp - 240]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 48], 0
sete [ebp - 48]
mov dword eax, [ebp - 48]
test eax, [ebp - 48]
jnz lnBnVJNqKo
jmp kCkvadWeYI
kCkvadWeYI:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 240]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 240], eax
jmp UMLGybwOTY
lnBnVJNqKo:
mov dword eax, [ebp - 264]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 276], eax
mov dword eax, [ebp - 276]
mov dword [ebp - 204], eax
mov dword eax, [ebp - 204]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 52], 0
sete [ebp - 52]
mov dword eax, [ebp - 52]
test eax, [ebp - 52]
jnz VMwcMCCNJh
jmp PeJxOQpNQG
VMwcMCCNJh:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
PeJxOQpNQG:
mov dword [ebp - 144], 0
mov dword eax, [ebp - 144]
mov dword esi, eax
mov dword eax, [ebp - 204]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 56], 0
setl [ebp - 56]
mov dword eax, [ebp - 56]
test eax, [ebp - 56]
jnz hyCjZMhchK
jmp VMwcMCCNJh
hyCjZMhchK:
mov dword [ebp - 172], 102
mov dword eax, [ebp - 204]
mov dword [ebp - 120], eax
mov dword esi, 4
mov dword eax, [ebp - 144]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 120]
add eax, ebx
mov dword [ebp - 120], eax
mov dword eax, [ebp - 120]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 172]
mov dword [eax], edx
mov dword eax, [ebp - 276]
mov dword [ebp - 212], eax
mov dword eax, [ebp - 212]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 60], 0
sete [ebp - 60]
mov dword eax, [ebp - 60]
test eax, [ebp - 60]
jnz DxEAcamqjA
jmp DCoGmKJjcG
DxEAcamqjA:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
DCoGmKJjcG:
mov dword [ebp - 140], 1
mov dword eax, [ebp - 140]
mov dword esi, eax
mov dword eax, [ebp - 212]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 64], 0
setl [ebp - 64]
mov dword eax, [ebp - 64]
test eax, [ebp - 64]
jnz eBkgwvjmGK
jmp DxEAcamqjA
eBkgwvjmGK:
mov dword [ebp - 232], 97
mov dword eax, [ebp - 212]
mov dword [ebp - 128], eax
mov dword esi, 4
mov dword eax, [ebp - 140]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 128]
add eax, ebx
mov dword [ebp - 128], eax
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 232]
mov dword [eax], edx
mov dword eax, [ebp - 276]
mov dword [ebp - 188], eax
mov dword eax, [ebp - 188]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 68], 0
sete [ebp - 68]
mov dword eax, [ebp - 68]
test eax, [ebp - 68]
jnz THgOgsBLwB
jmp fMHeZKKeAV
THgOgsBLwB:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
fMHeZKKeAV:
mov dword [ebp - 160], 2
mov dword eax, [ebp - 160]
mov dword esi, eax
mov dword eax, [ebp - 188]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 72], 0
setl [ebp - 72]
mov dword eax, [ebp - 72]
test eax, [ebp - 72]
jnz SWTLsZSXqI
jmp THgOgsBLwB
SWTLsZSXqI:
mov dword [ebp - 236], 108
mov dword eax, [ebp - 188]
mov dword [ebp - 104], eax
mov dword esi, 4
mov dword eax, [ebp - 160]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 104]
add eax, ebx
mov dword [ebp - 104], eax
mov dword eax, [ebp - 104]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 236]
mov dword [eax], edx
mov dword eax, [ebp - 276]
mov dword [ebp - 192], eax
mov dword eax, [ebp - 192]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 76], 0
sete [ebp - 76]
mov dword eax, [ebp - 76]
test eax, [ebp - 76]
jnz XwJKZqedKT
jmp qNJNrbHdwP
XwJKZqedKT:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
qNJNrbHdwP:
mov dword [ebp - 164], 3
mov dword eax, [ebp - 164]
mov dword esi, eax
mov dword eax, [ebp - 192]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 80], 0
setl [ebp - 80]
mov dword eax, [ebp - 80]
test eax, [ebp - 80]
jnz chBOpSTZZI
jmp XwJKZqedKT
chBOpSTZZI:
mov dword [ebp - 196], 115
mov dword eax, [ebp - 192]
mov dword [ebp - 112], eax
mov dword esi, 4
mov dword eax, [ebp - 164]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 112]
add eax, ebx
mov dword [ebp - 112], eax
mov dword eax, [ebp - 112]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 196]
mov dword [eax], edx
mov dword eax, [ebp - 276]
mov dword [ebp - 184], eax
mov dword eax, [ebp - 184]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 84], 0
sete [ebp - 84]
mov dword eax, [ebp - 84]
test eax, [ebp - 84]
jnz yEbpRRZyEQ
jmp tTFFCCQixG
yEbpRRZyEQ:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
tTFFCCQixG:
mov dword [ebp - 156], 4
mov dword eax, [ebp - 156]
mov dword esi, eax
mov dword eax, [ebp - 184]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 88], 0
setl [ebp - 88]
mov dword eax, [ebp - 88]
test eax, [ebp - 88]
jnz nRGcPDlYcx
jmp yEbpRRZyEQ
nRGcPDlYcx:
mov dword [ebp - 216], 101
mov dword eax, [ebp - 184]
mov dword [ebp - 124], eax
mov dword esi, 4
mov dword eax, [ebp - 156]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 124]
add eax, ebx
mov dword [ebp - 124], eax
mov dword eax, [ebp - 124]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 216]
mov dword [eax], edx
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 244], eax
mov dword eax, [ebp - 244]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp - 280]
mov dword esi, eax
mov dword eax, [ebp - 244]
mov dword [ebp - 280], eax
mov dword eax, [ebp - 244]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp - 280], eax
mov dword eax, [ebp - 244]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, [ebp - 276]
mov dword [ebp - 92], eax
push dword eax
push dword ecx
push dword edx
push dword [ebp - 92]
push dword edi
push dword ebx
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 244]
jmp javalangStringvalueOfBOOLEANRETURN
VljAaSgOHa:
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringvalueOfBOOLEANRETURN
javalangStringvalueOfBOOLEANRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringvalueOfjavalangString
javalangStringvalueOfjavalangString:
push dword ebp
mov dword ebp, esp
sub esp, 4*34
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz IiDEDOgmSA
jmp eOjYhJTtqV
IiDEDOgmSA:
mov dword [ebp - 124], 4
mov dword eax, [ebp - 124]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
setge [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz oQhdAgPwBf
jmp JWSljAcvdy
JWSljAcvdy:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
oQhdAgPwBf:
mov dword esi, 8
mov dword eax, [ebp - 124]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 128], eax
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 124]
mov dword [eax], edx
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 124]
mov dword [ebp - 120], eax
mov dword eax, [ebp - 128]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
jJngdRkyYB:
mov dword eax, [ebp - 120]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz ishaTzOfal
jmp RBvbOKNhBO
RBvbOKNhBO:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword eax, [ebp - 120]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 48], eax
mov dword eax, [ebp - 48]
mov dword [ebp - 120], eax
jmp jJngdRkyYB
ishaTzOfal:
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 132], eax
mov dword eax, [ebp - 132]
mov dword [ebp - 84], eax
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz mvWkbvqTOB
jmp zPEPribwIE
mvWkbvqTOB:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
zPEPribwIE:
mov dword [ebp - 68], 0
mov dword eax, [ebp - 68]
mov dword esi, eax
mov dword eax, [ebp - 84]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz eJezObLAwa
jmp mvWkbvqTOB
eJezObLAwa:
mov dword [ebp - 100], 110
mov dword eax, [ebp - 84]
mov dword [ebp - 52], eax
mov dword esi, 4
mov dword eax, [ebp - 68]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 52]
add eax, ebx
mov dword [ebp - 52], eax
mov dword eax, [ebp - 52]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 100]
mov dword [eax], edx
mov dword eax, [ebp - 132]
mov dword [ebp - 96], eax
mov dword eax, [ebp - 96]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz zTvsZklQwQ
jmp qgbCmlGqOF
zTvsZklQwQ:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
qgbCmlGqOF:
mov dword [ebp - 80], 1
mov dword eax, [ebp - 80]
mov dword esi, eax
mov dword eax, [ebp - 96]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz TzoIDTHDXp
jmp zTvsZklQwQ
TzoIDTHDXp:
mov dword [ebp - 88], 117
mov dword eax, [ebp - 96]
mov dword [ebp - 60], eax
mov dword esi, 4
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 60]
add eax, ebx
mov dword [ebp - 60], eax
mov dword eax, [ebp - 60]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 88]
mov dword [eax], edx
mov dword eax, [ebp - 132]
mov dword [ebp - 112], eax
mov dword eax, [ebp - 112]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 32], 0
sete [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz xhBbuwRExh
jmp bfbKXbGiKb
xhBbuwRExh:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
bfbKXbGiKb:
mov dword [ebp - 76], 2
mov dword eax, [ebp - 76]
mov dword esi, eax
mov dword eax, [ebp - 112]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 36], 0
setl [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz HTQRRzpBZr
jmp xhBbuwRExh
HTQRRzpBZr:
mov dword [ebp - 92], 108
mov dword eax, [ebp - 112]
mov dword [ebp - 56], eax
mov dword esi, 4
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 56]
add eax, ebx
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 92]
mov dword [eax], edx
mov dword eax, [ebp - 132]
mov dword [ebp - 104], eax
mov dword eax, [ebp - 104]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 40], 0
sete [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz sPtMPRBsvD
jmp CHkNwQBPQm
sPtMPRBsvD:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
CHkNwQBPQm:
mov dword [ebp - 72], 3
mov dword eax, [ebp - 72]
mov dword esi, eax
mov dword eax, [ebp - 104]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 44], 0
setl [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz rfFIaQDmWh
jmp sPtMPRBsvD
rfFIaQDmWh:
mov dword [ebp - 108], 108
mov dword eax, [ebp - 104]
mov dword [ebp - 64], eax
mov dword esi, 4
mov dword eax, [ebp - 72]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 64]
add eax, ebx
mov dword [ebp - 64], eax
mov dword eax, [ebp - 64]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 108]
mov dword [eax], edx
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 116], eax
mov dword eax, [ebp - 116]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp - 136]
mov dword esi, eax
mov dword eax, [ebp - 116]
mov dword [ebp - 136], eax
mov dword eax, [ebp - 116]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp - 136], eax
mov dword eax, [ebp - 116]
mov dword esi, eax
mov dword edi, 0
mov dword eax, [ebp - 132]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
push dword esi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 116]
jmp javalangStringvalueOfjavalangStringRETURN
jmp uJSVNAXMii
eOjYhJTtqV:
mov dword eax, [ebp + 8]
jmp javalangStringvalueOfjavalangStringRETURN
uJSVNAXMii:
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringvalueOfjavalangStringRETURN
javalangStringvalueOfjavalangStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringconcatjavalangString
javalangStringconcatjavalangString:
push dword ebp
mov dword ebp, esp
sub esp, 4*38
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 148], 0
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, edi
mov dword edi, eax
mov dword esi, 0
push dword eax
push dword ecx
push dword edx
push dword esi
push dword edi
mov dword ecx, 28
mov dword eax, ebx
add eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 60], eax
mov dword eax, [ebp + 16]
mov dword esi, eax
mov dword eax, esi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 56], eax
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
mov dword ebx, 28
mov dword eax, [ebp - 56]
add eax, ebx
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 60]
add eax, ebx
mov dword [ebp - 60], eax
mov dword eax, [ebp - 60]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 124], eax
mov dword eax, [ebp - 124]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
setge [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz WXVHSQYrmB
jmp nbeeckBOiw
nbeeckBOiw:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
WXVHSQYrmB:
mov dword esi, 8
mov dword eax, [ebp - 124]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 128], eax
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 124]
mov dword [eax], edx
mov dword eax, [ebp - 128]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 124]
mov dword [ebp - 96], eax
mov dword eax, [ebp - 128]
mov dword edi, eax
mov dword [ebp - 52], 8
mov dword eax, edi
add eax, [ebp - 52]
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
SlvCkheGAA:
mov dword eax, [ebp - 96]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz UirBRSWctX
jmp aqXTlbsaND
aqXTlbsaND:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 96]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 96], eax
jmp SlvCkheGAA
UirBRSWctX:
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 152], eax
mov dword ebx, 0
mov dword eax, ebx
mov dword [ebp - 148], eax
ELaJXhBAon:
mov dword eax, [ebp - 148]
mov dword [ebp - 72], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword edi, 0
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 72]
cmp eax, ebx
mov dword [ebp - 12], 0
setl [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz sEKwxALIUN
jmp leVXOmcmXK
sEKwxALIUN:
mov dword eax, [ebp - 152]
mov dword [ebp - 132], eax
mov dword eax, [ebp - 132]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz jRCcBWKSgS
jmp UIxTGHiwzW
jRCcBWKSgS:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
UIxTGHiwzW:
mov dword eax, [ebp - 148]
mov dword [ebp - 136], eax
mov dword eax, [ebp - 136]
mov dword esi, eax
mov dword eax, [ebp - 132]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz IrrdPYDEiz
jmp jRCcBWKSgS
IrrdPYDEiz:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 120], eax
mov dword eax, [ebp - 120]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz qRlcBqsvDh
jmp jNKOKxVvUW
qRlcBqsvDh:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
jNKOKxVvUW:
mov dword eax, [ebp - 148]
mov dword [ebp - 92], eax
mov dword eax, [ebp - 92]
mov dword esi, eax
mov dword eax, [ebp - 120]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz KKlePdsaTy
jmp qRlcBqsvDh
KKlePdsaTy:
mov dword eax, [ebp - 120]
mov dword [ebp - 76], eax
mov dword esi, 4
mov dword eax, [ebp - 92]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 76]
add eax, ebx
mov dword [ebp - 76], eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 108], eax
mov dword eax, [ebp - 132]
mov dword [ebp - 64], eax
mov dword esi, 4
mov dword eax, [ebp - 136]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 64]
add eax, ebx
mov dword [ebp - 64], eax
mov dword eax, [ebp - 64]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 108]
mov dword [eax], edx
mov dword eax, [ebp - 148]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 148], eax
jmp ELaJXhBAon
leVXOmcmXK:
mov dword ebx, 0
mov dword eax, ebx
mov dword [ebp - 148], eax
mFyWathvIY:
mov dword eax, [ebp - 148]
mov dword [ebp - 84], eax
mov dword eax, [ebp + 16]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, edi
mov dword edi, eax
mov dword ebx, 0
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 84]
cmp eax, ebx
mov dword [ebp - 32], 0
setl [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz SetTIcerLG
jmp PUnncahayp
SetTIcerLG:
mov dword eax, [ebp - 152]
mov dword [ebp - 144], eax
mov dword eax, [ebp - 144]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 36], 0
sete [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz CiqQAMdYMm
jmp ZTudUSRUpO
CiqQAMdYMm:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
ZTudUSRUpO:
mov dword eax, [ebp - 148]
mov dword [ebp - 88], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword edi, 0
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 88]
add eax, ebx
mov dword [ebp - 88], eax
mov dword eax, [ebp - 88]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 140], eax
mov dword eax, [ebp - 140]
mov dword esi, eax
mov dword eax, [ebp - 144]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 40], 0
setl [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz jsOPRNqoIi
jmp CiqQAMdYMm
jsOPRNqoIi:
mov dword eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 116], eax
mov dword eax, [ebp - 116]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 44], 0
sete [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz MavvFpKsmy
jmp vqYakbhOWj
MavvFpKsmy:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
vqYakbhOWj:
mov dword eax, [ebp - 148]
mov dword [ebp - 104], eax
mov dword eax, [ebp - 104]
mov dword esi, eax
mov dword eax, [ebp - 116]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 48], 0
setl [ebp - 48]
mov dword eax, [ebp - 48]
test eax, [ebp - 48]
jnz bevTcwEyux
jmp MavvFpKsmy
bevTcwEyux:
mov dword eax, [ebp - 116]
mov dword [ebp - 80], eax
mov dword esi, 4
mov dword eax, [ebp - 104]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 80]
add eax, ebx
mov dword [ebp - 80], eax
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 100], eax
mov dword eax, [ebp - 144]
mov dword [ebp - 68], eax
mov dword esi, 4
mov dword eax, [ebp - 140]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 68]
add eax, ebx
mov dword [ebp - 68], eax
mov dword eax, [ebp - 68]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 100]
mov dword [eax], edx
mov dword eax, [ebp - 148]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 148], eax
jmp mFyWathvIY
PUnncahayp:
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 112], eax
mov dword eax, [ebp - 112]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp - 112]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 112]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp + 8], eax
mov dword eax, [ebp - 112]
mov dword esi, eax
mov dword edi, 0
mov dword eax, [ebp - 152]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
push dword esi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 112]
jmp javalangStringconcatjavalangStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringconcatjavalangStringRETURN
javalangStringconcatjavalangStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringvalueOfCHAR
javalangStringvalueOfCHAR:
push dword ebp
mov dword ebp, esp
sub esp, 4*16
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 52], 1
mov dword eax, [ebp - 52]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
setge [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz qyasQaSlvS
jmp RFNmTkUcaN
RFNmTkUcaN:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
qyasQaSlvS:
mov dword esi, 8
mov dword eax, [ebp - 52]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 52]
mov dword [eax], edx
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 52]
mov dword [ebp - 44], eax
mov dword eax, [ebp - 56]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
HZioKSZXrR:
mov dword eax, [ebp - 44]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz VLUDltMdbW
jmp BLOPwMnNNl
BLOPwMnNNl:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 44]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 44], eax
jmp HZioKSZXrR
VLUDltMdbW:
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 60], eax
mov dword eax, [ebp - 60]
mov dword [ebp - 36], eax
mov dword eax, [ebp - 36]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz bVkCldunie
jmp wRiUUWbREZ
bVkCldunie:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
wRiUUWbREZ:
mov dword [ebp - 32], 0
mov dword eax, [ebp - 32]
mov dword esi, eax
mov dword eax, [ebp - 36]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 16], 0
setl [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz AsQYFKMhGO
jmp bVkCldunie
AsQYFKMhGO:
mov dword eax, [ebp + 8]
mov dword [ebp - 40], eax
mov dword eax, [ebp - 36]
mov dword [ebp - 28], eax
mov dword esi, 4
mov dword eax, [ebp - 32]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 28]
add eax, ebx
mov dword [ebp - 28], eax
mov dword eax, [ebp - 28]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 40]
mov dword [eax], edx
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 48], eax
mov dword eax, [ebp - 48]
mov dword [ebp - 20], eax
mov dword eax, [ebp - 20]
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp - 64]
mov dword [ebp - 24], eax
mov dword eax, [ebp - 48]
mov dword [ebp - 64], eax
mov dword eax, [ebp - 48]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [ebp - 24]
mov dword [ebp - 64], eax
mov dword eax, [ebp - 48]
mov dword edi, eax
mov dword esi, 0
mov dword eax, [ebp - 60]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword edi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 48]
jmp javalangStringvalueOfCHARRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringvalueOfCHARRETURN
javalangStringvalueOfCHARRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringtoCharArray
javalangStringtoCharArray:
push dword ebp
mov dword ebp, esp
sub esp, 4*23
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz dIuTCSeoiM
jmp WlXmhTDeRm
WlXmhTDeRm:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
dIuTCSeoiM:
mov dword eax, esi
mov dword [ebp - 72], eax
mov dword eax, [ebp - 72]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
setge [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz yokZRqAdVi
jmp QDWrcDqBaj
QDWrcDqBaj:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
yokZRqAdVi:
mov dword edi, 8
mov dword eax, [ebp - 72]
mov dword ebx, eax
mov dword esi, 4
mov dword eax, ebx
imul dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 76], eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 72]
mov dword [eax], edx
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword [ebp - 40], 4
mov dword eax, ebx
add eax, [ebp - 40]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 72]
mov dword [ebp - 64], eax
mov dword eax, [ebp - 76]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
HWsiiBNgKg:
mov dword eax, [ebp - 64]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz BzhzpeFzKM
jmp rTVDVTCLJv
rTVDVTCLJv:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 64]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 64], eax
jmp HWsiiBNgKg
BzhzpeFzKM:
mov dword eax, [ebp - 76]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 92], eax
mov dword [ebp - 88], 0
kpKlZPyryn:
mov dword eax, [ebp - 88]
mov dword [ebp - 44], eax
mov dword eax, [ebp - 92]
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz QvPZntLpbq
jmp wYVWfdTJAP
wYVWfdTJAP:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
QvPZntLpbq:
mov dword eax, [ebp - 44]
cmp eax, esi
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz snDEOnaoZx
jmp kkGinoNcHU
snDEOnaoZx:
mov dword eax, [ebp - 92]
mov dword [ebp - 80], eax
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz aYdEOueedW
jmp mrYLxhPRhY
aYdEOueedW:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mrYLxhPRhY:
mov dword eax, [ebp - 88]
mov dword [ebp - 84], eax
mov dword eax, [ebp - 84]
mov dword esi, eax
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz UwalkRHCQm
jmp aYdEOueedW
UwalkRHCQm:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 68], eax
mov dword eax, [ebp - 68]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 32], 0
sete [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz bkOHjvDGnW
jmp vPgwjpgPTS
bkOHjvDGnW:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
vPgwjpgPTS:
mov dword eax, [ebp - 88]
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword esi, eax
mov dword eax, [ebp - 68]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 36], 0
setl [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz QDJreFnbnl
jmp bkOHjvDGnW
QDJreFnbnl:
mov dword eax, [ebp - 68]
mov dword [ebp - 52], eax
mov dword esi, 4
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 52]
add eax, ebx
mov dword [ebp - 52], eax
mov dword eax, [ebp - 52]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 60], eax
mov dword eax, [ebp - 80]
mov dword [ebp - 48], eax
mov dword esi, 4
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 48]
add eax, ebx
mov dword [ebp - 48], eax
mov dword eax, [ebp - 48]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 60]
mov dword [eax], edx
mov dword eax, [ebp - 88]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 88], eax
jmp kpKlZPyryn
kkGinoNcHU:
mov dword eax, [ebp - 92]
jmp javalangStringtoCharArrayRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringtoCharArrayRETURN
javalangStringtoCharArrayRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringindexOfjavalangString
javalangStringindexOfjavalangString:
push dword ebp
mov dword ebp, esp
sub esp, 4*21
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 84], 0
mov dword [ebp - 76], 0
mov dword ebx, 0
mov dword eax, ebx
mov dword [ebp - 84], eax
iSVWzvmuei:
mov dword eax, [ebp - 84]
mov dword [ebp - 40], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, edi
mov dword edi, eax
mov dword ebx, 0
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 40]
cmp eax, ebx
mov dword [ebp - 4], 0
setl [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz rqhTeCOxhL
jmp lxGYvrivPw
rqhTeCOxhL:
mov dword [ebp - 80], 1
mov dword ebx, 0
mov dword eax, ebx
mov dword [ebp - 76], eax
ZesagcJbml:
mov dword eax, [ebp - 76]
mov dword [ebp - 56], eax
mov dword eax, [ebp + 16]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, edi
mov dword edi, eax
mov dword ebx, 0
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ecx, eax
mov dword eax, ecx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 56]
cmp eax, ebx
mov dword [ebp - 8], 0
setl [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz UvJkdrxxQH
jmp zAvXOXBvLV
UvJkdrxxQH:
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword eax, ebx
add eax, [ebp - 84]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 52], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword edi, 0
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 52]
cmp eax, ebx
mov dword [ebp - 12], 0
setge [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz UDtqerzjCF
jmp UxrOdYfJfD
UDtqerzjCF:
mov dword ebx, 0
mov dword eax, ebx
mov dword [ebp - 80], eax
jmp YgVlyBCFoM
UxrOdYfJfD:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword esi, eax
mov dword eax, esi
mov dword [ebp - 68], eax
mov dword eax, [ebp - 68]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz UfiSYJuscg
jmp ArWYpobNEj
UfiSYJuscg:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
ArWYpobNEj:
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword eax, ebx
add eax, [ebp - 84]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 48], eax
mov dword eax, [ebp - 48]
mov dword esi, eax
mov dword eax, [ebp - 68]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz EcJLiOIsSu
jmp UfiSYJuscg
EcJLiOIsSu:
mov dword eax, [ebp - 68]
mov dword [ebp - 36], eax
mov dword esi, 4
mov dword eax, [ebp - 48]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 36]
add eax, ebx
mov dword [ebp - 36], eax
mov dword eax, [ebp - 36]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 72], eax
mov dword eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 64], eax
mov dword eax, [ebp - 64]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz LazKRrhixK
jmp vyTNkunczP
LazKRrhixK:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
vyTNkunczP:
mov dword eax, [ebp - 76]
mov dword [ebp - 60], eax
mov dword eax, [ebp - 60]
mov dword esi, eax
mov dword eax, [ebp - 64]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz iYDXywkjmd
jmp LazKRrhixK
iYDXywkjmd:
mov dword eax, [ebp - 64]
mov dword [ebp - 44], eax
mov dword esi, 4
mov dword eax, [ebp - 60]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 44]
add eax, ebx
mov dword [ebp - 44], eax
mov dword eax, [ebp - 44]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, [ebp - 72]
cmp eax, ebx
mov dword [ebp - 32], 0
setne [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz aRjCAanDyx
jmp jzPhzxGUFt
aRjCAanDyx:
mov dword ebx, 0
mov dword eax, ebx
mov dword [ebp - 80], eax
jzPhzxGUFt:
YgVlyBCFoM:
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 76], eax
jmp ZesagcJbml
zAvXOXBvLV:
mov dword eax, [ebp - 80]
test eax, [ebp - 80]
jnz gxjgtkBDoj
jmp yMJJRwNSgS
gxjgtkBDoj:
mov dword eax, [ebp - 84]
jmp javalangStringindexOfjavalangStringRETURN
yMJJRwNSgS:
mov dword eax, [ebp - 84]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 84], eax
jmp iSVWzvmuei
lxGYvrivPw:
mov dword ebx, -1
mov dword eax, ebx
jmp javalangStringindexOfjavalangStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringindexOfjavalangStringRETURN
javalangStringindexOfjavalangStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringvalueOfjavalangObject
javalangStringvalueOfjavalangObject:
push dword ebp
mov dword ebp, esp
sub esp, 4*34
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz oYXBrJfQge
jmp VnNeakpLaW
oYXBrJfQge:
mov dword [ebp - 124], 4
mov dword eax, [ebp - 124]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
setge [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz AYXqhDkkot
jmp rvxUBEdcUn
rvxUBEdcUn:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
AYXqhDkkot:
mov dword esi, 8
mov dword eax, [ebp - 124]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 128], eax
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 124]
mov dword [eax], edx
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 124]
mov dword esi, eax
mov dword eax, [ebp - 128]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 68], eax
HxXTDGwlmy:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz wkcrwMMocu
jmp zJIPjWVKIG
zJIPjWVKIG:
mov dword eax, [ebp - 68]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [ebp - 68]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 68], eax
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword eax, esi
mov dword esi, eax
jmp HxXTDGwlmy
wkcrwMMocu:
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 132], eax
mov dword eax, [ebp - 132]
mov dword [ebp - 112], eax
mov dword eax, [ebp - 112]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz oPBRjWiCel
jmp wUJzcRfsaB
oPBRjWiCel:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
wUJzcRfsaB:
mov dword [ebp - 84], 0
mov dword eax, [ebp - 84]
mov dword esi, eax
mov dword eax, [ebp - 112]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz OqXmBMmARo
jmp oPBRjWiCel
OqXmBMmARo:
mov dword [ebp - 100], 110
mov dword eax, [ebp - 112]
mov dword [ebp - 52], eax
mov dword esi, 4
mov dword eax, [ebp - 84]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 52]
add eax, ebx
mov dword [ebp - 52], eax
mov dword eax, [ebp - 52]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 100]
mov dword [eax], edx
mov dword eax, [ebp - 132]
mov dword [ebp - 92], eax
mov dword eax, [ebp - 92]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz eEBXZAUTpQ
jmp GjYvqFKTSW
eEBXZAUTpQ:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
GjYvqFKTSW:
mov dword [ebp - 76], 1
mov dword eax, [ebp - 76]
mov dword esi, eax
mov dword eax, [ebp - 92]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz eyHCDmOVrj
jmp eEBXZAUTpQ
eyHCDmOVrj:
mov dword [ebp - 88], 117
mov dword eax, [ebp - 92]
mov dword [ebp - 56], eax
mov dword esi, 4
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 56]
add eax, ebx
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 88]
mov dword [eax], edx
mov dword eax, [ebp - 132]
mov dword [ebp - 108], eax
mov dword eax, [ebp - 108]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 32], 0
sete [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz paNQKmDGNR
jmp xRIMyqVSjy
paNQKmDGNR:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
xRIMyqVSjy:
mov dword [ebp - 80], 2
mov dword eax, [ebp - 80]
mov dword esi, eax
mov dword eax, [ebp - 108]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 36], 0
setl [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz LooEQlrFJD
jmp paNQKmDGNR
LooEQlrFJD:
mov dword [ebp - 104], 108
mov dword eax, [ebp - 108]
mov dword [ebp - 64], eax
mov dword esi, 4
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 64]
add eax, ebx
mov dword [ebp - 64], eax
mov dword eax, [ebp - 64]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 104]
mov dword [eax], edx
mov dword eax, [ebp - 132]
mov dword [ebp - 96], eax
mov dword eax, [ebp - 96]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 40], 0
sete [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz iXYBAMbyPl
jmp THuRmrUMzR
iXYBAMbyPl:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
THuRmrUMzR:
mov dword [ebp - 72], 3
mov dword eax, [ebp - 72]
mov dword esi, eax
mov dword eax, [ebp - 96]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 44], 0
setl [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz LmEYBegrzF
jmp iXYBAMbyPl
LmEYBegrzF:
mov dword [ebp - 116], 108
mov dword eax, [ebp - 96]
mov dword [ebp - 60], eax
mov dword esi, 4
mov dword eax, [ebp - 72]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 60]
add eax, ebx
mov dword [ebp - 60], eax
mov dword eax, [ebp - 60]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 48], eax
mov dword eax, [ebp - 48]
mov dword edx, [ebp - 116]
mov dword [eax], edx
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 120], eax
mov dword eax, [ebp - 120]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp - 136]
mov dword esi, eax
mov dword eax, [ebp - 120]
mov dword [ebp - 136], eax
mov dword eax, [ebp - 120]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp - 136], eax
mov dword eax, [ebp - 120]
mov dword esi, eax
mov dword edi, 0
mov dword eax, [ebp - 132]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
push dword esi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 120]
jmp javalangStringvalueOfjavalangObjectRETURN
jmp gfzMUTqvxa
VnNeakpLaW:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, edi
mov dword esi, eax
mov dword edi, 0
push dword eax
push dword ecx
push dword edx
push dword edi
push dword esi
mov dword ecx, 8
mov dword eax, ebx
add eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringvalueOfjavalangObjectRETURN
gfzMUTqvxa:
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringvalueOfjavalangObjectRETURN
javalangStringvalueOfjavalangObjectRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringequalsjavalangObject
javalangStringequalsjavalangObject:
push dword ebp
mov dword ebp, esp
sub esp, 4*7
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz RclANvToxJ
jmp JjeqZNsggk
RclANvToxJ:
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringequalsjavalangObjectRETURN
JjeqZNsggk:
mov dword eax, [ebp + 16]
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword ebx, 0
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz kLbxakordk
jmp NTELNsuLPv
kLbxakordk:
mov dword ebx, 0
jmp EsDfgZORpY
NTELNsuLPv:
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword eax, edi
mov dword esi, eax
mov dword edi, 4
mov dword eax, esi
add eax, edi
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword edi, 64
mov dword eax, esi
imul dword eax, edi
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword esi, 8
mov dword eax, edi
add eax, esi
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
EsDfgZORpY:
mov dword eax, ebx
test eax, ebx
jnz QqxSncFSBV
jmp TgaeLYwKCj
TgaeLYwKCj:
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringequalsjavalangObjectRETURN
QqxSncFSBV:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 28], eax
mov dword eax, [ebp + 16]
mov dword [ebp - 24], eax
mov dword eax, [ebp - 24]
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, [staticvar + 8]
mov dword [ebp - 20], eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword eax, esi
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword ebx, 64
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 16], eax
mov dword eax, [ebp - 16]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, [ebp - 20]
add eax, ebx
mov dword [ebp - 20], eax
mov dword eax, [ebp - 20]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz zNugpQICKj
jmp uGgHwMFrFH
uGgHwMFrFH:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
zNugpQICKj:
mov dword eax, [ebp - 24]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword [ebp - 28]
call javautilArraysequalsCHARCHAR
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringequalsjavalangObjectRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringequalsjavalangObjectRETURN
javalangStringequalsjavalangObjectRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringcharAtINT
javalangStringcharAtINT:
push dword ebp
mov dword ebp, esp
sub esp, 4*5
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 20], eax
mov dword eax, [ebp - 20]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz gkritWBmuC
jmp VAKdhYVbsH
gkritWBmuC:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
VAKdhYVbsH:
mov dword eax, [ebp + 16]
mov dword [ebp - 16], eax
mov dword eax, [ebp - 16]
mov dword [ebp - 12], eax
mov dword eax, [ebp - 20]
mov dword ebx, eax
mov dword esi, 4
mov dword eax, ebx
sub eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, [ebp - 12]
cmp eax, ebx
mov dword [ebp - 8], 0
setl [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz WBUWHRYmUy
jmp gkritWBmuC
WBUWHRYmUy:
mov dword eax, [ebp - 20]
mov dword ebx, eax
mov dword ecx, 4
mov dword eax, [ebp - 16]
mov dword esi, eax
mov dword edi, 4
mov dword eax, esi
imul dword eax, edi
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword eax, ecx
add eax, edi
mov dword ecx, eax
mov dword eax, ecx
mov dword ecx, eax
mov dword eax, ebx
add eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
jmp javalangStringcharAtINTRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringcharAtINTRETURN
javalangStringcharAtINTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringString
javalangStringString:
push dword ebp
mov dword ebp, esp
sub esp, 4*6
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 20], 0
mov dword eax, [ebp - 20]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
setge [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz VuFDXlvVgp
jmp eegsJiFsHE
eegsJiFsHE:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
VuFDXlvVgp:
mov dword esi, 8
mov dword eax, [ebp - 20]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 24], eax
mov dword eax, [ebp - 24]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 20]
mov dword [eax], edx
mov dword eax, [ebp - 24]
mov dword ecx, eax
mov dword ebx, 4
mov dword eax, ecx
add eax, ebx
mov dword ecx, eax
mov dword eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 20]
mov dword [ebp - 16], eax
mov dword eax, [ebp - 24]
mov dword ebx, eax
mov dword ecx, 8
mov dword eax, ebx
add eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 12], eax
HFuDVsTiNT:
mov dword eax, [ebp - 16]
mov dword ecx, eax
mov dword edi, 0
mov dword eax, ecx
cmp eax, edi
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz SHWcVmUzdI
jmp nyWqKgYGPE
nyWqKgYGPE:
mov dword eax, [ebp - 12]
mov dword esi, eax
mov dword ebx, 0
mov dword eax, esi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [ebp - 12]
mov dword ecx, eax
mov dword ebx, 4
mov dword eax, ecx
add eax, ebx
mov dword ecx, eax
mov dword eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 16]
mov dword ebx, eax
mov dword ecx, 1
mov dword eax, ebx
sub eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 16], eax
jmp HFuDVsTiNT
SHWcVmUzdI:
mov dword eax, [ebp - 24]
mov dword ebx, eax
mov dword ecx, 4
mov dword eax, ebx
add eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ecx, 4
mov dword eax, edi
add eax, ecx
mov dword edi, eax
mov dword eax, edi
mov dword ecx, eax
mov dword eax, ecx
mov dword ecx, eax
mov dword eax, ecx
mov dword edx, ebx
mov dword [eax], edx
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringStringRETURN
javalangStringStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringStringjavalangString
javalangStringStringjavalangString:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword ecx, eax
mov dword ebx, 4
mov dword eax, ecx
add eax, ebx
mov dword ecx, eax
mov dword eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword ecx, eax
mov dword edi, 4
mov dword eax, ecx
add eax, edi
mov dword ecx, eax
mov dword eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, esi
mov dword [eax], edx
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringStringjavalangStringRETURN
javalangStringStringjavalangStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringStringCHAR
javalangStringStringCHAR:
push dword ebp
mov dword ebp, esp
sub esp, 4*22
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz KgRRQvezQy
jmp abvAXprhGQ
abvAXprhGQ:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
KgRRQvezQy:
mov dword eax, esi
mov dword [ebp - 72], eax
mov dword eax, [ebp - 72]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
setge [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz kGcEKbuBFC
jmp GJxiaQxbyc
GJxiaQxbyc:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
kGcEKbuBFC:
mov dword esi, 8
mov dword eax, [ebp - 72]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 76], eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 72]
mov dword [eax], edx
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword esi, 4
mov dword eax, ebx
add eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 72]
mov dword [ebp - 68], eax
mov dword eax, [ebp - 76]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
kFyuuJJfSg:
mov dword eax, [ebp - 68]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz EEmfmXeDIW
jmp WEzVQjXXRk
WEzVQjXXRk:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 68]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 68], eax
jmp kFyuuJJfSg
EEmfmXeDIW:
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword edi, 4
mov dword eax, esi
add eax, edi
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword [ebp - 88], 0
AaPWNxyixG:
mov dword eax, [ebp - 88]
mov dword [ebp - 48], eax
mov dword eax, [ebp + 16]
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz ZaXDqBKnov
jmp iIOamUcMBI
iIOamUcMBI:
mov dword eax, esi
mov dword [ebp - 40], eax
mov dword ebx, 4
mov dword eax, [ebp - 40]
sub eax, ebx
mov dword [ebp - 40], eax
mov dword eax, [ebp - 40]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
ZaXDqBKnov:
mov dword eax, [ebp - 48]
cmp eax, esi
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz WKnNVlIxeK
jmp jEPVXYkhQE
WKnNVlIxeK:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 84], eax
mov dword eax, [ebp - 84]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz DTarSgxNuZ
jmp uoKfJtywkm
DTarSgxNuZ:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
uoKfJtywkm:
mov dword eax, [ebp - 88]
mov dword [ebp - 80], eax
mov dword eax, [ebp - 80]
mov dword esi, eax
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz lRAkCiWxOO
jmp DTarSgxNuZ
lRAkCiWxOO:
mov dword eax, [ebp + 16]
mov dword [ebp - 64], eax
mov dword eax, [ebp - 64]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 32], 0
sete [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz sXyJUrDaaw
jmp OkEGNejIod
sXyJUrDaaw:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
OkEGNejIod:
mov dword eax, [ebp - 88]
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword esi, eax
mov dword eax, [ebp - 64]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 36], 0
setl [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz tXMnSHxOSV
jmp sXyJUrDaaw
tXMnSHxOSV:
mov dword eax, [ebp - 64]
mov dword [ebp - 52], eax
mov dword esi, 4
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 52]
add eax, ebx
mov dword [ebp - 52], eax
mov dword eax, [ebp - 52]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 60], eax
mov dword eax, [ebp - 84]
mov dword [ebp - 44], eax
mov dword esi, 4
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 44]
add eax, ebx
mov dword [ebp - 44], eax
mov dword eax, [ebp - 44]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 60]
mov dword [eax], edx
mov dword eax, [ebp - 88]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 88], eax
jmp AaPWNxyixG
jEPVXYkhQE:
mov dword ebx, 0
mov dword eax, ebx
jmp javalangStringStringCHARRETURN
javalangStringStringCHARRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangCharactertoString
javalangCharactertoString:
push dword ebp
mov dword ebp, esp
sub esp, 4*1
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword [ebp - 4], 4
mov dword eax, esi
add eax, [ebp - 4]
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call javalangStringvalueOfCHAR
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangCharactertoStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangCharactertoStringRETURN
javalangCharactertoStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangCharacterCharacterCHAR
javalangCharacterCharacterCHAR:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword esi, eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ecx, 4
mov dword eax, edi
add eax, ecx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, esi
mov dword [eax], edx
mov dword ebx, 0
mov dword eax, ebx
jmp javalangCharacterCharacterCHARRETURN
javalangCharacterCharacterCHARRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangCharacterCharacter
javalangCharacterCharacter:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangCharacterCharacterRETURN
javalangCharacterCharacterRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javautilArraysequalsBOOLEANBOOLEAN
javautilArraysequalsBOOLEANBOOLEAN:
push dword ebp
mov dword ebp, esp
sub esp, 4*21
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz uqBRUzZBeX
jmp LiQpHQRfDQ
LiQpHQRfDQ:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
uqBRUzZBeX:
mov dword eax, esi
mov dword [ebp - 48], eax
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword ebx, 0
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz anOrpVsojw
jmp awCYhFxbgD
awCYhFxbgD:
mov dword eax, edi
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
anOrpVsojw:
mov dword eax, [ebp - 48]
cmp eax, edi
mov dword [ebp - 12], 0
setne [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz ZHUCEyOJOk
jmp KMDLIjQqsb
ZHUCEyOJOk:
mov dword ebx, 0
mov dword eax, ebx
jmp javautilArraysequalsBOOLEANBOOLEANRETURN
KMDLIjQqsb:
mov dword [ebp - 84], 0
WLpEEWbETh:
mov dword eax, [ebp - 84]
mov dword [ebp - 60], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword ebx, 0
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz GQjxMDqhJF
jmp xGfLZYFruo
xGfLZYFruo:
mov dword eax, edi
mov dword [ebp - 44], eax
mov dword ebx, 4
mov dword eax, [ebp - 44]
sub eax, ebx
mov dword [ebp - 44], eax
mov dword eax, [ebp - 44]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
GQjxMDqhJF:
mov dword eax, [ebp - 60]
cmp eax, edi
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz yQuJGuVjhL
jmp XxbqIgOqUa
yQuJGuVjhL:
mov dword eax, [ebp + 8]
mov dword [ebp - 68], eax
mov dword eax, [ebp - 68]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz FjhoBvKdsT
jmp uOokfKTfBC
FjhoBvKdsT:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
uOokfKTfBC:
mov dword eax, [ebp - 84]
mov dword [ebp - 64], eax
mov dword eax, [ebp - 64]
mov dword esi, eax
mov dword eax, [ebp - 68]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz stpsjbDaoC
jmp FjhoBvKdsT
stpsjbDaoC:
mov dword eax, [ebp - 68]
mov dword [ebp - 52], eax
mov dword esi, 4
mov dword eax, [ebp - 64]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 52]
add eax, ebx
mov dword [ebp - 52], eax
mov dword eax, [ebp - 52]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 80], eax
mov dword eax, [ebp + 12]
mov dword [ebp - 76], eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 32], 0
sete [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz pPpxorcHTo
jmp KZHlBLgpPy
pPpxorcHTo:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
KZHlBLgpPy:
mov dword eax, [ebp - 84]
mov dword [ebp - 72], eax
mov dword eax, [ebp - 72]
mov dword esi, eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 36], 0
setl [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz lgYcMEaEYP
jmp pPpxorcHTo
lgYcMEaEYP:
mov dword eax, [ebp - 76]
mov dword [ebp - 56], eax
mov dword esi, 4
mov dword eax, [ebp - 72]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword esi, eax
mov dword eax, [ebp - 56]
add eax, esi
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, [ebp - 80]
cmp eax, ebx
mov dword [ebp - 40], 0
setne [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz OemaNiyOuY
jmp wiDwxahtUt
OemaNiyOuY:
mov dword ebx, 0
mov dword eax, ebx
jmp javautilArraysequalsBOOLEANBOOLEANRETURN
wiDwxahtUt:
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 84], eax
jmp WLpEEWbETh
XxbqIgOqUa:
mov dword ebx, 1
mov dword eax, ebx
jmp javautilArraysequalsBOOLEANBOOLEANRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javautilArraysequalsBOOLEANBOOLEANRETURN
javautilArraysequalsBOOLEANBOOLEANRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javautilArraysequalsCHARCHAR
javautilArraysequalsCHARCHAR:
push dword ebp
mov dword ebp, esp
sub esp, 4*21
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword edi, 0
mov dword eax, esi
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz BxoBpIZRcw
jmp KswAzsPtlX
KswAzsPtlX:
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
BxoBpIZRcw:
mov dword eax, ebx
mov dword [ebp - 48], eax
mov dword eax, [ebp + 12]
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz pmvOCKYXwg
jmp VBRscLwgLy
VBRscLwgLy:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
pmvOCKYXwg:
mov dword eax, [ebp - 48]
cmp eax, esi
mov dword [ebp - 12], 0
setne [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz dVZOKccAYr
jmp oCKzFrKSgC
dVZOKccAYr:
mov dword ebx, 0
mov dword eax, ebx
jmp javautilArraysequalsCHARCHARRETURN
oCKzFrKSgC:
mov dword [ebp - 84], 0
kzKSJXGHDP:
mov dword eax, [ebp - 84]
mov dword [ebp - 60], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword ebx, 0
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz kpbjrwLkgY
jmp WXtopamKLc
WXtopamKLc:
mov dword eax, edi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
kpbjrwLkgY:
mov dword eax, [ebp - 60]
cmp eax, edi
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz ECYYFLkMaw
jmp YrGaVeObDX
ECYYFLkMaw:
mov dword eax, [ebp + 8]
mov dword [ebp - 68], eax
mov dword eax, [ebp - 68]
mov dword [ebp - 44], eax
mov dword edi, 0
mov dword eax, [ebp - 44]
cmp eax, edi
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz COFMMgyuKZ
jmp CSWnUMJEqa
COFMMgyuKZ:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
CSWnUMJEqa:
mov dword eax, [ebp - 84]
mov dword [ebp - 64], eax
mov dword eax, [ebp - 64]
mov dword esi, eax
mov dword eax, [ebp - 68]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz XaeoMafyBf
jmp COFMMgyuKZ
XaeoMafyBf:
mov dword eax, [ebp - 68]
mov dword [ebp - 52], eax
mov dword esi, 4
mov dword eax, [ebp - 64]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 52]
add eax, ebx
mov dword [ebp - 52], eax
mov dword eax, [ebp - 52]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 80], eax
mov dword eax, [ebp + 12]
mov dword [ebp - 76], eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 32], 0
sete [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz UwTpbWmsGC
jmp QqtWNcmjcQ
UwTpbWmsGC:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
QqtWNcmjcQ:
mov dword eax, [ebp - 84]
mov dword [ebp - 72], eax
mov dword eax, [ebp - 72]
mov dword esi, eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 36], 0
setl [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz xuLAEArKDq
jmp UwTpbWmsGC
xuLAEArKDq:
mov dword eax, [ebp - 76]
mov dword [ebp - 56], eax
mov dword esi, 4
mov dword eax, [ebp - 72]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 56]
add eax, ebx
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, [ebp - 80]
cmp eax, ebx
mov dword [ebp - 40], 0
setne [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz tDkJDVaJaR
jmp ejNyXbedaR
tDkJDVaJaR:
mov dword ebx, 0
mov dword eax, ebx
jmp javautilArraysequalsCHARCHARRETURN
ejNyXbedaR:
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 84], eax
jmp kzKSJXGHDP
YrGaVeObDX:
mov dword ebx, 1
mov dword eax, ebx
jmp javautilArraysequalsCHARCHARRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javautilArraysequalsCHARCHARRETURN
javautilArraysequalsCHARCHARRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javautilArraysArrays
javautilArraysArrays:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javautilArraysArraysRETURN
javautilArraysArraysRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangObjecttoString
javalangObjecttoString:
push dword ebp
mov dword ebp, esp
sub esp, 4*116
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 456], 18
mov dword eax, [ebp - 456]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
setge [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz gietEcwZgz
jmp jzsrYWyUOi
jzsrYWyUOi:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
gietEcwZgz:
mov dword esi, 8
mov dword eax, [ebp - 456]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 460], eax
mov dword eax, [ebp - 460]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 456]
mov dword [eax], edx
mov dword eax, [ebp - 460]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 456]
mov dword [ebp - 452], eax
mov dword eax, [ebp - 460]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
krCuqiLsDB:
mov dword eax, [ebp - 452]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz UvZkPkNaWR
jmp FeQXZugDno
FeQXZugDno:
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 452]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 452], eax
jmp krCuqiLsDB
UvZkPkNaWR:
mov dword eax, [ebp - 460]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 464], eax
mov dword eax, [ebp - 464]
mov dword [ebp - 400], eax
mov dword eax, [ebp - 400]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz tYaebCHLWf
jmp sdfeHXpkeP
tYaebCHLWf:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
sdfeHXpkeP:
mov dword [ebp - 248], 0
mov dword eax, [ebp - 248]
mov dword esi, eax
mov dword eax, [ebp - 400]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 16], 0
setl [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz pXaHMhWxEO
jmp tYaebCHLWf
pXaHMhWxEO:
mov dword [ebp - 372], 83
mov dword eax, [ebp - 400]
mov dword [ebp - 224], eax
mov dword esi, 4
mov dword eax, [ebp - 248]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 224]
add eax, ebx
mov dword [ebp - 224], eax
mov dword eax, [ebp - 224]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 372]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 328], eax
mov dword eax, [ebp - 328]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 20], 0
sete [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz WySqlOHQax
jmp asjEbZHLwO
WySqlOHQax:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
asjEbZHLwO:
mov dword [ebp - 296], 1
mov dword eax, [ebp - 296]
mov dword esi, eax
mov dword eax, [ebp - 328]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 24], 0
setl [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz kdKPIajPWT
jmp WySqlOHQax
kdKPIajPWT:
mov dword [ebp - 392], 111
mov dword eax, [ebp - 328]
mov dword [ebp - 168], eax
mov dword esi, 4
mov dword eax, [ebp - 296]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 168]
add eax, ebx
mov dword [ebp - 168], eax
mov dword eax, [ebp - 168]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 392]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 352], eax
mov dword eax, [ebp - 352]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 28], 0
sete [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz qYtBdLXado
jmp XsmDUFfCQw
qYtBdLXado:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
XsmDUFfCQw:
mov dword [ebp - 288], 2
mov dword eax, [ebp - 288]
mov dword esi, eax
mov dword eax, [ebp - 352]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 32], 0
setl [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz odUmbQPAIO
jmp qYtBdLXado
odUmbQPAIO:
mov dword [ebp - 384], 109
mov dword eax, [ebp - 352]
mov dword [ebp - 204], eax
mov dword esi, 4
mov dword eax, [ebp - 288]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 204]
add eax, ebx
mov dword [ebp - 204], eax
mov dword eax, [ebp - 204]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 384]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 324], eax
mov dword eax, [ebp - 324]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 36], 0
sete [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz lDxSDaoytx
jmp DOcNGXzLmz
lDxSDaoytx:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
DOcNGXzLmz:
mov dword [ebp - 264], 3
mov dword eax, [ebp - 264]
mov dword esi, eax
mov dword eax, [ebp - 324]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 40], 0
setl [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz eKqNfygFFy
jmp lDxSDaoytx
eKqNfygFFy:
mov dword [ebp - 432], 101
mov dword eax, [ebp - 324]
mov dword [ebp - 172], eax
mov dword esi, 4
mov dword eax, [ebp - 264]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword esi, eax
mov dword eax, [ebp - 172]
add eax, esi
mov dword [ebp - 172], eax
mov dword eax, [ebp - 172]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 432]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 416], eax
mov dword eax, [ebp - 416]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 44], 0
sete [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz vbofTDvuwI
jmp CSHgixkivy
vbofTDvuwI:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
CSHgixkivy:
mov dword [ebp - 232], 4
mov dword eax, [ebp - 232]
mov dword esi, eax
mov dword eax, [ebp - 416]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 48], 0
setl [ebp - 48]
mov dword eax, [ebp - 48]
test eax, [ebp - 48]
jnz JSsUfPukst
jmp vbofTDvuwI
JSsUfPukst:
mov dword [ebp - 320], 32
mov dword eax, [ebp - 416]
mov dword [ebp - 212], eax
mov dword esi, 4
mov dword eax, [ebp - 232]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 212]
add eax, ebx
mov dword [ebp - 212], eax
mov dword eax, [ebp - 212]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 320]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 364], eax
mov dword eax, [ebp - 364]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 52], 0
sete [ebp - 52]
mov dword eax, [ebp - 52]
test eax, [ebp - 52]
jnz EKBVAaiCGm
jmp wGrvySpGZT
EKBVAaiCGm:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
wGrvySpGZT:
mov dword [ebp - 240], 5
mov dword eax, [ebp - 240]
mov dword esi, eax
mov dword eax, [ebp - 364]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 56], 0
setl [ebp - 56]
mov dword eax, [ebp - 56]
test eax, [ebp - 56]
jnz uRBnaJmRnb
jmp EKBVAaiCGm
uRBnaJmRnb:
mov dword [ebp - 428], 114
mov dword eax, [ebp - 364]
mov dword [ebp - 200], eax
mov dword esi, 4
mov dword eax, [ebp - 240]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 200]
add eax, ebx
mov dword [ebp - 200], eax
mov dword eax, [ebp - 200]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 428]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 376], eax
mov dword eax, [ebp - 376]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 60], 0
sete [ebp - 60]
mov dword eax, [ebp - 60]
test eax, [ebp - 60]
jnz iJvrQxIfKN
jmp umKUIDbDik
iJvrQxIfKN:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
umKUIDbDik:
mov dword [ebp - 284], 6
mov dword eax, [ebp - 284]
mov dword esi, eax
mov dword eax, [ebp - 376]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 64], 0
setl [ebp - 64]
mov dword eax, [ebp - 64]
test eax, [ebp - 64]
jnz CbYAYppAFy
jmp iJvrQxIfKN
CbYAYppAFy:
mov dword [ebp - 380], 97
mov dword eax, [ebp - 376]
mov dword [ebp - 164], eax
mov dword esi, 4
mov dword eax, [ebp - 284]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 164]
add eax, ebx
mov dword [ebp - 164], eax
mov dword eax, [ebp - 164]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 380]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 336], eax
mov dword eax, [ebp - 336]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 68], 0
sete [ebp - 68]
mov dword eax, [ebp - 68]
test eax, [ebp - 68]
jnz wCatplKdCN
jmp ZRTnxLbtgA
wCatplKdCN:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
ZRTnxLbtgA:
mov dword [ebp - 280], 7
mov dword eax, [ebp - 280]
mov dword esi, eax
mov dword eax, [ebp - 336]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 72], 0
setl [ebp - 72]
mov dword eax, [ebp - 72]
test eax, [ebp - 72]
jnz XmWBkfEqSA
jmp wCatplKdCN
XmWBkfEqSA:
mov dword [ebp - 404], 110
mov dword eax, [ebp - 336]
mov dword [ebp - 220], eax
mov dword esi, 4
mov dword eax, [ebp - 280]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 220]
add eax, ebx
mov dword [ebp - 220], eax
mov dword eax, [ebp - 220]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 404]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 412], eax
mov dword eax, [ebp - 412]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 76], 0
sete [ebp - 76]
mov dword eax, [ebp - 76]
test eax, [ebp - 76]
jnz XvcaihbZlI
jmp FvXtIabUkM
XvcaihbZlI:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
FvXtIabUkM:
mov dword [ebp - 300], 8
mov dword eax, [ebp - 300]
mov dword esi, eax
mov dword eax, [ebp - 412]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 80], 0
setl [ebp - 80]
mov dword eax, [ebp - 80]
test eax, [ebp - 80]
jnz lVDLcCZogx
jmp XvcaihbZlI
lVDLcCZogx:
mov dword [ebp - 360], 100
mov dword eax, [ebp - 412]
mov dword [ebp - 192], eax
mov dword esi, 4
mov dword eax, [ebp - 300]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 192]
add eax, ebx
mov dword [ebp - 192], eax
mov dword eax, [ebp - 192]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 360]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 340], eax
mov dword eax, [ebp - 340]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 84], 0
sete [ebp - 84]
mov dword eax, [ebp - 84]
test eax, [ebp - 84]
jnz JPnOHjdxTG
jmp KjTVPnJLJI
JPnOHjdxTG:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
KjTVPnJLJI:
mov dword [ebp - 260], 9
mov dword eax, [ebp - 260]
mov dword esi, eax
mov dword eax, [ebp - 340]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 88], 0
setl [ebp - 88]
mov dword eax, [ebp - 88]
test eax, [ebp - 88]
jnz pjyMZbqQao
jmp JPnOHjdxTG
pjyMZbqQao:
mov dword [ebp - 408], 111
mov dword eax, [ebp - 340]
mov dword [ebp - 180], eax
mov dword esi, 4
mov dword eax, [ebp - 260]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword edi, eax
mov dword eax, [ebp - 180]
add eax, edi
mov dword [ebp - 180], eax
mov dword eax, [ebp - 180]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 408]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 316], eax
mov dword eax, [ebp - 316]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 92], 0
sete [ebp - 92]
mov dword eax, [ebp - 92]
test eax, [ebp - 92]
jnz xfZDqPoPZe
jmp MKUKhDQrlV
xfZDqPoPZe:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
MKUKhDQrlV:
mov dword [ebp - 244], 10
mov dword eax, [ebp - 244]
mov dword esi, eax
mov dword eax, [ebp - 316]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 96], 0
setl [ebp - 96]
mov dword eax, [ebp - 96]
test eax, [ebp - 96]
jnz SkhWeOlSyf
jmp xfZDqPoPZe
SkhWeOlSyf:
mov dword [ebp - 396], 109
mov dword eax, [ebp - 316]
mov dword [ebp - 176], eax
mov dword esi, 4
mov dword eax, [ebp - 244]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 176]
add eax, ebx
mov dword [ebp - 176], eax
mov dword eax, [ebp - 176]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 396]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 444], eax
mov dword eax, [ebp - 444]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 100], 0
sete [ebp - 100]
mov dword eax, [ebp - 100]
test eax, [ebp - 100]
jnz SmNqQYZfjl
jmp dZBzwyMGrQ
SmNqQYZfjl:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
dZBzwyMGrQ:
mov dword [ebp - 272], 11
mov dword eax, [ebp - 272]
mov dword esi, eax
mov dword eax, [ebp - 444]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 104], 0
setl [ebp - 104]
mov dword eax, [ebp - 104]
test eax, [ebp - 104]
jnz oVnJHvqbVA
jmp SmNqQYZfjl
oVnJHvqbVA:
mov dword [ebp - 348], 32
mov dword eax, [ebp - 444]
mov dword [ebp - 196], eax
mov dword esi, 4
mov dword eax, [ebp - 272]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 196]
add eax, ebx
mov dword [ebp - 196], eax
mov dword eax, [ebp - 196]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 348]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 388], eax
mov dword eax, [ebp - 388]
mov dword [ebp - 156], eax
mov dword ebx, 0
mov dword eax, [ebp - 156]
cmp eax, ebx
mov dword [ebp - 108], 0
sete [ebp - 108]
mov dword eax, [ebp - 108]
test eax, [ebp - 108]
jnz QPdXdbgTOs
jmp aTQhviTjHj
QPdXdbgTOs:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
aTQhviTjHj:
mov dword [ebp - 236], 12
mov dword eax, [ebp - 236]
mov dword esi, eax
mov dword eax, [ebp - 388]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 112], 0
setl [ebp - 112]
mov dword eax, [ebp - 112]
test eax, [ebp - 112]
jnz iLzhxBRUPh
jmp QPdXdbgTOs
iLzhxBRUPh:
mov dword [ebp - 332], 111
mov dword eax, [ebp - 388]
mov dword [ebp - 188], eax
mov dword esi, 4
mov dword eax, [ebp - 236]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 188]
add eax, ebx
mov dword [ebp - 188], eax
mov dword eax, [ebp - 188]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 332]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 344], eax
mov dword eax, [ebp - 344]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 116], 0
sete [ebp - 116]
mov dword eax, [ebp - 116]
test eax, [ebp - 116]
jnz bvibrfFihK
jmp nUppEJflLX
bvibrfFihK:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
nUppEJflLX:
mov dword [ebp - 252], 13
mov dword eax, [ebp - 252]
mov dword esi, eax
mov dword eax, [ebp - 344]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 120], 0
setl [ebp - 120]
mov dword eax, [ebp - 120]
test eax, [ebp - 120]
jnz pWnatvZNiI
jmp bvibrfFihK
pWnatvZNiI:
mov dword [ebp - 420], 98
mov dword eax, [ebp - 344]
mov dword [ebp - 216], eax
mov dword esi, 4
mov dword eax, [ebp - 252]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 216]
add eax, ebx
mov dword [ebp - 216], eax
mov dword eax, [ebp - 216]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 420]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 436], eax
mov dword eax, [ebp - 436]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 124], 0
sete [ebp - 124]
mov dword eax, [ebp - 124]
test eax, [ebp - 124]
jnz SvrpNTJYYo
jmp pUtIzWpPfe
SvrpNTJYYo:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
pUtIzWpPfe:
mov dword [ebp - 256], 14
mov dword eax, [ebp - 256]
mov dword esi, eax
mov dword eax, [ebp - 436]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 128], 0
setl [ebp - 128]
mov dword eax, [ebp - 128]
test eax, [ebp - 128]
jnz oIIIXKwONa
jmp SvrpNTJYYo
oIIIXKwONa:
mov dword [ebp - 424], 106
mov dword eax, [ebp - 436]
mov dword [ebp - 160], eax
mov dword esi, 4
mov dword eax, [ebp - 256]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 160]
add eax, ebx
mov dword [ebp - 160], eax
mov dword eax, [ebp - 160]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 424]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 368], eax
mov dword eax, [ebp - 368]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 132], 0
sete [ebp - 132]
mov dword eax, [ebp - 132]
test eax, [ebp - 132]
jnz tjIGBSCXDE
jmp uhOgXgiwFk
tjIGBSCXDE:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
uhOgXgiwFk:
mov dword [ebp - 276], 15
mov dword eax, [ebp - 276]
mov dword esi, eax
mov dword eax, [ebp - 368]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 136], 0
setl [ebp - 136]
mov dword eax, [ebp - 136]
test eax, [ebp - 136]
jnz EcqvUKhhXq
jmp tjIGBSCXDE
EcqvUKhhXq:
mov dword [ebp - 308], 101
mov dword eax, [ebp - 368]
mov dword [ebp - 228], eax
mov dword esi, 4
mov dword eax, [ebp - 276]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 228]
add eax, ebx
mov dword [ebp - 228], eax
mov dword eax, [ebp - 228]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 308]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 440], eax
mov dword eax, [ebp - 440]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 140], 0
sete [ebp - 140]
mov dword eax, [ebp - 140]
test eax, [ebp - 140]
jnz XXLVZMBgZK
jmp pCChsoNcef
XXLVZMBgZK:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
pCChsoNcef:
mov dword [ebp - 268], 16
mov dword eax, [ebp - 268]
mov dword esi, eax
mov dword eax, [ebp - 440]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 144], 0
setl [ebp - 144]
mov dword eax, [ebp - 144]
test eax, [ebp - 144]
jnz WTFZZWfAcV
jmp XXLVZMBgZK
WTFZZWfAcV:
mov dword [ebp - 356], 99
mov dword eax, [ebp - 440]
mov dword [ebp - 208], eax
mov dword esi, 4
mov dword eax, [ebp - 268]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 208]
add eax, ebx
mov dword [ebp - 208], eax
mov dword eax, [ebp - 208]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 356]
mov dword [eax], edx
mov dword eax, [ebp - 464]
mov dword [ebp - 312], eax
mov dword eax, [ebp - 312]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 148], 0
sete [ebp - 148]
mov dword eax, [ebp - 148]
test eax, [ebp - 148]
jnz HEOrFsywqE
jmp BuPSYKBYOj
HEOrFsywqE:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
BuPSYKBYOj:
mov dword [ebp - 292], 17
mov dword eax, [ebp - 292]
mov dword esi, eax
mov dword eax, [ebp - 312]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 152], 0
setl [ebp - 152]
mov dword eax, [ebp - 152]
test eax, [ebp - 152]
jnz KhgIYrehIW
jmp HEOrFsywqE
KhgIYrehIW:
mov dword [ebp - 304], 116
mov dword eax, [ebp - 312]
mov dword [ebp - 184], eax
mov dword esi, 4
mov dword eax, [ebp - 292]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 184]
add eax, ebx
mov dword [ebp - 184], eax
mov dword eax, [ebp - 184]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 304]
mov dword [eax], edx
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 448], eax
mov dword eax, [ebp - 448]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp - 448]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 448]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp + 8], eax
mov dword eax, [ebp - 448]
mov dword edi, eax
mov dword esi, 0
mov dword eax, [ebp - 464]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword edi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 448]
jmp javalangObjecttoStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangObjecttoStringRETURN
javalangObjecttoStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangObjecthashCode
javalangObjecthashCode:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 42
mov dword eax, ebx
jmp javalangObjecthashCodeRETURN
mov dword ecx, 0
mov dword eax, ecx
jmp javalangObjecthashCodeRETURN
javalangObjecthashCodeRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangObjectclone
javalangObjectclone:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
jmp javalangObjectcloneRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangObjectcloneRETURN
javalangObjectcloneRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangObjectgetClass
javalangObjectgetClass:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangObjectgetClassRETURN
mov dword ecx, 0
mov dword eax, ecx
jmp javalangObjectgetClassRETURN
javalangObjectgetClassRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangObjectequalsjavalangObject
javalangObjectequalsjavalangObject:
push dword ebp
mov dword ebp, esp
sub esp, 4*1
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ecx, eax
mov dword eax, ecx
cmp eax, [ebp + 16]
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
jmp javalangObjectequalsjavalangObjectRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangObjectequalsjavalangObjectRETURN
javalangObjectequalsjavalangObjectRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangObjectObject
javalangObjectObject:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangObjectObjectRETURN
javalangObjectObjectRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioOutputStreamwriteCHAR
javaioOutputStreamwriteCHAR:
push dword ebp
mov dword ebp, esp
sub esp, 4*1
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 4], eax
mov dword eax, ebx
mov dword edi, eax
mov dword esi, 0
mov dword eax, [ebp + 16]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword edi
mov dword ebx, 36
mov dword eax, [ebp - 4]
add eax, ebx
mov dword [ebp - 4], eax
mov dword eax, [ebp - 4]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioOutputStreamwriteCHARRETURN
javaioOutputStreamwriteCHARRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioOutputStreamflush
javaioOutputStreamflush:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javaioOutputStreamflushRETURN
javaioOutputStreamflushRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioOutputStreamwriteINT
javaioOutputStreamwriteINT:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, edi
call NATIVEjava.io.OutputStream.nativeWrite
pop edx
pop ecx
mov dword ecx, eax
mov dword eax, ecx
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioOutputStreamwriteINTRETURN
javaioOutputStreamwriteINTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioOutputStreamOutputStream
javaioOutputStreamOutputStream:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javaioOutputStreamOutputStreamRETURN
javaioOutputStreamOutputStreamRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangSystemgc
javalangSystemgc:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangSystemgcRETURN
javalangSystemgcRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangSystemSystem
javalangSystemSystem:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangSystemSystemRETURN
javalangSystemSystemRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangIntegerparseIntjavalangString
javalangIntegerparseIntjavalangString:
push dword ebp
mov dword ebp, esp
sub esp, 4*17
push dword ebx
push dword edi
push dword esi
mov dword [ebp - 60], 0
mov dword [ebp - 68], 0
mov dword [ebp - 64], 0
vhJeHOuzWC:
mov dword eax, [ebp - 64]
mov dword [ebp - 44], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword edi, 0
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 44]
cmp eax, ebx
mov dword [ebp - 4], 0
setl [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz EnanvLqgNo
jmp XyfwtZXMyf
EnanvLqgNo:
mov dword [ebp - 56], 1
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 40], eax
mov dword eax, edi
mov dword esi, eax
mov dword ebx, 0
mov dword eax, [ebp - 64]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
push dword esi
mov dword ebx, 60
mov dword eax, [ebp - 40]
add eax, ebx
mov dword [ebp - 40], eax
mov dword eax, [ebp - 40]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 45
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz GNWvrpNHfL
jmp vZGAfjowBy
vZGAfjowBy:
mov dword [ebp - 52], 0
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 36], eax
mov dword eax, edi
mov dword ebx, eax
mov dword esi, 0
mov dword eax, [ebp - 64]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword esi
push dword ebx
mov dword ebx, 60
mov dword eax, [ebp - 36]
add eax, ebx
mov dword [ebp - 36], eax
mov dword eax, [ebp - 36]
mov dword ecx, eax
mov dword eax, ecx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 48
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 12], 0
setge [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz pfYReNAYfD
jmp DbUTPiACYv
pfYReNAYfD:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 24], eax
mov dword eax, edi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, [ebp - 64]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword edi
push dword ebx
mov dword ebx, 60
mov dword eax, [ebp - 24]
add eax, ebx
mov dword [ebp - 24], eax
mov dword eax, [ebp - 24]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 57
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 16], 0
setle [ebp - 16]
mov dword eax, [ebp - 16]
mov dword [ebp - 52], eax
DbUTPiACYv:
mov dword eax, [ebp - 52]
mov dword [ebp - 56], eax
GNWvrpNHfL:
mov dword eax, [ebp - 56]
test eax, [ebp - 56]
jnz dEyetdoTDk
jmp XyfwtZXMyf
dEyetdoTDk:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 32], eax
mov dword eax, edi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, [ebp - 64]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword edi
push dword ebx
mov dword ebx, 60
mov dword eax, [ebp - 32]
add eax, ebx
mov dword [ebp - 32], eax
mov dword eax, [ebp - 32]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 45
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 20], 0
sete [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz HfezvBQbCT
jmp uQCOQrEyQY
HfezvBQbCT:
mov dword edi, 0
mov dword eax, [ebp - 68]
test eax, [ebp - 68]
jnz VLBeArvGta
jmp QIsHwdpPsa
QIsHwdpPsa:
mov dword edi, 1
VLBeArvGta:
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 68], eax
jmp OTfkKJTmZM
uQCOQrEyQY:
mov dword eax, [ebp - 60]
mov dword ebx, eax
mov dword edi, 10
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 48], eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 28], eax
mov dword eax, edi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, [ebp - 64]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword ebx
push dword edi
mov dword ebx, 60
mov dword eax, [ebp - 28]
add eax, ebx
mov dword [ebp - 28], eax
mov dword eax, [ebp - 28]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 48]
add eax, ebx
mov dword [ebp - 48], eax
mov dword eax, [ebp - 48]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 48
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 60], eax
OTfkKJTmZM:
mov dword eax, [ebp - 64]
mov dword esi, eax
mov dword ebx, 1
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 64], eax
jmp vhJeHOuzWC
XyfwtZXMyf:
mov dword eax, [ebp - 68]
test eax, [ebp - 68]
jnz UlCEBCASUV
jmp jUAcglgPat
UlCEBCASUV:
mov dword ebx, 0
mov dword eax, ebx
sub eax, [ebp - 60]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 60], eax
jUAcglgPat:
mov dword eax, [ebp - 60]
jmp javalangIntegerparseIntjavalangStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangIntegerparseIntjavalangStringRETURN
javalangIntegerparseIntjavalangStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangIntegertoString
javalangIntegertoString:
push dword ebp
mov dword ebp, esp
sub esp, 4*1
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword [ebp - 4], eax
mov dword esi, 4
mov dword eax, [ebp - 4]
add eax, esi
mov dword [ebp - 4], eax
mov dword eax, [ebp - 4]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
call javalangStringvalueOfINT
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangIntegertoStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangIntegertoStringRETURN
javalangIntegertoStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangIntegerintValue
javalangIntegerintValue:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword edi, 4
mov dword eax, esi
add eax, edi
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
jmp javalangIntegerintValueRETURN
mov dword ecx, 0
mov dword eax, ecx
jmp javalangIntegerintValueRETURN
javalangIntegerintValueRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangIntegerIntegerjavalangString
javalangIntegerIntegerjavalangString:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call javalangIntegerparseIntjavalangString
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ecx, 4
mov dword eax, edi
add eax, ecx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, esi
mov dword [eax], edx
mov dword ebx, 0
mov dword eax, ebx
jmp javalangIntegerIntegerjavalangStringRETURN
javalangIntegerIntegerjavalangStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangIntegerIntegerINT
javalangIntegerIntegerINT:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword esi, eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ecx, 4
mov dword eax, edi
add eax, ecx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, esi
mov dword [eax], edx
mov dword ebx, 0
mov dword eax, ebx
jmp javalangIntegerIntegerINTRETURN
javalangIntegerIntegerINTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangIntegerInteger
javalangIntegerInteger:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword esi, 0
mov dword eax, [ebp + 8]
mov dword ecx, eax
mov dword edi, 4
mov dword eax, ecx
add eax, edi
mov dword ecx, eax
mov dword eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, esi
mov dword [eax], edx
mov dword ebx, 0
mov dword eax, ebx
jmp javalangIntegerIntegerRETURN
javalangIntegerIntegerRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangBytetoString
javalangBytetoString:
push dword ebp
mov dword ebp, esp
sub esp, 4*1
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword [ebp - 4], eax
mov dword esi, 4
mov dword eax, [ebp - 4]
add eax, esi
mov dword [ebp - 4], eax
mov dword eax, [ebp - 4]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
call javalangStringvalueOfBYTE
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangBytetoStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangBytetoStringRETURN
javalangBytetoStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangByteByteBYTE
javalangByteByteBYTE:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword esi, eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ecx, 4
mov dword eax, edi
add eax, ecx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, esi
mov dword [eax], edx
mov dword ebx, 0
mov dword eax, ebx
jmp javalangByteByteBYTERETURN
javalangByteByteBYTERETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangByteByte
javalangByteByte:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangByteByteRETURN
javalangByteByteRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangNumberNumber
javalangNumberNumber:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangNumberNumberRETURN
javalangNumberNumberRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global TestbubbleSortINT
TestbubbleSortINT:
push dword ebp
mov dword ebp, esp
sub esp, 4*44
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword edi, 0
mov dword eax, esi
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz bKqwatpFGP
jmp jHBwUWsLJw
jHBwUWsLJw:
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
bKqwatpFGP:
mov dword eax, ebx
mov dword [ebp - 176], eax
mov dword [ebp - 160], 0
mov dword [ebp - 172], 0
OoeJiiTcCb:
mov dword eax, [ebp - 172]
mov dword [ebp - 72], eax
mov dword eax, [ebp - 176]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword esi, eax
mov dword eax, [ebp - 72]
cmp eax, esi
mov dword [ebp - 8], 0
setl [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz vkWUgtOwtj
jmp sGZrhmpCZh
vkWUgtOwtj:
mov dword ebx, 0
mov dword eax, ebx
mov dword [ebp - 160], eax
mov dword [ebp - 168], 0
yWAkmXmVEQ:
mov dword eax, [ebp - 168]
mov dword esi, eax
mov dword eax, [ebp - 176]
mov dword ebx, eax
mov dword eax, ebx
sub eax, [ebp - 172]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 12], 0
setl [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz ScbPgPUcRp
jmp YTnqzHQZaB
ScbPgPUcRp:
mov dword eax, [ebp + 8]
mov dword [ebp - 112], eax
mov dword eax, [ebp - 112]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz uvFmZGxdDW
jmp oByusPPvdN
uvFmZGxdDW:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
oByusPPvdN:
mov dword eax, [ebp - 168]
mov dword [ebp - 104], eax
mov dword eax, [ebp - 104]
mov dword esi, eax
mov dword eax, [ebp - 112]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz CPWywLzlkE
jmp uvFmZGxdDW
CPWywLzlkE:
mov dword eax, [ebp - 112]
mov dword [ebp - 80], eax
mov dword esi, 4
mov dword eax, [ebp - 104]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 80]
add eax, ebx
mov dword [ebp - 80], eax
mov dword eax, [ebp - 80]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 148], eax
mov dword eax, [ebp + 8]
mov dword [ebp - 140], eax
mov dword eax, [ebp - 140]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz fOwtsZmYHs
jmp eTsAsuNqKw
fOwtsZmYHs:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
eTsAsuNqKw:
mov dword eax, [ebp - 168]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 124], eax
mov dword eax, [ebp - 124]
mov dword esi, eax
mov dword eax, [ebp - 140]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz ObnuFClwDn
jmp fOwtsZmYHs
ObnuFClwDn:
mov dword eax, [ebp - 140]
mov dword [ebp - 88], eax
mov dword esi, 4
mov dword eax, [ebp - 124]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 88]
add eax, ebx
mov dword [ebp - 88], eax
mov dword eax, [ebp - 88]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, [ebp - 148]
cmp eax, ebx
mov dword [ebp - 32], 0
setg [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz QwpqfdLwpr
jmp vgFkjDOdxu
QwpqfdLwpr:
mov dword eax, [ebp + 8]
mov dword [ebp - 108], eax
mov dword eax, [ebp - 108]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 36], 0
sete [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz jEfeeNsbPa
jmp cFlLboNHNk
jEfeeNsbPa:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
cFlLboNHNk:
mov dword eax, [ebp - 168]
mov dword [ebp - 96], eax
mov dword eax, [ebp - 96]
mov dword esi, eax
mov dword eax, [ebp - 108]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 40], 0
setl [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz hqCCciZaJv
jmp jEfeeNsbPa
hqCCciZaJv:
mov dword eax, [ebp - 108]
mov dword [ebp - 76], eax
mov dword esi, 4
mov dword eax, [ebp - 96]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 76]
add eax, ebx
mov dword [ebp - 76], eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 164], eax
mov dword eax, [ebp + 8]
mov dword [ebp - 152], eax
mov dword eax, [ebp - 152]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 44], 0
sete [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz GqJsqJsfjh
jmp OXprzVMyZc
GqJsqJsfjh:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
OXprzVMyZc:
mov dword eax, [ebp - 168]
mov dword [ebp - 156], eax
mov dword eax, [ebp - 156]
mov dword esi, eax
mov dword eax, [ebp - 152]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 48], 0
setl [ebp - 48]
mov dword eax, [ebp - 48]
test eax, [ebp - 48]
jnz QITmstLIfo
jmp GqJsqJsfjh
QITmstLIfo:
mov dword eax, [ebp + 8]
mov dword [ebp - 144], eax
mov dword eax, [ebp - 144]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 52], 0
sete [ebp - 52]
mov dword eax, [ebp - 52]
test eax, [ebp - 52]
jnz ZmGrsjxrpX
jmp XXTXhcUwnR
ZmGrsjxrpX:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
XXTXhcUwnR:
mov dword eax, [ebp - 168]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 132], eax
mov dword eax, [ebp - 132]
mov dword esi, eax
mov dword eax, [ebp - 144]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 56], 0
setl [ebp - 56]
mov dword eax, [ebp - 56]
test eax, [ebp - 56]
jnz cqyrzwGBgY
jmp ZmGrsjxrpX
cqyrzwGBgY:
mov dword eax, [ebp - 144]
mov dword [ebp - 100], eax
mov dword esi, 4
mov dword eax, [ebp - 132]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 100]
add eax, ebx
mov dword [ebp - 100], eax
mov dword eax, [ebp - 100]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 128], eax
mov dword eax, [ebp - 152]
mov dword [ebp - 92], eax
mov dword esi, 4
mov dword eax, [ebp - 156]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 92]
add eax, ebx
mov dword [ebp - 92], eax
mov dword eax, [ebp - 92]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 128]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword [ebp - 136], eax
mov dword eax, [ebp - 136]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 60], 0
sete [ebp - 60]
mov dword eax, [ebp - 60]
test eax, [ebp - 60]
jnz CVvyskuaNt
jmp ghYqLtEAEi
CVvyskuaNt:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
ghYqLtEAEi:
mov dword eax, [ebp - 168]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 120], eax
mov dword eax, [ebp - 120]
mov dword esi, eax
mov dword eax, [ebp - 136]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 64], 0
setl [ebp - 64]
mov dword eax, [ebp - 64]
test eax, [ebp - 64]
jnz JPtzGyMoPv
jmp CVvyskuaNt
JPtzGyMoPv:
mov dword eax, [ebp - 164]
mov dword [ebp - 116], eax
mov dword eax, [ebp - 136]
mov dword [ebp - 84], eax
mov dword esi, 4
mov dword eax, [ebp - 120]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 84]
add eax, ebx
mov dword [ebp - 84], eax
mov dword eax, [ebp - 84]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 116]
mov dword [eax], edx
mov dword [ebp - 68], 1
mov dword eax, [ebp - 68]
mov dword [ebp - 160], eax
vgFkjDOdxu:
mov dword ebx, 1
mov dword eax, ebx
add eax, [ebp - 168]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 168], eax
jmp yWAkmXmVEQ
YTnqzHQZaB:
mov dword eax, [ebp - 160]
test eax, [ebp - 160]
jnz eYxhpmRbpx
jmp ACPSDZOFFB
ACPSDZOFFB:
mov dword ebx, 0
mov dword eax, ebx
jmp TestbubbleSortINTRETURN
eYxhpmRbpx:
mov dword eax, [ebp - 172]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 172], eax
jmp OoeJiiTcCb
sGZrhmpCZh:
mov dword ebx, 0
mov dword eax, ebx
jmp TestbubbleSortINTRETURN
TestbubbleSortINTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global Testtest
Testtest:
push dword ebp
mov dword ebp, esp
sub esp, 4*46
push dword ebx
push dword edi
push dword esi
mov dword ebx, 7
mov dword ebx, 7
jmp IKfonSSUUt
jmp LohadrySlM
LohadrySlM:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
IKfonSSUUt:
mov dword ebx, 8
mov dword ebx, 7
mov dword ebx, 36
push dword eax
push dword ecx
push dword edx
mov dword ebx, 36
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 180], eax
mov dword eax, [ebp - 180]
mov dword ebx, eax
mov dword edi, 7
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [ebp - 180]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword [ebp - 168], 7
mov dword eax, [ebp - 180]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
LfLvXUDKMP:
mov dword eax, [ebp - 168]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz IbechVNgmz
jmp TrkrJuLIHo
TrkrJuLIHo:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 168]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 168], eax
jmp LfLvXUDKMP
IbechVNgmz:
mov dword eax, [ebp - 180]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 184], eax
mov dword eax, [ebp - 184]
mov dword [ebp - 140], eax
mov dword eax, [ebp - 140]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz poXMJjvsHG
jmp cXtvlvTFeO
poXMJjvsHG:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
cXtvlvTFeO:
mov dword ebx, 0
mov dword esi, 0
mov dword eax, [ebp - 140]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 12], 0
setl [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz vIhACiChxs
jmp poXMJjvsHG
vIhACiChxs:
mov dword ebx, 64
mov dword eax, [ebp - 140]
mov dword [ebp - 120], eax
mov dword esi, 4
mov dword ebx, 0
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 120]
add eax, ebx
mov dword [ebp - 120], eax
mov dword eax, [ebp - 120]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 64
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [ebp - 184]
mov dword [ebp - 148], eax
mov dword eax, [ebp - 148]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz eyuwUZMpoz
jmp zkqoOzkQMA
eyuwUZMpoz:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
zkqoOzkQMA:
mov dword ebx, 1
mov dword esi, 1
mov dword eax, [ebp - 148]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz sUDhHTafuL
jmp eyuwUZMpoz
sUDhHTafuL:
mov dword ebx, 34
mov dword eax, [ebp - 148]
mov dword [ebp - 108], eax
mov dword esi, 4
mov dword edi, 1
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 108]
add eax, ebx
mov dword [ebp - 108], eax
mov dword eax, [ebp - 108]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 34
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [ebp - 184]
mov dword [ebp - 132], eax
mov dword eax, [ebp - 132]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz NKjUuqmvJd
jmp NcDqWuZcwB
NKjUuqmvJd:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
NcDqWuZcwB:
mov dword ebx, 2
mov dword esi, 2
mov dword eax, [ebp - 132]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz DeiGBiVZQG
jmp NKjUuqmvJd
DeiGBiVZQG:
mov dword ebx, 25
mov dword eax, [ebp - 132]
mov dword [ebp - 100], eax
mov dword esi, 4
mov dword edi, 2
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 100]
add eax, ebx
mov dword [ebp - 100], eax
mov dword eax, [ebp - 100]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 25
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [ebp - 184]
mov dword [ebp - 136], eax
mov dword eax, [ebp - 136]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 32], 0
sete [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz yWobxdzhpd
jmp NPoBvHilXd
yWobxdzhpd:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
NPoBvHilXd:
mov dword ebx, 3
mov dword esi, 3
mov dword eax, [ebp - 136]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 36], 0
setl [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz BnOHBmlaZU
jmp yWobxdzhpd
BnOHBmlaZU:
mov dword ebx, 12
mov dword eax, [ebp - 136]
mov dword [ebp - 88], eax
mov dword esi, 4
mov dword edi, 3
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 88]
add eax, ebx
mov dword [ebp - 88], eax
mov dword eax, [ebp - 88]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [ebp - 184]
mov dword [ebp - 144], eax
mov dword eax, [ebp - 144]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 40], 0
sete [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz hLOmggCeSv
jmp gClrmbdbRG
hLOmggCeSv:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
gClrmbdbRG:
mov dword ebx, 4
mov dword esi, 4
mov dword eax, [ebp - 144]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 44], 0
setl [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz rOXkSYBDaU
jmp hLOmggCeSv
rOXkSYBDaU:
mov dword ebx, 22
mov dword eax, [ebp - 144]
mov dword [ebp - 96], eax
mov dword esi, 4
mov dword ebx, 4
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 96]
add eax, ebx
mov dword [ebp - 96], eax
mov dword eax, [ebp - 96]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 22
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [ebp - 184]
mov dword [ebp - 152], eax
mov dword eax, [ebp - 152]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 48], 0
sete [ebp - 48]
mov dword eax, [ebp - 48]
test eax, [ebp - 48]
jnz RcDSBmaZbb
jmp CmVwjHxeDa
RcDSBmaZbb:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
CmVwjHxeDa:
mov dword ebx, 5
mov dword esi, 5
mov dword eax, [ebp - 152]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 52], 0
setl [ebp - 52]
mov dword eax, [ebp - 52]
test eax, [ebp - 52]
jnz HmPzvzxdLV
jmp RcDSBmaZbb
HmPzvzxdLV:
mov dword ebx, 11
mov dword eax, [ebp - 152]
mov dword [ebp - 92], eax
mov dword esi, 4
mov dword ebx, 5
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 92]
add eax, ebx
mov dword [ebp - 92], eax
mov dword eax, [ebp - 92]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 11
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [ebp - 184]
mov dword [ebp - 160], eax
mov dword eax, [ebp - 160]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 56], 0
sete [ebp - 56]
mov dword eax, [ebp - 56]
test eax, [ebp - 56]
jnz IPhmKreERk
jmp QefTBfJRsw
IPhmKreERk:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
QefTBfJRsw:
mov dword ebx, 6
mov dword esi, 6
mov dword eax, [ebp - 160]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 60], 0
setl [ebp - 60]
mov dword eax, [ebp - 60]
test eax, [ebp - 60]
jnz ragzTZLahl
jmp IPhmKreERk
ragzTZLahl:
mov dword ebx, 100
mov dword eax, [ebp - 160]
mov dword [ebp - 116], eax
mov dword esi, 4
mov dword edi, 6
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 116]
add eax, ebx
mov dword [ebp - 116], eax
mov dword eax, [ebp - 116]
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 100
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [ebp - 184]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call TestbubbleSortINT
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 184]
mov dword [ebp - 156], eax
mov dword eax, [ebp - 156]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 64], 0
sete [ebp - 64]
mov dword eax, [ebp - 64]
test eax, [ebp - 64]
jnz lNCaicNNFS
jmp RYBEtEKJRn
lNCaicNNFS:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
RYBEtEKJRn:
mov dword ebx, 6
mov dword esi, 6
mov dword eax, [ebp - 156]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 68], 0
setl [ebp - 68]
mov dword eax, [ebp - 68]
test eax, [ebp - 68]
jnz waQhWeJQqm
jmp lNCaicNNFS
waQhWeJQqm:
mov dword eax, [ebp - 156]
mov dword [ebp - 112], eax
mov dword esi, 4
mov dword ebx, 6
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 112]
add eax, ebx
mov dword [ebp - 112], eax
mov dword eax, [ebp - 112]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 172], eax
mov dword eax, [ebp - 184]
mov dword [ebp - 164], eax
mov dword eax, [ebp - 164]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 72], 0
sete [ebp - 72]
mov dword eax, [ebp - 72]
test eax, [ebp - 72]
jnz UWNfeiyfLZ
jmp HhcqVnOXzR
UWNfeiyfLZ:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
HhcqVnOXzR:
mov dword ebx, 1
mov dword esi, 1
mov dword eax, [ebp - 164]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 76], 0
setl [ebp - 76]
mov dword eax, [ebp - 76]
test eax, [ebp - 76]
jnz TVHwyMaVlx
jmp UWNfeiyfLZ
TVHwyMaVlx:
mov dword eax, [ebp - 164]
mov dword [ebp - 124], eax
mov dword esi, 4
mov dword ebx, 1
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 124]
add eax, ebx
mov dword [ebp - 124], eax
mov dword eax, [ebp - 124]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, [ebp - 172]
add eax, ebx
mov dword [ebp - 172], eax
mov dword eax, [ebp - 172]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 176], eax
mov dword eax, [ebp - 184]
mov dword [ebp - 128], eax
mov dword eax, [ebp - 128]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 80], 0
sete [ebp - 80]
mov dword eax, [ebp - 80]
test eax, [ebp - 80]
jnz FbaRPhnPtp
jmp GgyXMHiWBy
FbaRPhnPtp:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
GgyXMHiWBy:
mov dword ebx, 0
mov dword [ebp - 104], 0
mov dword eax, [ebp - 128]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword esi, eax
mov dword eax, [ebp - 104]
cmp eax, esi
mov dword [ebp - 84], 0
setl [ebp - 84]
mov dword eax, [ebp - 84]
test eax, [ebp - 84]
jnz sVOYketAeq
jmp FbaRPhnPtp
sVOYketAeq:
mov dword eax, [ebp - 128]
mov dword esi, eax
mov dword edi, 4
mov dword ebx, 0
mov dword ecx, 4
mov dword eax, ebx
imul dword eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, [ebp - 176]
add eax, ebx
mov dword [ebp - 176], eax
mov dword eax, [ebp - 176]
mov dword ebx, eax
mov dword eax, ebx
jmp TesttestRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp TesttestRETURN
TesttestRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global TestTest
TestTest:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp TestTestRETURN
TestTestRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintjavalangString
javaioPrintStreamprintjavalangString:
push dword ebp
mov dword ebp, esp
sub esp, 4*43
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz aZtvTorRpD
jmp bZHhRmIuVL
aZtvTorRpD:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 172], eax
mov dword eax, ebx
mov dword [ebp - 164], eax
mov dword [ebp - 168], 0
mov dword [ebp - 148], 4
mov dword eax, [ebp - 148]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
setge [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz badfmNQxqo
jmp bTMkfyHpyr
bTMkfyHpyr:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
badfmNQxqo:
mov dword esi, 8
mov dword eax, [ebp - 148]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 152], eax
mov dword eax, [ebp - 152]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 148]
mov dword [eax], edx
mov dword eax, [ebp - 152]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 148]
mov dword [ebp - 136], eax
mov dword eax, [ebp - 152]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
krnklbtfkh:
mov dword eax, [ebp - 136]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 12], 0
sete [ebp - 12]
mov dword eax, [ebp - 12]
test eax, [ebp - 12]
jnz ZVyyAgzuyp
jmp ZvJyngaYVl
ZvJyngaYVl:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 136]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 136], eax
jmp krnklbtfkh
ZVyyAgzuyp:
mov dword eax, [ebp - 152]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 52], eax
mov dword eax, [ebp - 52]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 160], eax
mov dword eax, [ebp - 160]
mov dword [ebp - 112], eax
mov dword eax, [ebp - 112]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 16], 0
sete [ebp - 16]
mov dword eax, [ebp - 16]
test eax, [ebp - 16]
jnz aHOegtSwEO
jmp CdihNsehrm
aHOegtSwEO:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
CdihNsehrm:
mov dword [ebp - 80], 0
mov dword eax, [ebp - 80]
mov dword esi, eax
mov dword eax, [ebp - 112]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 20], 0
setl [ebp - 20]
mov dword eax, [ebp - 20]
test eax, [ebp - 20]
jnz gertgOVKij
jmp aHOegtSwEO
gertgOVKij:
mov dword [ebp - 120], 110
mov dword eax, [ebp - 112]
mov dword [ebp - 68], eax
mov dword esi, 4
mov dword eax, [ebp - 80]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 68]
add eax, ebx
mov dword [ebp - 68], eax
mov dword eax, [ebp - 68]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 120]
mov dword [eax], edx
mov dword eax, [ebp - 160]
mov dword [ebp - 104], eax
mov dword eax, [ebp - 104]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 24], 0
sete [ebp - 24]
mov dword eax, [ebp - 24]
test eax, [ebp - 24]
jnz XdaIpfsVOo
jmp YzJLmjcyIJ
XdaIpfsVOo:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
YzJLmjcyIJ:
mov dword [ebp - 92], 1
mov dword eax, [ebp - 92]
mov dword esi, eax
mov dword eax, [ebp - 104]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 28], 0
setl [ebp - 28]
mov dword eax, [ebp - 28]
test eax, [ebp - 28]
jnz guEPMZZGzN
jmp XdaIpfsVOo
guEPMZZGzN:
mov dword [ebp - 132], 117
mov dword eax, [ebp - 104]
mov dword [ebp - 64], eax
mov dword esi, 4
mov dword eax, [ebp - 92]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 64]
add eax, ebx
mov dword [ebp - 64], eax
mov dword eax, [ebp - 64]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 132]
mov dword [eax], edx
mov dword eax, [ebp - 160]
mov dword [ebp - 128], eax
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 32], 0
sete [ebp - 32]
mov dword eax, [ebp - 32]
test eax, [ebp - 32]
jnz CuRgDoutYs
jmp IjHLfhoYRK
CuRgDoutYs:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
IjHLfhoYRK:
mov dword [ebp - 100], 2
mov dword eax, [ebp - 100]
mov dword esi, eax
mov dword eax, [ebp - 128]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
sub eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 36], 0
setl [ebp - 36]
mov dword eax, [ebp - 36]
test eax, [ebp - 36]
jnz SEitVPUjar
jmp CuRgDoutYs
SEitVPUjar:
mov dword [ebp - 108], 108
mov dword eax, [ebp - 128]
mov dword [ebp - 76], eax
mov dword esi, 4
mov dword eax, [ebp - 100]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
imul dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 76]
add eax, ebx
mov dword [ebp - 76], eax
mov dword eax, [ebp - 76]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 108]
mov dword [eax], edx
mov dword eax, [ebp - 160]
mov dword [ebp - 116], eax
mov dword eax, [ebp - 116]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 40], 0
sete [ebp - 40]
mov dword eax, [ebp - 40]
test eax, [ebp - 40]
jnz LFKfapqGjD
jmp uVoELWJsyd
LFKfapqGjD:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
uVoELWJsyd:
mov dword [ebp - 84], 3
mov dword eax, [ebp - 84]
mov dword esi, eax
mov dword eax, [ebp - 116]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, esi
cmp eax, ebx
mov dword [ebp - 44], 0
setl [ebp - 44]
mov dword eax, [ebp - 44]
test eax, [ebp - 44]
jnz xMGVXPresa
jmp LFKfapqGjD
xMGVXPresa:
mov dword [ebp - 124], 108
mov dword eax, [ebp - 116]
mov dword [ebp - 72], eax
mov dword esi, 4
mov dword eax, [ebp - 84]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, [ebp - 72]
add eax, ebx
mov dword [ebp - 72], eax
mov dword eax, [ebp - 72]
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 124]
mov dword [eax], edx
mov dword ebx, 8
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 144], eax
mov dword eax, [ebp - 144]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp - 144]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 144]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp + 8], eax
mov dword eax, [ebp - 144]
mov dword edi, eax
mov dword esi, 0
mov dword eax, [ebp - 160]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword esi
push dword edi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 144]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword [ebp - 168]
push dword [ebp - 164]
mov dword ebx, 40
mov dword eax, [ebp - 172]
add eax, ebx
mov dword [ebp - 172], eax
mov dword eax, [ebp - 172]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
jmp OxiMOBtzBj
bZHhRmIuVL:
mov dword [ebp - 156], 0
JKcNbptsPo:
mov dword eax, [ebp - 156]
mov dword [ebp - 60], eax
mov dword eax, [ebp + 16]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword esi, eax
mov dword eax, esi
mov dword esi, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
mov dword ebx, 28
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 60]
cmp eax, ebx
mov dword [ebp - 48], 0
setl [ebp - 48]
mov dword eax, [ebp - 48]
test eax, [ebp - 48]
jnz xirYaINHjU
jmp WrsBOwVQQi
xirYaINHjU:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 140], eax
mov dword eax, ebx
mov dword [ebp - 88], eax
mov dword [ebp - 96], 0
mov dword eax, [ebp + 16]
mov dword edi, eax
mov dword eax, edi
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 56], eax
mov dword eax, edi
mov dword ebx, eax
mov dword edi, 0
mov dword eax, [ebp - 156]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword edi
push dword ebx
mov dword ebx, 60
mov dword eax, [ebp - 56]
add eax, ebx
mov dword [ebp - 56], eax
mov dword eax, [ebp - 56]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword [ebp - 96]
push dword [ebp - 88]
mov dword ebx, 28
mov dword eax, [ebp - 140]
add eax, ebx
mov dword [ebp - 140], eax
mov dword eax, [ebp - 140]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 156]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 156], eax
jmp JKcNbptsPo
WrsBOwVQQi:
OxiMOBtzBj:
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintjavalangStringRETURN
javaioPrintStreamprintjavalangStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintlnSHORT
javaioPrintStreamprintlnSHORT:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 4], eax
mov dword [ebp - 8], 0
mov dword eax, [ebp + 16]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call javalangStringvalueOfSHORT
add esp, 4
pop edx
pop ecx
mov dword esi, eax
mov dword eax, esi
pop eax
mov dword eax, esi
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword [ebp - 8]
push dword [ebp - 4]
mov dword ebx, 68
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword esi, eax
mov dword eax, esi
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintlnSHORTRETURN
javaioPrintStreamprintlnSHORTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintjavalangObject
javaioPrintStreamprintjavalangObject:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 4], eax
mov dword [ebp - 8], 0
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
call javalangStringvalueOfjavalangObject
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword [ebp - 8]
push dword [ebp - 4]
mov dword ebx, 40
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintjavalangObjectRETURN
javaioPrintStreamprintjavalangObjectRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintlnBOOLEAN
javaioPrintStreamprintlnBOOLEAN:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 8], eax
mov dword [ebp - 4], 0
mov dword eax, [ebp + 16]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call javalangStringvalueOfBOOLEAN
add esp, 4
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword eax, edi
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 4]
push dword [ebp - 8]
mov dword ebx, 68
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintlnBOOLEANRETURN
javaioPrintStreamprintlnBOOLEANRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintlnCHAR
javaioPrintStreamprintlnCHAR:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 4], eax
mov dword [ebp - 8], 0
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
call javalangStringvalueOfCHAR
add esp, 4
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword eax, edi
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword [ebp - 8]
push dword [ebp - 4]
mov dword ebx, 68
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintlnCHARRETURN
javaioPrintStreamprintlnCHARRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintBYTE
javaioPrintStreamprintBYTE:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 8], eax
mov dword [ebp - 4], 0
mov dword eax, [ebp + 16]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call javalangStringvalueOfBYTE
add esp, 4
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword eax, edi
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 4]
push dword [ebp - 8]
mov dword ebx, 40
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintBYTERETURN
javaioPrintStreamprintBYTERETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintln
javaioPrintStreamprintln:
push dword ebp
mov dword ebp, esp
sub esp, 4*11
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 44], eax
mov dword eax, ebx
mov dword [ebp - 36], eax
mov dword [ebp - 40], 0
mov dword [ebp - 28], 0
mov dword eax, [ebp - 28]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
setge [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz CuwlADLXtH
jmp XHgBQOwvbb
XHgBQOwvbb:
push dword eax
push dword ecx
push dword edx
call __exception
add esp, 0
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
CuwlADLXtH:
mov dword esi, 8
mov dword eax, [ebp - 28]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
imul dword eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, esi
add eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 32], eax
mov dword eax, [ebp - 32]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [ebp - 28]
mov dword [eax], edx
mov dword eax, [ebp - 32]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 0]
mov dword [eax], edx
mov dword eax, [ebp - 28]
mov dword [ebp - 16], eax
mov dword eax, [ebp - 32]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
fmPmwiTGTD:
mov dword eax, [ebp - 16]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz dsUKGKHVFT
jmp IqeHfKppav
IqeHfKppav:
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, [ebp - 16]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
sub eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 16], eax
jmp fmPmwiTGTD
dsUKGKHVFT:
mov dword eax, [ebp - 32]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword [ebp - 20], eax
mov dword [ebp - 12], 8
push dword eax
push dword ecx
push dword edx
mov dword eax, [ebp - 12]
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [ebp - 24], eax
mov dword eax, [ebp - 24]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 4]
mov dword [eax], edx
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp - 24]
mov dword [ebp + 8], eax
mov dword eax, [ebp - 24]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, esi
mov dword [ebp + 8], eax
mov dword eax, [ebp - 24]
mov dword esi, eax
mov dword edi, 0
mov dword eax, [ebp - 20]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
push dword esi
call javalangStringStringCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp - 24]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword [ebp - 40]
push dword [ebp - 36]
mov dword ebx, 68
mov dword eax, [ebp - 44]
add eax, ebx
mov dword [ebp - 44], eax
mov dword eax, [ebp - 44]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintlnRETURN
javaioPrintStreamprintlnRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintlnjavalangString
javaioPrintStreamprintlnjavalangString:
push dword ebp
mov dword ebp, esp
sub esp, 4*2
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword edi, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword [ebp - 4], 0
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 4]
push dword ebx
mov dword ebx, 40
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 8], eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword esi, 10
push dword eax
push dword ecx
push dword edx
push dword esi
push dword edi
push dword ebx
mov dword ebx, 28
mov dword eax, [ebp - 8]
add eax, ebx
mov dword [ebp - 8], eax
mov dword eax, [ebp - 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintlnjavalangStringRETURN
javaioPrintStreamprintlnjavalangStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintlnINT
javaioPrintStreamprintlnINT:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 4], eax
mov dword [ebp - 8], 0
mov dword eax, [ebp + 16]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call javalangStringvalueOfINT
add esp, 4
pop edx
pop ecx
mov dword esi, eax
mov dword eax, esi
pop eax
mov dword eax, esi
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword [ebp - 8]
push dword [ebp - 4]
mov dword ebx, 68
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword esi, eax
mov dword eax, esi
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintlnINTRETURN
javaioPrintStreamprintlnINTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintSHORT
javaioPrintStreamprintSHORT:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 8], eax
mov dword [ebp - 4], 0
mov dword eax, [ebp + 16]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call javalangStringvalueOfSHORT
add esp, 4
pop edx
pop ecx
mov dword esi, eax
mov dword eax, esi
pop eax
mov dword eax, esi
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword [ebp - 4]
push dword [ebp - 8]
mov dword ebx, 40
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword esi, eax
mov dword eax, esi
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintSHORTRETURN
javaioPrintStreamprintSHORTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintlnjavalangObject
javaioPrintStreamprintlnjavalangObject:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 4], eax
mov dword [ebp - 8], 0
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
call javalangStringvalueOfjavalangObject
add esp, 4
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword eax, edi
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword [ebp - 8]
push dword [ebp - 4]
mov dword ebx, 68
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintlnjavalangObjectRETURN
javaioPrintStreamprintlnjavalangObjectRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintBOOLEAN
javaioPrintStreamprintBOOLEAN:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 8], eax
mov dword [ebp - 4], 0
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
call javalangStringvalueOfBOOLEAN
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword [ebp - 4]
push dword [ebp - 8]
mov dword ebx, 40
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintBOOLEANRETURN
javaioPrintStreamprintBOOLEANRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintINT
javaioPrintStreamprintINT:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 8], eax
mov dword [ebp - 4], 0
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
call javalangStringvalueOfINT
add esp, 4
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword eax, edi
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword [ebp - 4]
push dword [ebp - 8]
mov dword ebx, 40
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword edi, eax
mov dword eax, edi
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintINTRETURN
javaioPrintStreamprintINTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintlnBYTE
javaioPrintStreamprintlnBYTE:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 8], eax
mov dword [ebp - 4], 0
mov dword eax, [ebp + 16]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
call javalangStringvalueOfBYTE
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 4]
push dword [ebp - 8]
mov dword ebx, 68
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintlnBYTERETURN
javaioPrintStreamprintlnBYTERETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamprintCHAR
javaioPrintStreamprintCHAR:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword [ebp - 12], eax
mov dword eax, ebx
mov dword [ebp - 4], eax
mov dword [ebp - 8], 0
mov dword eax, [ebp + 16]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
call javalangStringvalueOfCHAR
add esp, 4
pop edx
pop ecx
mov dword esi, eax
mov dword eax, esi
pop eax
mov dword eax, esi
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword [ebp - 8]
push dword [ebp - 4]
mov dword ebx, 40
mov dword eax, [ebp - 12]
add eax, ebx
mov dword [ebp - 12], eax
mov dword eax, [ebp - 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
call ebx
add esp, 12
pop edx
pop ecx
mov dword esi, eax
mov dword eax, esi
pop eax
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamprintCHARRETURN
javaioPrintStreamprintCHARRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamPrintStream
javaioPrintStreamPrintStream:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javaioPrintStreamPrintStreamRETURN
javaioPrintStreamPrintStreamRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangShorttoString
javalangShorttoString:
push dword ebp
mov dword ebp, esp
sub esp, 4*1
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword [ebp - 4], eax
mov dword esi, 4
mov dword eax, [ebp - 4]
add eax, esi
mov dword [ebp - 4], eax
mov dword eax, [ebp - 4]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call javalangStringvalueOfSHORT
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangShorttoStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangShorttoStringRETURN
javalangShorttoStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangShortintValue
javalangShortintValue:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword esi, 4
mov dword eax, edi
add eax, esi
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword ebx, eax
mov dword eax, ebx
jmp javalangShortintValueRETURN
mov dword ecx, 0
mov dword eax, ecx
jmp javalangShortintValueRETURN
javalangShortintValueRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangShortShortSHORT
javalangShortShortSHORT:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword esi, eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ecx, 4
mov dword eax, edi
add eax, ecx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, esi
mov dword [eax], edx
mov dword ebx, 0
mov dword eax, ebx
jmp javalangShortShortSHORTRETURN
javalangShortShortSHORTRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangShortShort
javalangShortShort:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangShortShortRETURN
javalangShortShortRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangBooleantoString
javalangBooleantoString:
push dword ebp
mov dword ebp, esp
sub esp, 4*1
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 8]
mov dword [ebp - 4], eax
mov dword esi, 4
mov dword eax, [ebp - 4]
add eax, esi
mov dword [ebp - 4], eax
mov dword eax, [ebp - 4]
mov dword ebx, eax
mov dword eax, ebx
mov dword eax, [eax]
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
call javalangStringvalueOfBOOLEAN
add esp, 4
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangBooleantoStringRETURN
mov dword ebx, 0
mov dword eax, ebx
jmp javalangBooleantoStringRETURN
javalangBooleantoStringRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangBooleanBooleanBOOLEAN
javalangBooleanBooleanBOOLEAN:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 16]
mov dword esi, eax
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword ecx, 4
mov dword eax, edi
add eax, ecx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, esi
mov dword [eax], edx
mov dword ebx, 0
mov dword eax, ebx
jmp javalangBooleanBooleanBOOLEANRETURN
javalangBooleanBooleanBOOLEANRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangBooleanBoolean
javalangBooleanBoolean:
push dword ebp
mov dword ebp, esp
sub esp, 4*0
push dword ebx
push dword edi
push dword esi
mov dword ebx, 0
mov dword eax, ebx
jmp javalangBooleanBooleanRETURN
javalangBooleanBooleanRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global TestCollisionResolution3
TestCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz DSZzMhroai
jmp lEWLpABDOb
DSZzMhroai:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangObjecttoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp TestCollisionResolution3RETURN
lEWLpABDOb:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz TNitcvsWEP
jmp XIHBDpjTWk
TNitcvsWEP:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 12]
push dword edi
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp TestCollisionResolution3RETURN
XIHBDpjTWk:
TestCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioOutputStreamCollisionResolution3
javaioOutputStreamCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz vDkzXGWvXh
jmp jnMTwunLYs
vDkzXGWvXh:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangObjecttoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javaioOutputStreamCollisionResolution3RETURN
jnMTwunLYs:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz EINGVHVJkr
jmp VqSSWkNJXF
EINGVHVJkr:
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp + 12]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 16]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword [ebp - 12]
push dword esi
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javaioOutputStreamCollisionResolution3RETURN
VqSSWkNJXF:
javaioOutputStreamCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javaioPrintStreamCollisionResolution54
javaioPrintStreamCollisionResolution54:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 23
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz WyNqgXProX
jmp asFADEKKUs
WyNqgXProX:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword ebx
push dword edi
call javaioOutputStreamwriteCHAR
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javaioPrintStreamCollisionResolution54RETURN
asFADEKKUs:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 41
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz IkcNVladzF
jmp YithgLblhS
IkcNVladzF:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword esi, eax
mov dword eax, [ebp + 20]
mov dword [ebp - 12], eax
push dword eax
push dword ecx
push dword edx
push dword [ebp - 12]
push dword esi
push dword ebx
call javaioPrintStreamprintBOOLEAN
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javaioPrintStreamCollisionResolution54RETURN
YithgLblhS:
javaioPrintStreamCollisionResolution54RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangBooleanCollisionResolution3
javalangBooleanCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz WhNHWxnstS
jmp GwlpSFqdyt
WhNHWxnstS:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
call javalangBooleantoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangBooleanCollisionResolution3RETURN
GwlpSFqdyt:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz OLMHDxQUiN
jmp bJSslqnphk
OLMHDxQUiN:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword esi, eax
mov dword eax, [ebp + 16]
mov dword [ebp - 12], eax
push dword eax
push dword ecx
push dword edx
push dword [ebp - 12]
push dword esi
push dword edi
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangBooleanCollisionResolution3RETURN
bJSslqnphk:
javalangBooleanCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangByteCollisionResolution3
javalangByteCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz XjsKlkwIee
jmp RKGADbzSOd
XjsKlkwIee:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangBytetoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangByteCollisionResolution3RETURN
RKGADbzSOd:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz wkNjJKgmZu
jmp XYWkBjjtYv
wkNjJKgmZu:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 12]
push dword edi
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangByteCollisionResolution3RETURN
XYWkBjjtYv:
javalangByteCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangCharacterCollisionResolution3
javalangCharacterCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz SsSBgmuSOp
jmp BCFfwlhRNA
SsSBgmuSOp:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
call javalangCharactertoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangCharacterCollisionResolution3RETURN
BCFfwlhRNA:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz ESsRqCcIhc
jmp vFGavJGqbO
ESsRqCcIhc:
mov dword eax, [ebp + 8]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword edi
push dword [ebp - 12]
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangCharacterCollisionResolution3RETURN
vFGavJGqbO:
javalangCharacterCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangClassCollisionResolution3
javalangClassCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz BLyvYYmvvV
jmp ZeyXniWKUR
BLyvYYmvvV:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangObjecttoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangClassCollisionResolution3RETURN
ZeyXniWKUR:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz RktoJuboqq
jmp qaaQLeYTKh
RktoJuboqq:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword esi, eax
mov dword eax, [ebp + 16]
mov dword [ebp - 12], eax
push dword eax
push dword ecx
push dword edx
push dword [ebp - 12]
push dword esi
push dword edi
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangClassCollisionResolution3RETURN
qaaQLeYTKh:
javalangClassCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangIntegerCollisionResolution3
javalangIntegerCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz EAEBFEysVe
jmp QhGHqPixRw
EAEBFEysVe:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
call javalangIntegertoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangIntegerCollisionResolution3RETURN
QhGHqPixRw:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz oKsztUaFDu
jmp QNpVeCdZeX
oKsztUaFDu:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 12]
push dword edi
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangIntegerCollisionResolution3RETURN
QNpVeCdZeX:
javalangIntegerCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangIntegerCollisionResolution13
javalangIntegerCollisionResolution13:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword esi, 4
mov dword eax, edi
cmp eax, esi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz LroejlGHZB
jmp mGKHekWVfY
LroejlGHZB:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangObjectgetClass
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangIntegerCollisionResolution13RETURN
mGKHekWVfY:
mov dword eax, [ebp + 12]
mov dword ebx, eax
mov dword [ebp - 12], 27
mov dword eax, ebx
cmp eax, [ebp - 12]
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz apCqSHfppU
jmp eBolsqDTNH
apCqSHfppU:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
call javalangIntegerintValue
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangIntegerCollisionResolution13RETURN
eBolsqDTNH:
javalangIntegerCollisionResolution13RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangObjectCollisionResolution3
javalangObjectCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz pkNhffqeJh
jmp MngwqtLCLG
pkNhffqeJh:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
call javalangObjecttoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangObjectCollisionResolution3RETURN
MngwqtLCLG:
mov dword eax, [ebp + 12]
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz MnJzneaufy
jmp sRPIkXraoD
MnJzneaufy:
mov dword eax, [ebp + 8]
mov dword esi, eax
mov dword eax, [ebp + 12]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 16]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword [ebp - 12]
push dword esi
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangObjectCollisionResolution3RETURN
sRPIkXraoD:
javalangObjectCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangShortCollisionResolution3
javalangShortCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz SnpWtWzQbw
jmp pjzlTeXgBr
SnpWtWzQbw:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangShorttoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangShortCollisionResolution3RETURN
pjzlTeXgBr:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz hZkvoSLshv
jmp ctRaYYquuh
hZkvoSLshv:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 12]
push dword edi
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangShortCollisionResolution3RETURN
ctRaYYquuh:
javalangShortCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangShortCollisionResolution13
javalangShortCollisionResolution13:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz OGFYixujaV
jmp IPsVaGlqpr
OGFYixujaV:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword [ebp - 12], eax
push dword eax
push dword ecx
push dword edx
push dword [ebp - 12]
push dword ebx
call javalangObjectgetClass
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangShortCollisionResolution13RETURN
IPsVaGlqpr:
mov dword eax, [ebp + 12]
mov dword ebx, eax
mov dword esi, 27
mov dword eax, ebx
cmp eax, esi
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz pGbGZxVDbH
jmp ubIFhWzcbA
pGbGZxVDbH:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangShortintValue
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangShortCollisionResolution13RETURN
ubIFhWzcbA:
javalangShortCollisionResolution13RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringCollisionResolution4
javalangStringCollisionResolution4:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 2
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz llFvPhSEzz
jmp qMJMkVPNKE
llFvPhSEzz:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
call javalangStringhashCode
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringCollisionResolution4RETURN
qMJMkVPNKE:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 18
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz UfEkjXLvnd
jmp VSJrxKCOSy
UfEkjXLvnd:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword esi, eax
mov dword eax, [ebp + 16]
mov dword [ebp - 12], eax
push dword eax
push dword ecx
push dword edx
push dword [ebp - 12]
push dword esi
push dword edi
call javalangStringcompareTojavalangString
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringCollisionResolution4RETURN
VSJrxKCOSy:
javalangStringCollisionResolution4RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringCollisionResolution19
javalangStringCollisionResolution19:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz VyloaYLGip
jmp MnOgrOaauX
VyloaYLGip:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangStringtoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringCollisionResolution19RETURN
MnOgrOaauX:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz JIDwaakiOc
jmp AvNpqfxFco
JIDwaakiOc:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 12]
push dword edi
call javalangStringequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringCollisionResolution19RETURN
AvNpqfxFco:
javalangStringCollisionResolution19RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringCollisionResolution25
javalangStringCollisionResolution25:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 5
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz TUhmMJQLYd
jmp VatKUEspHN
TUhmMJQLYd:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangStringlength
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringCollisionResolution25RETURN
VatKUEspHN:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 6
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz QofxLKzrKh
jmp HIQwgxTojq
QofxLKzrKh:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 16]
mov dword esi, eax
push dword eax
push dword ecx
push dword edx
push dword esi
push dword [ebp - 12]
push dword edi
call javalangStringcharAtINT
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringCollisionResolution25RETURN
HIQwgxTojq:
javalangStringCollisionResolution25RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangStringCollisionResolution29
javalangStringCollisionResolution29:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz jGfKWMggNN
jmp EDhECEwmYY
jGfKWMggNN:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangObjectgetClass
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringCollisionResolution29RETURN
EDhECEwmYY:
mov dword eax, [ebp + 12]
mov dword esi, eax
mov dword [ebp - 12], 16
mov dword eax, esi
cmp eax, [ebp - 12]
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz vTjVdHbVQt
jmp zlGWtYjUnl
vTjVdHbVQt:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword ebx, eax
push dword eax
push dword ecx
push dword edx
push dword ebx
push dword edi
call javalangStringtrim
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangStringCollisionResolution29RETURN
zlGWtYjUnl:
javalangStringCollisionResolution29RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javalangSystemCollisionResolution3
javalangSystemCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz xOZHruxllj
jmp MkZTkoyobo
xOZHruxllj:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
call javalangObjecttoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangSystemCollisionResolution3RETURN
MkZTkoyobo:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz XGwAZqiWRl
jmp kXgYoCZpSE
XGwAZqiWRl:
mov dword eax, [ebp + 8]
mov dword [ebp - 12], eax
mov dword eax, [ebp + 12]
mov dword esi, eax
mov dword eax, [ebp + 16]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword esi
push dword [ebp - 12]
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javalangSystemCollisionResolution3RETURN
kXgYoCZpSE:
javalangSystemCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global javautilArraysCollisionResolution3
javautilArraysCollisionResolution3:
push dword ebp
mov dword ebp, esp
sub esp, 4*3
push dword ebx
push dword edi
push dword esi
mov dword eax, [ebp + 12]
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
cmp eax, edi
mov dword [ebp - 4], 0
sete [ebp - 4]
mov dword eax, [ebp - 4]
test eax, [ebp - 4]
jnz RkSTuDFEYA
jmp NKZpNQWsvC
RkSTuDFEYA:
mov dword eax, [ebp + 8]
mov dword ebx, eax
mov dword eax, [ebp + 12]
mov dword edi, eax
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
call javalangObjecttoString
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javautilArraysCollisionResolution3RETURN
NKZpNQWsvC:
mov dword eax, [ebp + 12]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
cmp eax, ebx
mov dword [ebp - 8], 0
sete [ebp - 8]
mov dword eax, [ebp - 8]
test eax, [ebp - 8]
jnz KfEbfFaEop
jmp CbMNDHZxms
KfEbfFaEop:
mov dword eax, [ebp + 8]
mov dword edi, eax
mov dword eax, [ebp + 12]
mov dword esi, eax
mov dword eax, [ebp + 16]
mov dword [ebp - 12], eax
push dword eax
push dword ecx
push dword edx
push dword [ebp - 12]
push dword esi
push dword edi
call javalangObjectequalsjavalangObject
add esp, 12
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
jmp javautilArraysCollisionResolution3RETURN
CbMNDHZxms:
javautilArraysCollisionResolution3RETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global start
start:
push dword ebp
mov dword ebp, esp
sub esp, 4*1
push dword ebx
push dword edi
push dword esi
mov dword ebx, 1024
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 8], eax
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 24
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 28
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 32
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 36
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 40
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 44
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 48
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 52
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 60
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 64
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 68
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 72
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 76
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 80
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 84
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 88
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 92
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 96
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 100
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 104
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 108
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 112
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 116
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 120
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 124
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 128
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 132
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 136
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 140
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 144
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 148
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 152
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 156
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 160
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 164
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 168
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 172
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 176
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 180
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 184
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 188
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 192
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 196
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 200
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 204
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 208
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 212
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 216
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 220
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 224
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 228
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 232
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 236
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 240
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 244
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 248
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 252
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 256
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 260
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 264
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 268
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 272
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 276
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 280
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 284
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 288
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 292
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 296
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 300
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 304
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 308
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 312
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 316
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 320
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 324
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 328
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 332
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 336
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 340
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 344
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 348
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 352
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 356
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 360
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 364
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 368
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 372
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 376
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 380
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 384
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 388
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 392
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 396
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 400
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 404
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 408
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 412
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 416
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 420
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 424
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 428
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 432
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 436
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 440
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 444
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 448
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 452
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 456
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 460
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 464
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 468
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 472
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 476
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 480
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 484
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 488
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 492
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 496
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 500
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 504
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 508
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 512
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 516
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 520
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 524
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 528
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 532
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 536
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 540
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 544
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 548
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 552
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 556
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 560
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 564
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 568
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 572
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 576
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 580
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 584
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 588
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 592
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 596
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 600
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 604
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 608
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 612
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 616
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 620
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 624
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 628
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 632
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 636
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 640
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 644
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 648
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 652
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 656
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 660
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 664
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 668
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 672
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 676
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 680
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 684
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 688
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 692
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 696
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 700
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 704
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 708
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 712
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 716
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 720
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 724
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 728
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 732
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 736
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 740
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 744
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 748
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 752
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 756
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 760
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 764
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 768
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 772
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 776
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 780
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 784
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 788
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 792
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 796
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 800
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 804
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 808
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 812
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 816
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 820
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 824
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 828
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 832
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 836
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 840
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 844
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 848
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 852
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 856
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 860
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 864
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 868
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 872
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 876
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 880
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 884
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 888
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 892
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 896
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 900
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 904
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 908
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 912
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 916
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 920
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 924
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 928
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 932
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 936
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 940
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 944
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 948
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 952
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 956
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 960
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 1
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 964
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 968
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 972
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 976
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 980
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 984
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 988
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 992
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 996
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 1000
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 1004
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 1008
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 1012
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword edi, eax
mov dword ebx, 1016
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 0
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 8]
mov dword ebx, eax
mov dword edi, 1020
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword ebx, 28
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 12], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 16], eax
mov dword eax, [staticvar + 12]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 16]
mov dword [eax], edx
mov dword eax, [staticvar + 12]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 11
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 16]
mov dword ebx, eax
mov dword edi, 15
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 12]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecttoString
mov dword [eax], edx
mov dword eax, [staticvar + 12]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 12]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 12]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 12]
mov dword ebx, eax
mov dword edi, 24
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 16]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 16]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, TestCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 16]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 16]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword ebx, 40
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 20], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 24], eax
mov dword eax, [staticvar + 20]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 24]
mov dword [eax], edx
mov dword eax, [staticvar + 20]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 5
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 24]
mov dword edi, eax
mov dword ebx, 15
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 20]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecttoString
mov dword [eax], edx
mov dword eax, [staticvar + 20]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 20]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 20]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 20]
mov dword ebx, eax
mov dword edi, 24
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 20]
mov dword ebx, eax
mov dword edi, 28
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamwriteCHAR
mov dword [eax], edx
mov dword eax, [staticvar + 20]
mov dword ebx, eax
mov dword edi, 32
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamflush
mov dword [eax], edx
mov dword eax, [staticvar + 20]
mov dword ebx, eax
mov dword edi, 36
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamwriteINT
mov dword [eax], edx
mov dword eax, [staticvar + 24]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 24]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 24]
mov dword edi, eax
mov dword ebx, 20
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 24]
mov dword ebx, eax
mov dword edi, 28
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamwriteCHAR
mov dword [eax], edx
mov dword eax, [staticvar + 24]
mov dword edi, eax
mov dword ebx, 48
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamflush
mov dword [eax], edx
mov dword eax, [staticvar + 24]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 24]
mov dword ebx, eax
mov dword edi, 64
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamwriteINT
mov dword [eax], edx
mov dword ebx, 100
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 28], eax
mov dword ebx, 260
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 32], eax
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 32]
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword ebx, eax
mov dword edi, 63
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecttoString
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 24
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 28
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamwriteCHAR
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 32
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamflush
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 36
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamwriteINT
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 40
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintjavalangString
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 44
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnSHORT
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 48
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 52
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnBOOLEAN
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnCHAR
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 60
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintBYTE
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 64
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintln
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 68
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnjavalangString
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 72
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnINT
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 76
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintSHORT
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 80
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 84
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintBOOLEAN
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword ebx, eax
mov dword edi, 88
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintINT
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 92
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnBYTE
mov dword [eax], edx
mov dword eax, [staticvar + 28]
mov dword edi, eax
mov dword ebx, 96
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintCHAR
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 44
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintSHORT
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 52
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnSHORT
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 68
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintln
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 80
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 100
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnBYTE
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 108
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintBYTE
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 112
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamflush
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 120
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 140
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword ebx, eax
mov dword edi, 144
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 148
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 152
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword ebx, eax
mov dword edi, 156
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnCHAR
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword ebx, eax
mov dword edi, 164
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintCHAR
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 192
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioOutputStreamwriteINT
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 208
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecttoString
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 216
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnjavalangString
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 220
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamCollisionResolution54
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 224
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintjavalangString
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 228
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnBOOLEAN
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 248
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintINT
mov dword [eax], edx
mov dword eax, [staticvar + 32]
mov dword edi, eax
mov dword ebx, 256
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javaioPrintStreamprintlnINT
mov dword [eax], edx
mov dword ebx, 28
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 36], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 40], eax
mov dword eax, [staticvar + 36]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 40]
mov dword [eax], edx
mov dword eax, [staticvar + 36]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 15
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 40]
mov dword ebx, eax
mov dword edi, 15
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 36]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangBooleantoString
mov dword [eax], edx
mov dword eax, [staticvar + 36]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 36]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 36]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 36]
mov dword ebx, eax
mov dword edi, 24
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 40]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 40]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangBooleanCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 40]
mov dword edi, eax
mov dword ebx, 20
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 40]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword ebx, 28
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 44], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 48], eax
mov dword eax, [staticvar + 44]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 48]
mov dword [eax], edx
mov dword eax, [staticvar + 44]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 10
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 48]
mov dword ebx, eax
mov dword edi, 15
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 44]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangBytetoString
mov dword [eax], edx
mov dword eax, [staticvar + 44]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 44]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 44]
mov dword edi, eax
mov dword ebx, 20
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 44]
mov dword edi, eax
mov dword ebx, 24
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 48]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 48]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangByteCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 48]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 48]
mov dword edi, eax
mov dword ebx, 56
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword ebx, 28
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 52], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 56], eax
mov dword eax, [staticvar + 52]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 56]
mov dword [eax], edx
mov dword eax, [staticvar + 52]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 3
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 56]
mov dword edi, eax
mov dword ebx, 15
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 52]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangCharactertoString
mov dword [eax], edx
mov dword eax, [staticvar + 52]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 52]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 52]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 52]
mov dword ebx, eax
mov dword edi, 24
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 56]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 56]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangCharacterCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 56]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 56]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword ebx, 28
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 60], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 64], eax
mov dword eax, [staticvar + 60]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 64]
mov dword [eax], edx
mov dword eax, [staticvar + 60]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 1
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 64]
mov dword edi, eax
mov dword ebx, 15
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 60]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecttoString
mov dword [eax], edx
mov dword eax, [staticvar + 60]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 60]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 60]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 60]
mov dword edi, eax
mov dword ebx, 24
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 64]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 64]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangClassCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 64]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 64]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword ebx, 32
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 68], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 72], eax
mov dword eax, [staticvar + 68]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 72]
mov dword [eax], edx
mov dword eax, [staticvar + 68]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 72]
mov dword ebx, eax
mov dword edi, 15
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 68]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangIntegertoString
mov dword [eax], edx
mov dword eax, [staticvar + 68]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 68]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 68]
mov dword edi, eax
mov dword ebx, 20
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 68]
mov dword ebx, eax
mov dword edi, 24
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 68]
mov dword ebx, eax
mov dword edi, 28
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangIntegerintValue
mov dword [eax], edx
mov dword eax, [staticvar + 72]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 72]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangIntegerCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 72]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 72]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangIntegerCollisionResolution13
mov dword [eax], edx
mov dword ebx, 28
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 0], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 76], eax
mov dword eax, [staticvar + 0]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 76]
mov dword [eax], edx
mov dword eax, [staticvar + 0]
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 0
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 76]
mov dword ebx, eax
mov dword edi, 15
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 0]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecttoString
mov dword [eax], edx
mov dword eax, [staticvar + 0]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 0]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 0]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 0]
mov dword ebx, eax
mov dword edi, 24
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 76]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 76]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 76]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 76]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword ebx, 32
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 80], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 84], eax
mov dword eax, [staticvar + 80]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 84]
mov dword [eax], edx
mov dword eax, [staticvar + 80]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 14
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 84]
mov dword ebx, eax
mov dword edi, 15
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 80]
mov dword ebx, eax
mov dword edi, 8
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangShorttoString
mov dword [eax], edx
mov dword eax, [staticvar + 80]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 80]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 80]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 80]
mov dword ebx, eax
mov dword edi, 24
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 80]
mov dword edi, eax
mov dword ebx, 28
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangShortintValue
mov dword [eax], edx
mov dword eax, [staticvar + 84]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 84]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangShortCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 84]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 84]
mov dword edi, eax
mov dword ebx, 56
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangShortCollisionResolution13
mov dword [eax], edx
mov dword ebx, 64
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 4], eax
mov dword ebx, 132
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 88], eax
mov dword eax, [staticvar + 4]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 88]
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 2
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword ebx, eax
mov dword edi, 31
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringtoString
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringhashCode
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 20
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 24
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword ebx, eax
mov dword edi, 28
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringlength
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 32
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringsubstringINTINT
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 36
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringtrim
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 40
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringcompareTojavalangString
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 44
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringcompareTojavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 48
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringconcatjavalangString
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 52
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringtoCharArray
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword ebx, eax
mov dword edi, 56
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringindexOfjavalangString
mov dword [eax], edx
mov dword eax, [staticvar + 4]
mov dword edi, eax
mov dword ebx, 60
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringcharAtINT
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword edi, eax
mov dword ebx, 20
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringCollisionResolution4
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword ebx, eax
mov dword edi, 68
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringconcatjavalangString
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword ebx, eax
mov dword edi, 72
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringsubstringINTINT
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword ebx, eax
mov dword edi, 76
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringcompareTojavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword edi, eax
mov dword ebx, 80
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringCollisionResolution19
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword edi, eax
mov dword ebx, 96
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringtoCharArray
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword edi, eax
mov dword ebx, 104
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringCollisionResolution25
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword edi, eax
mov dword ebx, 112
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringindexOfjavalangString
mov dword [eax], edx
mov dword eax, [staticvar + 88]
mov dword edi, eax
mov dword ebx, 120
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangStringCollisionResolution29
mov dword [eax], edx
mov dword ebx, 28
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 92], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 96], eax
mov dword eax, [staticvar + 92]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 96]
mov dword [eax], edx
mov dword eax, [staticvar + 92]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword edi, eax
mov dword ebx, 6
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 96]
mov dword edi, eax
mov dword ebx, 15
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 92]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecttoString
mov dword [eax], edx
mov dword eax, [staticvar + 92]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 92]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 92]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 92]
mov dword ebx, eax
mov dword edi, 24
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 96]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 96]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangSystemCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 96]
mov dword edi, eax
mov dword ebx, 20
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 96]
mov dword edi, eax
mov dword ebx, 56
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword ebx, 28
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 100], eax
mov dword ebx, 68
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword [staticvar + 104], eax
mov dword eax, [staticvar + 100]
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 104]
mov dword [eax], edx
mov dword eax, [staticvar + 100]
mov dword edi, eax
mov dword ebx, 4
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword edi, 4
mov dword eax, ebx
mov dword edx, edi
mov dword [eax], edx
mov dword eax, [staticvar + 104]
mov dword edi, eax
mov dword ebx, 15
mov dword eax, edi
mov dword edx, ebx
mov dword [eax], edx
mov dword eax, [staticvar + 100]
mov dword edi, eax
mov dword ebx, 8
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecttoString
mov dword [eax], edx
mov dword eax, [staticvar + 100]
mov dword edi, eax
mov dword ebx, 12
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 100]
mov dword edi, eax
mov dword ebx, 16
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 100]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword eax, [staticvar + 100]
mov dword edi, eax
mov dword ebx, 24
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectequalsjavalangObject
mov dword [eax], edx
mov dword eax, [staticvar + 104]
mov dword ebx, eax
mov dword edi, 12
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectclone
mov dword [eax], edx
mov dword eax, [staticvar + 104]
mov dword ebx, eax
mov dword edi, 16
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javautilArraysCollisionResolution3
mov dword [eax], edx
mov dword eax, [staticvar + 104]
mov dword ebx, eax
mov dword edi, 20
mov dword eax, ebx
add eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjecthashCode
mov dword [eax], edx
mov dword eax, [staticvar + 104]
mov dword edi, eax
mov dword ebx, 56
mov dword eax, edi
add eax, ebx
mov dword edi, eax
mov dword eax, edi
mov dword ebx, eax
mov dword eax, ebx
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, javalangObjectgetClass
mov dword [eax], edx
mov dword ebx, 4
push dword eax
push dword ecx
push dword edx
mov dword eax, ebx
call __malloc
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, ebx
mov dword esi, eax
mov dword eax, esi
mov dword ebx, eax
mov dword eax, ebx
mov dword edx, [staticvar + 28]
mov dword [eax], edx
mov dword eax, [ebp - 4]
mov dword ebx, eax
mov dword eax, esi
mov dword [ebp - 4], eax
mov dword eax, ebx
mov dword [ebp - 4], eax
mov dword eax, esi
mov dword ebx, eax
mov dword edi, 0
push dword eax
push dword ecx
push dword edx
push dword edi
push dword ebx
call javaioPrintStreamPrintStream
add esp, 8
pop edx
pop ecx
mov dword ebx, eax
mov dword eax, ebx
pop eax
mov dword eax, esi
mov dword [staticvar + 108], eax
mov dword ebx, 2147483647
mov dword eax, ebx
mov dword [staticvar + 112], eax
mov dword ecx, 127
mov dword ebx, 255
mov dword eax, ecx
and eax, ebx
mov dword ecx, eax
mov dword eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword [staticvar + 116], eax
mov dword ecx, 127
mov dword ebx, 255
mov dword eax, ecx
and eax, ebx
mov dword ecx, eax
mov dword eax, ecx
mov dword ebx, eax
mov dword eax, ebx
mov dword [staticvar + 120], eax
mov dword ebx, 0
mov dword eax, ebx
jmp startRETURN
startRETURN:
pop esi
pop edi
pop ebx
mov dword esp, ebp
pop ebp
ret
global _start
_start:
extern __exception
extern __malloc
extern NATIVEjava.io.OutputStream.nativeWrite
call start
call Testtest
mov ebx, eax
mov eax, 1
int 0x80
