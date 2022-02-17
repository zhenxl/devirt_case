
foo_new:     file format elf64-x86-64


Disassembly of section .text:

0000000000201610 <_start>:
  201610:	31 ed                	xor    %ebp,%ebp
  201612:	49 89 d1             	mov    %rdx,%r9
  201615:	5e                   	pop    %rsi
  201616:	48 89 e2             	mov    %rsp,%rdx
  201619:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  20161d:	50                   	push   %rax
  20161e:	54                   	push   %rsp
  20161f:	4c 8d 05 4a 01 00 00 	lea    0x14a(%rip),%r8        # 201770 <__libc_csu_fini>
  201626:	48 8d 0d d3 00 00 00 	lea    0xd3(%rip),%rcx        # 201700 <__libc_csu_init>
  20162d:	48 8d 3d 4c 01 00 00 	lea    0x14c(%rip),%rdi        # 201780 <main>
  201634:	ff 15 76 13 00 00    	callq  *0x1376(%rip)        # 2029b0 <__libc_start_main@GLIBC_2.2.5>
  20163a:	f4                   	hlt    
  20163b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000201640 <_dl_relocate_static_pie>:
  201640:	f3 c3                	repz retq 
  201642:	cc                   	int3   
  201643:	cc                   	int3   
  201644:	cc                   	int3   
  201645:	cc                   	int3   
  201646:	cc                   	int3   
  201647:	cc                   	int3   
  201648:	cc                   	int3   
  201649:	cc                   	int3   
  20164a:	cc                   	int3   
  20164b:	cc                   	int3   
  20164c:	cc                   	int3   
  20164d:	cc                   	int3   
  20164e:	cc                   	int3   
  20164f:	cc                   	int3   

0000000000201650 <deregister_tm_clones>:
  201650:	55                   	push   %rbp
  201651:	b8 d0 39 20 00       	mov    $0x2039d0,%eax
  201656:	48 3d d0 39 20 00    	cmp    $0x2039d0,%rax
  20165c:	48 89 e5             	mov    %rsp,%rbp
  20165f:	74 17                	je     201678 <deregister_tm_clones+0x28>
  201661:	b8 00 00 00 00       	mov    $0x0,%eax
  201666:	48 85 c0             	test   %rax,%rax
  201669:	74 0d                	je     201678 <deregister_tm_clones+0x28>
  20166b:	5d                   	pop    %rbp
  20166c:	bf d0 39 20 00       	mov    $0x2039d0,%edi
  201671:	ff e0                	jmpq   *%rax
  201673:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  201678:	5d                   	pop    %rbp
  201679:	c3                   	retq   
  20167a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000201680 <register_tm_clones>:
  201680:	be d0 39 20 00       	mov    $0x2039d0,%esi
  201685:	55                   	push   %rbp
  201686:	48 81 ee d0 39 20 00 	sub    $0x2039d0,%rsi
  20168d:	48 89 e5             	mov    %rsp,%rbp
  201690:	48 c1 fe 03          	sar    $0x3,%rsi
  201694:	48 89 f0             	mov    %rsi,%rax
  201697:	48 c1 e8 3f          	shr    $0x3f,%rax
  20169b:	48 01 c6             	add    %rax,%rsi
  20169e:	48 d1 fe             	sar    %rsi
  2016a1:	74 15                	je     2016b8 <register_tm_clones+0x38>
  2016a3:	b8 00 00 00 00       	mov    $0x0,%eax
  2016a8:	48 85 c0             	test   %rax,%rax
  2016ab:	74 0b                	je     2016b8 <register_tm_clones+0x38>
  2016ad:	5d                   	pop    %rbp
  2016ae:	bf d0 39 20 00       	mov    $0x2039d0,%edi
  2016b3:	ff e0                	jmpq   *%rax
  2016b5:	0f 1f 00             	nopl   (%rax)
  2016b8:	5d                   	pop    %rbp
  2016b9:	c3                   	retq   
  2016ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000002016c0 <__do_global_dtors_aux>:
  2016c0:	80 3d 29 23 00 00 00 	cmpb   $0x0,0x2329(%rip)        # 2039f0 <completed.7698>
  2016c7:	75 17                	jne    2016e0 <__do_global_dtors_aux+0x20>
  2016c9:	55                   	push   %rbp
  2016ca:	48 89 e5             	mov    %rsp,%rbp
  2016cd:	e8 7e ff ff ff       	callq  201650 <deregister_tm_clones>
  2016d2:	c6 05 17 23 00 00 01 	movb   $0x1,0x2317(%rip)        # 2039f0 <completed.7698>
  2016d9:	5d                   	pop    %rbp
  2016da:	c3                   	retq   
  2016db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  2016e0:	f3 c3                	repz retq 
  2016e2:	0f 1f 40 00          	nopl   0x0(%rax)
  2016e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  2016ed:	00 00 00 

00000000002016f0 <frame_dummy>:
  2016f0:	55                   	push   %rbp
  2016f1:	48 89 e5             	mov    %rsp,%rbp
  2016f4:	5d                   	pop    %rbp
  2016f5:	eb 89                	jmp    201680 <register_tm_clones>
  2016f7:	cc                   	int3   
  2016f8:	cc                   	int3   
  2016f9:	cc                   	int3   
  2016fa:	cc                   	int3   
  2016fb:	cc                   	int3   
  2016fc:	cc                   	int3   
  2016fd:	cc                   	int3   
  2016fe:	cc                   	int3   
  2016ff:	cc                   	int3   

0000000000201700 <__libc_csu_init>:
  201700:	41 57                	push   %r15
  201702:	41 56                	push   %r14
  201704:	49 89 d7             	mov    %rdx,%r15
  201707:	41 55                	push   %r13
  201709:	41 54                	push   %r12
  20170b:	4c 8d 25 e6 10 00 00 	lea    0x10e6(%rip),%r12        # 2027f8 <__frame_dummy_init_array_entry>
  201712:	55                   	push   %rbp
  201713:	48 8d 2d e6 10 00 00 	lea    0x10e6(%rip),%rbp        # 202800 <__init_array_end>
  20171a:	53                   	push   %rbx
  20171b:	41 89 fd             	mov    %edi,%r13d
  20171e:	49 89 f6             	mov    %rsi,%r14
  201721:	4c 29 e5             	sub    %r12,%rbp
  201724:	48 83 ec 08          	sub    $0x8,%rsp
  201728:	48 c1 fd 03          	sar    $0x3,%rbp
  20172c:	e8 77 00 00 00       	callq  2017a8 <_init>
  201731:	48 85 ed             	test   %rbp,%rbp
  201734:	74 20                	je     201756 <__libc_csu_init+0x56>
  201736:	31 db                	xor    %ebx,%ebx
  201738:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  20173f:	00 
  201740:	4c 89 fa             	mov    %r15,%rdx
  201743:	4c 89 f6             	mov    %r14,%rsi
  201746:	44 89 ef             	mov    %r13d,%edi
  201749:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  20174d:	48 83 c3 01          	add    $0x1,%rbx
  201751:	48 39 dd             	cmp    %rbx,%rbp
  201754:	75 ea                	jne    201740 <__libc_csu_init+0x40>
  201756:	48 83 c4 08          	add    $0x8,%rsp
  20175a:	5b                   	pop    %rbx
  20175b:	5d                   	pop    %rbp
  20175c:	41 5c                	pop    %r12
  20175e:	41 5d                	pop    %r13
  201760:	41 5e                	pop    %r14
  201762:	41 5f                	pop    %r15
  201764:	c3                   	retq   
  201765:	90                   	nop
  201766:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  20176d:	00 00 00 

0000000000201770 <__libc_csu_fini>:
  201770:	f3 c3                	repz retq 
  201772:	cc                   	int3   
  201773:	cc                   	int3   
  201774:	cc                   	int3   
  201775:	cc                   	int3   
  201776:	cc                   	int3   
  201777:	cc                   	int3   
  201778:	cc                   	int3   
  201779:	cc                   	int3   
  20177a:	cc                   	int3   
  20177b:	cc                   	int3   
  20177c:	cc                   	int3   
  20177d:	cc                   	int3   
  20177e:	cc                   	int3   
  20177f:	cc                   	int3   

0000000000201780 <main>:
  201780:	50                   	push   %rax
  201781:	bf 10 00 00 00       	mov    $0x10,%edi
  201786:	e8 55 00 00 00       	callq  2017e0 <_Znwm@plt>
  20178b:	48 89 c7             	mov    %rax,%rdi
  20178e:	58                   	pop    %rax
  20178f:	e9 0c 00 00 00       	jmpq   2017a0 <_ZN7Derived3getEv>
  201794:	cc                   	int3   
  201795:	cc                   	int3   
  201796:	cc                   	int3   
  201797:	cc                   	int3   
  201798:	cc                   	int3   
  201799:	cc                   	int3   
  20179a:	cc                   	int3   
  20179b:	cc                   	int3   
  20179c:	cc                   	int3   
  20179d:	cc                   	int3   
  20179e:	cc                   	int3   
  20179f:	cc                   	int3   

00000000002017a0 <_ZN7Derived3getEv>:
  2017a0:	b8 e8 03 00 00       	mov    $0x3e8,%eax
  2017a5:	c3                   	retq   

Disassembly of section .init:

00000000002017a8 <_init>:
  2017a8:	48 83 ec 08          	sub    $0x8,%rsp
  2017ac:	48 8b 05 05 12 00 00 	mov    0x1205(%rip),%rax        # 2029b8 <__gmon_start__@Base>
  2017b3:	48 85 c0             	test   %rax,%rax
  2017b6:	74 02                	je     2017ba <_init+0x12>
  2017b8:	ff d0                	callq  *%rax
  2017ba:	48 83 c4 08          	add    $0x8,%rsp
  2017be:	c3                   	retq   

Disassembly of section .fini:

00000000002017c0 <_fini>:
  2017c0:	48 83 ec 08          	sub    $0x8,%rsp
  2017c4:	48 83 c4 08          	add    $0x8,%rsp
  2017c8:	c3                   	retq   

Disassembly of section .plt:

00000000002017d0 <_Znwm@plt-0x10>:
  2017d0:	ff 35 02 22 00 00    	pushq  0x2202(%rip)        # 2039d8 <__TMC_END__+0x8>
  2017d6:	ff 25 04 22 00 00    	jmpq   *0x2204(%rip)        # 2039e0 <__TMC_END__+0x10>
  2017dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000002017e0 <_Znwm@plt>:
  2017e0:	ff 25 02 22 00 00    	jmpq   *0x2202(%rip)        # 2039e8 <_Znwm@GLIBCXX_3.4>
  2017e6:	68 00 00 00 00       	pushq  $0x0
  2017eb:	e9 e0 ff ff ff       	jmpq   2017d0 <_fini+0x10>
