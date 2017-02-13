; ModuleID = './loop.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"\0Ak = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @main() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %k.09 = phi i32 [ 3, %entry ], [ %sub, %for.body ]
  %j.08 = phi i32 [ 5, %entry ], [ %add2, %for.body ]
  %add = add nsw i32 %j.08, 2
  %add1 = add nsw i32 %k.09, 4
  %mul = mul nsw i32 %add1, 3
  %add2 = add nsw i32 %mul, %add
  %mul3 = shl i32 %add, 1
  %sub = sub nsw i32 %add1, %mul3
  %inc = add nsw i32 %i.010, 1
  %exitcond = icmp eq i32 %i.010, 499
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 %sub) #2
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.6.0 (trunk 221006)"}
