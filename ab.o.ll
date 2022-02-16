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

; Function Attrs: mustprogress noinline norecurse ssp uwtable
define i32 @main() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = call noalias nonnull dereferenceable(16) i8* @_Znwm(i64 16) #9
  %2 = bitcast i8* %1 to %class.B*
  invoke void @_ZN1BC1Ei(%class.B* nonnull align 8 dereferenceable(16) %2, i32 4)
          to label %3 unwind label %12

3:                                                ; preds = %0
  %4 = bitcast i8* %1 to i8***
  %5 = load i8**, i8*** %4, align 16, !tbaa !13, !invariant.group !16
  %6 = icmp eq i8** %5, getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1B, i64 0, inrange i32 0, i64 2)
  call void @llvm.assume(i1 %6)
  %7 = bitcast i8* %1 to %class.A*
  %8 = bitcast i8** %5 to void (%class.A*)**
  %9 = bitcast i8** %5 to i8*
  %10 = call i1 @llvm.type.test(i8* %9, metadata !"_ZTS1A")
  call void @llvm.assume(i1 %10)
  %11 = load void (%class.A*)*, void (%class.A*)** %8, align 8, !invariant.load !16
  call void %11(%class.A* nonnull align 8 dereferenceable(12) %7)
  ret i32 0

12:                                               ; preds = %0
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* %1) #10
  resume { i8*, i32 } %13
}

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znwm(i64) local_unnamed_addr #1

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZN1BC1Ei(%class.B* nonnull align 8 dereferenceable(16) %0, i32 %1) unnamed_addr #2 align 2 {
  call void @_ZN1BC2Ei(%class.B* nonnull align 8 dereferenceable(16) %0, i32 %1)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.type.test(i8*, metadata) #5

declare void @_ZN1B3fooEv(%class.B* nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: noinline ssp uwtable
define linkonce_odr void @_ZN1BC2Ei(%class.B* nonnull align 8 dereferenceable(16) %0, i32 %1) unnamed_addr #2 align 2 {
  %3 = bitcast %class.B* %0 to i8*
  %4 = call i8* @llvm.launder.invariant.group.p0i8(i8* nonnull %3)
  %5 = bitcast i8* %4 to %class.A*
  call void @_ZN1AC2Ev(%class.A* nonnull align 8 dereferenceable(12) %5)
  %6 = getelementptr inbounds %class.B, %class.B* %0, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1B, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !13, !invariant.group !16
  %7 = call i8* @llvm.strip.invariant.group.p0i8(i8* nonnull %3)
  %8 = getelementptr inbounds i8, i8* %7, i64 12
  %9 = bitcast i8* %8 to i32*
  store i32 %1, i32* %9, align 4, !tbaa !17
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind speculatable willreturn
declare i8* @llvm.launder.invariant.group.p0i8(i8*) #7

; Function Attrs: noinline nounwind ssp uwtable
define linkonce_odr void @_ZN1AC2Ev(%class.A* nonnull align 8 dereferenceable(12) %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.A, %class.A* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV1A, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !13, !invariant.group !16
  %3 = bitcast %class.A* %0 to i8*
  %4 = call i8* @llvm.strip.invariant.group.p0i8(i8* nonnull %3)
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to i32*
  store i32 3, i32* %6, align 8, !tbaa !21
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i8* @llvm.strip.invariant.group.p0i8(i8*) #5

declare void @_ZN1A3fooEv(%class.A* nonnull align 8 dereferenceable(12)) unnamed_addr #6

attributes #0 = { mustprogress noinline norecurse ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly nofree nosync nounwind speculatable willreturn }
attributes #8 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !15, i64 0}
!15 = !{!"Simple C++ TBAA"}
!16 = !{}
!17 = !{!18, !19, i64 12}
!18 = !{!"_ZTS1B", !19, i64 12}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !15, i64 0}
!21 = !{!22, !19, i64 8}
!22 = !{!"_ZTS1A", !19, i64 8}
