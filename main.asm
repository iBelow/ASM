Tree::destruct(Tree::Item*):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     rax, QWORD PTR [rbp-16]
        add     rax, 24
        mov     rsi, rax
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     rax, QWORD PTR [rbp-16]
        add     rax, 24
        mov     rsi, rax
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        nop
        leave
        ret
Tree::Tree() [base object constructor]:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], 0
        nop
        pop     rbp
        ret
Tree::~Tree() [base object destructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        mov     rsi, rdx
        mov     rdi, rax
        call    Tree::destruct(Tree::Item*)
        nop
        leave
        ret
Tree::Item::Item() [base object constructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        add     rax, 24
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string() [complete object constructor]
        nop
        leave
        ret
Tree::operator[][abi:cxx11](int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 40
        mov     QWORD PTR [rbp-40], rdi
        mov     DWORD PTR [rbp-44], esi
        mov     rax, QWORD PTR [rbp-40]
        mov     QWORD PTR [rbp-24], rax
.L11:
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        test    rax, rax
        je      .L6
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        mov     eax, DWORD PTR [rax+16]
        cmp     DWORD PTR [rbp-44], eax
        jne     .L7
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        add     rax, 24
        jmp     .L8
.L7:
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        mov     eax, DWORD PTR [rax+16]
        cmp     DWORD PTR [rbp-44], eax
        jle     .L9
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        add     rax, 8
        mov     QWORD PTR [rbp-24], rax
        jmp     .L11
.L9:
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rbp-24], rax
        jmp     .L11
.L6:
        mov     edi, 56
        call    operator new(unsigned long)
        mov     rbx, rax
        mov     rdi, rbx
        call    Tree::Item::Item() [complete object constructor]
        mov     rax, QWORD PTR [rbp-24]
        mov     QWORD PTR [rax], rbx
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rax], 0
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rax+8], 0
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        mov     edx, DWORD PTR [rbp-44]
        mov     DWORD PTR [rax+16], edx
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        add     rax, 24
.L8:
        add     rsp, 40
        pop     rbx
        pop     rbp
        ret
.LC0:
        .string "ZAZ"
.LC1:
        .string "TOYOTA"
.LC2:
        .string "\n"
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 24
        lea     rax, [rbp-24]
        mov     rdi, rax
        call    Tree::Tree() [complete object constructor]
        lea     rax, [rbp-24]
        mov     esi, 7
        mov     rdi, rax
        call    Tree::operator[][abi:cxx11](int)
        mov     esi, OFFSET FLAT:.LC0
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator=(char const*)
        lea     rax, [rbp-24]
        mov     esi, 22
        mov     rdi, rax
        call    Tree::operator[][abi:cxx11](int)
        mov     esi, OFFSET FLAT:.LC1
        mov     rdi, rax
        call    std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::operator=(char const*)
        lea     rax, [rbp-24]
        mov     esi, 7
        mov     rdi, rax
        call    Tree::operator[][abi:cxx11](int)
        mov     rsi, rax
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
        mov     esi, OFFSET FLAT:.LC2
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rbx, rax
        lea     rax, [rbp-24]
        mov     esi, 22
        mov     rdi, rax
        call    Tree::operator[][abi:cxx11](int)
        mov     rsi, rax
        mov     rdi, rbx
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     ebx, 0
        lea     rax, [rbp-24]
        mov     rdi, rax
        call    Tree::~Tree() [complete object destructor]
        mov     eax, ebx
        jmp     .L16
        mov     rbx, rax
        lea     rax, [rbp-24]
        mov     rdi, rax
        call    Tree::~Tree() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L16:
        add     rsp, 24
        pop     rbx
        pop     rbp
        ret
__static_initialization_and_destruction_0(int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     DWORD PTR [rbp-8], esi
        cmp     DWORD PTR [rbp-4], 1
        jne     .L19
        cmp     DWORD PTR [rbp-8], 65535
        jne     .L19
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
.L19:
        nop
        leave
        ret
_GLOBAL__sub_I_main:
        push    rbp
        mov     rbp, rsp
        mov     esi, 65535
        mov     edi, 1
        call    __static_initialization_and_destruction_0(int, int)
        pop     rbp
        ret
