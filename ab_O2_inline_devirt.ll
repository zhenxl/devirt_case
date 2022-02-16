; ModuleID = 'ab.o'
source_filename = "A_B.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx11.0.0"

%class.B = type { %class.A.base, i32 }
%class.A.base = type <{ i32 (...)**, i32 }>
%class.A = type <{ i32 (...)**, i32, [4 x i8] }>

@_ZTV1B = available_externally unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast (i8** @_ZTI1B to i8*), i8* bitcast (void (%class.B*)* @_ZN1B3fooEv to i8*)] }, align 8, !type !0, !type !1, !type !2, !type !3
@_ZTI1B = external constant i8*
@_ZTV1A = available_externally unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast (i8** @_ZTI1A to i8*), i8* bitcast (void (%class.A*)* @_ZN1A3fooEv to i8*)] }, align 8, !type !0, !type !1
@_ZTI1A = external constant i8*
@llvm.compiler.used = appending global [2 x i8*] [i8* bitcast ({ [3 x i8*] }* @_ZTV1A to i8*), i8* bitcast ({ [3 x i8*] }* @_ZTV1B to i8*)], section "llvm.metadata"

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = tail call noalias nonnull dereferenceable(16) i8* @_Znwm(i64 16) #5
  %2 = bitcast i8* %1 to %class.B*
  %3 = tail call i8* @llvm.strip.invariant.group.p0i8(i8* nonnull %1)
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to i32*
  store i32 3, i32* %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %class.B, %class.B* %2, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1B, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !18, !invariant.group !20
  %7 = getelementptr inbounds i8, i8* %3, i64 12
  %8 = bitcast i8* %7 to i32*
  store i32 4, i32* %8, align 4, !tbaa !21
  %9 = tail call i1 @llvm.type.test(i8* bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1B, i64 0, inrange i32 0, i64 2) to i8*), metadata !"_ZTS1A")
  tail call void @llvm.assume(i1 %9)
  tail call void @_ZN1B3fooEv(%class.B* nonnull align 8 dereferenceable(12) %2)
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znwm(i64) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.type.test(i8*, metadata) #3

declare void @_ZN1B3fooEv(%class.B* nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i8* @llvm.strip.invariant.group.p0i8(i8*) #3

declare void @_ZN1A3fooEv(%class.A* nonnull align 8 dereferenceable(12)) unnamed_addr #4

attributes #0 = { norecurse ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{i64 16, !"_ZTS1A"}
!1 = !{i64 16, !"_ZTSM1AFvvE.virtual"}
!2 = !{i64 16, !"_ZTS1B"}
!3 = !{i64 16, !"_ZTSM1BFvvE.virtual"}
!4 = !{i32 1, !"StrictVTablePointers", i32 1}
!5 = !{i32 3, !"StrictVTablePointersRequirement", !6}
!6 = !{!"StrictVTablePointers", i32 1}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 1, !"Virtual Function Elim", i32 0}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"Homebrew clang version 13.0.0"}
!13 = !{!14, !15, i64 8}
!14 = !{!"_ZTS1A", !15, i64 8}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !17, i64 0}
!20 = !{}
!21 = !{!22, !15, i64 12}
!22 = !{!"_ZTS1B", !15, i64 12}
