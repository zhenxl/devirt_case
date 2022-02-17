
foo_new:     file format elf64-x86-64


Disassembly of section .text:

0000000000201870 <_start>:
  201870:	31 ed                	xor    %ebp,%ebp
  201872:	49 89 d1             	mov    %rdx,%r9
  201875:	5e                   	pop    %rsi
  201876:	48 89 e2             	mov    %rsp,%rdx
  201879:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  20187d:	50                   	push   %rax
  20187e:	54                   	push   %rsp
  20187f:	4c 8d 05 4a 01 00 00 	lea    0x14a(%rip),%r8        # 2019d0 <__libc_csu_fini>
  201886:	48 8d 0d d3 00 00 00 	lea    0xd3(%rip),%rcx        # 201960 <__libc_csu_init>
  20188d:	48 8d 3d 6c 01 00 00 	lea    0x16c(%rip),%rdi        # 201a00 <main>
  201894:	ff 15 56 14 00 00    	callq  *0x1456(%rip)        # 202cf0 <__libc_start_main@GLIBC_2.2.5>
  20189a:	f4                   	hlt    
  20189b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000002018a0 <_dl_relocate_static_pie>:
  2018a0:	f3 c3                	repz retq 
  2018a2:	cc                   	int3   
  2018a3:	cc                   	int3   
  2018a4:	cc                   	int3   
  2018a5:	cc                   	int3   
  2018a6:	cc                   	int3   
  2018a7:	cc                   	int3   
  2018a8:	cc                   	int3   
  2018a9:	cc                   	int3   
  2018aa:	cc                   	int3   
  2018ab:	cc                   	int3   
  2018ac:	cc                   	int3   
  2018ad:	cc                   	int3   
  2018ae:	cc                   	int3   
  2018af:	cc                   	int3   

00000000002018b0 <deregister_tm_clones>:
  2018b0:	55                   	push   %rbp
  2018b1:	b8 c0 3d 20 00       	mov    $0x203dc0,%eax
  2018b6:	48 3d c0 3d 20 00    	cmp    $0x203dc0,%rax
  2018bc:	48 89 e5             	mov    %rsp,%rbp
  2018bf:	74 17                	je     2018d8 <deregister_tm_clones+0x28>
  2018c1:	b8 00 00 00 00       	mov    $0x0,%eax
  2018c6:	48 85 c0             	test   %rax,%rax
  2018c9:	74 0d                	je     2018d8 <deregister_tm_clones+0x28>
  2018cb:	5d                   	pop    %rbp
  2018cc:	bf c0 3d 20 00       	mov    $0x203dc0,%edi
  2018d1:	ff e0                	jmpq   *%rax
  2018d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  2018d8:	5d                   	pop    %rbp
  2018d9:	c3                   	retq   
  2018da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000002018e0 <register_tm_clones>:
  2018e0:	be c0 3d 20 00       	mov    $0x203dc0,%esi
  2018e5:	55                   	push   %rbp
  2018e6:	48 81 ee c0 3d 20 00 	sub    $0x203dc0,%rsi
  2018ed:	48 89 e5             	mov    %rsp,%rbp
  2018f0:	48 c1 fe 03          	sar    $0x3,%rsi
  2018f4:	48 89 f0             	mov    %rsi,%rax
  2018f7:	48 c1 e8 3f          	shr    $0x3f,%rax
  2018fb:	48 01 c6             	add    %rax,%rsi
  2018fe:	48 d1 fe             	sar    %rsi
  201901:	74 15                	je     201918 <register_tm_clones+0x38>
  201903:	b8 00 00 00 00       	mov    $0x0,%eax
  201908:	48 85 c0             	test   %rax,%rax
  20190b:	74 0b                	je     201918 <register_tm_clones+0x38>
  20190d:	5d                   	pop    %rbp
  20190e:	bf c0 3d 20 00       	mov    $0x203dc0,%edi
  201913:	ff e0                	jmpq   *%rax
  201915:	0f 1f 00             	nopl   (%rax)
  201918:	5d                   	pop    %rbp
  201919:	c3                   	retq   
  20191a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000201920 <__do_global_dtors_aux>:
  201920:	80 3d c1 24 00 00 00 	cmpb   $0x0,0x24c1(%rip)        # 203de8 <completed.7698>
  201927:	75 17                	jne    201940 <__do_global_dtors_aux+0x20>
  201929:	55                   	push   %rbp
  20192a:	48 89 e5             	mov    %rsp,%rbp
  20192d:	e8 7e ff ff ff       	callq  2018b0 <deregister_tm_clones>
  201932:	c6 05 af 24 00 00 01 	movb   $0x1,0x24af(%rip)        # 203de8 <completed.7698>
  201939:	5d                   	pop    %rbp
  20193a:	c3                   	retq   
  20193b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  201940:	f3 c3                	repz retq 
  201942:	0f 1f 40 00          	nopl   0x0(%rax)
  201946:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  20194d:	00 00 00 

0000000000201950 <frame_dummy>:
  201950:	55                   	push   %rbp
  201951:	48 89 e5             	mov    %rsp,%rbp
  201954:	5d                   	pop    %rbp
  201955:	eb 89                	jmp    2018e0 <register_tm_clones>
  201957:	cc                   	int3   
  201958:	cc                   	int3   
  201959:	cc                   	int3   
  20195a:	cc                   	int3   
  20195b:	cc                   	int3   
  20195c:	cc                   	int3   
  20195d:	cc                   	int3   
  20195e:	cc                   	int3   
  20195f:	cc                   	int3   

0000000000201960 <__libc_csu_init>:
  201960:	41 57                	push   %r15
  201962:	41 56                	push   %r14
  201964:	49 89 d7             	mov    %rdx,%r15
  201967:	41 55                	push   %r13
  201969:	41 54                	push   %r12
  20196b:	4c 8d 25 c6 11 00 00 	lea    0x11c6(%rip),%r12        # 202b38 <__frame_dummy_init_array_entry>
  201972:	55                   	push   %rbp
  201973:	48 8d 2d c6 11 00 00 	lea    0x11c6(%rip),%rbp        # 202b40 <__init_array_end>
  20197a:	53                   	push   %rbx
  20197b:	41 89 fd             	mov    %edi,%r13d
  20197e:	49 89 f6             	mov    %rsi,%r14
  201981:	4c 29 e5             	sub    %r12,%rbp
  201984:	48 83 ec 08          	sub    $0x8,%rsp
  201988:	48 c1 fd 03          	sar    $0x3,%rbp
  20198c:	e8 3f 01 00 00       	callq  201ad0 <_init>
  201991:	48 85 ed             	test   %rbp,%rbp
  201994:	74 20                	je     2019b6 <__libc_csu_init+0x56>
  201996:	31 db                	xor    %ebx,%ebx
  201998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  20199f:	00 
  2019a0:	4c 89 fa             	mov    %r15,%rdx
  2019a3:	4c 89 f6             	mov    %r14,%rsi
  2019a6:	44 89 ef             	mov    %r13d,%edi
  2019a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  2019ad:	48 83 c3 01          	add    $0x1,%rbx
  2019b1:	48 39 dd             	cmp    %rbx,%rbp
  2019b4:	75 ea                	jne    2019a0 <__libc_csu_init+0x40>
  2019b6:	48 83 c4 08          	add    $0x8,%rsp
  2019ba:	5b                   	pop    %rbx
  2019bb:	5d                   	pop    %rbp
  2019bc:	41 5c                	pop    %r12
  2019be:	41 5d                	pop    %r13
  2019c0:	41 5e                	pop    %r14
  2019c2:	41 5f                	pop    %r15
  2019c4:	c3                   	retq   
  2019c5:	90                   	nop
  2019c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  2019cd:	00 00 00 

00000000002019d0 <__libc_csu_fini>:
  2019d0:	f3 c3                	repz retq 
  2019d2:	cc                   	int3   
  2019d3:	cc                   	int3   
  2019d4:	cc                   	int3   
  2019d5:	cc                   	int3   
  2019d6:	cc                   	int3   
  2019d7:	cc                   	int3   
  2019d8:	cc                   	int3   
  2019d9:	cc                   	int3   
  2019da:	cc                   	int3   
  2019db:	cc                   	int3   
  2019dc:	cc                   	int3   
  2019dd:	cc                   	int3   
  2019de:	cc                   	int3   
  2019df:	cc                   	int3   

00000000002019e0 <_Z3barP4Base>:
  2019e0:	55                   	push   %rbp
  2019e1:	48 89 e5             	mov    %rsp,%rbp
  2019e4:	48 83 ec 10          	sub    $0x10,%rsp
  2019e8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  2019ec:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  2019f0:	48 8b 07             	mov    (%rdi),%rax
  2019f3:	ff 10                	callq  *(%rax)
  2019f5:	48 83 c4 10          	add    $0x10,%rsp
  2019f9:	5d                   	pop    %rbp
  2019fa:	c3                   	retq   
  2019fb:	cc                   	int3   
  2019fc:	cc                   	int3   
  2019fd:	cc                   	int3   
  2019fe:	cc                   	int3   
  2019ff:	cc                   	int3   

0000000000201a00 <main>:
  201a00:	55                   	push   %rbp
  201a01:	48 89 e5             	mov    %rsp,%rbp
  201a04:	48 83 ec 10          	sub    $0x10,%rsp
  201a08:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  201a0f:	e8 0c 00 00 00       	callq  201a20 <_Z3foov>
  201a14:	48 83 c4 10          	add    $0x10,%rsp
  201a18:	5d                   	pop    %rbp
  201a19:	c3                   	retq   
  201a1a:	cc                   	int3   
  201a1b:	cc                   	int3   
  201a1c:	cc                   	int3   
  201a1d:	cc                   	int3   
  201a1e:	cc                   	int3   
  201a1f:	cc                   	int3   

0000000000201a20 <_Z3foov>:
  201a20:	55                   	push   %rbp
  201a21:	48 89 e5             	mov    %rsp,%rbp
  201a24:	53                   	push   %rbx
  201a25:	50                   	push   %rax
  201a26:	bf 10 00 00 00       	mov    $0x10,%edi
  201a2b:	e8 e0 00 00 00       	callq  201b10 <_Znwm@plt>
  201a30:	48 89 c3             	mov    %rax,%rbx
  201a33:	48 89 df             	mov    %rbx,%rdi
  201a36:	31 f6                	xor    %esi,%esi
  201a38:	ba 10 00 00 00       	mov    $0x10,%edx
  201a3d:	e8 de 00 00 00       	callq  201b20 <memset@plt>
  201a42:	48 89 df             	mov    %rbx,%rdi
  201a45:	e8 16 00 00 00       	callq  201a60 <_ZN7DerivedC2Ev>
  201a4a:	48 89 5d f0          	mov    %rbx,-0x10(%rbp)
  201a4e:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  201a52:	e8 89 ff ff ff       	callq  2019e0 <_Z3barP4Base>
  201a57:	48 83 c4 08          	add    $0x8,%rsp
  201a5b:	5b                   	pop    %rbx
  201a5c:	5d                   	pop    %rbp
  201a5d:	c3                   	retq   
  201a5e:	cc                   	int3   
  201a5f:	cc                   	int3   

0000000000201a60 <_ZN7DerivedC2Ev>:
  201a60:	55                   	push   %rbp
  201a61:	48 89 e5             	mov    %rsp,%rbp
  201a64:	53                   	push   %rbx
  201a65:	50                   	push   %rax
  201a66:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  201a6a:	48 8b 5d f0          	mov    -0x10(%rbp),%rbx
  201a6e:	48 89 df             	mov    %rbx,%rdi
  201a71:	e8 1a 00 00 00       	callq  201a90 <_ZN4BaseC2Ev>
  201a76:	48 b8 f0 05 20 00 00 	movabs $0x2005f0,%rax
  201a7d:	00 00 00 
  201a80:	48 83 c0 10          	add    $0x10,%rax
  201a84:	48 89 03             	mov    %rax,(%rbx)
  201a87:	48 83 c4 08          	add    $0x8,%rsp
  201a8b:	5b                   	pop    %rbx
  201a8c:	5d                   	pop    %rbp
  201a8d:	c3                   	retq   
  201a8e:	cc                   	int3   
  201a8f:	cc                   	int3   

0000000000201a90 <_ZN4BaseC2Ev>:
  201a90:	55                   	push   %rbp
  201a91:	48 89 e5             	mov    %rsp,%rbp
  201a94:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  201a98:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  201a9c:	48 b9 40 06 20 00 00 	movabs $0x200640,%rcx
  201aa3:	00 00 00 
  201aa6:	48 83 c1 10          	add    $0x10,%rcx
  201aaa:	48 89 08             	mov    %rcx,(%rax)
  201aad:	5d                   	pop    %rbp
  201aae:	c3                   	retq   
  201aaf:	cc                   	int3   

0000000000201ab0 <_ZN7Derived3getEv>:
  201ab0:	55                   	push   %rbp
  201ab1:	48 89 e5             	mov    %rsp,%rbp
  201ab4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  201ab8:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  201abd:	5d                   	pop    %rbp
  201abe:	c3                   	retq   
  201abf:	cc                   	int3   

0000000000201ac0 <_ZN4Base3getEv>:
  201ac0:	55                   	push   %rbp
  201ac1:	48 89 e5             	mov    %rsp,%rbp
  201ac4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  201ac8:	b8 64 00 00 00       	mov    $0x64,%eax
  201acd:	5d                   	pop    %rbp
  201ace:	c3                   	retq   

Disassembly of section .init:

0000000000201ad0 <_init>:
  201ad0:	48 83 ec 08          	sub    $0x8,%rsp
  201ad4:	48 8b 05 1d 12 00 00 	mov    0x121d(%rip),%rax        # 202cf8 <__gmon_start__@Base>
  201adb:	48 85 c0             	test   %rax,%rax
  201ade:	74 02                	je     201ae2 <_init+0x12>
  201ae0:	ff d0                	callq  *%rax
  201ae2:	48 83 c4 08          	add    $0x8,%rsp
  201ae6:	c3                   	retq   

Disassembly of section .fini:

0000000000201ae8 <_fini>:
  201ae8:	48 83 ec 08          	sub    $0x8,%rsp
  201aec:	48 83 c4 08          	add    $0x8,%rsp
  201af0:	c3                   	retq   

Disassembly of section .plt:

0000000000201b00 <_Znwm@plt-0x10>:
  201b00:	ff 35 c2 22 00 00    	pushq  0x22c2(%rip)        # 203dc8 <__TMC_END__+0x8>
  201b06:	ff 25 c4 22 00 00    	jmpq   *0x22c4(%rip)        # 203dd0 <__TMC_END__+0x10>
  201b0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000201b10 <_Znwm@plt>:
  201b10:	ff 25 c2 22 00 00    	jmpq   *0x22c2(%rip)        # 203dd8 <_Znwm@GLIBCXX_3.4>
  201b16:	68 00 00 00 00       	pushq  $0x0
  201b1b:	e9 e0 ff ff ff       	jmpq   201b00 <_fini+0x18>

0000000000201b20 <memset@plt>:
  201b20:	ff 25 ba 22 00 00    	jmpq   *0x22ba(%rip)        # 203de0 <memset@GLIBC_2.2.5>
  201b26:	68 01 00 00 00       	pushq  $0x1
  201b2b:	e9 d0 ff ff ff       	jmpq   201b00 <_fini+0x18>
