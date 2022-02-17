
foo_new:     file format elf64-x86-64


Disassembly of section .text:

0000000000201780 <_start>:
  201780:	31 ed                	xor    %ebp,%ebp
  201782:	49 89 d1             	mov    %rdx,%r9
  201785:	5e                   	pop    %rsi
  201786:	48 89 e2             	mov    %rsp,%rdx
  201789:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  20178d:	50                   	push   %rax
  20178e:	54                   	push   %rsp
  20178f:	4c 8d 05 4a 01 00 00 	lea    0x14a(%rip),%r8        # 2018e0 <__libc_csu_fini>
  201796:	48 8d 0d d3 00 00 00 	lea    0xd3(%rip),%rcx        # 201870 <__libc_csu_init>
  20179d:	48 8d 3d 5c 01 00 00 	lea    0x15c(%rip),%rdi        # 201900 <main>
  2017a4:	ff 15 c6 13 00 00    	callq  *0x13c6(%rip)        # 202b70 <__libc_start_main@GLIBC_2.2.5>
  2017aa:	f4                   	hlt    
  2017ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000002017b0 <_dl_relocate_static_pie>:
  2017b0:	f3 c3                	repz retq 
  2017b2:	cc                   	int3   
  2017b3:	cc                   	int3   
  2017b4:	cc                   	int3   
  2017b5:	cc                   	int3   
  2017b6:	cc                   	int3   
  2017b7:	cc                   	int3   
  2017b8:	cc                   	int3   
  2017b9:	cc                   	int3   
  2017ba:	cc                   	int3   
  2017bb:	cc                   	int3   
  2017bc:	cc                   	int3   
  2017bd:	cc                   	int3   
  2017be:	cc                   	int3   
  2017bf:	cc                   	int3   

00000000002017c0 <deregister_tm_clones>:
  2017c0:	55                   	push   %rbp
  2017c1:	b8 40 3c 20 00       	mov    $0x203c40,%eax
  2017c6:	48 3d 40 3c 20 00    	cmp    $0x203c40,%rax
  2017cc:	48 89 e5             	mov    %rsp,%rbp
  2017cf:	74 17                	je     2017e8 <deregister_tm_clones+0x28>
  2017d1:	b8 00 00 00 00       	mov    $0x0,%eax
  2017d6:	48 85 c0             	test   %rax,%rax
  2017d9:	74 0d                	je     2017e8 <deregister_tm_clones+0x28>
  2017db:	5d                   	pop    %rbp
  2017dc:	bf 40 3c 20 00       	mov    $0x203c40,%edi
  2017e1:	ff e0                	jmpq   *%rax
  2017e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  2017e8:	5d                   	pop    %rbp
  2017e9:	c3                   	retq   
  2017ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000002017f0 <register_tm_clones>:
  2017f0:	be 40 3c 20 00       	mov    $0x203c40,%esi
  2017f5:	55                   	push   %rbp
  2017f6:	48 81 ee 40 3c 20 00 	sub    $0x203c40,%rsi
  2017fd:	48 89 e5             	mov    %rsp,%rbp
  201800:	48 c1 fe 03          	sar    $0x3,%rsi
  201804:	48 89 f0             	mov    %rsi,%rax
  201807:	48 c1 e8 3f          	shr    $0x3f,%rax
  20180b:	48 01 c6             	add    %rax,%rsi
  20180e:	48 d1 fe             	sar    %rsi
  201811:	74 15                	je     201828 <register_tm_clones+0x38>
  201813:	b8 00 00 00 00       	mov    $0x0,%eax
  201818:	48 85 c0             	test   %rax,%rax
  20181b:	74 0b                	je     201828 <register_tm_clones+0x38>
  20181d:	5d                   	pop    %rbp
  20181e:	bf 40 3c 20 00       	mov    $0x203c40,%edi
  201823:	ff e0                	jmpq   *%rax
  201825:	0f 1f 00             	nopl   (%rax)
  201828:	5d                   	pop    %rbp
  201829:	c3                   	retq   
  20182a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000201830 <__do_global_dtors_aux>:
  201830:	80 3d 29 24 00 00 00 	cmpb   $0x0,0x2429(%rip)        # 203c60 <completed.7698>
  201837:	75 17                	jne    201850 <__do_global_dtors_aux+0x20>
  201839:	55                   	push   %rbp
  20183a:	48 89 e5             	mov    %rsp,%rbp
  20183d:	e8 7e ff ff ff       	callq  2017c0 <deregister_tm_clones>
  201842:	c6 05 17 24 00 00 01 	movb   $0x1,0x2417(%rip)        # 203c60 <completed.7698>
  201849:	5d                   	pop    %rbp
  20184a:	c3                   	retq   
  20184b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  201850:	f3 c3                	repz retq 
  201852:	0f 1f 40 00          	nopl   0x0(%rax)
  201856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  20185d:	00 00 00 

0000000000201860 <frame_dummy>:
  201860:	55                   	push   %rbp
  201861:	48 89 e5             	mov    %rsp,%rbp
  201864:	5d                   	pop    %rbp
  201865:	eb 89                	jmp    2017f0 <register_tm_clones>
  201867:	cc                   	int3   
  201868:	cc                   	int3   
  201869:	cc                   	int3   
  20186a:	cc                   	int3   
  20186b:	cc                   	int3   
  20186c:	cc                   	int3   
  20186d:	cc                   	int3   
  20186e:	cc                   	int3   
  20186f:	cc                   	int3   

0000000000201870 <__libc_csu_init>:
  201870:	41 57                	push   %r15
  201872:	41 56                	push   %r14
  201874:	49 89 d7             	mov    %rdx,%r15
  201877:	41 55                	push   %r13
  201879:	41 54                	push   %r12
  20187b:	4c 8d 25 36 11 00 00 	lea    0x1136(%rip),%r12        # 2029b8 <__frame_dummy_init_array_entry>
  201882:	55                   	push   %rbp
  201883:	48 8d 2d 36 11 00 00 	lea    0x1136(%rip),%rbp        # 2029c0 <__init_array_end>
  20188a:	53                   	push   %rbx
  20188b:	41 89 fd             	mov    %edi,%r13d
  20188e:	49 89 f6             	mov    %rsi,%r14
  201891:	4c 29 e5             	sub    %r12,%rbp
  201894:	48 83 ec 08          	sub    $0x8,%rsp
  201898:	48 c1 fd 03          	sar    $0x3,%rbp
  20189c:	e8 c7 00 00 00       	callq  201968 <_init>
  2018a1:	48 85 ed             	test   %rbp,%rbp
  2018a4:	74 20                	je     2018c6 <__libc_csu_init+0x56>
  2018a6:	31 db                	xor    %ebx,%ebx
  2018a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  2018af:	00 
  2018b0:	4c 89 fa             	mov    %r15,%rdx
  2018b3:	4c 89 f6             	mov    %r14,%rsi
  2018b6:	44 89 ef             	mov    %r13d,%edi
  2018b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  2018bd:	48 83 c3 01          	add    $0x1,%rbx
  2018c1:	48 39 dd             	cmp    %rbx,%rbp
  2018c4:	75 ea                	jne    2018b0 <__libc_csu_init+0x40>
  2018c6:	48 83 c4 08          	add    $0x8,%rsp
  2018ca:	5b                   	pop    %rbx
  2018cb:	5d                   	pop    %rbp
  2018cc:	41 5c                	pop    %r12
  2018ce:	41 5d                	pop    %r13
  2018d0:	41 5e                	pop    %r14
  2018d2:	41 5f                	pop    %r15
  2018d4:	c3                   	retq   
  2018d5:	90                   	nop
  2018d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  2018dd:	00 00 00 

00000000002018e0 <__libc_csu_fini>:
  2018e0:	f3 c3                	repz retq 
  2018e2:	cc                   	int3   
  2018e3:	cc                   	int3   
  2018e4:	cc                   	int3   
  2018e5:	cc                   	int3   
  2018e6:	cc                   	int3   
  2018e7:	cc                   	int3   
  2018e8:	cc                   	int3   
  2018e9:	cc                   	int3   
  2018ea:	cc                   	int3   
  2018eb:	cc                   	int3   
  2018ec:	cc                   	int3   
  2018ed:	cc                   	int3   
  2018ee:	cc                   	int3   
  2018ef:	cc                   	int3   

00000000002018f0 <_Z3barP4Base>:
  2018f0:	48 8b 07             	mov    (%rdi),%rax
  2018f3:	ff 20                	jmpq   *(%rax)
  2018f5:	cc                   	int3   
  2018f6:	cc                   	int3   
  2018f7:	cc                   	int3   
  2018f8:	cc                   	int3   
  2018f9:	cc                   	int3   
  2018fa:	cc                   	int3   
  2018fb:	cc                   	int3   
  2018fc:	cc                   	int3   
  2018fd:	cc                   	int3   
  2018fe:	cc                   	int3   
  2018ff:	cc                   	int3   

0000000000201900 <main>:
  201900:	50                   	push   %rax
  201901:	bf 10 00 00 00       	mov    $0x10,%edi
  201906:	e8 95 00 00 00       	callq  2019a0 <_Znwm@plt>
  20190b:	0f 57 c0             	xorps  %xmm0,%xmm0
  20190e:	0f 29 00             	movaps %xmm0,(%rax)
  201911:	48 c7 00 c0 05 20 00 	movq   $0x2005c0,(%rax)
  201918:	48 89 c7             	mov    %rax,%rdi
  20191b:	58                   	pop    %rax
  20191c:	ff 25 9e ec ff ff    	jmpq   *-0x1362(%rip)        # 2005c0 <_ZTV7Derived+0x10>
  201922:	cc                   	int3   
  201923:	cc                   	int3   
  201924:	cc                   	int3   
  201925:	cc                   	int3   
  201926:	cc                   	int3   
  201927:	cc                   	int3   
  201928:	cc                   	int3   
  201929:	cc                   	int3   
  20192a:	cc                   	int3   
  20192b:	cc                   	int3   
  20192c:	cc                   	int3   
  20192d:	cc                   	int3   
  20192e:	cc                   	int3   
  20192f:	cc                   	int3   

0000000000201930 <_Z3foov>:
  201930:	50                   	push   %rax
  201931:	bf 10 00 00 00       	mov    $0x10,%edi
  201936:	e8 65 00 00 00       	callq  2019a0 <_Znwm@plt>
  20193b:	0f 57 c0             	xorps  %xmm0,%xmm0
  20193e:	0f 29 00             	movaps %xmm0,(%rax)
  201941:	48 c7 00 c0 05 20 00 	movq   $0x2005c0,(%rax)
  201948:	48 89 c7             	mov    %rax,%rdi
  20194b:	58                   	pop    %rax
  20194c:	ff 25 6e ec ff ff    	jmpq   *-0x1392(%rip)        # 2005c0 <_ZTV7Derived+0x10>
  201952:	cc                   	int3   
  201953:	cc                   	int3   
  201954:	cc                   	int3   
  201955:	cc                   	int3   
  201956:	cc                   	int3   
  201957:	cc                   	int3   
  201958:	cc                   	int3   
  201959:	cc                   	int3   
  20195a:	cc                   	int3   
  20195b:	cc                   	int3   
  20195c:	cc                   	int3   
  20195d:	cc                   	int3   
  20195e:	cc                   	int3   
  20195f:	cc                   	int3   

0000000000201960 <_ZN7Derived3getEv>:
  201960:	b8 64 00 00 00       	mov    $0x64,%eax
  201965:	c3                   	retq   

Disassembly of section .init:

0000000000201968 <_init>:
  201968:	48 83 ec 08          	sub    $0x8,%rsp
  20196c:	48 8b 05 05 12 00 00 	mov    0x1205(%rip),%rax        # 202b78 <__gmon_start__@Base>
  201973:	48 85 c0             	test   %rax,%rax
  201976:	74 02                	je     20197a <_init+0x12>
  201978:	ff d0                	callq  *%rax
  20197a:	48 83 c4 08          	add    $0x8,%rsp
  20197e:	c3                   	retq   

Disassembly of section .fini:

0000000000201980 <_fini>:
  201980:	48 83 ec 08          	sub    $0x8,%rsp
  201984:	48 83 c4 08          	add    $0x8,%rsp
  201988:	c3                   	retq   

Disassembly of section .plt:

0000000000201990 <_Znwm@plt-0x10>:
  201990:	ff 35 b2 22 00 00    	pushq  0x22b2(%rip)        # 203c48 <__TMC_END__+0x8>
  201996:	ff 25 b4 22 00 00    	jmpq   *0x22b4(%rip)        # 203c50 <__TMC_END__+0x10>
  20199c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000002019a0 <_Znwm@plt>:
  2019a0:	ff 25 b2 22 00 00    	jmpq   *0x22b2(%rip)        # 203c58 <_Znwm@GLIBCXX_3.4>
  2019a6:	68 00 00 00 00       	pushq  $0x0
  2019ab:	e9 e0 ff ff ff       	jmpq   201990 <_fini+0x10>
