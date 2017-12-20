; ModuleID = 'header.cpp'
source_filename = "header.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

@.str = private unnamed_addr constant [25 x i8] c"library run-time error: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"Expected value: null (in expect_args0). Prim cannot take arguments.\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Expected cons value (in expect_args1). Prim applied on an empty argument list.\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Expected null value (in expect_args1). Prim can only take 1 argument.\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Expected a cons value. (expect_cons)\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Expected a vector or special value. (expect_other)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"#<procedure>\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"(print.. v); unrecognized value %llu\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"'()\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"'(\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"'%s\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"(print v); unrecognized value %llu\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"first argument to make-vector must be an integer\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"prim applied on more than 2 arguments.\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"second argument to vector-ref must be an integer\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"first argument to vector-ref must be a vector\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"vector-ref not given a properly formed vector\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"first argument to vector-ref must be an integer\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"(prim + a b); a is not an integer\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"(prim + a b); b is not an integer\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Integer Underflow Error\0A\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"Integer Overflow Error\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"Tried to apply + on non list value.\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"(prim - a b); b is not an integer\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"(prim * a b); a is not an integer\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"(prim * a b); b is not an integer\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"(prim / a b); a is not an integer\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"(prim / a b); b is not an integer\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Divide By Zero Error\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

; Function Attrs: ssp uwtable
define i64* @alloc(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i8* @malloc(i64 %3)
  %5 = bitcast i8* %4 to i64*
  ret i64* %5
}

declare i8* @malloc(i64) #1

; Function Attrs: ssp uwtable
define void @fatal_err(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: ssp uwtable
define void @print_u64(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 %3)
  ret void
}

; Function Attrs: ssp uwtable
define i64 @expect_args0(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  br label %6

; <label>:6:                                      ; preds = %5, %1
  ret i64 0
}

; Function Attrs: ssp uwtable
define i64 @expect_args1(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i32 0, i32 0))
  br label %8

; <label>:8:                                      ; preds = %7, %1
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64* %11, i64** %3, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %16, %8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: ssp uwtable
define i64 @expect_cons(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: ssp uwtable
define i64 @expect_other(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 6
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_int(i64) #3 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = zext i32 %4 to i64
  %6 = shl i64 %5, 32
  %7 = or i64 %6, 2
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_null() #3 {
  ret i64 0
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_true() #3 {
  ret i64 31
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_false() #3 {
  ret i64 15
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_string(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = or i64 %4, 3
  ret i64 %5
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_symbol(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = or i64 %4, 4
  ret i64 %5
}

; Function Attrs: ssp uwtable
define i64 @prim_print_aux(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  br label %113

; <label>:11:                                     ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %112

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %36

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @prim_print_aux(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %111

; <label>:36:                                     ; preds = %17
  %37 = load i64, i64* %2, align 8
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %43)
  br label %110

; <label>:45:                                     ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = and i64 %46, 7
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %45
  %50 = load i64, i64* %2, align 8
  %51 = and i64 %50, -8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %52)
  br label %109

; <label>:54:                                     ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %63

; <label>:58:                                     ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = and i64 %59, -8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %61)
  br label %108

; <label>:63:                                     ; preds = %54
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %67, label %104

; <label>:67:                                     ; preds = %63
  %68 = load i64, i64* %2, align 8
  %69 = and i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 1, %73
  br i1 %74, label %75, label %104

; <label>:75:                                     ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %77 = load i64, i64* %2, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %4, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %82, 3
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @prim_print_aux(i64 %86)
  store i64 2, i64* %6, align 8
  br label %88

; <label>:88:                                     ; preds = %99, %75
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %102

; <label>:92:                                     ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %94 = load i64, i64* %6, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @prim_print_aux(i64 %97)
  br label %99

; <label>:99:                                     ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %88

; <label>:102:                                    ; preds = %88
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %107

; <label>:104:                                    ; preds = %67, %63
  %105 = load i64, i64* %2, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), i64 %105)
  br label %107

; <label>:107:                                    ; preds = %104, %102
  br label %108

; <label>:108:                                    ; preds = %107, %58
  br label %109

; <label>:109:                                    ; preds = %108, %49
  br label %110

; <label>:110:                                    ; preds = %109, %40
  br label %111

; <label>:111:                                    ; preds = %110, %21
  br label %112

; <label>:112:                                    ; preds = %111, %15
  br label %113

; <label>:113:                                    ; preds = %112, %9
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @prim_print(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  br label %113

; <label>:11:                                     ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %112

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %36

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @prim_print_aux(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %111

; <label>:36:                                     ; preds = %17
  %37 = load i64, i64* %2, align 8
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %45

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %43)
  br label %110

; <label>:45:                                     ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = and i64 %46, 7
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %45
  %50 = load i64, i64* %2, align 8
  %51 = and i64 %50, -8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %52)
  br label %109

; <label>:54:                                     ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %63

; <label>:58:                                     ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = and i64 %59, -8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %61)
  br label %108

; <label>:63:                                     ; preds = %54
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %67, label %104

; <label>:67:                                     ; preds = %63
  %68 = load i64, i64* %2, align 8
  %69 = and i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 1, %73
  br i1 %74, label %75, label %104

; <label>:75:                                     ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %77 = load i64, i64* %2, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %4, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %82, 3
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @prim_print(i64 %86)
  store i64 2, i64* %6, align 8
  br label %88

; <label>:88:                                     ; preds = %99, %75
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %102

; <label>:92:                                     ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %94 = load i64, i64* %6, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @prim_print(i64 %97)
  br label %99

; <label>:99:                                     ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %88

; <label>:102:                                    ; preds = %88
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %107

; <label>:104:                                    ; preds = %67, %63
  %105 = load i64, i64* %2, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0), i64 %105)
  br label %107

; <label>:107:                                    ; preds = %104, %102
  br label %108

; <label>:108:                                    ; preds = %107, %58
  br label %109

; <label>:109:                                    ; preds = %108, %49
  br label %110

; <label>:110:                                    ; preds = %109, %40
  br label %111

; <label>:111:                                    ; preds = %110, %21
  br label %112

; <label>:112:                                    ; preds = %111, %15
  br label %113

; <label>:113:                                    ; preds = %112, %9
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @applyprim_print(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_print(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_halt(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @prim_print(i64 %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable
                                                  ; No predecessors!
  %8 = load i64, i64* %2, align 8
  ret i64 %8
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = call i8* @malloc(i64 4096)
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %3, align 8
  store i64 0, i64* %4, align 8
  br label %9

; <label>:9:                                      ; preds = %18, %1
  %10 = load i64, i64* %2, align 8
  %11 = and i64 %10, 7
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %14, 512
  br label %16

; <label>:16:                                     ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %16
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @expect_cons(i64 %19, i64* %2)
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 %21
  store i64 %20, i64* %24, align 8
  br label %9

; <label>:25:                                     ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  %28 = mul i64 %27, 8
  %29 = call i64* @alloc(i64 %28)
  store i64* %29, i64** %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = shl i64 %30, 3
  %32 = or i64 %31, 1
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %34, align 8
  store i64 0, i64* %6, align 8
  br label %35

; <label>:35:                                     ; preds = %48, %25
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

; <label>:39:                                     ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 %40
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 %45
  store i64 %43, i64* %47, align 8
  br label %48

; <label>:48:                                     ; preds = %39
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %35

; <label>:51:                                     ; preds = %35
  %52 = load i64*, i64** %3, align 8
  %53 = icmp eq i64* %52, null
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %51
  %55 = bitcast i64* %52 to i8*
  call void @_ZdaPv(i8* %55) #6
  br label %56

; <label>:56:                                     ; preds = %54, %51
  %57 = load i64*, i64** %5, align 8
  %58 = ptrtoint i64* %57 to i64
  %59 = or i64 %58, 6
  ret i64 %59
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #4

; Function Attrs: ssp uwtable
define i64 @prim_make_45vector(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0))
  br label %12

; <label>:12:                                     ; preds = %11, %2
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  %20 = mul i64 %19, 8
  %21 = call i64* @alloc(i64 %20)
  store i64* %21, i64** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = shl i64 %22, 3
  %24 = or i64 %23, 1
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  store i64 1, i64* %7, align 8
  br label %27

; <label>:27:                                     ; preds = %36, %12
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 %33
  store i64 %32, i64* %35, align 8
  br label %36

; <label>:36:                                     ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %27

; <label>:39:                                     ; preds = %27
  %40 = load i64*, i64** %6, align 8
  %41 = ptrtoint i64* %40 to i64
  %42 = or i64 %41, 6
  ret i64 %42
}

; Function Attrs: ssp uwtable
define i64 @applyprim_make_45vector(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_make_45vector(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_vector_45ref(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 6
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 1
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %14
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  br label %23

; <label>:23:                                     ; preds = %22, %14
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %3, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  %33 = getelementptr inbounds i64, i64* %32, i64 %29
  %34 = load i64, i64* %33, align 8
  ret i64 %34
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector_45ref(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_vector_45ref(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_vector_45set_33(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 2
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  br label %11

; <label>:11:                                     ; preds = %10, %3
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 7
  %14 = icmp ne i64 %13, 6
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %11
  call void @fatal_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0))
  br label %16

; <label>:16:                                     ; preds = %15, %11
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, 7
  %23 = icmp ne i64 %22, 1
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %16
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  br label %25

; <label>:25:                                     ; preds = %24, %16
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, -8
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  %31 = add nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  %36 = getelementptr inbounds i64, i64* %35, i64 %32
  store i64 %26, i64* %36, align 8
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector_45set_33(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @expect_cons(i64 %7, i64* %3)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @expect_cons(i64 %9, i64* %3)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @expect_cons(i64 %11, i64* %3)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %16

; <label>:16:                                     ; preds = %15, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @prim_vector_45set_33(i64 %17, i64 %18, i64 %19)
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_eq_63(i64, i64) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10:                                     ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11:                                     ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: ssp uwtable
define i64 @applyprim_eq_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eq_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_eqv_63(i64, i64) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10:                                     ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11:                                     ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: ssp uwtable
define i64 @applyprim_eqv_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eqv_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_number_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_number_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_number_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_integer_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_integer_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_integer_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_void_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 39
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8:                                      ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_void_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_void_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_procedure_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_procedure_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_procedure_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_null_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8:                                      ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_null_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_null_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_cons_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cons_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cons_63(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_cons(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i64* @alloc(i64 16)
  store i64* %6, i64** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %10, i64* %12, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = ptrtoint i64* %13 to i64
  %15 = or i64 %14, 1
  ret i64 %15
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cons(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_cons(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_car(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @applyprim_car(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_car(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_cdr(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cdr(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cdr(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim__43(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %36

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, -8
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 -2147483648, %25
  %27 = load i64, i64* %3, align 8
  %28 = and i64 %27, -8
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp sge i64 %26, %31
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %20
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

; <label>:35:                                     ; preds = %20
  br label %50

; <label>:36:                                     ; preds = %14
  %37 = load i64, i64* %4, align 8
  %38 = and i64 %37, -8
  %39 = lshr i64 %38, 32
  %40 = trunc i64 %39 to i32
  %41 = sub nsw i32 2147483647, %40
  %42 = load i64, i64* %3, align 8
  %43 = and i64 %42, -8
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = icmp sle i32 %41, %45
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %36
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

; <label>:49:                                     ; preds = %36
  br label %50

; <label>:50:                                     ; preds = %49, %35
  %51 = load i64, i64* %3, align 8
  %52 = and i64 %51, -8
  %53 = lshr i64 %52, 32
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %4, align 8
  %56 = and i64 %55, -8
  %57 = lshr i64 %56, 32
  %58 = trunc i64 %57 to i32
  %59 = add nsw i32 %54, %58
  %60 = zext i32 %59 to i64
  %61 = shl i64 %60, 32
  %62 = or i64 %61, 2
  ret i64 %62
}

; Function Attrs: ssp uwtable
define i64 @applyprim__43(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 2, i64* %2, align 8
  br label %34

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @applyprim__43(i64 %25)
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = add nsw i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %31, 32
  %33 = or i64 %32, 2
  store i64 %33, i64* %2, align 8
  br label %34

; <label>:34:                                     ; preds = %13, %7
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

; Function Attrs: ssp uwtable
define i64 @prim__45(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %34

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, -8
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = add nsw i32 2147483647, %24
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = icmp sle i32 %25, %29
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %20
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

; <label>:33:                                     ; preds = %20
  br label %50

; <label>:34:                                     ; preds = %14
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, -8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 -2147483648, %39
  %41 = load i64, i64* %3, align 8
  %42 = and i64 %41, -8
  %43 = lshr i64 %42, 32
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = icmp sge i64 %40, %45
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %34
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

; <label>:49:                                     ; preds = %34
  br label %50

; <label>:50:                                     ; preds = %49, %33
  %51 = load i64, i64* %3, align 8
  %52 = and i64 %51, -8
  %53 = lshr i64 %52, 32
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %4, align 8
  %56 = and i64 %55, -8
  %57 = lshr i64 %56, 32
  %58 = trunc i64 %57 to i32
  %59 = sub nsw i32 %54, %58
  %60 = zext i32 %59 to i64
  %61 = shl i64 %60, 32
  %62 = or i64 %61, 2
  ret i64 %62
}

; Function Attrs: ssp uwtable
define i64 @applyprim__45(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 2, i64* %2, align 8
  br label %50

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

; <label>:21:                                     ; preds = %13
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i32 0, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 %29, 32
  %31 = or i64 %30, 2
  store i64 %31, i64* %2, align 8
  br label %50

; <label>:32:                                     ; preds = %13
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %35, -8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @applyprim__43(i64 %41)
  %43 = and i64 %42, -8
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = sub nsw i32 %38, %45
  %47 = zext i32 %46 to i64
  %48 = shl i64 %47, 32
  %49 = or i64 %48, 2
  store i64 %49, i64* %2, align 8
  br label %50

; <label>:50:                                     ; preds = %32, %21, %7
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

; Function Attrs: ssp uwtable
define i64 @prim__42(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %4, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %10
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = mul nsw i32 %19, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ugt i64 %26, 2147483647
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %15
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

; <label>:30:                                     ; preds = %15
  %31 = load i64, i64* %3, align 8
  %32 = and i64 %31, -8
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, -8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = mul nsw i32 %34, %38
  %40 = zext i32 %39 to i64
  %41 = shl i64 %40, 32
  %42 = or i64 %41, 2
  ret i64 %42
}

; Function Attrs: ssp uwtable
define i64 @applyprim__42(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i64 4294967298, i64* %2, align 8
  br label %34

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @applyprim__42(i64 %25)
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %31, 32
  %33 = or i64 %32, 2
  store i64 %33, i64* %2, align 8
  br label %34

; <label>:34:                                     ; preds = %13, %7
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

; Function Attrs: ssp uwtable
define i64 @prim__47(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %14
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

; <label>:22:                                     ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, -8
  %25 = lshr i64 %24, 32
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %4, align 8
  %28 = and i64 %27, -8
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  %31 = sdiv i32 %26, %30
  %32 = zext i32 %31 to i64
  %33 = shl i64 %32, 32
  %34 = or i64 %33, 2
  ret i64 %34
}

; Function Attrs: ssp uwtable
define i64 @prim__61(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26:                                     ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: ssp uwtable
define i64 @prim__60(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26:                                     ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: ssp uwtable
define i64 @prim__60_61(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i32 0, i32 0))
  br label %10

; <label>:10:                                     ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.45, i32 0, i32 0))
  br label %15

; <label>:15:                                     ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp sle i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26:                                     ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27:                                     ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_not(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 15
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7:                                      ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8:                                      ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_not(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_not(i64 %6)
  ret i64 %7
}

attributes #0 = { ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 8.1.0 (clang-802.0.42)"}


;;;;;;

define void @proc_main() {
  %cloptr17948 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr17949 = getelementptr inbounds i64, i64* %cloptr17948, i64 0                  ; &cloptr17948[0]
  %f17950 = ptrtoint void(i64,i64)* @lam10963 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f17950, i64* %eptr17949                                                 ; store fptr
  %arg7342 = ptrtoint i64* %cloptr17948 to i64                                       ; closure cast; i64* -> i64
  %cloptr17951 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr17952 = getelementptr inbounds i64, i64* %cloptr17951, i64 0                  ; &cloptr17951[0]
  %f17953 = ptrtoint void(i64,i64)* @lam10960 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f17953, i64* %eptr17952                                                 ; store fptr
  %arg7341 = ptrtoint i64* %cloptr17951 to i64                                       ; closure cast; i64* -> i64
  %cloptr17954 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr17955 = getelementptr inbounds i64, i64* %cloptr17954, i64 0                  ; &cloptr17954[0]
  %f17956 = ptrtoint void(i64,i64)* @lam10052 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f17956, i64* %eptr17955                                                 ; store fptr
  %arg7340 = ptrtoint i64* %cloptr17954 to i64                                       ; closure cast; i64* -> i64
  %rva10037 = add i64 0, 0                                                           ; quoted ()
  %rva10036 = call i64 @prim_cons(i64 %arg7340, i64 %rva10037)                       ; call prim_cons
  %rva10035 = call i64 @prim_cons(i64 %arg7341, i64 %rva10036)                       ; call prim_cons
  %cloptr17957 = inttoptr i64 %arg7342 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr17958 = getelementptr inbounds i64, i64* %cloptr17957, i64 0                 ; &cloptr17957[0]
  %f17960 = load i64, i64* %i0ptr17958, align 8                                      ; load; *i0ptr17958
  %fptr17959 = inttoptr i64 %f17960 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr17959(i64 %arg7342, i64 %rva10035)                  ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam10963(i64 %env10964, i64 %rvp8593) {
  %cont7332 = call i64 @prim_car(i64 %rvp8593)                                       ; call prim_car
  %rvp8592 = call i64 @prim_cdr(i64 %rvp8593)                                        ; call prim_cdr
  %l5Z$yu = call i64 @prim_car(i64 %rvp8592)                                         ; call prim_car
  %na8588 = call i64 @prim_cdr(i64 %rvp8592)                                         ; call prim_cdr
  %rva8591 = add i64 0, 0                                                            ; quoted ()
  %rva8590 = call i64 @prim_cons(i64 %l5Z$yu, i64 %rva8591)                          ; call prim_cons
  %rva8589 = call i64 @prim_cons(i64 %cont7332, i64 %rva8590)                        ; call prim_cons
  %cloptr17961 = inttoptr i64 %l5Z$yu to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr17962 = getelementptr inbounds i64, i64* %cloptr17961, i64 0                 ; &cloptr17961[0]
  %f17964 = load i64, i64* %i0ptr17962, align 8                                      ; load; *i0ptr17962
  %fptr17963 = inttoptr i64 %f17964 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr17963(i64 %l5Z$yu, i64 %rva8589)                    ; tail call
  ret void
}


define void @lam10960(i64 %env10961, i64 %rvp10006) {
  %_957068 = call i64 @prim_car(i64 %rvp10006)                                       ; call prim_car
  %rvp10005 = call i64 @prim_cdr(i64 %rvp10006)                                      ; call prim_cdr
  %f0X$Ycmb = call i64 @prim_car(i64 %rvp10005)                                      ; call prim_car
  %na8595 = call i64 @prim_cdr(i64 %rvp10005)                                        ; call prim_cdr
  %cloptr17965 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr17967 = getelementptr inbounds i64, i64* %cloptr17965, i64 1                  ; &eptr17967[1]
  store i64 %f0X$Ycmb, i64* %eptr17967                                               ; *eptr17967 = %f0X$Ycmb
  %eptr17966 = getelementptr inbounds i64, i64* %cloptr17965, i64 0                  ; &cloptr17965[0]
  %f17968 = ptrtoint void(i64,i64)* @lam10958 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f17968, i64* %eptr17966                                                 ; store fptr
  %arg7347 = ptrtoint i64* %cloptr17965 to i64                                       ; closure cast; i64* -> i64
  %cloptr17969 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr17970 = getelementptr inbounds i64, i64* %cloptr17969, i64 0                  ; &cloptr17969[0]
  %f17971 = ptrtoint void(i64,i64)* @lam10065 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f17971, i64* %eptr17970                                                 ; store fptr
  %arg7346 = ptrtoint i64* %cloptr17969 to i64                                       ; closure cast; i64* -> i64
  %rva10004 = add i64 0, 0                                                           ; quoted ()
  %rva10003 = call i64 @prim_cons(i64 %arg7346, i64 %rva10004)                       ; call prim_cons
  %rva10002 = call i64 @prim_cons(i64 %arg7347, i64 %rva10003)                       ; call prim_cons
  %cloptr17972 = inttoptr i64 %f0X$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr17973 = getelementptr inbounds i64, i64* %cloptr17972, i64 0                 ; &cloptr17972[0]
  %f17975 = load i64, i64* %i0ptr17973, align 8                                      ; load; *i0ptr17973
  %fptr17974 = inttoptr i64 %f17975 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr17974(i64 %f0X$Ycmb, i64 %rva10002)                 ; tail call
  ret void
}


define void @lam10958(i64 %env10959, i64 %rvp9972) {
  %envptr17976 = inttoptr i64 %env10959 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr17977 = getelementptr inbounds i64, i64* %envptr17976, i64 1                ; &envptr17976[1]
  %f0X$Ycmb = load i64, i64* %envptr17977, align 8                                   ; load; *envptr17977
  %_957069 = call i64 @prim_car(i64 %rvp9972)                                        ; call prim_car
  %rvp9971 = call i64 @prim_cdr(i64 %rvp9972)                                        ; call prim_cdr
  %Hkd$_37foldr1 = call i64 @prim_car(i64 %rvp9971)                                  ; call prim_car
  %na8597 = call i64 @prim_cdr(i64 %rvp9971)                                         ; call prim_cdr
  %cloptr17978 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr17980 = getelementptr inbounds i64, i64* %cloptr17978, i64 1                  ; &eptr17980[1]
  %eptr17981 = getelementptr inbounds i64, i64* %cloptr17978, i64 2                  ; &eptr17981[2]
  store i64 %f0X$Ycmb, i64* %eptr17980                                               ; *eptr17980 = %f0X$Ycmb
  store i64 %Hkd$_37foldr1, i64* %eptr17981                                          ; *eptr17981 = %Hkd$_37foldr1
  %eptr17979 = getelementptr inbounds i64, i64* %cloptr17978, i64 0                  ; &cloptr17978[0]
  %f17982 = ptrtoint void(i64,i64)* @lam10956 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f17982, i64* %eptr17979                                                 ; store fptr
  %arg7350 = ptrtoint i64* %cloptr17978 to i64                                       ; closure cast; i64* -> i64
  %cloptr17983 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr17984 = getelementptr inbounds i64, i64* %cloptr17983, i64 0                  ; &cloptr17983[0]
  %f17985 = ptrtoint void(i64,i64)* @lam10083 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f17985, i64* %eptr17984                                                 ; store fptr
  %arg7349 = ptrtoint i64* %cloptr17983 to i64                                       ; closure cast; i64* -> i64
  %rva9970 = add i64 0, 0                                                            ; quoted ()
  %rva9969 = call i64 @prim_cons(i64 %arg7349, i64 %rva9970)                         ; call prim_cons
  %rva9968 = call i64 @prim_cons(i64 %arg7350, i64 %rva9969)                         ; call prim_cons
  %cloptr17986 = inttoptr i64 %f0X$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr17987 = getelementptr inbounds i64, i64* %cloptr17986, i64 0                 ; &cloptr17986[0]
  %f17989 = load i64, i64* %i0ptr17987, align 8                                      ; load; *i0ptr17987
  %fptr17988 = inttoptr i64 %f17989 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr17988(i64 %f0X$Ycmb, i64 %rva9968)                  ; tail call
  ret void
}


define void @lam10956(i64 %env10957, i64 %rvp9934) {
  %envptr17990 = inttoptr i64 %env10957 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr17991 = getelementptr inbounds i64, i64* %envptr17990, i64 2                ; &envptr17990[2]
  %Hkd$_37foldr1 = load i64, i64* %envptr17991, align 8                              ; load; *envptr17991
  %envptr17992 = inttoptr i64 %env10957 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr17993 = getelementptr inbounds i64, i64* %envptr17992, i64 1                ; &envptr17992[1]
  %f0X$Ycmb = load i64, i64* %envptr17993, align 8                                   ; load; *envptr17993
  %_957070 = call i64 @prim_car(i64 %rvp9934)                                        ; call prim_car
  %rvp9933 = call i64 @prim_cdr(i64 %rvp9934)                                        ; call prim_cdr
  %vzO$_37map1 = call i64 @prim_car(i64 %rvp9933)                                    ; call prim_car
  %na8599 = call i64 @prim_cdr(i64 %rvp9933)                                         ; call prim_cdr
  %cloptr17994 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr17996 = getelementptr inbounds i64, i64* %cloptr17994, i64 1                  ; &eptr17996[1]
  %eptr17997 = getelementptr inbounds i64, i64* %cloptr17994, i64 2                  ; &eptr17997[2]
  %eptr17998 = getelementptr inbounds i64, i64* %cloptr17994, i64 3                  ; &eptr17998[3]
  store i64 %f0X$Ycmb, i64* %eptr17996                                               ; *eptr17996 = %f0X$Ycmb
  store i64 %Hkd$_37foldr1, i64* %eptr17997                                          ; *eptr17997 = %Hkd$_37foldr1
  store i64 %vzO$_37map1, i64* %eptr17998                                            ; *eptr17998 = %vzO$_37map1
  %eptr17995 = getelementptr inbounds i64, i64* %cloptr17994, i64 0                  ; &cloptr17994[0]
  %f17999 = ptrtoint void(i64,i64)* @lam10954 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f17999, i64* %eptr17995                                                 ; store fptr
  %arg7353 = ptrtoint i64* %cloptr17994 to i64                                       ; closure cast; i64* -> i64
  %cloptr18000 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18001 = getelementptr inbounds i64, i64* %cloptr18000, i64 0                  ; &cloptr18000[0]
  %f18002 = ptrtoint void(i64,i64)* @lam10103 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18002, i64* %eptr18001                                                 ; store fptr
  %arg7352 = ptrtoint i64* %cloptr18000 to i64                                       ; closure cast; i64* -> i64
  %rva9932 = add i64 0, 0                                                            ; quoted ()
  %rva9931 = call i64 @prim_cons(i64 %arg7352, i64 %rva9932)                         ; call prim_cons
  %rva9930 = call i64 @prim_cons(i64 %arg7353, i64 %rva9931)                         ; call prim_cons
  %cloptr18003 = inttoptr i64 %f0X$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18004 = getelementptr inbounds i64, i64* %cloptr18003, i64 0                 ; &cloptr18003[0]
  %f18006 = load i64, i64* %i0ptr18004, align 8                                      ; load; *i0ptr18004
  %fptr18005 = inttoptr i64 %f18006 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18005(i64 %f0X$Ycmb, i64 %rva9930)                  ; tail call
  ret void
}


define void @lam10954(i64 %env10955, i64 %rvp9900) {
  %envptr18007 = inttoptr i64 %env10955 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18008 = getelementptr inbounds i64, i64* %envptr18007, i64 3                ; &envptr18007[3]
  %vzO$_37map1 = load i64, i64* %envptr18008, align 8                                ; load; *envptr18008
  %envptr18009 = inttoptr i64 %env10955 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18010 = getelementptr inbounds i64, i64* %envptr18009, i64 2                ; &envptr18009[2]
  %Hkd$_37foldr1 = load i64, i64* %envptr18010, align 8                              ; load; *envptr18010
  %envptr18011 = inttoptr i64 %env10955 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18012 = getelementptr inbounds i64, i64* %envptr18011, i64 1                ; &envptr18011[1]
  %f0X$Ycmb = load i64, i64* %envptr18012, align 8                                   ; load; *envptr18012
  %_957071 = call i64 @prim_car(i64 %rvp9900)                                        ; call prim_car
  %rvp9899 = call i64 @prim_cdr(i64 %rvp9900)                                        ; call prim_cdr
  %I8m$_37take = call i64 @prim_car(i64 %rvp9899)                                    ; call prim_car
  %na8601 = call i64 @prim_cdr(i64 %rvp9899)                                         ; call prim_cdr
  %cloptr18013 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr18015 = getelementptr inbounds i64, i64* %cloptr18013, i64 1                  ; &eptr18015[1]
  %eptr18016 = getelementptr inbounds i64, i64* %cloptr18013, i64 2                  ; &eptr18016[2]
  %eptr18017 = getelementptr inbounds i64, i64* %cloptr18013, i64 3                  ; &eptr18017[3]
  %eptr18018 = getelementptr inbounds i64, i64* %cloptr18013, i64 4                  ; &eptr18018[4]
  store i64 %f0X$Ycmb, i64* %eptr18015                                               ; *eptr18015 = %f0X$Ycmb
  store i64 %Hkd$_37foldr1, i64* %eptr18016                                          ; *eptr18016 = %Hkd$_37foldr1
  store i64 %I8m$_37take, i64* %eptr18017                                            ; *eptr18017 = %I8m$_37take
  store i64 %vzO$_37map1, i64* %eptr18018                                            ; *eptr18018 = %vzO$_37map1
  %eptr18014 = getelementptr inbounds i64, i64* %cloptr18013, i64 0                  ; &cloptr18013[0]
  %f18019 = ptrtoint void(i64,i64)* @lam10952 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18019, i64* %eptr18014                                                 ; store fptr
  %arg7356 = ptrtoint i64* %cloptr18013 to i64                                       ; closure cast; i64* -> i64
  %cloptr18020 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18021 = getelementptr inbounds i64, i64* %cloptr18020, i64 0                  ; &cloptr18020[0]
  %f18022 = ptrtoint void(i64,i64)* @lam10119 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18022, i64* %eptr18021                                                 ; store fptr
  %arg7355 = ptrtoint i64* %cloptr18020 to i64                                       ; closure cast; i64* -> i64
  %rva9898 = add i64 0, 0                                                            ; quoted ()
  %rva9897 = call i64 @prim_cons(i64 %arg7355, i64 %rva9898)                         ; call prim_cons
  %rva9896 = call i64 @prim_cons(i64 %arg7356, i64 %rva9897)                         ; call prim_cons
  %cloptr18023 = inttoptr i64 %f0X$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18024 = getelementptr inbounds i64, i64* %cloptr18023, i64 0                 ; &cloptr18023[0]
  %f18026 = load i64, i64* %i0ptr18024, align 8                                      ; load; *i0ptr18024
  %fptr18025 = inttoptr i64 %f18026 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18025(i64 %f0X$Ycmb, i64 %rva9896)                  ; tail call
  ret void
}


define void @lam10952(i64 %env10953, i64 %rvp9871) {
  %envptr18027 = inttoptr i64 %env10953 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18028 = getelementptr inbounds i64, i64* %envptr18027, i64 4                ; &envptr18027[4]
  %vzO$_37map1 = load i64, i64* %envptr18028, align 8                                ; load; *envptr18028
  %envptr18029 = inttoptr i64 %env10953 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18030 = getelementptr inbounds i64, i64* %envptr18029, i64 3                ; &envptr18029[3]
  %I8m$_37take = load i64, i64* %envptr18030, align 8                                ; load; *envptr18030
  %envptr18031 = inttoptr i64 %env10953 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18032 = getelementptr inbounds i64, i64* %envptr18031, i64 2                ; &envptr18031[2]
  %Hkd$_37foldr1 = load i64, i64* %envptr18032, align 8                              ; load; *envptr18032
  %envptr18033 = inttoptr i64 %env10953 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18034 = getelementptr inbounds i64, i64* %envptr18033, i64 1                ; &envptr18033[1]
  %f0X$Ycmb = load i64, i64* %envptr18034, align 8                                   ; load; *envptr18034
  %_957072 = call i64 @prim_car(i64 %rvp9871)                                        ; call prim_car
  %rvp9870 = call i64 @prim_cdr(i64 %rvp9871)                                        ; call prim_cdr
  %oki$_37length = call i64 @prim_car(i64 %rvp9870)                                  ; call prim_car
  %na8603 = call i64 @prim_cdr(i64 %rvp9870)                                         ; call prim_cdr
  %cloptr18035 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr18037 = getelementptr inbounds i64, i64* %cloptr18035, i64 1                  ; &eptr18037[1]
  %eptr18038 = getelementptr inbounds i64, i64* %cloptr18035, i64 2                  ; &eptr18038[2]
  %eptr18039 = getelementptr inbounds i64, i64* %cloptr18035, i64 3                  ; &eptr18039[3]
  %eptr18040 = getelementptr inbounds i64, i64* %cloptr18035, i64 4                  ; &eptr18040[4]
  %eptr18041 = getelementptr inbounds i64, i64* %cloptr18035, i64 5                  ; &eptr18041[5]
  store i64 %oki$_37length, i64* %eptr18037                                          ; *eptr18037 = %oki$_37length
  store i64 %f0X$Ycmb, i64* %eptr18038                                               ; *eptr18038 = %f0X$Ycmb
  store i64 %Hkd$_37foldr1, i64* %eptr18039                                          ; *eptr18039 = %Hkd$_37foldr1
  store i64 %I8m$_37take, i64* %eptr18040                                            ; *eptr18040 = %I8m$_37take
  store i64 %vzO$_37map1, i64* %eptr18041                                            ; *eptr18041 = %vzO$_37map1
  %eptr18036 = getelementptr inbounds i64, i64* %cloptr18035, i64 0                  ; &cloptr18035[0]
  %f18042 = ptrtoint void(i64,i64)* @lam10950 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18042, i64* %eptr18036                                                 ; store fptr
  %arg7359 = ptrtoint i64* %cloptr18035 to i64                                       ; closure cast; i64* -> i64
  %cloptr18043 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18044 = getelementptr inbounds i64, i64* %cloptr18043, i64 0                  ; &cloptr18043[0]
  %f18045 = ptrtoint void(i64,i64)* @lam10132 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18045, i64* %eptr18044                                                 ; store fptr
  %arg7358 = ptrtoint i64* %cloptr18043 to i64                                       ; closure cast; i64* -> i64
  %rva9869 = add i64 0, 0                                                            ; quoted ()
  %rva9868 = call i64 @prim_cons(i64 %arg7358, i64 %rva9869)                         ; call prim_cons
  %rva9867 = call i64 @prim_cons(i64 %arg7359, i64 %rva9868)                         ; call prim_cons
  %cloptr18046 = inttoptr i64 %f0X$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18047 = getelementptr inbounds i64, i64* %cloptr18046, i64 0                 ; &cloptr18046[0]
  %f18049 = load i64, i64* %i0ptr18047, align 8                                      ; load; *i0ptr18047
  %fptr18048 = inttoptr i64 %f18049 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18048(i64 %f0X$Ycmb, i64 %rva9867)                  ; tail call
  ret void
}


define void @lam10950(i64 %env10951, i64 %rvp9837) {
  %envptr18050 = inttoptr i64 %env10951 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18051 = getelementptr inbounds i64, i64* %envptr18050, i64 5                ; &envptr18050[5]
  %vzO$_37map1 = load i64, i64* %envptr18051, align 8                                ; load; *envptr18051
  %envptr18052 = inttoptr i64 %env10951 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18053 = getelementptr inbounds i64, i64* %envptr18052, i64 4                ; &envptr18052[4]
  %I8m$_37take = load i64, i64* %envptr18053, align 8                                ; load; *envptr18053
  %envptr18054 = inttoptr i64 %env10951 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18055 = getelementptr inbounds i64, i64* %envptr18054, i64 3                ; &envptr18054[3]
  %Hkd$_37foldr1 = load i64, i64* %envptr18055, align 8                              ; load; *envptr18055
  %envptr18056 = inttoptr i64 %env10951 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18057 = getelementptr inbounds i64, i64* %envptr18056, i64 2                ; &envptr18056[2]
  %f0X$Ycmb = load i64, i64* %envptr18057, align 8                                   ; load; *envptr18057
  %envptr18058 = inttoptr i64 %env10951 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18059 = getelementptr inbounds i64, i64* %envptr18058, i64 1                ; &envptr18058[1]
  %oki$_37length = load i64, i64* %envptr18059, align 8                              ; load; *envptr18059
  %_957073 = call i64 @prim_car(i64 %rvp9837)                                        ; call prim_car
  %rvp9836 = call i64 @prim_cdr(i64 %rvp9837)                                        ; call prim_cdr
  %PvW$_37foldl1 = call i64 @prim_car(i64 %rvp9836)                                  ; call prim_car
  %na8605 = call i64 @prim_cdr(i64 %rvp9836)                                         ; call prim_cdr
  %cloptr18060 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr18062 = getelementptr inbounds i64, i64* %cloptr18060, i64 1                  ; &eptr18062[1]
  store i64 %PvW$_37foldl1, i64* %eptr18062                                          ; *eptr18062 = %PvW$_37foldl1
  %eptr18061 = getelementptr inbounds i64, i64* %cloptr18060, i64 0                  ; &cloptr18060[0]
  %f18063 = ptrtoint void(i64,i64)* @lam10948 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18063, i64* %eptr18061                                                 ; store fptr
  %PLS$_37last = ptrtoint i64* %cloptr18060 to i64                                   ; closure cast; i64* -> i64
  %cloptr18064 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18066 = getelementptr inbounds i64, i64* %cloptr18064, i64 1                  ; &eptr18066[1]
  %eptr18067 = getelementptr inbounds i64, i64* %cloptr18064, i64 2                  ; &eptr18067[2]
  store i64 %oki$_37length, i64* %eptr18066                                          ; *eptr18066 = %oki$_37length
  store i64 %I8m$_37take, i64* %eptr18067                                            ; *eptr18067 = %I8m$_37take
  %eptr18065 = getelementptr inbounds i64, i64* %cloptr18064, i64 0                  ; &cloptr18064[0]
  %f18068 = ptrtoint void(i64,i64)* @lam10940 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18068, i64* %eptr18065                                                 ; store fptr
  %qUS$_37drop_45right = ptrtoint i64* %cloptr18064 to i64                           ; closure cast; i64* -> i64
  %cloptr18069 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr18071 = getelementptr inbounds i64, i64* %cloptr18069, i64 1                  ; &eptr18071[1]
  %eptr18072 = getelementptr inbounds i64, i64* %cloptr18069, i64 2                  ; &eptr18072[2]
  %eptr18073 = getelementptr inbounds i64, i64* %cloptr18069, i64 3                  ; &eptr18073[3]
  %eptr18074 = getelementptr inbounds i64, i64* %cloptr18069, i64 4                  ; &eptr18074[4]
  %eptr18075 = getelementptr inbounds i64, i64* %cloptr18069, i64 5                  ; &eptr18075[5]
  %eptr18076 = getelementptr inbounds i64, i64* %cloptr18069, i64 6                  ; &eptr18076[6]
  store i64 %qUS$_37drop_45right, i64* %eptr18071                                    ; *eptr18071 = %qUS$_37drop_45right
  store i64 %oki$_37length, i64* %eptr18072                                          ; *eptr18072 = %oki$_37length
  store i64 %PLS$_37last, i64* %eptr18073                                            ; *eptr18073 = %PLS$_37last
  store i64 %f0X$Ycmb, i64* %eptr18074                                               ; *eptr18074 = %f0X$Ycmb
  store i64 %Hkd$_37foldr1, i64* %eptr18075                                          ; *eptr18075 = %Hkd$_37foldr1
  store i64 %PvW$_37foldl1, i64* %eptr18076                                          ; *eptr18076 = %PvW$_37foldl1
  %eptr18070 = getelementptr inbounds i64, i64* %cloptr18069, i64 0                  ; &cloptr18069[0]
  %f18077 = ptrtoint void(i64,i64)* @lam10934 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18077, i64* %eptr18070                                                 ; store fptr
  %arg7379 = ptrtoint i64* %cloptr18069 to i64                                       ; closure cast; i64* -> i64
  %cloptr18078 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18080 = getelementptr inbounds i64, i64* %cloptr18078, i64 1                  ; &eptr18080[1]
  %eptr18081 = getelementptr inbounds i64, i64* %cloptr18078, i64 2                  ; &eptr18081[2]
  store i64 %Hkd$_37foldr1, i64* %eptr18080                                          ; *eptr18080 = %Hkd$_37foldr1
  store i64 %vzO$_37map1, i64* %eptr18081                                            ; *eptr18081 = %vzO$_37map1
  %eptr18079 = getelementptr inbounds i64, i64* %cloptr18078, i64 0                  ; &cloptr18078[0]
  %f18082 = ptrtoint void(i64,i64)* @lam10183 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18082, i64* %eptr18079                                                 ; store fptr
  %arg7378 = ptrtoint i64* %cloptr18078 to i64                                       ; closure cast; i64* -> i64
  %rva9835 = add i64 0, 0                                                            ; quoted ()
  %rva9834 = call i64 @prim_cons(i64 %arg7378, i64 %rva9835)                         ; call prim_cons
  %rva9833 = call i64 @prim_cons(i64 %arg7379, i64 %rva9834)                         ; call prim_cons
  %cloptr18083 = inttoptr i64 %f0X$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18084 = getelementptr inbounds i64, i64* %cloptr18083, i64 0                 ; &cloptr18083[0]
  %f18086 = load i64, i64* %i0ptr18084, align 8                                      ; load; *i0ptr18084
  %fptr18085 = inttoptr i64 %f18086 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18085(i64 %f0X$Ycmb, i64 %rva9833)                  ; tail call
  ret void
}


define void @lam10948(i64 %env10949, i64 %rvp8622) {
  %envptr18087 = inttoptr i64 %env10949 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18088 = getelementptr inbounds i64, i64* %envptr18087, i64 1                ; &envptr18087[1]
  %PvW$_37foldl1 = load i64, i64* %envptr18088, align 8                              ; load; *envptr18088
  %cont7074 = call i64 @prim_car(i64 %rvp8622)                                       ; call prim_car
  %rvp8621 = call i64 @prim_cdr(i64 %rvp8622)                                        ; call prim_cdr
  %oRf$lst = call i64 @prim_car(i64 %rvp8621)                                        ; call prim_car
  %na8607 = call i64 @prim_cdr(i64 %rvp8621)                                         ; call prim_cdr
  %cloptr18089 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18090 = getelementptr inbounds i64, i64* %cloptr18089, i64 0                  ; &cloptr18089[0]
  %f18091 = ptrtoint void(i64,i64)* @lam10946 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18091, i64* %eptr18090                                                 ; store fptr
  %arg7363 = ptrtoint i64* %cloptr18089 to i64                                       ; closure cast; i64* -> i64
  %arg7362 = add i64 0, 0                                                            ; quoted ()
  %rva8620 = add i64 0, 0                                                            ; quoted ()
  %rva8619 = call i64 @prim_cons(i64 %oRf$lst, i64 %rva8620)                         ; call prim_cons
  %rva8618 = call i64 @prim_cons(i64 %arg7362, i64 %rva8619)                         ; call prim_cons
  %rva8617 = call i64 @prim_cons(i64 %arg7363, i64 %rva8618)                         ; call prim_cons
  %rva8616 = call i64 @prim_cons(i64 %cont7074, i64 %rva8617)                        ; call prim_cons
  %cloptr18092 = inttoptr i64 %PvW$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr18093 = getelementptr inbounds i64, i64* %cloptr18092, i64 0                 ; &cloptr18092[0]
  %f18095 = load i64, i64* %i0ptr18093, align 8                                      ; load; *i0ptr18093
  %fptr18094 = inttoptr i64 %f18095 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18094(i64 %PvW$_37foldl1, i64 %rva8616)             ; tail call
  ret void
}


define void @lam10946(i64 %env10947, i64 %rvp8615) {
  %cont7075 = call i64 @prim_car(i64 %rvp8615)                                       ; call prim_car
  %rvp8614 = call i64 @prim_cdr(i64 %rvp8615)                                        ; call prim_cdr
  %WAo$x = call i64 @prim_car(i64 %rvp8614)                                          ; call prim_car
  %rvp8613 = call i64 @prim_cdr(i64 %rvp8614)                                        ; call prim_cdr
  %rRj$y = call i64 @prim_car(i64 %rvp8613)                                          ; call prim_car
  %na8609 = call i64 @prim_cdr(i64 %rvp8613)                                         ; call prim_cdr
  %arg7367 = add i64 0, 0                                                            ; quoted ()
  %rva8612 = add i64 0, 0                                                            ; quoted ()
  %rva8611 = call i64 @prim_cons(i64 %WAo$x, i64 %rva8612)                           ; call prim_cons
  %rva8610 = call i64 @prim_cons(i64 %arg7367, i64 %rva8611)                         ; call prim_cons
  %cloptr18096 = inttoptr i64 %cont7075 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18097 = getelementptr inbounds i64, i64* %cloptr18096, i64 0                 ; &cloptr18096[0]
  %f18099 = load i64, i64* %i0ptr18097, align 8                                      ; load; *i0ptr18097
  %fptr18098 = inttoptr i64 %f18099 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18098(i64 %cont7075, i64 %rva8610)                  ; tail call
  ret void
}


define void @lam10940(i64 %env10941, i64 %rvp8638) {
  %envptr18100 = inttoptr i64 %env10941 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18101 = getelementptr inbounds i64, i64* %envptr18100, i64 2                ; &envptr18100[2]
  %I8m$_37take = load i64, i64* %envptr18101, align 8                                ; load; *envptr18101
  %envptr18102 = inttoptr i64 %env10941 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18103 = getelementptr inbounds i64, i64* %envptr18102, i64 1                ; &envptr18102[1]
  %oki$_37length = load i64, i64* %envptr18103, align 8                              ; load; *envptr18103
  %cont7076 = call i64 @prim_car(i64 %rvp8638)                                       ; call prim_car
  %rvp8637 = call i64 @prim_cdr(i64 %rvp8638)                                        ; call prim_cdr
  %CmE$lst = call i64 @prim_car(i64 %rvp8637)                                        ; call prim_car
  %rvp8636 = call i64 @prim_cdr(i64 %rvp8637)                                        ; call prim_cdr
  %U8s$n = call i64 @prim_car(i64 %rvp8636)                                          ; call prim_car
  %na8624 = call i64 @prim_cdr(i64 %rvp8636)                                         ; call prim_cdr
  %cloptr18104 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr18106 = getelementptr inbounds i64, i64* %cloptr18104, i64 1                  ; &eptr18106[1]
  %eptr18107 = getelementptr inbounds i64, i64* %cloptr18104, i64 2                  ; &eptr18107[2]
  %eptr18108 = getelementptr inbounds i64, i64* %cloptr18104, i64 3                  ; &eptr18108[3]
  %eptr18109 = getelementptr inbounds i64, i64* %cloptr18104, i64 4                  ; &eptr18109[4]
  store i64 %CmE$lst, i64* %eptr18106                                                ; *eptr18106 = %CmE$lst
  store i64 %cont7076, i64* %eptr18107                                               ; *eptr18107 = %cont7076
  store i64 %U8s$n, i64* %eptr18108                                                  ; *eptr18108 = %U8s$n
  store i64 %I8m$_37take, i64* %eptr18109                                            ; *eptr18109 = %I8m$_37take
  %eptr18105 = getelementptr inbounds i64, i64* %cloptr18104, i64 0                  ; &cloptr18104[0]
  %f18110 = ptrtoint void(i64,i64)* @lam10938 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18110, i64* %eptr18105                                                 ; store fptr
  %arg7370 = ptrtoint i64* %cloptr18104 to i64                                       ; closure cast; i64* -> i64
  %rva8635 = add i64 0, 0                                                            ; quoted ()
  %rva8634 = call i64 @prim_cons(i64 %CmE$lst, i64 %rva8635)                         ; call prim_cons
  %rva8633 = call i64 @prim_cons(i64 %arg7370, i64 %rva8634)                         ; call prim_cons
  %cloptr18111 = inttoptr i64 %oki$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr18112 = getelementptr inbounds i64, i64* %cloptr18111, i64 0                 ; &cloptr18111[0]
  %f18114 = load i64, i64* %i0ptr18112, align 8                                      ; load; *i0ptr18112
  %fptr18113 = inttoptr i64 %f18114 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18113(i64 %oki$_37length, i64 %rva8633)             ; tail call
  ret void
}


define void @lam10938(i64 %env10939, i64 %rvp8632) {
  %envptr18115 = inttoptr i64 %env10939 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18116 = getelementptr inbounds i64, i64* %envptr18115, i64 4                ; &envptr18115[4]
  %I8m$_37take = load i64, i64* %envptr18116, align 8                                ; load; *envptr18116
  %envptr18117 = inttoptr i64 %env10939 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18118 = getelementptr inbounds i64, i64* %envptr18117, i64 3                ; &envptr18117[3]
  %U8s$n = load i64, i64* %envptr18118, align 8                                      ; load; *envptr18118
  %envptr18119 = inttoptr i64 %env10939 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18120 = getelementptr inbounds i64, i64* %envptr18119, i64 2                ; &envptr18119[2]
  %cont7076 = load i64, i64* %envptr18120, align 8                                   ; load; *envptr18120
  %envptr18121 = inttoptr i64 %env10939 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18122 = getelementptr inbounds i64, i64* %envptr18121, i64 1                ; &envptr18121[1]
  %CmE$lst = load i64, i64* %envptr18122, align 8                                    ; load; *envptr18122
  %_957077 = call i64 @prim_car(i64 %rvp8632)                                        ; call prim_car
  %rvp8631 = call i64 @prim_cdr(i64 %rvp8632)                                        ; call prim_cdr
  %a6912 = call i64 @prim_car(i64 %rvp8631)                                          ; call prim_car
  %na8626 = call i64 @prim_cdr(i64 %rvp8631)                                         ; call prim_cdr
  %a6913 = call i64 @prim__45(i64 %a6912, i64 %U8s$n)                                ; call prim__45
  %rva8630 = add i64 0, 0                                                            ; quoted ()
  %rva8629 = call i64 @prim_cons(i64 %a6913, i64 %rva8630)                           ; call prim_cons
  %rva8628 = call i64 @prim_cons(i64 %CmE$lst, i64 %rva8629)                         ; call prim_cons
  %rva8627 = call i64 @prim_cons(i64 %cont7076, i64 %rva8628)                        ; call prim_cons
  %cloptr18123 = inttoptr i64 %I8m$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr18124 = getelementptr inbounds i64, i64* %cloptr18123, i64 0                 ; &cloptr18123[0]
  %f18126 = load i64, i64* %i0ptr18124, align 8                                      ; load; *i0ptr18124
  %fptr18125 = inttoptr i64 %f18126 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18125(i64 %I8m$_37take, i64 %rva8627)               ; tail call
  ret void
}


define void @lam10934(i64 %env10935, i64 %rvp9737) {
  %envptr18127 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18128 = getelementptr inbounds i64, i64* %envptr18127, i64 6                ; &envptr18127[6]
  %PvW$_37foldl1 = load i64, i64* %envptr18128, align 8                              ; load; *envptr18128
  %envptr18129 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18130 = getelementptr inbounds i64, i64* %envptr18129, i64 5                ; &envptr18129[5]
  %Hkd$_37foldr1 = load i64, i64* %envptr18130, align 8                              ; load; *envptr18130
  %envptr18131 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18132 = getelementptr inbounds i64, i64* %envptr18131, i64 4                ; &envptr18131[4]
  %f0X$Ycmb = load i64, i64* %envptr18132, align 8                                   ; load; *envptr18132
  %envptr18133 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18134 = getelementptr inbounds i64, i64* %envptr18133, i64 3                ; &envptr18133[3]
  %PLS$_37last = load i64, i64* %envptr18134, align 8                                ; load; *envptr18134
  %envptr18135 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18136 = getelementptr inbounds i64, i64* %envptr18135, i64 2                ; &envptr18135[2]
  %oki$_37length = load i64, i64* %envptr18136, align 8                              ; load; *envptr18136
  %envptr18137 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18138 = getelementptr inbounds i64, i64* %envptr18137, i64 1                ; &envptr18137[1]
  %qUS$_37drop_45right = load i64, i64* %envptr18138, align 8                        ; load; *envptr18138
  %_957078 = call i64 @prim_car(i64 %rvp9737)                                        ; call prim_car
  %rvp9736 = call i64 @prim_cdr(i64 %rvp9737)                                        ; call prim_cdr
  %qqv$_37foldr = call i64 @prim_car(i64 %rvp9736)                                   ; call prim_car
  %na8640 = call i64 @prim_cdr(i64 %rvp9736)                                         ; call prim_cdr
  %cloptr18139 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr18141 = getelementptr inbounds i64, i64* %cloptr18139, i64 1                  ; &eptr18141[1]
  store i64 %Hkd$_37foldr1, i64* %eptr18141                                          ; *eptr18141 = %Hkd$_37foldr1
  %eptr18140 = getelementptr inbounds i64, i64* %cloptr18139, i64 0                  ; &cloptr18139[0]
  %f18142 = ptrtoint void(i64,i64)* @lam10932 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18142, i64* %eptr18140                                                 ; store fptr
  %e8h$_37map1 = ptrtoint i64* %cloptr18139 to i64                                   ; closure cast; i64* -> i64
  %cloptr18143 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18145 = getelementptr inbounds i64, i64* %cloptr18143, i64 1                  ; &eptr18145[1]
  %eptr18146 = getelementptr inbounds i64, i64* %cloptr18143, i64 2                  ; &eptr18146[2]
  %eptr18147 = getelementptr inbounds i64, i64* %cloptr18143, i64 3                  ; &eptr18147[3]
  store i64 %qUS$_37drop_45right, i64* %eptr18145                                    ; *eptr18145 = %qUS$_37drop_45right
  store i64 %PLS$_37last, i64* %eptr18146                                            ; *eptr18146 = %PLS$_37last
  store i64 %qqv$_37foldr, i64* %eptr18147                                           ; *eptr18147 = %qqv$_37foldr
  %eptr18144 = getelementptr inbounds i64, i64* %cloptr18143, i64 0                  ; &cloptr18143[0]
  %f18148 = ptrtoint void(i64,i64)* @lam10921 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18148, i64* %eptr18144                                                 ; store fptr
  %dAS$_37map = ptrtoint i64* %cloptr18143 to i64                                    ; closure cast; i64* -> i64
  %cloptr18149 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18151 = getelementptr inbounds i64, i64* %cloptr18149, i64 1                  ; &eptr18151[1]
  %eptr18152 = getelementptr inbounds i64, i64* %cloptr18149, i64 2                  ; &eptr18152[2]
  store i64 %oki$_37length, i64* %eptr18151                                          ; *eptr18151 = %oki$_37length
  store i64 %PvW$_37foldl1, i64* %eptr18152                                          ; *eptr18152 = %PvW$_37foldl1
  %eptr18150 = getelementptr inbounds i64, i64* %cloptr18149, i64 0                  ; &cloptr18149[0]
  %f18153 = ptrtoint void(i64,i64)* @lam10905 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18153, i64* %eptr18150                                                 ; store fptr
  %arg7421 = ptrtoint i64* %cloptr18149 to i64                                       ; closure cast; i64* -> i64
  %cloptr18154 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18156 = getelementptr inbounds i64, i64* %cloptr18154, i64 1                  ; &eptr18156[1]
  %eptr18157 = getelementptr inbounds i64, i64* %cloptr18154, i64 2                  ; &eptr18157[2]
  %eptr18158 = getelementptr inbounds i64, i64* %cloptr18154, i64 3                  ; &eptr18158[3]
  store i64 %e8h$_37map1, i64* %eptr18156                                            ; *eptr18156 = %e8h$_37map1
  store i64 %qqv$_37foldr, i64* %eptr18157                                           ; *eptr18157 = %qqv$_37foldr
  store i64 %Hkd$_37foldr1, i64* %eptr18158                                          ; *eptr18158 = %Hkd$_37foldr1
  %eptr18155 = getelementptr inbounds i64, i64* %cloptr18154, i64 0                  ; &cloptr18154[0]
  %f18159 = ptrtoint void(i64,i64)* @lam10234 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18159, i64* %eptr18155                                                 ; store fptr
  %arg7420 = ptrtoint i64* %cloptr18154 to i64                                       ; closure cast; i64* -> i64
  %rva9735 = add i64 0, 0                                                            ; quoted ()
  %rva9734 = call i64 @prim_cons(i64 %arg7420, i64 %rva9735)                         ; call prim_cons
  %rva9733 = call i64 @prim_cons(i64 %arg7421, i64 %rva9734)                         ; call prim_cons
  %cloptr18160 = inttoptr i64 %f0X$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18161 = getelementptr inbounds i64, i64* %cloptr18160, i64 0                 ; &cloptr18160[0]
  %f18163 = load i64, i64* %i0ptr18161, align 8                                      ; load; *i0ptr18161
  %fptr18162 = inttoptr i64 %f18163 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18162(i64 %f0X$Ycmb, i64 %rva9733)                  ; tail call
  ret void
}


define void @lam10932(i64 %env10933, i64 %rvp8665) {
  %envptr18164 = inttoptr i64 %env10933 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18165 = getelementptr inbounds i64, i64* %envptr18164, i64 1                ; &envptr18164[1]
  %Hkd$_37foldr1 = load i64, i64* %envptr18165, align 8                              ; load; *envptr18165
  %cont7079 = call i64 @prim_car(i64 %rvp8665)                                       ; call prim_car
  %rvp8664 = call i64 @prim_cdr(i64 %rvp8665)                                        ; call prim_cdr
  %KV5$f = call i64 @prim_car(i64 %rvp8664)                                          ; call prim_car
  %rvp8663 = call i64 @prim_cdr(i64 %rvp8664)                                        ; call prim_cdr
  %TWV$lst = call i64 @prim_car(i64 %rvp8663)                                        ; call prim_car
  %na8642 = call i64 @prim_cdr(i64 %rvp8663)                                         ; call prim_cdr
  %cloptr18166 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr18168 = getelementptr inbounds i64, i64* %cloptr18166, i64 1                  ; &eptr18168[1]
  store i64 %KV5$f, i64* %eptr18168                                                  ; *eptr18168 = %KV5$f
  %eptr18167 = getelementptr inbounds i64, i64* %cloptr18166, i64 0                  ; &cloptr18166[0]
  %f18169 = ptrtoint void(i64,i64)* @lam10930 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18169, i64* %eptr18167                                                 ; store fptr
  %arg7383 = ptrtoint i64* %cloptr18166 to i64                                       ; closure cast; i64* -> i64
  %arg7382 = add i64 0, 0                                                            ; quoted ()
  %rva8662 = add i64 0, 0                                                            ; quoted ()
  %rva8661 = call i64 @prim_cons(i64 %TWV$lst, i64 %rva8662)                         ; call prim_cons
  %rva8660 = call i64 @prim_cons(i64 %arg7382, i64 %rva8661)                         ; call prim_cons
  %rva8659 = call i64 @prim_cons(i64 %arg7383, i64 %rva8660)                         ; call prim_cons
  %rva8658 = call i64 @prim_cons(i64 %cont7079, i64 %rva8659)                        ; call prim_cons
  %cloptr18170 = inttoptr i64 %Hkd$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr18171 = getelementptr inbounds i64, i64* %cloptr18170, i64 0                 ; &cloptr18170[0]
  %f18173 = load i64, i64* %i0ptr18171, align 8                                      ; load; *i0ptr18171
  %fptr18172 = inttoptr i64 %f18173 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18172(i64 %Hkd$_37foldr1, i64 %rva8658)             ; tail call
  ret void
}


define void @lam10930(i64 %env10931, i64 %rvp8657) {
  %envptr18174 = inttoptr i64 %env10931 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18175 = getelementptr inbounds i64, i64* %envptr18174, i64 1                ; &envptr18174[1]
  %KV5$f = load i64, i64* %envptr18175, align 8                                      ; load; *envptr18175
  %cont7080 = call i64 @prim_car(i64 %rvp8657)                                       ; call prim_car
  %rvp8656 = call i64 @prim_cdr(i64 %rvp8657)                                        ; call prim_cdr
  %yvi$v = call i64 @prim_car(i64 %rvp8656)                                          ; call prim_car
  %rvp8655 = call i64 @prim_cdr(i64 %rvp8656)                                        ; call prim_cdr
  %LQP$r = call i64 @prim_car(i64 %rvp8655)                                          ; call prim_car
  %na8644 = call i64 @prim_cdr(i64 %rvp8655)                                         ; call prim_cdr
  %cloptr18176 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18178 = getelementptr inbounds i64, i64* %cloptr18176, i64 1                  ; &eptr18178[1]
  %eptr18179 = getelementptr inbounds i64, i64* %cloptr18176, i64 2                  ; &eptr18179[2]
  store i64 %LQP$r, i64* %eptr18178                                                  ; *eptr18178 = %LQP$r
  store i64 %cont7080, i64* %eptr18179                                               ; *eptr18179 = %cont7080
  %eptr18177 = getelementptr inbounds i64, i64* %cloptr18176, i64 0                  ; &cloptr18176[0]
  %f18180 = ptrtoint void(i64,i64)* @lam10928 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18180, i64* %eptr18177                                                 ; store fptr
  %arg7387 = ptrtoint i64* %cloptr18176 to i64                                       ; closure cast; i64* -> i64
  %rva8654 = add i64 0, 0                                                            ; quoted ()
  %rva8653 = call i64 @prim_cons(i64 %yvi$v, i64 %rva8654)                           ; call prim_cons
  %rva8652 = call i64 @prim_cons(i64 %arg7387, i64 %rva8653)                         ; call prim_cons
  %cloptr18181 = inttoptr i64 %KV5$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr18182 = getelementptr inbounds i64, i64* %cloptr18181, i64 0                 ; &cloptr18181[0]
  %f18184 = load i64, i64* %i0ptr18182, align 8                                      ; load; *i0ptr18182
  %fptr18183 = inttoptr i64 %f18184 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18183(i64 %KV5$f, i64 %rva8652)                     ; tail call
  ret void
}


define void @lam10928(i64 %env10929, i64 %rvp8651) {
  %envptr18185 = inttoptr i64 %env10929 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18186 = getelementptr inbounds i64, i64* %envptr18185, i64 2                ; &envptr18185[2]
  %cont7080 = load i64, i64* %envptr18186, align 8                                   ; load; *envptr18186
  %envptr18187 = inttoptr i64 %env10929 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18188 = getelementptr inbounds i64, i64* %envptr18187, i64 1                ; &envptr18187[1]
  %LQP$r = load i64, i64* %envptr18188, align 8                                      ; load; *envptr18188
  %_957081 = call i64 @prim_car(i64 %rvp8651)                                        ; call prim_car
  %rvp8650 = call i64 @prim_cdr(i64 %rvp8651)                                        ; call prim_cdr
  %a6922 = call i64 @prim_car(i64 %rvp8650)                                          ; call prim_car
  %na8646 = call i64 @prim_cdr(i64 %rvp8650)                                         ; call prim_cdr
  %retprim7082 = call i64 @prim_cons(i64 %a6922, i64 %LQP$r)                         ; call prim_cons
  %arg7392 = add i64 0, 0                                                            ; quoted ()
  %rva8649 = add i64 0, 0                                                            ; quoted ()
  %rva8648 = call i64 @prim_cons(i64 %retprim7082, i64 %rva8649)                     ; call prim_cons
  %rva8647 = call i64 @prim_cons(i64 %arg7392, i64 %rva8648)                         ; call prim_cons
  %cloptr18189 = inttoptr i64 %cont7080 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18190 = getelementptr inbounds i64, i64* %cloptr18189, i64 0                 ; &cloptr18189[0]
  %f18192 = load i64, i64* %i0ptr18190, align 8                                      ; load; *i0ptr18190
  %fptr18191 = inttoptr i64 %f18192 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18191(i64 %cont7080, i64 %rva8647)                  ; tail call
  ret void
}


define void @lam10921(i64 %env10922, i64 %oMt$args7084) {
  %envptr18193 = inttoptr i64 %env10922 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18194 = getelementptr inbounds i64, i64* %envptr18193, i64 3                ; &envptr18193[3]
  %qqv$_37foldr = load i64, i64* %envptr18194, align 8                               ; load; *envptr18194
  %envptr18195 = inttoptr i64 %env10922 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18196 = getelementptr inbounds i64, i64* %envptr18195, i64 2                ; &envptr18195[2]
  %PLS$_37last = load i64, i64* %envptr18196, align 8                                ; load; *envptr18196
  %envptr18197 = inttoptr i64 %env10922 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18198 = getelementptr inbounds i64, i64* %envptr18197, i64 1                ; &envptr18197[1]
  %qUS$_37drop_45right = load i64, i64* %envptr18198, align 8                        ; load; *envptr18198
  %cont7083 = call i64 @prim_car(i64 %oMt$args7084)                                  ; call prim_car
  %oMt$args = call i64 @prim_cdr(i64 %oMt$args7084)                                  ; call prim_cdr
  %zz5$f = call i64 @prim_car(i64 %oMt$args)                                         ; call prim_car
  %dxa$lsts = call i64 @prim_cdr(i64 %oMt$args)                                      ; call prim_cdr
  %arg7399 = add i64 0, 0                                                            ; quoted ()
  %a6926 = call i64 @prim_cons(i64 %arg7399, i64 %dxa$lsts)                          ; call prim_cons
  %cloptr18199 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18201 = getelementptr inbounds i64, i64* %cloptr18199, i64 1                  ; &eptr18201[1]
  %eptr18202 = getelementptr inbounds i64, i64* %cloptr18199, i64 2                  ; &eptr18202[2]
  %eptr18203 = getelementptr inbounds i64, i64* %cloptr18199, i64 3                  ; &eptr18203[3]
  store i64 %qUS$_37drop_45right, i64* %eptr18201                                    ; *eptr18201 = %qUS$_37drop_45right
  store i64 %zz5$f, i64* %eptr18202                                                  ; *eptr18202 = %zz5$f
  store i64 %PLS$_37last, i64* %eptr18203                                            ; *eptr18203 = %PLS$_37last
  %eptr18200 = getelementptr inbounds i64, i64* %cloptr18199, i64 0                  ; &cloptr18199[0]
  %f18204 = ptrtoint void(i64,i64)* @lam10918 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18204, i64* %eptr18200                                                 ; store fptr
  %arg7401 = ptrtoint i64* %cloptr18199 to i64                                       ; closure cast; i64* -> i64
  %a6927 = call i64 @prim_cons(i64 %arg7401, i64 %a6926)                             ; call prim_cons
  %cps_45lst7092 = call i64 @prim_cons(i64 %cont7083, i64 %a6927)                    ; call prim_cons
  %cloptr18205 = inttoptr i64 %qqv$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr18206 = getelementptr inbounds i64, i64* %cloptr18205, i64 0                 ; &cloptr18205[0]
  %f18208 = load i64, i64* %i0ptr18206, align 8                                      ; load; *i0ptr18206
  %fptr18207 = inttoptr i64 %f18208 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18207(i64 %qqv$_37foldr, i64 %cps_45lst7092)        ; tail call
  ret void
}


define void @lam10918(i64 %env10919, i64 %ExE$fargs7086) {
  %envptr18209 = inttoptr i64 %env10919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18210 = getelementptr inbounds i64, i64* %envptr18209, i64 3                ; &envptr18209[3]
  %PLS$_37last = load i64, i64* %envptr18210, align 8                                ; load; *envptr18210
  %envptr18211 = inttoptr i64 %env10919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18212 = getelementptr inbounds i64, i64* %envptr18211, i64 2                ; &envptr18211[2]
  %zz5$f = load i64, i64* %envptr18212, align 8                                      ; load; *envptr18212
  %envptr18213 = inttoptr i64 %env10919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18214 = getelementptr inbounds i64, i64* %envptr18213, i64 1                ; &envptr18213[1]
  %qUS$_37drop_45right = load i64, i64* %envptr18214, align 8                        ; load; *envptr18214
  %cont7085 = call i64 @prim_car(i64 %ExE$fargs7086)                                 ; call prim_car
  %ExE$fargs = call i64 @prim_cdr(i64 %ExE$fargs7086)                                ; call prim_cdr
  %cloptr18215 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr18217 = getelementptr inbounds i64, i64* %cloptr18215, i64 1                  ; &eptr18217[1]
  %eptr18218 = getelementptr inbounds i64, i64* %cloptr18215, i64 2                  ; &eptr18218[2]
  %eptr18219 = getelementptr inbounds i64, i64* %cloptr18215, i64 3                  ; &eptr18219[3]
  %eptr18220 = getelementptr inbounds i64, i64* %cloptr18215, i64 4                  ; &eptr18220[4]
  store i64 %zz5$f, i64* %eptr18217                                                  ; *eptr18217 = %zz5$f
  store i64 %PLS$_37last, i64* %eptr18218                                            ; *eptr18218 = %PLS$_37last
  store i64 %cont7085, i64* %eptr18219                                               ; *eptr18219 = %cont7085
  store i64 %ExE$fargs, i64* %eptr18220                                              ; *eptr18220 = %ExE$fargs
  %eptr18216 = getelementptr inbounds i64, i64* %cloptr18215, i64 0                  ; &cloptr18215[0]
  %f18221 = ptrtoint void(i64,i64)* @lam10916 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18221, i64* %eptr18216                                                 ; store fptr
  %arg7406 = ptrtoint i64* %cloptr18215 to i64                                       ; closure cast; i64* -> i64
  %arg7404 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %rva8687 = add i64 0, 0                                                            ; quoted ()
  %rva8686 = call i64 @prim_cons(i64 %arg7404, i64 %rva8687)                         ; call prim_cons
  %rva8685 = call i64 @prim_cons(i64 %ExE$fargs, i64 %rva8686)                       ; call prim_cons
  %rva8684 = call i64 @prim_cons(i64 %arg7406, i64 %rva8685)                         ; call prim_cons
  %cloptr18222 = inttoptr i64 %qUS$_37drop_45right to i64*                           ; closure/env cast; i64 -> i64*
  %i0ptr18223 = getelementptr inbounds i64, i64* %cloptr18222, i64 0                 ; &cloptr18222[0]
  %f18225 = load i64, i64* %i0ptr18223, align 8                                      ; load; *i0ptr18223
  %fptr18224 = inttoptr i64 %f18225 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18224(i64 %qUS$_37drop_45right, i64 %rva8684)       ; tail call
  ret void
}


define void @lam10916(i64 %env10917, i64 %rvp8683) {
  %envptr18226 = inttoptr i64 %env10917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18227 = getelementptr inbounds i64, i64* %envptr18226, i64 4                ; &envptr18226[4]
  %ExE$fargs = load i64, i64* %envptr18227, align 8                                  ; load; *envptr18227
  %envptr18228 = inttoptr i64 %env10917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18229 = getelementptr inbounds i64, i64* %envptr18228, i64 3                ; &envptr18228[3]
  %cont7085 = load i64, i64* %envptr18229, align 8                                   ; load; *envptr18229
  %envptr18230 = inttoptr i64 %env10917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18231 = getelementptr inbounds i64, i64* %envptr18230, i64 2                ; &envptr18230[2]
  %PLS$_37last = load i64, i64* %envptr18231, align 8                                ; load; *envptr18231
  %envptr18232 = inttoptr i64 %env10917 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18233 = getelementptr inbounds i64, i64* %envptr18232, i64 1                ; &envptr18232[1]
  %zz5$f = load i64, i64* %envptr18233, align 8                                      ; load; *envptr18233
  %_957087 = call i64 @prim_car(i64 %rvp8683)                                        ; call prim_car
  %rvp8682 = call i64 @prim_cdr(i64 %rvp8683)                                        ; call prim_cdr
  %a6923 = call i64 @prim_car(i64 %rvp8682)                                          ; call prim_car
  %na8667 = call i64 @prim_cdr(i64 %rvp8682)                                         ; call prim_cdr
  %cloptr18234 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18236 = getelementptr inbounds i64, i64* %cloptr18234, i64 1                  ; &eptr18236[1]
  %eptr18237 = getelementptr inbounds i64, i64* %cloptr18234, i64 2                  ; &eptr18237[2]
  %eptr18238 = getelementptr inbounds i64, i64* %cloptr18234, i64 3                  ; &eptr18238[3]
  store i64 %PLS$_37last, i64* %eptr18236                                            ; *eptr18236 = %PLS$_37last
  store i64 %cont7085, i64* %eptr18237                                               ; *eptr18237 = %cont7085
  store i64 %ExE$fargs, i64* %eptr18238                                              ; *eptr18238 = %ExE$fargs
  %eptr18235 = getelementptr inbounds i64, i64* %cloptr18234, i64 0                  ; &cloptr18234[0]
  %f18239 = ptrtoint void(i64,i64)* @lam10914 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18239, i64* %eptr18235                                                 ; store fptr
  %arg7409 = ptrtoint i64* %cloptr18234 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7091 = call i64 @prim_cons(i64 %arg7409, i64 %a6923)                     ; call prim_cons
  %cloptr18240 = inttoptr i64 %zz5$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr18241 = getelementptr inbounds i64, i64* %cloptr18240, i64 0                 ; &cloptr18240[0]
  %f18243 = load i64, i64* %i0ptr18241, align 8                                      ; load; *i0ptr18241
  %fptr18242 = inttoptr i64 %f18243 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18242(i64 %zz5$f, i64 %cps_45lst7091)               ; tail call
  ret void
}


define void @lam10914(i64 %env10915, i64 %rvp8681) {
  %envptr18244 = inttoptr i64 %env10915 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18245 = getelementptr inbounds i64, i64* %envptr18244, i64 3                ; &envptr18244[3]
  %ExE$fargs = load i64, i64* %envptr18245, align 8                                  ; load; *envptr18245
  %envptr18246 = inttoptr i64 %env10915 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18247 = getelementptr inbounds i64, i64* %envptr18246, i64 2                ; &envptr18246[2]
  %cont7085 = load i64, i64* %envptr18247, align 8                                   ; load; *envptr18247
  %envptr18248 = inttoptr i64 %env10915 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18249 = getelementptr inbounds i64, i64* %envptr18248, i64 1                ; &envptr18248[1]
  %PLS$_37last = load i64, i64* %envptr18249, align 8                                ; load; *envptr18249
  %_957088 = call i64 @prim_car(i64 %rvp8681)                                        ; call prim_car
  %rvp8680 = call i64 @prim_cdr(i64 %rvp8681)                                        ; call prim_cdr
  %a6924 = call i64 @prim_car(i64 %rvp8680)                                          ; call prim_car
  %na8669 = call i64 @prim_cdr(i64 %rvp8680)                                         ; call prim_cdr
  %cloptr18250 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18252 = getelementptr inbounds i64, i64* %cloptr18250, i64 1                  ; &eptr18252[1]
  %eptr18253 = getelementptr inbounds i64, i64* %cloptr18250, i64 2                  ; &eptr18253[2]
  store i64 %cont7085, i64* %eptr18252                                               ; *eptr18252 = %cont7085
  store i64 %a6924, i64* %eptr18253                                                  ; *eptr18253 = %a6924
  %eptr18251 = getelementptr inbounds i64, i64* %cloptr18250, i64 0                  ; &cloptr18250[0]
  %f18254 = ptrtoint void(i64,i64)* @lam10912 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18254, i64* %eptr18251                                                 ; store fptr
  %arg7411 = ptrtoint i64* %cloptr18250 to i64                                       ; closure cast; i64* -> i64
  %rva8679 = add i64 0, 0                                                            ; quoted ()
  %rva8678 = call i64 @prim_cons(i64 %ExE$fargs, i64 %rva8679)                       ; call prim_cons
  %rva8677 = call i64 @prim_cons(i64 %arg7411, i64 %rva8678)                         ; call prim_cons
  %cloptr18255 = inttoptr i64 %PLS$_37last to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr18256 = getelementptr inbounds i64, i64* %cloptr18255, i64 0                 ; &cloptr18255[0]
  %f18258 = load i64, i64* %i0ptr18256, align 8                                      ; load; *i0ptr18256
  %fptr18257 = inttoptr i64 %f18258 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18257(i64 %PLS$_37last, i64 %rva8677)               ; tail call
  ret void
}


define void @lam10912(i64 %env10913, i64 %rvp8676) {
  %envptr18259 = inttoptr i64 %env10913 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18260 = getelementptr inbounds i64, i64* %envptr18259, i64 2                ; &envptr18259[2]
  %a6924 = load i64, i64* %envptr18260, align 8                                      ; load; *envptr18260
  %envptr18261 = inttoptr i64 %env10913 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18262 = getelementptr inbounds i64, i64* %envptr18261, i64 1                ; &envptr18261[1]
  %cont7085 = load i64, i64* %envptr18262, align 8                                   ; load; *envptr18262
  %_957089 = call i64 @prim_car(i64 %rvp8676)                                        ; call prim_car
  %rvp8675 = call i64 @prim_cdr(i64 %rvp8676)                                        ; call prim_cdr
  %a6925 = call i64 @prim_car(i64 %rvp8675)                                          ; call prim_car
  %na8671 = call i64 @prim_cdr(i64 %rvp8675)                                         ; call prim_cdr
  %retprim7090 = call i64 @prim_cons(i64 %a6924, i64 %a6925)                         ; call prim_cons
  %arg7416 = add i64 0, 0                                                            ; quoted ()
  %rva8674 = add i64 0, 0                                                            ; quoted ()
  %rva8673 = call i64 @prim_cons(i64 %retprim7090, i64 %rva8674)                     ; call prim_cons
  %rva8672 = call i64 @prim_cons(i64 %arg7416, i64 %rva8673)                         ; call prim_cons
  %cloptr18263 = inttoptr i64 %cont7085 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18264 = getelementptr inbounds i64, i64* %cloptr18263, i64 0                 ; &cloptr18263[0]
  %f18266 = load i64, i64* %i0ptr18264, align 8                                      ; load; *i0ptr18264
  %fptr18265 = inttoptr i64 %f18266 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18265(i64 %cont7085, i64 %rva8672)                  ; tail call
  ret void
}


define void @lam10905(i64 %env10906, i64 %rvp9637) {
  %envptr18267 = inttoptr i64 %env10906 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18268 = getelementptr inbounds i64, i64* %envptr18267, i64 2                ; &envptr18267[2]
  %PvW$_37foldl1 = load i64, i64* %envptr18268, align 8                              ; load; *envptr18268
  %envptr18269 = inttoptr i64 %env10906 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18270 = getelementptr inbounds i64, i64* %envptr18269, i64 1                ; &envptr18269[1]
  %oki$_37length = load i64, i64* %envptr18270, align 8                              ; load; *envptr18270
  %_957093 = call i64 @prim_car(i64 %rvp9637)                                        ; call prim_car
  %rvp9636 = call i64 @prim_cdr(i64 %rvp9637)                                        ; call prim_cdr
  %UbE$_37foldl = call i64 @prim_car(i64 %rvp9636)                                   ; call prim_car
  %na8689 = call i64 @prim_cdr(i64 %rvp9636)                                         ; call prim_cdr
  %cloptr18271 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18272 = getelementptr inbounds i64, i64* %cloptr18271, i64 0                  ; &cloptr18271[0]
  %f18273 = ptrtoint void(i64,i64)* @lam10903 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18273, i64* %eptr18272                                                 ; store fptr
  %k4l$_37_62 = ptrtoint i64* %cloptr18271 to i64                                    ; closure cast; i64* -> i64
  %cloptr18274 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18275 = getelementptr inbounds i64, i64* %cloptr18274, i64 0                  ; &cloptr18274[0]
  %f18276 = ptrtoint void(i64,i64)* @lam10899 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18276, i64* %eptr18275                                                 ; store fptr
  %TvH$_37_62_61 = ptrtoint i64* %cloptr18274 to i64                                 ; closure cast; i64* -> i64
  %arg7436 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7435 = add i64 0, 0                                                            ; quoted ()
  %JGt$_37append = call i64 @prim_make_45vector(i64 %arg7436, i64 %arg7435)          ; call prim_make_45vector
  %arg7438 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7437 = add i64 0, 0                                                            ; quoted ()
  %ACU$_37append2 = call i64 @prim_make_45vector(i64 %arg7438, i64 %arg7437)         ; call prim_make_45vector
  %arg7440 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr18277 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr18279 = getelementptr inbounds i64, i64* %cloptr18277, i64 1                  ; &eptr18279[1]
  store i64 %ACU$_37append2, i64* %eptr18279                                         ; *eptr18279 = %ACU$_37append2
  %eptr18278 = getelementptr inbounds i64, i64* %cloptr18277, i64 0                  ; &cloptr18277[0]
  %f18280 = ptrtoint void(i64,i64)* @lam10890 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18280, i64* %eptr18278                                                 ; store fptr
  %arg7439 = ptrtoint i64* %cloptr18277 to i64                                       ; closure cast; i64* -> i64
  %Ksv$_950 = call i64 @prim_vector_45set_33(i64 %ACU$_37append2, i64 %arg7440, i64 %arg7439); call prim_vector_45set_33
  %arg7460 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr18281 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18283 = getelementptr inbounds i64, i64* %cloptr18281, i64 1                  ; &eptr18283[1]
  %eptr18284 = getelementptr inbounds i64, i64* %cloptr18281, i64 2                  ; &eptr18284[2]
  store i64 %JGt$_37append, i64* %eptr18283                                          ; *eptr18283 = %JGt$_37append
  store i64 %ACU$_37append2, i64* %eptr18284                                         ; *eptr18284 = %ACU$_37append2
  %eptr18282 = getelementptr inbounds i64, i64* %cloptr18281, i64 0                  ; &cloptr18281[0]
  %f18285 = ptrtoint void(i64,i64)* @lam10879 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18285, i64* %eptr18282                                                 ; store fptr
  %arg7459 = ptrtoint i64* %cloptr18281 to i64                                       ; closure cast; i64* -> i64
  %lMT$_951 = call i64 @prim_vector_45set_33(i64 %JGt$_37append, i64 %arg7460, i64 %arg7459); call prim_vector_45set_33
  %arg7480 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7268 = call i64 @prim_vector_45ref(i64 %JGt$_37append, i64 %arg7480)       ; call prim_vector_45ref
  %cloptr18286 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18288 = getelementptr inbounds i64, i64* %cloptr18286, i64 1                  ; &eptr18288[1]
  %eptr18289 = getelementptr inbounds i64, i64* %cloptr18286, i64 2                  ; &eptr18289[2]
  %eptr18290 = getelementptr inbounds i64, i64* %cloptr18286, i64 3                  ; &eptr18290[3]
  store i64 %oki$_37length, i64* %eptr18288                                          ; *eptr18288 = %oki$_37length
  store i64 %k4l$_37_62, i64* %eptr18289                                             ; *eptr18289 = %k4l$_37_62
  store i64 %PvW$_37foldl1, i64* %eptr18290                                          ; *eptr18290 = %PvW$_37foldl1
  %eptr18287 = getelementptr inbounds i64, i64* %cloptr18286, i64 0                  ; &cloptr18286[0]
  %f18291 = ptrtoint void(i64,i64)* @lam10868 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18291, i64* %eptr18287                                                 ; store fptr
  %arg7484 = ptrtoint i64* %cloptr18286 to i64                                       ; closure cast; i64* -> i64
  %arg7483 = add i64 0, 0                                                            ; quoted ()
  %rva9635 = add i64 0, 0                                                            ; quoted ()
  %rva9634 = call i64 @prim_cons(i64 %retprim7268, i64 %rva9635)                     ; call prim_cons
  %rva9633 = call i64 @prim_cons(i64 %arg7483, i64 %rva9634)                         ; call prim_cons
  %cloptr18292 = inttoptr i64 %arg7484 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18293 = getelementptr inbounds i64, i64* %cloptr18292, i64 0                 ; &cloptr18292[0]
  %f18295 = load i64, i64* %i0ptr18293, align 8                                      ; load; *i0ptr18293
  %fptr18294 = inttoptr i64 %f18295 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18294(i64 %arg7484, i64 %rva9633)                   ; tail call
  ret void
}


define void @lam10903(i64 %env10904, i64 %rvp8697) {
  %cont7094 = call i64 @prim_car(i64 %rvp8697)                                       ; call prim_car
  %rvp8696 = call i64 @prim_cdr(i64 %rvp8697)                                        ; call prim_cdr
  %kpi$a = call i64 @prim_car(i64 %rvp8696)                                          ; call prim_car
  %rvp8695 = call i64 @prim_cdr(i64 %rvp8696)                                        ; call prim_cdr
  %waH$b = call i64 @prim_car(i64 %rvp8695)                                          ; call prim_car
  %na8691 = call i64 @prim_cdr(i64 %rvp8695)                                         ; call prim_cdr
  %a6935 = call i64 @prim__60_61(i64 %kpi$a, i64 %waH$b)                             ; call prim__60_61
  %retprim7095 = call i64 @prim_not(i64 %a6935)                                      ; call prim_not
  %arg7427 = add i64 0, 0                                                            ; quoted ()
  %rva8694 = add i64 0, 0                                                            ; quoted ()
  %rva8693 = call i64 @prim_cons(i64 %retprim7095, i64 %rva8694)                     ; call prim_cons
  %rva8692 = call i64 @prim_cons(i64 %arg7427, i64 %rva8693)                         ; call prim_cons
  %cloptr18296 = inttoptr i64 %cont7094 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18297 = getelementptr inbounds i64, i64* %cloptr18296, i64 0                 ; &cloptr18296[0]
  %f18299 = load i64, i64* %i0ptr18297, align 8                                      ; load; *i0ptr18297
  %fptr18298 = inttoptr i64 %f18299 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18298(i64 %cont7094, i64 %rva8692)                  ; tail call
  ret void
}


define void @lam10899(i64 %env10900, i64 %rvp8705) {
  %cont7096 = call i64 @prim_car(i64 %rvp8705)                                       ; call prim_car
  %rvp8704 = call i64 @prim_cdr(i64 %rvp8705)                                        ; call prim_cdr
  %b5o$a = call i64 @prim_car(i64 %rvp8704)                                          ; call prim_car
  %rvp8703 = call i64 @prim_cdr(i64 %rvp8704)                                        ; call prim_cdr
  %nd7$b = call i64 @prim_car(i64 %rvp8703)                                          ; call prim_car
  %na8699 = call i64 @prim_cdr(i64 %rvp8703)                                         ; call prim_cdr
  %a6936 = call i64 @prim__60(i64 %b5o$a, i64 %nd7$b)                                ; call prim__60
  %retprim7097 = call i64 @prim_not(i64 %a6936)                                      ; call prim_not
  %arg7433 = add i64 0, 0                                                            ; quoted ()
  %rva8702 = add i64 0, 0                                                            ; quoted ()
  %rva8701 = call i64 @prim_cons(i64 %retprim7097, i64 %rva8702)                     ; call prim_cons
  %rva8700 = call i64 @prim_cons(i64 %arg7433, i64 %rva8701)                         ; call prim_cons
  %cloptr18300 = inttoptr i64 %cont7096 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18301 = getelementptr inbounds i64, i64* %cloptr18300, i64 0                 ; &cloptr18300[0]
  %f18303 = load i64, i64* %i0ptr18301, align 8                                      ; load; *i0ptr18301
  %fptr18302 = inttoptr i64 %f18303 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18302(i64 %cont7096, i64 %rva8700)                  ; tail call
  ret void
}


define void @lam10890(i64 %env10891, i64 %rvp8724) {
  %envptr18304 = inttoptr i64 %env10891 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18305 = getelementptr inbounds i64, i64* %envptr18304, i64 1                ; &envptr18304[1]
  %ACU$_37append2 = load i64, i64* %envptr18305, align 8                             ; load; *envptr18305
  %cont7261 = call i64 @prim_car(i64 %rvp8724)                                       ; call prim_car
  %rvp8723 = call i64 @prim_cdr(i64 %rvp8724)                                        ; call prim_cdr
  %S3T$ls0 = call i64 @prim_car(i64 %rvp8723)                                        ; call prim_car
  %rvp8722 = call i64 @prim_cdr(i64 %rvp8723)                                        ; call prim_cdr
  %D8G$ls1 = call i64 @prim_car(i64 %rvp8722)                                        ; call prim_car
  %na8707 = call i64 @prim_cdr(i64 %rvp8722)                                         ; call prim_cdr
  %a6937 = call i64 @prim_null_63(i64 %S3T$ls0)                                      ; call prim_null_63
  %cmp18306 = icmp eq i64 %a6937, 15                                                 ; false?
  br i1 %cmp18306, label %else18308, label %then18307                                ; if

then18307:
  %arg7444 = add i64 0, 0                                                            ; quoted ()
  %rva8710 = add i64 0, 0                                                            ; quoted ()
  %rva8709 = call i64 @prim_cons(i64 %D8G$ls1, i64 %rva8710)                         ; call prim_cons
  %rva8708 = call i64 @prim_cons(i64 %arg7444, i64 %rva8709)                         ; call prim_cons
  %cloptr18309 = inttoptr i64 %cont7261 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18310 = getelementptr inbounds i64, i64* %cloptr18309, i64 0                 ; &cloptr18309[0]
  %f18312 = load i64, i64* %i0ptr18310, align 8                                      ; load; *i0ptr18310
  %fptr18311 = inttoptr i64 %f18312 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18311(i64 %cont7261, i64 %rva8708)                  ; tail call
  ret void

else18308:
  %a6938 = call i64 @prim_car(i64 %S3T$ls0)                                          ; call prim_car
  %arg7447 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6939 = call i64 @prim_vector_45ref(i64 %ACU$_37append2, i64 %arg7447)            ; call prim_vector_45ref
  %a6940 = call i64 @prim_cdr(i64 %S3T$ls0)                                          ; call prim_cdr
  %cloptr18313 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18315 = getelementptr inbounds i64, i64* %cloptr18313, i64 1                  ; &eptr18315[1]
  %eptr18316 = getelementptr inbounds i64, i64* %cloptr18313, i64 2                  ; &eptr18316[2]
  store i64 %cont7261, i64* %eptr18315                                               ; *eptr18315 = %cont7261
  store i64 %a6938, i64* %eptr18316                                                  ; *eptr18316 = %a6938
  %eptr18314 = getelementptr inbounds i64, i64* %cloptr18313, i64 0                  ; &cloptr18313[0]
  %f18317 = ptrtoint void(i64,i64)* @lam10887 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18317, i64* %eptr18314                                                 ; store fptr
  %arg7452 = ptrtoint i64* %cloptr18313 to i64                                       ; closure cast; i64* -> i64
  %rva8721 = add i64 0, 0                                                            ; quoted ()
  %rva8720 = call i64 @prim_cons(i64 %D8G$ls1, i64 %rva8721)                         ; call prim_cons
  %rva8719 = call i64 @prim_cons(i64 %a6940, i64 %rva8720)                           ; call prim_cons
  %rva8718 = call i64 @prim_cons(i64 %arg7452, i64 %rva8719)                         ; call prim_cons
  %cloptr18318 = inttoptr i64 %a6939 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr18319 = getelementptr inbounds i64, i64* %cloptr18318, i64 0                 ; &cloptr18318[0]
  %f18321 = load i64, i64* %i0ptr18319, align 8                                      ; load; *i0ptr18319
  %fptr18320 = inttoptr i64 %f18321 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18320(i64 %a6939, i64 %rva8718)                     ; tail call
  ret void
}


define void @lam10887(i64 %env10888, i64 %rvp8717) {
  %envptr18322 = inttoptr i64 %env10888 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18323 = getelementptr inbounds i64, i64* %envptr18322, i64 2                ; &envptr18322[2]
  %a6938 = load i64, i64* %envptr18323, align 8                                      ; load; *envptr18323
  %envptr18324 = inttoptr i64 %env10888 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18325 = getelementptr inbounds i64, i64* %envptr18324, i64 1                ; &envptr18324[1]
  %cont7261 = load i64, i64* %envptr18325, align 8                                   ; load; *envptr18325
  %_957262 = call i64 @prim_car(i64 %rvp8717)                                        ; call prim_car
  %rvp8716 = call i64 @prim_cdr(i64 %rvp8717)                                        ; call prim_cdr
  %a6941 = call i64 @prim_car(i64 %rvp8716)                                          ; call prim_car
  %na8712 = call i64 @prim_cdr(i64 %rvp8716)                                         ; call prim_cdr
  %retprim7263 = call i64 @prim_cons(i64 %a6938, i64 %a6941)                         ; call prim_cons
  %arg7457 = add i64 0, 0                                                            ; quoted ()
  %rva8715 = add i64 0, 0                                                            ; quoted ()
  %rva8714 = call i64 @prim_cons(i64 %retprim7263, i64 %rva8715)                     ; call prim_cons
  %rva8713 = call i64 @prim_cons(i64 %arg7457, i64 %rva8714)                         ; call prim_cons
  %cloptr18326 = inttoptr i64 %cont7261 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18327 = getelementptr inbounds i64, i64* %cloptr18326, i64 0                 ; &cloptr18326[0]
  %f18329 = load i64, i64* %i0ptr18327, align 8                                      ; load; *i0ptr18327
  %fptr18328 = inttoptr i64 %f18329 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18328(i64 %cont7261, i64 %rva8713)                  ; tail call
  ret void
}


define void @lam10879(i64 %env10880, i64 %Oje$xs7265) {
  %envptr18330 = inttoptr i64 %env10880 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18331 = getelementptr inbounds i64, i64* %envptr18330, i64 2                ; &envptr18330[2]
  %ACU$_37append2 = load i64, i64* %envptr18331, align 8                             ; load; *envptr18331
  %envptr18332 = inttoptr i64 %env10880 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18333 = getelementptr inbounds i64, i64* %envptr18332, i64 1                ; &envptr18332[1]
  %JGt$_37append = load i64, i64* %envptr18333, align 8                              ; load; *envptr18333
  %cont7264 = call i64 @prim_car(i64 %Oje$xs7265)                                    ; call prim_car
  %Oje$xs = call i64 @prim_cdr(i64 %Oje$xs7265)                                      ; call prim_cdr
  %a6942 = call i64 @prim_null_63(i64 %Oje$xs)                                       ; call prim_null_63
  %cmp18334 = icmp eq i64 %a6942, 15                                                 ; false?
  br i1 %cmp18334, label %else18336, label %then18335                                ; if

then18335:
  %arg7466 = add i64 0, 0                                                            ; quoted ()
  %arg7465 = add i64 0, 0                                                            ; quoted ()
  %rva8727 = add i64 0, 0                                                            ; quoted ()
  %rva8726 = call i64 @prim_cons(i64 %arg7465, i64 %rva8727)                         ; call prim_cons
  %rva8725 = call i64 @prim_cons(i64 %arg7466, i64 %rva8726)                         ; call prim_cons
  %cloptr18337 = inttoptr i64 %cont7264 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18338 = getelementptr inbounds i64, i64* %cloptr18337, i64 0                 ; &cloptr18337[0]
  %f18340 = load i64, i64* %i0ptr18338, align 8                                      ; load; *i0ptr18338
  %fptr18339 = inttoptr i64 %f18340 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18339(i64 %cont7264, i64 %rva8725)                  ; tail call
  ret void

else18336:
  %ciy$hd = call i64 @prim_car(i64 %Oje$xs)                                          ; call prim_car
  %OrC$tl = call i64 @prim_cdr(i64 %Oje$xs)                                          ; call prim_cdr
  %arg7470 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6943 = call i64 @prim_vector_45ref(i64 %JGt$_37append, i64 %arg7470)             ; call prim_vector_45ref
  %cloptr18341 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18343 = getelementptr inbounds i64, i64* %cloptr18341, i64 1                  ; &eptr18343[1]
  %eptr18344 = getelementptr inbounds i64, i64* %cloptr18341, i64 2                  ; &eptr18344[2]
  %eptr18345 = getelementptr inbounds i64, i64* %cloptr18341, i64 3                  ; &eptr18345[3]
  store i64 %ciy$hd, i64* %eptr18343                                                 ; *eptr18343 = %ciy$hd
  store i64 %ACU$_37append2, i64* %eptr18344                                         ; *eptr18344 = %ACU$_37append2
  store i64 %cont7264, i64* %eptr18345                                               ; *eptr18345 = %cont7264
  %eptr18342 = getelementptr inbounds i64, i64* %cloptr18341, i64 0                  ; &cloptr18341[0]
  %f18346 = ptrtoint void(i64,i64)* @lam10876 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18346, i64* %eptr18342                                                 ; store fptr
  %arg7473 = ptrtoint i64* %cloptr18341 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7267 = call i64 @prim_cons(i64 %arg7473, i64 %OrC$tl)                    ; call prim_cons
  %cloptr18347 = inttoptr i64 %a6943 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr18348 = getelementptr inbounds i64, i64* %cloptr18347, i64 0                 ; &cloptr18347[0]
  %f18350 = load i64, i64* %i0ptr18348, align 8                                      ; load; *i0ptr18348
  %fptr18349 = inttoptr i64 %f18350 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18349(i64 %a6943, i64 %cps_45lst7267)               ; tail call
  ret void
}


define void @lam10876(i64 %env10877, i64 %rvp8735) {
  %envptr18351 = inttoptr i64 %env10877 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18352 = getelementptr inbounds i64, i64* %envptr18351, i64 3                ; &envptr18351[3]
  %cont7264 = load i64, i64* %envptr18352, align 8                                   ; load; *envptr18352
  %envptr18353 = inttoptr i64 %env10877 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18354 = getelementptr inbounds i64, i64* %envptr18353, i64 2                ; &envptr18353[2]
  %ACU$_37append2 = load i64, i64* %envptr18354, align 8                             ; load; *envptr18354
  %envptr18355 = inttoptr i64 %env10877 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18356 = getelementptr inbounds i64, i64* %envptr18355, i64 1                ; &envptr18355[1]
  %ciy$hd = load i64, i64* %envptr18356, align 8                                     ; load; *envptr18356
  %_957266 = call i64 @prim_car(i64 %rvp8735)                                        ; call prim_car
  %rvp8734 = call i64 @prim_cdr(i64 %rvp8735)                                        ; call prim_cdr
  %Bj5$result1 = call i64 @prim_car(i64 %rvp8734)                                    ; call prim_car
  %na8729 = call i64 @prim_cdr(i64 %rvp8734)                                         ; call prim_cdr
  %arg7474 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6944 = call i64 @prim_vector_45ref(i64 %ACU$_37append2, i64 %arg7474)            ; call prim_vector_45ref
  %rva8733 = add i64 0, 0                                                            ; quoted ()
  %rva8732 = call i64 @prim_cons(i64 %Bj5$result1, i64 %rva8733)                     ; call prim_cons
  %rva8731 = call i64 @prim_cons(i64 %ciy$hd, i64 %rva8732)                          ; call prim_cons
  %rva8730 = call i64 @prim_cons(i64 %cont7264, i64 %rva8731)                        ; call prim_cons
  %cloptr18357 = inttoptr i64 %a6944 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr18358 = getelementptr inbounds i64, i64* %cloptr18357, i64 0                 ; &cloptr18357[0]
  %f18360 = load i64, i64* %i0ptr18358, align 8                                      ; load; *i0ptr18358
  %fptr18359 = inttoptr i64 %f18360 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18359(i64 %a6944, i64 %rva8730)                     ; tail call
  ret void
}


define void @lam10868(i64 %env10869, i64 %rvp9632) {
  %envptr18361 = inttoptr i64 %env10869 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18362 = getelementptr inbounds i64, i64* %envptr18361, i64 3                ; &envptr18361[3]
  %PvW$_37foldl1 = load i64, i64* %envptr18362, align 8                              ; load; *envptr18362
  %envptr18363 = inttoptr i64 %env10869 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18364 = getelementptr inbounds i64, i64* %envptr18363, i64 2                ; &envptr18363[2]
  %k4l$_37_62 = load i64, i64* %envptr18364, align 8                                 ; load; *envptr18364
  %envptr18365 = inttoptr i64 %env10869 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18366 = getelementptr inbounds i64, i64* %envptr18365, i64 1                ; &envptr18365[1]
  %oki$_37length = load i64, i64* %envptr18366, align 8                              ; load; *envptr18366
  %_957098 = call i64 @prim_car(i64 %rvp9632)                                        ; call prim_car
  %rvp9631 = call i64 @prim_cdr(i64 %rvp9632)                                        ; call prim_cdr
  %D42$_37append = call i64 @prim_car(i64 %rvp9631)                                  ; call prim_car
  %na8737 = call i64 @prim_cdr(i64 %rvp9631)                                         ; call prim_cdr
  %cloptr18367 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18368 = getelementptr inbounds i64, i64* %cloptr18367, i64 0                  ; &cloptr18367[0]
  %f18369 = ptrtoint void(i64,i64)* @lam10866 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18369, i64* %eptr18368                                                 ; store fptr
  %P9s$_37list_63 = ptrtoint i64* %cloptr18367 to i64                                ; closure cast; i64* -> i64
  %cloptr18370 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18371 = getelementptr inbounds i64, i64* %cloptr18370, i64 0                  ; &cloptr18370[0]
  %f18372 = ptrtoint void(i64,i64)* @lam10814 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18372, i64* %eptr18371                                                 ; store fptr
  %JaN$_37drop = ptrtoint i64* %cloptr18370 to i64                                   ; closure cast; i64* -> i64
  %cloptr18373 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18374 = getelementptr inbounds i64, i64* %cloptr18373, i64 0                  ; &cloptr18373[0]
  %f18375 = ptrtoint void(i64,i64)* @lam10764 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18375, i64* %eptr18374                                                 ; store fptr
  %PEh$_37memv = ptrtoint i64* %cloptr18373 to i64                                   ; closure cast; i64* -> i64
  %cloptr18376 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr18378 = getelementptr inbounds i64, i64* %cloptr18376, i64 1                  ; &eptr18378[1]
  store i64 %PvW$_37foldl1, i64* %eptr18378                                          ; *eptr18378 = %PvW$_37foldl1
  %eptr18377 = getelementptr inbounds i64, i64* %cloptr18376, i64 0                  ; &cloptr18376[0]
  %f18379 = ptrtoint void(i64,i64)* @lam10723 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18379, i64* %eptr18377                                                 ; store fptr
  %gdu$_37_47 = ptrtoint i64* %cloptr18376 to i64                                    ; closure cast; i64* -> i64
  %cloptr18380 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18381 = getelementptr inbounds i64, i64* %cloptr18380, i64 0                  ; &cloptr18380[0]
  %f18382 = ptrtoint void(i64,i64)* @lam10711 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18382, i64* %eptr18381                                                 ; store fptr
  %hdj$_37first = ptrtoint i64* %cloptr18380 to i64                                  ; closure cast; i64* -> i64
  %cloptr18383 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18384 = getelementptr inbounds i64, i64* %cloptr18383, i64 0                  ; &cloptr18383[0]
  %f18385 = ptrtoint void(i64,i64)* @lam10707 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18385, i64* %eptr18384                                                 ; store fptr
  %Dik$_37second = ptrtoint i64* %cloptr18383 to i64                                 ; closure cast; i64* -> i64
  %cloptr18386 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18387 = getelementptr inbounds i64, i64* %cloptr18386, i64 0                  ; &cloptr18386[0]
  %f18388 = ptrtoint void(i64,i64)* @lam10703 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18388, i64* %eptr18387                                                 ; store fptr
  %fVN$_37third = ptrtoint i64* %cloptr18386 to i64                                  ; closure cast; i64* -> i64
  %cloptr18389 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18390 = getelementptr inbounds i64, i64* %cloptr18389, i64 0                  ; &cloptr18389[0]
  %f18391 = ptrtoint void(i64,i64)* @lam10699 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18391, i64* %eptr18390                                                 ; store fptr
  %gol$_37fourth = ptrtoint i64* %cloptr18389 to i64                                 ; closure cast; i64* -> i64
  %cloptr18392 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18393 = getelementptr inbounds i64, i64* %cloptr18392, i64 0                  ; &cloptr18392[0]
  %f18394 = ptrtoint void(i64,i64)* @lam10695 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18394, i64* %eptr18393                                                 ; store fptr
  %OxL$promise_63 = ptrtoint i64* %cloptr18392 to i64                                ; closure cast; i64* -> i64
  %cloptr18395 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18396 = getelementptr inbounds i64, i64* %cloptr18395, i64 0                  ; &cloptr18395[0]
  %f18397 = ptrtoint void(i64,i64)* @lam10687 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18397, i64* %eptr18396                                                 ; store fptr
  %arg7746 = ptrtoint i64* %cloptr18395 to i64                                       ; closure cast; i64* -> i64
  %cloptr18398 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18400 = getelementptr inbounds i64, i64* %cloptr18398, i64 1                  ; &eptr18400[1]
  %eptr18401 = getelementptr inbounds i64, i64* %cloptr18398, i64 2                  ; &eptr18401[2]
  %eptr18402 = getelementptr inbounds i64, i64* %cloptr18398, i64 3                  ; &eptr18402[3]
  store i64 %oki$_37length, i64* %eptr18400                                          ; *eptr18400 = %oki$_37length
  store i64 %JaN$_37drop, i64* %eptr18401                                            ; *eptr18401 = %JaN$_37drop
  store i64 %k4l$_37_62, i64* %eptr18402                                             ; *eptr18402 = %k4l$_37_62
  %eptr18399 = getelementptr inbounds i64, i64* %cloptr18398, i64 0                  ; &cloptr18398[0]
  %f18403 = ptrtoint void(i64,i64)* @lam10683 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18403, i64* %eptr18399                                                 ; store fptr
  %arg7745 = ptrtoint i64* %cloptr18398 to i64                                       ; closure cast; i64* -> i64
  %rva9630 = add i64 0, 0                                                            ; quoted ()
  %rva9629 = call i64 @prim_cons(i64 %arg7745, i64 %rva9630)                         ; call prim_cons
  %cloptr18404 = inttoptr i64 %arg7746 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18405 = getelementptr inbounds i64, i64* %cloptr18404, i64 0                 ; &cloptr18404[0]
  %f18407 = load i64, i64* %i0ptr18405, align 8                                      ; load; *i0ptr18405
  %fptr18406 = inttoptr i64 %f18407 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18406(i64 %arg7746, i64 %rva9629)                   ; tail call
  ret void
}


define void @lam10866(i64 %env10867, i64 %rvp8805) {
  %cont7099 = call i64 @prim_car(i64 %rvp8805)                                       ; call prim_car
  %rvp8804 = call i64 @prim_cdr(i64 %rvp8805)                                        ; call prim_cdr
  %wD9$a = call i64 @prim_car(i64 %rvp8804)                                          ; call prim_car
  %na8739 = call i64 @prim_cdr(i64 %rvp8804)                                         ; call prim_cdr
  %arg7486 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %hdE$a = call i64 @prim_make_45vector(i64 %arg7486, i64 %wD9$a)                    ; call prim_make_45vector
  %cloptr18408 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18409 = getelementptr inbounds i64, i64* %cloptr18408, i64 0                  ; &cloptr18408[0]
  %f18410 = ptrtoint void(i64,i64)* @lam10863 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18410, i64* %eptr18409                                                 ; store fptr
  %arg7489 = ptrtoint i64* %cloptr18408 to i64                                       ; closure cast; i64* -> i64
  %cloptr18411 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18413 = getelementptr inbounds i64, i64* %cloptr18411, i64 1                  ; &eptr18413[1]
  %eptr18414 = getelementptr inbounds i64, i64* %cloptr18411, i64 2                  ; &eptr18414[2]
  store i64 %cont7099, i64* %eptr18413                                               ; *eptr18413 = %cont7099
  store i64 %hdE$a, i64* %eptr18414                                                  ; *eptr18414 = %hdE$a
  %eptr18412 = getelementptr inbounds i64, i64* %cloptr18411, i64 0                  ; &cloptr18411[0]
  %f18415 = ptrtoint void(i64,i64)* @lam10859 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18415, i64* %eptr18412                                                 ; store fptr
  %arg7488 = ptrtoint i64* %cloptr18411 to i64                                       ; closure cast; i64* -> i64
  %cloptr18416 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18418 = getelementptr inbounds i64, i64* %cloptr18416, i64 1                  ; &eptr18418[1]
  %eptr18419 = getelementptr inbounds i64, i64* %cloptr18416, i64 2                  ; &eptr18419[2]
  store i64 %cont7099, i64* %eptr18418                                               ; *eptr18418 = %cont7099
  store i64 %hdE$a, i64* %eptr18419                                                  ; *eptr18419 = %hdE$a
  %eptr18417 = getelementptr inbounds i64, i64* %cloptr18416, i64 0                  ; &cloptr18416[0]
  %f18420 = ptrtoint void(i64,i64)* @lam10837 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18420, i64* %eptr18417                                                 ; store fptr
  %arg7487 = ptrtoint i64* %cloptr18416 to i64                                       ; closure cast; i64* -> i64
  %rva8803 = add i64 0, 0                                                            ; quoted ()
  %rva8802 = call i64 @prim_cons(i64 %arg7487, i64 %rva8803)                         ; call prim_cons
  %rva8801 = call i64 @prim_cons(i64 %arg7488, i64 %rva8802)                         ; call prim_cons
  %cloptr18421 = inttoptr i64 %arg7489 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18422 = getelementptr inbounds i64, i64* %cloptr18421, i64 0                 ; &cloptr18421[0]
  %f18424 = load i64, i64* %i0ptr18422, align 8                                      ; load; *i0ptr18422
  %fptr18423 = inttoptr i64 %f18424 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18423(i64 %arg7489, i64 %rva8801)                   ; tail call
  ret void
}


define void @lam10863(i64 %env10864, i64 %rvp8746) {
  %cont7105 = call i64 @prim_car(i64 %rvp8746)                                       ; call prim_car
  %rvp8745 = call i64 @prim_cdr(i64 %rvp8746)                                        ; call prim_cdr
  %O6a$k = call i64 @prim_car(i64 %rvp8745)                                          ; call prim_car
  %na8741 = call i64 @prim_cdr(i64 %rvp8745)                                         ; call prim_cdr
  %arg7491 = add i64 0, 0                                                            ; quoted ()
  %rva8744 = add i64 0, 0                                                            ; quoted ()
  %rva8743 = call i64 @prim_cons(i64 %O6a$k, i64 %rva8744)                           ; call prim_cons
  %rva8742 = call i64 @prim_cons(i64 %arg7491, i64 %rva8743)                         ; call prim_cons
  %cloptr18425 = inttoptr i64 %cont7105 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18426 = getelementptr inbounds i64, i64* %cloptr18425, i64 0                 ; &cloptr18425[0]
  %f18428 = load i64, i64* %i0ptr18426, align 8                                      ; load; *i0ptr18426
  %fptr18427 = inttoptr i64 %f18428 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18427(i64 %cont7105, i64 %rva8742)                  ; tail call
  ret void
}


define void @lam10859(i64 %env10860, i64 %rvp8773) {
  %envptr18429 = inttoptr i64 %env10860 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18430 = getelementptr inbounds i64, i64* %envptr18429, i64 2                ; &envptr18429[2]
  %hdE$a = load i64, i64* %envptr18430, align 8                                      ; load; *envptr18430
  %envptr18431 = inttoptr i64 %env10860 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18432 = getelementptr inbounds i64, i64* %envptr18431, i64 1                ; &envptr18431[1]
  %cont7099 = load i64, i64* %envptr18432, align 8                                   ; load; *envptr18432
  %_957100 = call i64 @prim_car(i64 %rvp8773)                                        ; call prim_car
  %rvp8772 = call i64 @prim_cdr(i64 %rvp8773)                                        ; call prim_cdr
  %bjl$cc = call i64 @prim_car(i64 %rvp8772)                                         ; call prim_car
  %na8748 = call i64 @prim_cdr(i64 %rvp8772)                                         ; call prim_cdr
  %arg7493 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6945 = call i64 @prim_vector_45ref(i64 %hdE$a, i64 %arg7493)                     ; call prim_vector_45ref
  %a6946 = call i64 @prim_null_63(i64 %a6945)                                        ; call prim_null_63
  %cmp18433 = icmp eq i64 %a6946, 15                                                 ; false?
  br i1 %cmp18433, label %else18435, label %then18434                                ; if

then18434:
  %arg7497 = add i64 0, 0                                                            ; quoted ()
  %arg7496 = call i64 @const_init_true()                                             ; quoted #t
  %rva8751 = add i64 0, 0                                                            ; quoted ()
  %rva8750 = call i64 @prim_cons(i64 %arg7496, i64 %rva8751)                         ; call prim_cons
  %rva8749 = call i64 @prim_cons(i64 %arg7497, i64 %rva8750)                         ; call prim_cons
  %cloptr18436 = inttoptr i64 %cont7099 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18437 = getelementptr inbounds i64, i64* %cloptr18436, i64 0                 ; &cloptr18436[0]
  %f18439 = load i64, i64* %i0ptr18437, align 8                                      ; load; *i0ptr18437
  %fptr18438 = inttoptr i64 %f18439 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18438(i64 %cont7099, i64 %rva8749)                  ; tail call
  ret void

else18435:
  %arg7499 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6947 = call i64 @prim_vector_45ref(i64 %hdE$a, i64 %arg7499)                     ; call prim_vector_45ref
  %a6948 = call i64 @prim_cons_63(i64 %a6947)                                        ; call prim_cons_63
  %cmp18440 = icmp eq i64 %a6948, 15                                                 ; false?
  br i1 %cmp18440, label %else18442, label %then18441                                ; if

then18441:
  %arg7502 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6949 = call i64 @prim_vector_45ref(i64 %hdE$a, i64 %arg7502)                     ; call prim_vector_45ref
  %retprim7104 = call i64 @prim_cdr(i64 %a6949)                                      ; call prim_cdr
  %cloptr18443 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18445 = getelementptr inbounds i64, i64* %cloptr18443, i64 1                  ; &eptr18445[1]
  %eptr18446 = getelementptr inbounds i64, i64* %cloptr18443, i64 2                  ; &eptr18446[2]
  %eptr18447 = getelementptr inbounds i64, i64* %cloptr18443, i64 3                  ; &eptr18447[3]
  store i64 %bjl$cc, i64* %eptr18445                                                 ; *eptr18445 = %bjl$cc
  store i64 %cont7099, i64* %eptr18446                                               ; *eptr18446 = %cont7099
  store i64 %hdE$a, i64* %eptr18447                                                  ; *eptr18447 = %hdE$a
  %eptr18444 = getelementptr inbounds i64, i64* %cloptr18443, i64 0                  ; &cloptr18443[0]
  %f18448 = ptrtoint void(i64,i64)* @lam10851 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18448, i64* %eptr18444                                                 ; store fptr
  %arg7507 = ptrtoint i64* %cloptr18443 to i64                                       ; closure cast; i64* -> i64
  %arg7506 = add i64 0, 0                                                            ; quoted ()
  %rva8768 = add i64 0, 0                                                            ; quoted ()
  %rva8767 = call i64 @prim_cons(i64 %retprim7104, i64 %rva8768)                     ; call prim_cons
  %rva8766 = call i64 @prim_cons(i64 %arg7506, i64 %rva8767)                         ; call prim_cons
  %cloptr18449 = inttoptr i64 %arg7507 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18450 = getelementptr inbounds i64, i64* %cloptr18449, i64 0                 ; &cloptr18449[0]
  %f18452 = load i64, i64* %i0ptr18450, align 8                                      ; load; *i0ptr18450
  %fptr18451 = inttoptr i64 %f18452 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18451(i64 %arg7507, i64 %rva8766)                   ; tail call
  ret void

else18442:
  %arg7521 = add i64 0, 0                                                            ; quoted ()
  %arg7520 = call i64 @const_init_false()                                            ; quoted #f
  %rva8771 = add i64 0, 0                                                            ; quoted ()
  %rva8770 = call i64 @prim_cons(i64 %arg7520, i64 %rva8771)                         ; call prim_cons
  %rva8769 = call i64 @prim_cons(i64 %arg7521, i64 %rva8770)                         ; call prim_cons
  %cloptr18453 = inttoptr i64 %cont7099 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18454 = getelementptr inbounds i64, i64* %cloptr18453, i64 0                 ; &cloptr18453[0]
  %f18456 = load i64, i64* %i0ptr18454, align 8                                      ; load; *i0ptr18454
  %fptr18455 = inttoptr i64 %f18456 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18455(i64 %cont7099, i64 %rva8769)                  ; tail call
  ret void
}


define void @lam10851(i64 %env10852, i64 %rvp8765) {
  %envptr18457 = inttoptr i64 %env10852 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18458 = getelementptr inbounds i64, i64* %envptr18457, i64 3                ; &envptr18457[3]
  %hdE$a = load i64, i64* %envptr18458, align 8                                      ; load; *envptr18458
  %envptr18459 = inttoptr i64 %env10852 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18460 = getelementptr inbounds i64, i64* %envptr18459, i64 2                ; &envptr18459[2]
  %cont7099 = load i64, i64* %envptr18460, align 8                                   ; load; *envptr18460
  %envptr18461 = inttoptr i64 %env10852 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18462 = getelementptr inbounds i64, i64* %envptr18461, i64 1                ; &envptr18461[1]
  %bjl$cc = load i64, i64* %envptr18462, align 8                                     ; load; *envptr18462
  %_957101 = call i64 @prim_car(i64 %rvp8765)                                        ; call prim_car
  %rvp8764 = call i64 @prim_cdr(i64 %rvp8765)                                        ; call prim_cdr
  %mnM$b = call i64 @prim_car(i64 %rvp8764)                                          ; call prim_car
  %na8753 = call i64 @prim_cdr(i64 %rvp8764)                                         ; call prim_cdr
  %arg7508 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6950 = call i64 @prim_vector_45ref(i64 %hdE$a, i64 %arg7508)                     ; call prim_vector_45ref
  %a6951 = call i64 @prim_cdr(i64 %a6950)                                            ; call prim_cdr
  %arg7512 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7103 = call i64 @prim_vector_45set_33(i64 %hdE$a, i64 %arg7512, i64 %a6951); call prim_vector_45set_33
  %cloptr18463 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18465 = getelementptr inbounds i64, i64* %cloptr18463, i64 1                  ; &eptr18465[1]
  %eptr18466 = getelementptr inbounds i64, i64* %cloptr18463, i64 2                  ; &eptr18466[2]
  store i64 %bjl$cc, i64* %eptr18465                                                 ; *eptr18465 = %bjl$cc
  store i64 %cont7099, i64* %eptr18466                                               ; *eptr18466 = %cont7099
  %eptr18464 = getelementptr inbounds i64, i64* %cloptr18463, i64 0                  ; &cloptr18463[0]
  %f18467 = ptrtoint void(i64,i64)* @lam10847 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18467, i64* %eptr18464                                                 ; store fptr
  %arg7516 = ptrtoint i64* %cloptr18463 to i64                                       ; closure cast; i64* -> i64
  %arg7515 = add i64 0, 0                                                            ; quoted ()
  %rva8763 = add i64 0, 0                                                            ; quoted ()
  %rva8762 = call i64 @prim_cons(i64 %retprim7103, i64 %rva8763)                     ; call prim_cons
  %rva8761 = call i64 @prim_cons(i64 %arg7515, i64 %rva8762)                         ; call prim_cons
  %cloptr18468 = inttoptr i64 %arg7516 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18469 = getelementptr inbounds i64, i64* %cloptr18468, i64 0                 ; &cloptr18468[0]
  %f18471 = load i64, i64* %i0ptr18469, align 8                                      ; load; *i0ptr18469
  %fptr18470 = inttoptr i64 %f18471 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18470(i64 %arg7516, i64 %rva8761)                   ; tail call
  ret void
}


define void @lam10847(i64 %env10848, i64 %rvp8760) {
  %envptr18472 = inttoptr i64 %env10848 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18473 = getelementptr inbounds i64, i64* %envptr18472, i64 2                ; &envptr18472[2]
  %cont7099 = load i64, i64* %envptr18473, align 8                                   ; load; *envptr18473
  %envptr18474 = inttoptr i64 %env10848 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18475 = getelementptr inbounds i64, i64* %envptr18474, i64 1                ; &envptr18474[1]
  %bjl$cc = load i64, i64* %envptr18475, align 8                                     ; load; *envptr18475
  %_957102 = call i64 @prim_car(i64 %rvp8760)                                        ; call prim_car
  %rvp8759 = call i64 @prim_cdr(i64 %rvp8760)                                        ; call prim_cdr
  %Rgq$_950 = call i64 @prim_car(i64 %rvp8759)                                       ; call prim_car
  %na8755 = call i64 @prim_cdr(i64 %rvp8759)                                         ; call prim_cdr
  %rva8758 = add i64 0, 0                                                            ; quoted ()
  %rva8757 = call i64 @prim_cons(i64 %bjl$cc, i64 %rva8758)                          ; call prim_cons
  %rva8756 = call i64 @prim_cons(i64 %cont7099, i64 %rva8757)                        ; call prim_cons
  %cloptr18476 = inttoptr i64 %bjl$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr18477 = getelementptr inbounds i64, i64* %cloptr18476, i64 0                 ; &cloptr18476[0]
  %f18479 = load i64, i64* %i0ptr18477, align 8                                      ; load; *i0ptr18477
  %fptr18478 = inttoptr i64 %f18479 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18478(i64 %bjl$cc, i64 %rva8756)                    ; tail call
  ret void
}


define void @lam10837(i64 %env10838, i64 %rvp8800) {
  %envptr18480 = inttoptr i64 %env10838 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18481 = getelementptr inbounds i64, i64* %envptr18480, i64 2                ; &envptr18480[2]
  %hdE$a = load i64, i64* %envptr18481, align 8                                      ; load; *envptr18481
  %envptr18482 = inttoptr i64 %env10838 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18483 = getelementptr inbounds i64, i64* %envptr18482, i64 1                ; &envptr18482[1]
  %cont7099 = load i64, i64* %envptr18483, align 8                                   ; load; *envptr18483
  %_957100 = call i64 @prim_car(i64 %rvp8800)                                        ; call prim_car
  %rvp8799 = call i64 @prim_cdr(i64 %rvp8800)                                        ; call prim_cdr
  %bjl$cc = call i64 @prim_car(i64 %rvp8799)                                         ; call prim_car
  %na8775 = call i64 @prim_cdr(i64 %rvp8799)                                         ; call prim_cdr
  %arg7523 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6945 = call i64 @prim_vector_45ref(i64 %hdE$a, i64 %arg7523)                     ; call prim_vector_45ref
  %a6946 = call i64 @prim_null_63(i64 %a6945)                                        ; call prim_null_63
  %cmp18484 = icmp eq i64 %a6946, 15                                                 ; false?
  br i1 %cmp18484, label %else18486, label %then18485                                ; if

then18485:
  %arg7527 = add i64 0, 0                                                            ; quoted ()
  %arg7526 = call i64 @const_init_true()                                             ; quoted #t
  %rva8778 = add i64 0, 0                                                            ; quoted ()
  %rva8777 = call i64 @prim_cons(i64 %arg7526, i64 %rva8778)                         ; call prim_cons
  %rva8776 = call i64 @prim_cons(i64 %arg7527, i64 %rva8777)                         ; call prim_cons
  %cloptr18487 = inttoptr i64 %cont7099 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18488 = getelementptr inbounds i64, i64* %cloptr18487, i64 0                 ; &cloptr18487[0]
  %f18490 = load i64, i64* %i0ptr18488, align 8                                      ; load; *i0ptr18488
  %fptr18489 = inttoptr i64 %f18490 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18489(i64 %cont7099, i64 %rva8776)                  ; tail call
  ret void

else18486:
  %arg7529 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6947 = call i64 @prim_vector_45ref(i64 %hdE$a, i64 %arg7529)                     ; call prim_vector_45ref
  %a6948 = call i64 @prim_cons_63(i64 %a6947)                                        ; call prim_cons_63
  %cmp18491 = icmp eq i64 %a6948, 15                                                 ; false?
  br i1 %cmp18491, label %else18493, label %then18492                                ; if

then18492:
  %arg7532 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6949 = call i64 @prim_vector_45ref(i64 %hdE$a, i64 %arg7532)                     ; call prim_vector_45ref
  %retprim7104 = call i64 @prim_cdr(i64 %a6949)                                      ; call prim_cdr
  %cloptr18494 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18496 = getelementptr inbounds i64, i64* %cloptr18494, i64 1                  ; &eptr18496[1]
  %eptr18497 = getelementptr inbounds i64, i64* %cloptr18494, i64 2                  ; &eptr18497[2]
  %eptr18498 = getelementptr inbounds i64, i64* %cloptr18494, i64 3                  ; &eptr18498[3]
  store i64 %bjl$cc, i64* %eptr18496                                                 ; *eptr18496 = %bjl$cc
  store i64 %cont7099, i64* %eptr18497                                               ; *eptr18497 = %cont7099
  store i64 %hdE$a, i64* %eptr18498                                                  ; *eptr18498 = %hdE$a
  %eptr18495 = getelementptr inbounds i64, i64* %cloptr18494, i64 0                  ; &cloptr18494[0]
  %f18499 = ptrtoint void(i64,i64)* @lam10829 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18499, i64* %eptr18495                                                 ; store fptr
  %arg7537 = ptrtoint i64* %cloptr18494 to i64                                       ; closure cast; i64* -> i64
  %arg7536 = add i64 0, 0                                                            ; quoted ()
  %rva8795 = add i64 0, 0                                                            ; quoted ()
  %rva8794 = call i64 @prim_cons(i64 %retprim7104, i64 %rva8795)                     ; call prim_cons
  %rva8793 = call i64 @prim_cons(i64 %arg7536, i64 %rva8794)                         ; call prim_cons
  %cloptr18500 = inttoptr i64 %arg7537 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18501 = getelementptr inbounds i64, i64* %cloptr18500, i64 0                 ; &cloptr18500[0]
  %f18503 = load i64, i64* %i0ptr18501, align 8                                      ; load; *i0ptr18501
  %fptr18502 = inttoptr i64 %f18503 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18502(i64 %arg7537, i64 %rva8793)                   ; tail call
  ret void

else18493:
  %arg7551 = add i64 0, 0                                                            ; quoted ()
  %arg7550 = call i64 @const_init_false()                                            ; quoted #f
  %rva8798 = add i64 0, 0                                                            ; quoted ()
  %rva8797 = call i64 @prim_cons(i64 %arg7550, i64 %rva8798)                         ; call prim_cons
  %rva8796 = call i64 @prim_cons(i64 %arg7551, i64 %rva8797)                         ; call prim_cons
  %cloptr18504 = inttoptr i64 %cont7099 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18505 = getelementptr inbounds i64, i64* %cloptr18504, i64 0                 ; &cloptr18504[0]
  %f18507 = load i64, i64* %i0ptr18505, align 8                                      ; load; *i0ptr18505
  %fptr18506 = inttoptr i64 %f18507 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18506(i64 %cont7099, i64 %rva8796)                  ; tail call
  ret void
}


define void @lam10829(i64 %env10830, i64 %rvp8792) {
  %envptr18508 = inttoptr i64 %env10830 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18509 = getelementptr inbounds i64, i64* %envptr18508, i64 3                ; &envptr18508[3]
  %hdE$a = load i64, i64* %envptr18509, align 8                                      ; load; *envptr18509
  %envptr18510 = inttoptr i64 %env10830 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18511 = getelementptr inbounds i64, i64* %envptr18510, i64 2                ; &envptr18510[2]
  %cont7099 = load i64, i64* %envptr18511, align 8                                   ; load; *envptr18511
  %envptr18512 = inttoptr i64 %env10830 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18513 = getelementptr inbounds i64, i64* %envptr18512, i64 1                ; &envptr18512[1]
  %bjl$cc = load i64, i64* %envptr18513, align 8                                     ; load; *envptr18513
  %_957101 = call i64 @prim_car(i64 %rvp8792)                                        ; call prim_car
  %rvp8791 = call i64 @prim_cdr(i64 %rvp8792)                                        ; call prim_cdr
  %mnM$b = call i64 @prim_car(i64 %rvp8791)                                          ; call prim_car
  %na8780 = call i64 @prim_cdr(i64 %rvp8791)                                         ; call prim_cdr
  %arg7538 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6950 = call i64 @prim_vector_45ref(i64 %hdE$a, i64 %arg7538)                     ; call prim_vector_45ref
  %a6951 = call i64 @prim_cdr(i64 %a6950)                                            ; call prim_cdr
  %arg7542 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7103 = call i64 @prim_vector_45set_33(i64 %hdE$a, i64 %arg7542, i64 %a6951); call prim_vector_45set_33
  %cloptr18514 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18516 = getelementptr inbounds i64, i64* %cloptr18514, i64 1                  ; &eptr18516[1]
  %eptr18517 = getelementptr inbounds i64, i64* %cloptr18514, i64 2                  ; &eptr18517[2]
  store i64 %bjl$cc, i64* %eptr18516                                                 ; *eptr18516 = %bjl$cc
  store i64 %cont7099, i64* %eptr18517                                               ; *eptr18517 = %cont7099
  %eptr18515 = getelementptr inbounds i64, i64* %cloptr18514, i64 0                  ; &cloptr18514[0]
  %f18518 = ptrtoint void(i64,i64)* @lam10825 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18518, i64* %eptr18515                                                 ; store fptr
  %arg7546 = ptrtoint i64* %cloptr18514 to i64                                       ; closure cast; i64* -> i64
  %arg7545 = add i64 0, 0                                                            ; quoted ()
  %rva8790 = add i64 0, 0                                                            ; quoted ()
  %rva8789 = call i64 @prim_cons(i64 %retprim7103, i64 %rva8790)                     ; call prim_cons
  %rva8788 = call i64 @prim_cons(i64 %arg7545, i64 %rva8789)                         ; call prim_cons
  %cloptr18519 = inttoptr i64 %arg7546 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18520 = getelementptr inbounds i64, i64* %cloptr18519, i64 0                 ; &cloptr18519[0]
  %f18522 = load i64, i64* %i0ptr18520, align 8                                      ; load; *i0ptr18520
  %fptr18521 = inttoptr i64 %f18522 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18521(i64 %arg7546, i64 %rva8788)                   ; tail call
  ret void
}


define void @lam10825(i64 %env10826, i64 %rvp8787) {
  %envptr18523 = inttoptr i64 %env10826 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18524 = getelementptr inbounds i64, i64* %envptr18523, i64 2                ; &envptr18523[2]
  %cont7099 = load i64, i64* %envptr18524, align 8                                   ; load; *envptr18524
  %envptr18525 = inttoptr i64 %env10826 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18526 = getelementptr inbounds i64, i64* %envptr18525, i64 1                ; &envptr18525[1]
  %bjl$cc = load i64, i64* %envptr18526, align 8                                     ; load; *envptr18526
  %_957102 = call i64 @prim_car(i64 %rvp8787)                                        ; call prim_car
  %rvp8786 = call i64 @prim_cdr(i64 %rvp8787)                                        ; call prim_cdr
  %Rgq$_950 = call i64 @prim_car(i64 %rvp8786)                                       ; call prim_car
  %na8782 = call i64 @prim_cdr(i64 %rvp8786)                                         ; call prim_cdr
  %rva8785 = add i64 0, 0                                                            ; quoted ()
  %rva8784 = call i64 @prim_cons(i64 %bjl$cc, i64 %rva8785)                          ; call prim_cons
  %rva8783 = call i64 @prim_cons(i64 %cont7099, i64 %rva8784)                        ; call prim_cons
  %cloptr18527 = inttoptr i64 %bjl$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr18528 = getelementptr inbounds i64, i64* %cloptr18527, i64 0                 ; &cloptr18527[0]
  %f18530 = load i64, i64* %i0ptr18528, align 8                                      ; load; *i0ptr18528
  %fptr18529 = inttoptr i64 %f18530 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18529(i64 %bjl$cc, i64 %rva8783)                    ; tail call
  ret void
}


define void @lam10814(i64 %env10815, i64 %rvp8868) {
  %cont7106 = call i64 @prim_car(i64 %rvp8868)                                       ; call prim_car
  %rvp8867 = call i64 @prim_cdr(i64 %rvp8868)                                        ; call prim_cdr
  %DHP$lst = call i64 @prim_car(i64 %rvp8867)                                        ; call prim_car
  %rvp8866 = call i64 @prim_cdr(i64 %rvp8867)                                        ; call prim_cdr
  %axf$n = call i64 @prim_car(i64 %rvp8866)                                          ; call prim_car
  %na8807 = call i64 @prim_cdr(i64 %rvp8866)                                         ; call prim_cdr
  %arg7554 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %YxQ$lst = call i64 @prim_make_45vector(i64 %arg7554, i64 %DHP$lst)                ; call prim_make_45vector
  %arg7556 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %SUQ$n = call i64 @prim_make_45vector(i64 %arg7556, i64 %axf$n)                    ; call prim_make_45vector
  %cloptr18531 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18532 = getelementptr inbounds i64, i64* %cloptr18531, i64 0                  ; &cloptr18531[0]
  %f18533 = ptrtoint void(i64,i64)* @lam10810 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18533, i64* %eptr18532                                                 ; store fptr
  %arg7559 = ptrtoint i64* %cloptr18531 to i64                                       ; closure cast; i64* -> i64
  %cloptr18534 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18536 = getelementptr inbounds i64, i64* %cloptr18534, i64 1                  ; &eptr18536[1]
  %eptr18537 = getelementptr inbounds i64, i64* %cloptr18534, i64 2                  ; &eptr18537[2]
  %eptr18538 = getelementptr inbounds i64, i64* %cloptr18534, i64 3                  ; &eptr18538[3]
  store i64 %SUQ$n, i64* %eptr18536                                                  ; *eptr18536 = %SUQ$n
  store i64 %cont7106, i64* %eptr18537                                               ; *eptr18537 = %cont7106
  store i64 %YxQ$lst, i64* %eptr18538                                                ; *eptr18538 = %YxQ$lst
  %eptr18535 = getelementptr inbounds i64, i64* %cloptr18534, i64 0                  ; &cloptr18534[0]
  %f18539 = ptrtoint void(i64,i64)* @lam10807 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18539, i64* %eptr18535                                                 ; store fptr
  %arg7558 = ptrtoint i64* %cloptr18534 to i64                                       ; closure cast; i64* -> i64
  %cloptr18540 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18542 = getelementptr inbounds i64, i64* %cloptr18540, i64 1                  ; &eptr18542[1]
  %eptr18543 = getelementptr inbounds i64, i64* %cloptr18540, i64 2                  ; &eptr18543[2]
  %eptr18544 = getelementptr inbounds i64, i64* %cloptr18540, i64 3                  ; &eptr18544[3]
  store i64 %SUQ$n, i64* %eptr18542                                                  ; *eptr18542 = %SUQ$n
  store i64 %cont7106, i64* %eptr18543                                               ; *eptr18543 = %cont7106
  store i64 %YxQ$lst, i64* %eptr18544                                                ; *eptr18544 = %YxQ$lst
  %eptr18541 = getelementptr inbounds i64, i64* %cloptr18540, i64 0                  ; &cloptr18540[0]
  %f18545 = ptrtoint void(i64,i64)* @lam10786 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18545, i64* %eptr18541                                                 ; store fptr
  %arg7557 = ptrtoint i64* %cloptr18540 to i64                                       ; closure cast; i64* -> i64
  %rva8865 = add i64 0, 0                                                            ; quoted ()
  %rva8864 = call i64 @prim_cons(i64 %arg7557, i64 %rva8865)                         ; call prim_cons
  %rva8863 = call i64 @prim_cons(i64 %arg7558, i64 %rva8864)                         ; call prim_cons
  %cloptr18546 = inttoptr i64 %arg7559 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18547 = getelementptr inbounds i64, i64* %cloptr18546, i64 0                 ; &cloptr18546[0]
  %f18549 = load i64, i64* %i0ptr18547, align 8                                      ; load; *i0ptr18547
  %fptr18548 = inttoptr i64 %f18549 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18548(i64 %arg7559, i64 %rva8863)                   ; tail call
  ret void
}


define void @lam10810(i64 %env10811, i64 %rvp8814) {
  %cont7113 = call i64 @prim_car(i64 %rvp8814)                                       ; call prim_car
  %rvp8813 = call i64 @prim_cdr(i64 %rvp8814)                                        ; call prim_cdr
  %pv1$u = call i64 @prim_car(i64 %rvp8813)                                          ; call prim_car
  %na8809 = call i64 @prim_cdr(i64 %rvp8813)                                         ; call prim_cdr
  %rva8812 = add i64 0, 0                                                            ; quoted ()
  %rva8811 = call i64 @prim_cons(i64 %pv1$u, i64 %rva8812)                           ; call prim_cons
  %rva8810 = call i64 @prim_cons(i64 %cont7113, i64 %rva8811)                        ; call prim_cons
  %cloptr18550 = inttoptr i64 %pv1$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr18551 = getelementptr inbounds i64, i64* %cloptr18550, i64 0                 ; &cloptr18550[0]
  %f18553 = load i64, i64* %i0ptr18551, align 8                                      ; load; *i0ptr18551
  %fptr18552 = inttoptr i64 %f18553 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18552(i64 %pv1$u, i64 %rva8810)                     ; tail call
  ret void
}


define void @lam10807(i64 %env10808, i64 %rvp8838) {
  %envptr18554 = inttoptr i64 %env10808 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18555 = getelementptr inbounds i64, i64* %envptr18554, i64 3                ; &envptr18554[3]
  %YxQ$lst = load i64, i64* %envptr18555, align 8                                    ; load; *envptr18555
  %envptr18556 = inttoptr i64 %env10808 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18557 = getelementptr inbounds i64, i64* %envptr18556, i64 2                ; &envptr18556[2]
  %cont7106 = load i64, i64* %envptr18557, align 8                                   ; load; *envptr18557
  %envptr18558 = inttoptr i64 %env10808 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18559 = getelementptr inbounds i64, i64* %envptr18558, i64 1                ; &envptr18558[1]
  %SUQ$n = load i64, i64* %envptr18559, align 8                                      ; load; *envptr18559
  %_957107 = call i64 @prim_car(i64 %rvp8838)                                        ; call prim_car
  %rvp8837 = call i64 @prim_cdr(i64 %rvp8838)                                        ; call prim_cdr
  %x3w$cc = call i64 @prim_car(i64 %rvp8837)                                         ; call prim_car
  %na8816 = call i64 @prim_cdr(i64 %rvp8837)                                         ; call prim_cdr
  %arg7563 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6952 = call i64 @prim_vector_45ref(i64 %SUQ$n, i64 %arg7563)                     ; call prim_vector_45ref
  %arg7566 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6953 = call i64 @prim__61(i64 %arg7566, i64 %a6952)                              ; call prim__61
  %cmp18560 = icmp eq i64 %a6953, 15                                                 ; false?
  br i1 %cmp18560, label %else18562, label %then18561                                ; if

then18561:
  %arg7567 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45ref(i64 %YxQ$lst, i64 %arg7567)             ; call prim_vector_45ref
  %arg7570 = add i64 0, 0                                                            ; quoted ()
  %rva8819 = add i64 0, 0                                                            ; quoted ()
  %rva8818 = call i64 @prim_cons(i64 %retprim7108, i64 %rva8819)                     ; call prim_cons
  %rva8817 = call i64 @prim_cons(i64 %arg7570, i64 %rva8818)                         ; call prim_cons
  %cloptr18563 = inttoptr i64 %cont7106 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18564 = getelementptr inbounds i64, i64* %cloptr18563, i64 0                 ; &cloptr18563[0]
  %f18566 = load i64, i64* %i0ptr18564, align 8                                      ; load; *i0ptr18564
  %fptr18565 = inttoptr i64 %f18566 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18565(i64 %cont7106, i64 %rva8817)                  ; tail call
  ret void

else18562:
  %arg7572 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6954 = call i64 @prim_vector_45ref(i64 %YxQ$lst, i64 %arg7572)                   ; call prim_vector_45ref
  %a6955 = call i64 @prim_cdr(i64 %a6954)                                            ; call prim_cdr
  %arg7576 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7112 = call i64 @prim_vector_45set_33(i64 %YxQ$lst, i64 %arg7576, i64 %a6955); call prim_vector_45set_33
  %cloptr18567 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18569 = getelementptr inbounds i64, i64* %cloptr18567, i64 1                  ; &eptr18569[1]
  %eptr18570 = getelementptr inbounds i64, i64* %cloptr18567, i64 2                  ; &eptr18570[2]
  %eptr18571 = getelementptr inbounds i64, i64* %cloptr18567, i64 3                  ; &eptr18571[3]
  store i64 %x3w$cc, i64* %eptr18569                                                 ; *eptr18569 = %x3w$cc
  store i64 %SUQ$n, i64* %eptr18570                                                  ; *eptr18570 = %SUQ$n
  store i64 %cont7106, i64* %eptr18571                                               ; *eptr18571 = %cont7106
  %eptr18568 = getelementptr inbounds i64, i64* %cloptr18567, i64 0                  ; &cloptr18567[0]
  %f18572 = ptrtoint void(i64,i64)* @lam10801 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18572, i64* %eptr18568                                                 ; store fptr
  %arg7580 = ptrtoint i64* %cloptr18567 to i64                                       ; closure cast; i64* -> i64
  %arg7579 = add i64 0, 0                                                            ; quoted ()
  %rva8836 = add i64 0, 0                                                            ; quoted ()
  %rva8835 = call i64 @prim_cons(i64 %retprim7112, i64 %rva8836)                     ; call prim_cons
  %rva8834 = call i64 @prim_cons(i64 %arg7579, i64 %rva8835)                         ; call prim_cons
  %cloptr18573 = inttoptr i64 %arg7580 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18574 = getelementptr inbounds i64, i64* %cloptr18573, i64 0                 ; &cloptr18573[0]
  %f18576 = load i64, i64* %i0ptr18574, align 8                                      ; load; *i0ptr18574
  %fptr18575 = inttoptr i64 %f18576 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18575(i64 %arg7580, i64 %rva8834)                   ; tail call
  ret void
}


define void @lam10801(i64 %env10802, i64 %rvp8833) {
  %envptr18577 = inttoptr i64 %env10802 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18578 = getelementptr inbounds i64, i64* %envptr18577, i64 3                ; &envptr18577[3]
  %cont7106 = load i64, i64* %envptr18578, align 8                                   ; load; *envptr18578
  %envptr18579 = inttoptr i64 %env10802 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18580 = getelementptr inbounds i64, i64* %envptr18579, i64 2                ; &envptr18579[2]
  %SUQ$n = load i64, i64* %envptr18580, align 8                                      ; load; *envptr18580
  %envptr18581 = inttoptr i64 %env10802 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18582 = getelementptr inbounds i64, i64* %envptr18581, i64 1                ; &envptr18581[1]
  %x3w$cc = load i64, i64* %envptr18582, align 8                                     ; load; *envptr18582
  %_957109 = call i64 @prim_car(i64 %rvp8833)                                        ; call prim_car
  %rvp8832 = call i64 @prim_cdr(i64 %rvp8833)                                        ; call prim_cdr
  %r9F$_950 = call i64 @prim_car(i64 %rvp8832)                                       ; call prim_car
  %na8821 = call i64 @prim_cdr(i64 %rvp8832)                                         ; call prim_cdr
  %arg7581 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6956 = call i64 @prim_vector_45ref(i64 %SUQ$n, i64 %arg7581)                     ; call prim_vector_45ref
  %arg7583 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6957 = call i64 @prim__45(i64 %a6956, i64 %arg7583)                              ; call prim__45
  %arg7586 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7111 = call i64 @prim_vector_45set_33(i64 %SUQ$n, i64 %arg7586, i64 %a6957); call prim_vector_45set_33
  %cloptr18583 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18585 = getelementptr inbounds i64, i64* %cloptr18583, i64 1                  ; &eptr18585[1]
  %eptr18586 = getelementptr inbounds i64, i64* %cloptr18583, i64 2                  ; &eptr18586[2]
  store i64 %x3w$cc, i64* %eptr18585                                                 ; *eptr18585 = %x3w$cc
  store i64 %cont7106, i64* %eptr18586                                               ; *eptr18586 = %cont7106
  %eptr18584 = getelementptr inbounds i64, i64* %cloptr18583, i64 0                  ; &cloptr18583[0]
  %f18587 = ptrtoint void(i64,i64)* @lam10796 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18587, i64* %eptr18584                                                 ; store fptr
  %arg7590 = ptrtoint i64* %cloptr18583 to i64                                       ; closure cast; i64* -> i64
  %arg7589 = add i64 0, 0                                                            ; quoted ()
  %rva8831 = add i64 0, 0                                                            ; quoted ()
  %rva8830 = call i64 @prim_cons(i64 %retprim7111, i64 %rva8831)                     ; call prim_cons
  %rva8829 = call i64 @prim_cons(i64 %arg7589, i64 %rva8830)                         ; call prim_cons
  %cloptr18588 = inttoptr i64 %arg7590 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18589 = getelementptr inbounds i64, i64* %cloptr18588, i64 0                 ; &cloptr18588[0]
  %f18591 = load i64, i64* %i0ptr18589, align 8                                      ; load; *i0ptr18589
  %fptr18590 = inttoptr i64 %f18591 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18590(i64 %arg7590, i64 %rva8829)                   ; tail call
  ret void
}


define void @lam10796(i64 %env10797, i64 %rvp8828) {
  %envptr18592 = inttoptr i64 %env10797 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18593 = getelementptr inbounds i64, i64* %envptr18592, i64 2                ; &envptr18592[2]
  %cont7106 = load i64, i64* %envptr18593, align 8                                   ; load; *envptr18593
  %envptr18594 = inttoptr i64 %env10797 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18595 = getelementptr inbounds i64, i64* %envptr18594, i64 1                ; &envptr18594[1]
  %x3w$cc = load i64, i64* %envptr18595, align 8                                     ; load; *envptr18595
  %_957110 = call i64 @prim_car(i64 %rvp8828)                                        ; call prim_car
  %rvp8827 = call i64 @prim_cdr(i64 %rvp8828)                                        ; call prim_cdr
  %QEA$_951 = call i64 @prim_car(i64 %rvp8827)                                       ; call prim_car
  %na8823 = call i64 @prim_cdr(i64 %rvp8827)                                         ; call prim_cdr
  %rva8826 = add i64 0, 0                                                            ; quoted ()
  %rva8825 = call i64 @prim_cons(i64 %x3w$cc, i64 %rva8826)                          ; call prim_cons
  %rva8824 = call i64 @prim_cons(i64 %cont7106, i64 %rva8825)                        ; call prim_cons
  %cloptr18596 = inttoptr i64 %x3w$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr18597 = getelementptr inbounds i64, i64* %cloptr18596, i64 0                 ; &cloptr18596[0]
  %f18599 = load i64, i64* %i0ptr18597, align 8                                      ; load; *i0ptr18597
  %fptr18598 = inttoptr i64 %f18599 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18598(i64 %x3w$cc, i64 %rva8824)                    ; tail call
  ret void
}


define void @lam10786(i64 %env10787, i64 %rvp8862) {
  %envptr18600 = inttoptr i64 %env10787 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18601 = getelementptr inbounds i64, i64* %envptr18600, i64 3                ; &envptr18600[3]
  %YxQ$lst = load i64, i64* %envptr18601, align 8                                    ; load; *envptr18601
  %envptr18602 = inttoptr i64 %env10787 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18603 = getelementptr inbounds i64, i64* %envptr18602, i64 2                ; &envptr18602[2]
  %cont7106 = load i64, i64* %envptr18603, align 8                                   ; load; *envptr18603
  %envptr18604 = inttoptr i64 %env10787 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18605 = getelementptr inbounds i64, i64* %envptr18604, i64 1                ; &envptr18604[1]
  %SUQ$n = load i64, i64* %envptr18605, align 8                                      ; load; *envptr18605
  %_957107 = call i64 @prim_car(i64 %rvp8862)                                        ; call prim_car
  %rvp8861 = call i64 @prim_cdr(i64 %rvp8862)                                        ; call prim_cdr
  %x3w$cc = call i64 @prim_car(i64 %rvp8861)                                         ; call prim_car
  %na8840 = call i64 @prim_cdr(i64 %rvp8861)                                         ; call prim_cdr
  %arg7594 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6952 = call i64 @prim_vector_45ref(i64 %SUQ$n, i64 %arg7594)                     ; call prim_vector_45ref
  %arg7597 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6953 = call i64 @prim__61(i64 %arg7597, i64 %a6952)                              ; call prim__61
  %cmp18606 = icmp eq i64 %a6953, 15                                                 ; false?
  br i1 %cmp18606, label %else18608, label %then18607                                ; if

then18607:
  %arg7598 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45ref(i64 %YxQ$lst, i64 %arg7598)             ; call prim_vector_45ref
  %arg7601 = add i64 0, 0                                                            ; quoted ()
  %rva8843 = add i64 0, 0                                                            ; quoted ()
  %rva8842 = call i64 @prim_cons(i64 %retprim7108, i64 %rva8843)                     ; call prim_cons
  %rva8841 = call i64 @prim_cons(i64 %arg7601, i64 %rva8842)                         ; call prim_cons
  %cloptr18609 = inttoptr i64 %cont7106 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18610 = getelementptr inbounds i64, i64* %cloptr18609, i64 0                 ; &cloptr18609[0]
  %f18612 = load i64, i64* %i0ptr18610, align 8                                      ; load; *i0ptr18610
  %fptr18611 = inttoptr i64 %f18612 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18611(i64 %cont7106, i64 %rva8841)                  ; tail call
  ret void

else18608:
  %arg7603 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6954 = call i64 @prim_vector_45ref(i64 %YxQ$lst, i64 %arg7603)                   ; call prim_vector_45ref
  %a6955 = call i64 @prim_cdr(i64 %a6954)                                            ; call prim_cdr
  %arg7607 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7112 = call i64 @prim_vector_45set_33(i64 %YxQ$lst, i64 %arg7607, i64 %a6955); call prim_vector_45set_33
  %cloptr18613 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18615 = getelementptr inbounds i64, i64* %cloptr18613, i64 1                  ; &eptr18615[1]
  %eptr18616 = getelementptr inbounds i64, i64* %cloptr18613, i64 2                  ; &eptr18616[2]
  %eptr18617 = getelementptr inbounds i64, i64* %cloptr18613, i64 3                  ; &eptr18617[3]
  store i64 %x3w$cc, i64* %eptr18615                                                 ; *eptr18615 = %x3w$cc
  store i64 %SUQ$n, i64* %eptr18616                                                  ; *eptr18616 = %SUQ$n
  store i64 %cont7106, i64* %eptr18617                                               ; *eptr18617 = %cont7106
  %eptr18614 = getelementptr inbounds i64, i64* %cloptr18613, i64 0                  ; &cloptr18613[0]
  %f18618 = ptrtoint void(i64,i64)* @lam10780 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18618, i64* %eptr18614                                                 ; store fptr
  %arg7611 = ptrtoint i64* %cloptr18613 to i64                                       ; closure cast; i64* -> i64
  %arg7610 = add i64 0, 0                                                            ; quoted ()
  %rva8860 = add i64 0, 0                                                            ; quoted ()
  %rva8859 = call i64 @prim_cons(i64 %retprim7112, i64 %rva8860)                     ; call prim_cons
  %rva8858 = call i64 @prim_cons(i64 %arg7610, i64 %rva8859)                         ; call prim_cons
  %cloptr18619 = inttoptr i64 %arg7611 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18620 = getelementptr inbounds i64, i64* %cloptr18619, i64 0                 ; &cloptr18619[0]
  %f18622 = load i64, i64* %i0ptr18620, align 8                                      ; load; *i0ptr18620
  %fptr18621 = inttoptr i64 %f18622 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18621(i64 %arg7611, i64 %rva8858)                   ; tail call
  ret void
}


define void @lam10780(i64 %env10781, i64 %rvp8857) {
  %envptr18623 = inttoptr i64 %env10781 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18624 = getelementptr inbounds i64, i64* %envptr18623, i64 3                ; &envptr18623[3]
  %cont7106 = load i64, i64* %envptr18624, align 8                                   ; load; *envptr18624
  %envptr18625 = inttoptr i64 %env10781 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18626 = getelementptr inbounds i64, i64* %envptr18625, i64 2                ; &envptr18625[2]
  %SUQ$n = load i64, i64* %envptr18626, align 8                                      ; load; *envptr18626
  %envptr18627 = inttoptr i64 %env10781 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18628 = getelementptr inbounds i64, i64* %envptr18627, i64 1                ; &envptr18627[1]
  %x3w$cc = load i64, i64* %envptr18628, align 8                                     ; load; *envptr18628
  %_957109 = call i64 @prim_car(i64 %rvp8857)                                        ; call prim_car
  %rvp8856 = call i64 @prim_cdr(i64 %rvp8857)                                        ; call prim_cdr
  %r9F$_950 = call i64 @prim_car(i64 %rvp8856)                                       ; call prim_car
  %na8845 = call i64 @prim_cdr(i64 %rvp8856)                                         ; call prim_cdr
  %arg7612 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6956 = call i64 @prim_vector_45ref(i64 %SUQ$n, i64 %arg7612)                     ; call prim_vector_45ref
  %arg7614 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6957 = call i64 @prim__45(i64 %a6956, i64 %arg7614)                              ; call prim__45
  %arg7617 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7111 = call i64 @prim_vector_45set_33(i64 %SUQ$n, i64 %arg7617, i64 %a6957); call prim_vector_45set_33
  %cloptr18629 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18631 = getelementptr inbounds i64, i64* %cloptr18629, i64 1                  ; &eptr18631[1]
  %eptr18632 = getelementptr inbounds i64, i64* %cloptr18629, i64 2                  ; &eptr18632[2]
  store i64 %x3w$cc, i64* %eptr18631                                                 ; *eptr18631 = %x3w$cc
  store i64 %cont7106, i64* %eptr18632                                               ; *eptr18632 = %cont7106
  %eptr18630 = getelementptr inbounds i64, i64* %cloptr18629, i64 0                  ; &cloptr18629[0]
  %f18633 = ptrtoint void(i64,i64)* @lam10775 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18633, i64* %eptr18630                                                 ; store fptr
  %arg7621 = ptrtoint i64* %cloptr18629 to i64                                       ; closure cast; i64* -> i64
  %arg7620 = add i64 0, 0                                                            ; quoted ()
  %rva8855 = add i64 0, 0                                                            ; quoted ()
  %rva8854 = call i64 @prim_cons(i64 %retprim7111, i64 %rva8855)                     ; call prim_cons
  %rva8853 = call i64 @prim_cons(i64 %arg7620, i64 %rva8854)                         ; call prim_cons
  %cloptr18634 = inttoptr i64 %arg7621 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18635 = getelementptr inbounds i64, i64* %cloptr18634, i64 0                 ; &cloptr18634[0]
  %f18637 = load i64, i64* %i0ptr18635, align 8                                      ; load; *i0ptr18635
  %fptr18636 = inttoptr i64 %f18637 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18636(i64 %arg7621, i64 %rva8853)                   ; tail call
  ret void
}


define void @lam10775(i64 %env10776, i64 %rvp8852) {
  %envptr18638 = inttoptr i64 %env10776 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18639 = getelementptr inbounds i64, i64* %envptr18638, i64 2                ; &envptr18638[2]
  %cont7106 = load i64, i64* %envptr18639, align 8                                   ; load; *envptr18639
  %envptr18640 = inttoptr i64 %env10776 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18641 = getelementptr inbounds i64, i64* %envptr18640, i64 1                ; &envptr18640[1]
  %x3w$cc = load i64, i64* %envptr18641, align 8                                     ; load; *envptr18641
  %_957110 = call i64 @prim_car(i64 %rvp8852)                                        ; call prim_car
  %rvp8851 = call i64 @prim_cdr(i64 %rvp8852)                                        ; call prim_cdr
  %QEA$_951 = call i64 @prim_car(i64 %rvp8851)                                       ; call prim_car
  %na8847 = call i64 @prim_cdr(i64 %rvp8851)                                         ; call prim_cdr
  %rva8850 = add i64 0, 0                                                            ; quoted ()
  %rva8849 = call i64 @prim_cons(i64 %x3w$cc, i64 %rva8850)                          ; call prim_cons
  %rva8848 = call i64 @prim_cons(i64 %cont7106, i64 %rva8849)                        ; call prim_cons
  %cloptr18642 = inttoptr i64 %x3w$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr18643 = getelementptr inbounds i64, i64* %cloptr18642, i64 0                 ; &cloptr18642[0]
  %f18645 = load i64, i64* %i0ptr18643, align 8                                      ; load; *i0ptr18643
  %fptr18644 = inttoptr i64 %f18645 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18644(i64 %x3w$cc, i64 %rva8848)                    ; tail call
  ret void
}


define void @lam10764(i64 %env10765, i64 %rvp8923) {
  %cont7114 = call i64 @prim_car(i64 %rvp8923)                                       ; call prim_car
  %rvp8922 = call i64 @prim_cdr(i64 %rvp8923)                                        ; call prim_cdr
  %A76$v = call i64 @prim_car(i64 %rvp8922)                                          ; call prim_car
  %rvp8921 = call i64 @prim_cdr(i64 %rvp8922)                                        ; call prim_cdr
  %tFQ$lst = call i64 @prim_car(i64 %rvp8921)                                        ; call prim_car
  %na8870 = call i64 @prim_cdr(i64 %rvp8921)                                         ; call prim_cdr
  %arg7626 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %Yfx$lst = call i64 @prim_make_45vector(i64 %arg7626, i64 %tFQ$lst)                ; call prim_make_45vector
  %cloptr18646 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18647 = getelementptr inbounds i64, i64* %cloptr18646, i64 0                  ; &cloptr18646[0]
  %f18648 = ptrtoint void(i64,i64)* @lam10761 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18648, i64* %eptr18647                                                 ; store fptr
  %arg7629 = ptrtoint i64* %cloptr18646 to i64                                       ; closure cast; i64* -> i64
  %cloptr18649 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18651 = getelementptr inbounds i64, i64* %cloptr18649, i64 1                  ; &eptr18651[1]
  %eptr18652 = getelementptr inbounds i64, i64* %cloptr18649, i64 2                  ; &eptr18652[2]
  %eptr18653 = getelementptr inbounds i64, i64* %cloptr18649, i64 3                  ; &eptr18653[3]
  store i64 %Yfx$lst, i64* %eptr18651                                                ; *eptr18651 = %Yfx$lst
  store i64 %A76$v, i64* %eptr18652                                                  ; *eptr18652 = %A76$v
  store i64 %cont7114, i64* %eptr18653                                               ; *eptr18653 = %cont7114
  %eptr18650 = getelementptr inbounds i64, i64* %cloptr18649, i64 0                  ; &cloptr18649[0]
  %f18654 = ptrtoint void(i64,i64)* @lam10758 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18654, i64* %eptr18650                                                 ; store fptr
  %arg7628 = ptrtoint i64* %cloptr18649 to i64                                       ; closure cast; i64* -> i64
  %cloptr18655 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18657 = getelementptr inbounds i64, i64* %cloptr18655, i64 1                  ; &eptr18657[1]
  %eptr18658 = getelementptr inbounds i64, i64* %cloptr18655, i64 2                  ; &eptr18658[2]
  %eptr18659 = getelementptr inbounds i64, i64* %cloptr18655, i64 3                  ; &eptr18659[3]
  store i64 %Yfx$lst, i64* %eptr18657                                                ; *eptr18657 = %Yfx$lst
  store i64 %A76$v, i64* %eptr18658                                                  ; *eptr18658 = %A76$v
  store i64 %cont7114, i64* %eptr18659                                               ; *eptr18659 = %cont7114
  %eptr18656 = getelementptr inbounds i64, i64* %cloptr18655, i64 0                  ; &cloptr18655[0]
  %f18660 = ptrtoint void(i64,i64)* @lam10741 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18660, i64* %eptr18656                                                 ; store fptr
  %arg7627 = ptrtoint i64* %cloptr18655 to i64                                       ; closure cast; i64* -> i64
  %rva8920 = add i64 0, 0                                                            ; quoted ()
  %rva8919 = call i64 @prim_cons(i64 %arg7627, i64 %rva8920)                         ; call prim_cons
  %rva8918 = call i64 @prim_cons(i64 %arg7628, i64 %rva8919)                         ; call prim_cons
  %cloptr18661 = inttoptr i64 %arg7629 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18662 = getelementptr inbounds i64, i64* %cloptr18661, i64 0                 ; &cloptr18661[0]
  %f18664 = load i64, i64* %i0ptr18662, align 8                                      ; load; *i0ptr18662
  %fptr18663 = inttoptr i64 %f18664 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18663(i64 %arg7629, i64 %rva8918)                   ; tail call
  ret void
}


define void @lam10761(i64 %env10762, i64 %rvp8877) {
  %cont7119 = call i64 @prim_car(i64 %rvp8877)                                       ; call prim_car
  %rvp8876 = call i64 @prim_cdr(i64 %rvp8877)                                        ; call prim_cdr
  %hEE$u = call i64 @prim_car(i64 %rvp8876)                                          ; call prim_car
  %na8872 = call i64 @prim_cdr(i64 %rvp8876)                                         ; call prim_cdr
  %rva8875 = add i64 0, 0                                                            ; quoted ()
  %rva8874 = call i64 @prim_cons(i64 %hEE$u, i64 %rva8875)                           ; call prim_cons
  %rva8873 = call i64 @prim_cons(i64 %cont7119, i64 %rva8874)                        ; call prim_cons
  %cloptr18665 = inttoptr i64 %hEE$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr18666 = getelementptr inbounds i64, i64* %cloptr18665, i64 0                 ; &cloptr18665[0]
  %f18668 = load i64, i64* %i0ptr18666, align 8                                      ; load; *i0ptr18666
  %fptr18667 = inttoptr i64 %f18668 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18667(i64 %hEE$u, i64 %rva8873)                     ; tail call
  ret void
}


define void @lam10758(i64 %env10759, i64 %rvp8897) {
  %envptr18669 = inttoptr i64 %env10759 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18670 = getelementptr inbounds i64, i64* %envptr18669, i64 3                ; &envptr18669[3]
  %cont7114 = load i64, i64* %envptr18670, align 8                                   ; load; *envptr18670
  %envptr18671 = inttoptr i64 %env10759 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18672 = getelementptr inbounds i64, i64* %envptr18671, i64 2                ; &envptr18671[2]
  %A76$v = load i64, i64* %envptr18672, align 8                                      ; load; *envptr18672
  %envptr18673 = inttoptr i64 %env10759 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18674 = getelementptr inbounds i64, i64* %envptr18673, i64 1                ; &envptr18673[1]
  %Yfx$lst = load i64, i64* %envptr18674, align 8                                    ; load; *envptr18674
  %_957115 = call i64 @prim_car(i64 %rvp8897)                                        ; call prim_car
  %rvp8896 = call i64 @prim_cdr(i64 %rvp8897)                                        ; call prim_cdr
  %NHv$cc = call i64 @prim_car(i64 %rvp8896)                                         ; call prim_car
  %na8879 = call i64 @prim_cdr(i64 %rvp8896)                                         ; call prim_cdr
  %arg7633 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6958 = call i64 @prim_vector_45ref(i64 %Yfx$lst, i64 %arg7633)                   ; call prim_vector_45ref
  %a6959 = call i64 @prim_null_63(i64 %a6958)                                        ; call prim_null_63
  %cmp18675 = icmp eq i64 %a6959, 15                                                 ; false?
  br i1 %cmp18675, label %else18677, label %then18676                                ; if

then18676:
  %arg7637 = add i64 0, 0                                                            ; quoted ()
  %arg7636 = call i64 @const_init_false()                                            ; quoted #f
  %rva8882 = add i64 0, 0                                                            ; quoted ()
  %rva8881 = call i64 @prim_cons(i64 %arg7636, i64 %rva8882)                         ; call prim_cons
  %rva8880 = call i64 @prim_cons(i64 %arg7637, i64 %rva8881)                         ; call prim_cons
  %cloptr18678 = inttoptr i64 %cont7114 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18679 = getelementptr inbounds i64, i64* %cloptr18678, i64 0                 ; &cloptr18678[0]
  %f18681 = load i64, i64* %i0ptr18679, align 8                                      ; load; *i0ptr18679
  %fptr18680 = inttoptr i64 %f18681 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18680(i64 %cont7114, i64 %rva8880)                  ; tail call
  ret void

else18677:
  %arg7639 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6960 = call i64 @prim_vector_45ref(i64 %Yfx$lst, i64 %arg7639)                   ; call prim_vector_45ref
  %a6961 = call i64 @prim_car(i64 %a6960)                                            ; call prim_car
  %a6962 = call i64 @prim_eqv_63(i64 %a6961, i64 %A76$v)                             ; call prim_eqv_63
  %cmp18682 = icmp eq i64 %a6962, 15                                                 ; false?
  br i1 %cmp18682, label %else18684, label %then18683                                ; if

then18683:
  %arg7644 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7116 = call i64 @prim_vector_45ref(i64 %Yfx$lst, i64 %arg7644)             ; call prim_vector_45ref
  %arg7647 = add i64 0, 0                                                            ; quoted ()
  %rva8885 = add i64 0, 0                                                            ; quoted ()
  %rva8884 = call i64 @prim_cons(i64 %retprim7116, i64 %rva8885)                     ; call prim_cons
  %rva8883 = call i64 @prim_cons(i64 %arg7647, i64 %rva8884)                         ; call prim_cons
  %cloptr18685 = inttoptr i64 %cont7114 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18686 = getelementptr inbounds i64, i64* %cloptr18685, i64 0                 ; &cloptr18685[0]
  %f18688 = load i64, i64* %i0ptr18686, align 8                                      ; load; *i0ptr18686
  %fptr18687 = inttoptr i64 %f18688 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18687(i64 %cont7114, i64 %rva8883)                  ; tail call
  ret void

else18684:
  %arg7649 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6963 = call i64 @prim_vector_45ref(i64 %Yfx$lst, i64 %arg7649)                   ; call prim_vector_45ref
  %a6964 = call i64 @prim_cdr(i64 %a6963)                                            ; call prim_cdr
  %arg7653 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7118 = call i64 @prim_vector_45set_33(i64 %Yfx$lst, i64 %arg7653, i64 %a6964); call prim_vector_45set_33
  %cloptr18689 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18691 = getelementptr inbounds i64, i64* %cloptr18689, i64 1                  ; &eptr18691[1]
  %eptr18692 = getelementptr inbounds i64, i64* %cloptr18689, i64 2                  ; &eptr18692[2]
  store i64 %NHv$cc, i64* %eptr18691                                                 ; *eptr18691 = %NHv$cc
  store i64 %cont7114, i64* %eptr18692                                               ; *eptr18692 = %cont7114
  %eptr18690 = getelementptr inbounds i64, i64* %cloptr18689, i64 0                  ; &cloptr18689[0]
  %f18693 = ptrtoint void(i64,i64)* @lam10752 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18693, i64* %eptr18690                                                 ; store fptr
  %arg7657 = ptrtoint i64* %cloptr18689 to i64                                       ; closure cast; i64* -> i64
  %arg7656 = add i64 0, 0                                                            ; quoted ()
  %rva8895 = add i64 0, 0                                                            ; quoted ()
  %rva8894 = call i64 @prim_cons(i64 %retprim7118, i64 %rva8895)                     ; call prim_cons
  %rva8893 = call i64 @prim_cons(i64 %arg7656, i64 %rva8894)                         ; call prim_cons
  %cloptr18694 = inttoptr i64 %arg7657 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18695 = getelementptr inbounds i64, i64* %cloptr18694, i64 0                 ; &cloptr18694[0]
  %f18697 = load i64, i64* %i0ptr18695, align 8                                      ; load; *i0ptr18695
  %fptr18696 = inttoptr i64 %f18697 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18696(i64 %arg7657, i64 %rva8893)                   ; tail call
  ret void
}


define void @lam10752(i64 %env10753, i64 %rvp8892) {
  %envptr18698 = inttoptr i64 %env10753 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18699 = getelementptr inbounds i64, i64* %envptr18698, i64 2                ; &envptr18698[2]
  %cont7114 = load i64, i64* %envptr18699, align 8                                   ; load; *envptr18699
  %envptr18700 = inttoptr i64 %env10753 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18701 = getelementptr inbounds i64, i64* %envptr18700, i64 1                ; &envptr18700[1]
  %NHv$cc = load i64, i64* %envptr18701, align 8                                     ; load; *envptr18701
  %_957117 = call i64 @prim_car(i64 %rvp8892)                                        ; call prim_car
  %rvp8891 = call i64 @prim_cdr(i64 %rvp8892)                                        ; call prim_cdr
  %KNH$_950 = call i64 @prim_car(i64 %rvp8891)                                       ; call prim_car
  %na8887 = call i64 @prim_cdr(i64 %rvp8891)                                         ; call prim_cdr
  %rva8890 = add i64 0, 0                                                            ; quoted ()
  %rva8889 = call i64 @prim_cons(i64 %NHv$cc, i64 %rva8890)                          ; call prim_cons
  %rva8888 = call i64 @prim_cons(i64 %cont7114, i64 %rva8889)                        ; call prim_cons
  %cloptr18702 = inttoptr i64 %NHv$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr18703 = getelementptr inbounds i64, i64* %cloptr18702, i64 0                 ; &cloptr18702[0]
  %f18705 = load i64, i64* %i0ptr18703, align 8                                      ; load; *i0ptr18703
  %fptr18704 = inttoptr i64 %f18705 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18704(i64 %NHv$cc, i64 %rva8888)                    ; tail call
  ret void
}


define void @lam10741(i64 %env10742, i64 %rvp8917) {
  %envptr18706 = inttoptr i64 %env10742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18707 = getelementptr inbounds i64, i64* %envptr18706, i64 3                ; &envptr18706[3]
  %cont7114 = load i64, i64* %envptr18707, align 8                                   ; load; *envptr18707
  %envptr18708 = inttoptr i64 %env10742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18709 = getelementptr inbounds i64, i64* %envptr18708, i64 2                ; &envptr18708[2]
  %A76$v = load i64, i64* %envptr18709, align 8                                      ; load; *envptr18709
  %envptr18710 = inttoptr i64 %env10742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18711 = getelementptr inbounds i64, i64* %envptr18710, i64 1                ; &envptr18710[1]
  %Yfx$lst = load i64, i64* %envptr18711, align 8                                    ; load; *envptr18711
  %_957115 = call i64 @prim_car(i64 %rvp8917)                                        ; call prim_car
  %rvp8916 = call i64 @prim_cdr(i64 %rvp8917)                                        ; call prim_cdr
  %NHv$cc = call i64 @prim_car(i64 %rvp8916)                                         ; call prim_car
  %na8899 = call i64 @prim_cdr(i64 %rvp8916)                                         ; call prim_cdr
  %arg7661 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6958 = call i64 @prim_vector_45ref(i64 %Yfx$lst, i64 %arg7661)                   ; call prim_vector_45ref
  %a6959 = call i64 @prim_null_63(i64 %a6958)                                        ; call prim_null_63
  %cmp18712 = icmp eq i64 %a6959, 15                                                 ; false?
  br i1 %cmp18712, label %else18714, label %then18713                                ; if

then18713:
  %arg7665 = add i64 0, 0                                                            ; quoted ()
  %arg7664 = call i64 @const_init_false()                                            ; quoted #f
  %rva8902 = add i64 0, 0                                                            ; quoted ()
  %rva8901 = call i64 @prim_cons(i64 %arg7664, i64 %rva8902)                         ; call prim_cons
  %rva8900 = call i64 @prim_cons(i64 %arg7665, i64 %rva8901)                         ; call prim_cons
  %cloptr18715 = inttoptr i64 %cont7114 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18716 = getelementptr inbounds i64, i64* %cloptr18715, i64 0                 ; &cloptr18715[0]
  %f18718 = load i64, i64* %i0ptr18716, align 8                                      ; load; *i0ptr18716
  %fptr18717 = inttoptr i64 %f18718 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18717(i64 %cont7114, i64 %rva8900)                  ; tail call
  ret void

else18714:
  %arg7667 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6960 = call i64 @prim_vector_45ref(i64 %Yfx$lst, i64 %arg7667)                   ; call prim_vector_45ref
  %a6961 = call i64 @prim_car(i64 %a6960)                                            ; call prim_car
  %a6962 = call i64 @prim_eqv_63(i64 %a6961, i64 %A76$v)                             ; call prim_eqv_63
  %cmp18719 = icmp eq i64 %a6962, 15                                                 ; false?
  br i1 %cmp18719, label %else18721, label %then18720                                ; if

then18720:
  %arg7672 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7116 = call i64 @prim_vector_45ref(i64 %Yfx$lst, i64 %arg7672)             ; call prim_vector_45ref
  %arg7675 = add i64 0, 0                                                            ; quoted ()
  %rva8905 = add i64 0, 0                                                            ; quoted ()
  %rva8904 = call i64 @prim_cons(i64 %retprim7116, i64 %rva8905)                     ; call prim_cons
  %rva8903 = call i64 @prim_cons(i64 %arg7675, i64 %rva8904)                         ; call prim_cons
  %cloptr18722 = inttoptr i64 %cont7114 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18723 = getelementptr inbounds i64, i64* %cloptr18722, i64 0                 ; &cloptr18722[0]
  %f18725 = load i64, i64* %i0ptr18723, align 8                                      ; load; *i0ptr18723
  %fptr18724 = inttoptr i64 %f18725 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18724(i64 %cont7114, i64 %rva8903)                  ; tail call
  ret void

else18721:
  %arg7677 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6963 = call i64 @prim_vector_45ref(i64 %Yfx$lst, i64 %arg7677)                   ; call prim_vector_45ref
  %a6964 = call i64 @prim_cdr(i64 %a6963)                                            ; call prim_cdr
  %arg7681 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7118 = call i64 @prim_vector_45set_33(i64 %Yfx$lst, i64 %arg7681, i64 %a6964); call prim_vector_45set_33
  %cloptr18726 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18728 = getelementptr inbounds i64, i64* %cloptr18726, i64 1                  ; &eptr18728[1]
  %eptr18729 = getelementptr inbounds i64, i64* %cloptr18726, i64 2                  ; &eptr18729[2]
  store i64 %NHv$cc, i64* %eptr18728                                                 ; *eptr18728 = %NHv$cc
  store i64 %cont7114, i64* %eptr18729                                               ; *eptr18729 = %cont7114
  %eptr18727 = getelementptr inbounds i64, i64* %cloptr18726, i64 0                  ; &cloptr18726[0]
  %f18730 = ptrtoint void(i64,i64)* @lam10735 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18730, i64* %eptr18727                                                 ; store fptr
  %arg7685 = ptrtoint i64* %cloptr18726 to i64                                       ; closure cast; i64* -> i64
  %arg7684 = add i64 0, 0                                                            ; quoted ()
  %rva8915 = add i64 0, 0                                                            ; quoted ()
  %rva8914 = call i64 @prim_cons(i64 %retprim7118, i64 %rva8915)                     ; call prim_cons
  %rva8913 = call i64 @prim_cons(i64 %arg7684, i64 %rva8914)                         ; call prim_cons
  %cloptr18731 = inttoptr i64 %arg7685 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18732 = getelementptr inbounds i64, i64* %cloptr18731, i64 0                 ; &cloptr18731[0]
  %f18734 = load i64, i64* %i0ptr18732, align 8                                      ; load; *i0ptr18732
  %fptr18733 = inttoptr i64 %f18734 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18733(i64 %arg7685, i64 %rva8913)                   ; tail call
  ret void
}


define void @lam10735(i64 %env10736, i64 %rvp8912) {
  %envptr18735 = inttoptr i64 %env10736 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18736 = getelementptr inbounds i64, i64* %envptr18735, i64 2                ; &envptr18735[2]
  %cont7114 = load i64, i64* %envptr18736, align 8                                   ; load; *envptr18736
  %envptr18737 = inttoptr i64 %env10736 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18738 = getelementptr inbounds i64, i64* %envptr18737, i64 1                ; &envptr18737[1]
  %NHv$cc = load i64, i64* %envptr18738, align 8                                     ; load; *envptr18738
  %_957117 = call i64 @prim_car(i64 %rvp8912)                                        ; call prim_car
  %rvp8911 = call i64 @prim_cdr(i64 %rvp8912)                                        ; call prim_cdr
  %KNH$_950 = call i64 @prim_car(i64 %rvp8911)                                       ; call prim_car
  %na8907 = call i64 @prim_cdr(i64 %rvp8911)                                         ; call prim_cdr
  %rva8910 = add i64 0, 0                                                            ; quoted ()
  %rva8909 = call i64 @prim_cons(i64 %NHv$cc, i64 %rva8910)                          ; call prim_cons
  %rva8908 = call i64 @prim_cons(i64 %cont7114, i64 %rva8909)                        ; call prim_cons
  %cloptr18739 = inttoptr i64 %NHv$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr18740 = getelementptr inbounds i64, i64* %cloptr18739, i64 0                 ; &cloptr18739[0]
  %f18742 = load i64, i64* %i0ptr18740, align 8                                      ; load; *i0ptr18740
  %fptr18741 = inttoptr i64 %f18742 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18741(i64 %NHv$cc, i64 %rva8908)                    ; tail call
  ret void
}


define void @lam10723(i64 %env10724, i64 %sUc$args7121) {
  %envptr18743 = inttoptr i64 %env10724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18744 = getelementptr inbounds i64, i64* %envptr18743, i64 1                ; &envptr18743[1]
  %PvW$_37foldl1 = load i64, i64* %envptr18744, align 8                              ; load; *envptr18744
  %cont7120 = call i64 @prim_car(i64 %sUc$args7121)                                  ; call prim_car
  %sUc$args = call i64 @prim_cdr(i64 %sUc$args7121)                                  ; call prim_cdr
  %a6965 = call i64 @prim_null_63(i64 %sUc$args)                                     ; call prim_null_63
  %cmp18745 = icmp eq i64 %a6965, 15                                                 ; false?
  br i1 %cmp18745, label %else18747, label %then18746                                ; if

then18746:
  %arg7693 = add i64 0, 0                                                            ; quoted ()
  %arg7692 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %rva8926 = add i64 0, 0                                                            ; quoted ()
  %rva8925 = call i64 @prim_cons(i64 %arg7692, i64 %rva8926)                         ; call prim_cons
  %rva8924 = call i64 @prim_cons(i64 %arg7693, i64 %rva8925)                         ; call prim_cons
  %cloptr18748 = inttoptr i64 %cont7120 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18749 = getelementptr inbounds i64, i64* %cloptr18748, i64 0                 ; &cloptr18748[0]
  %f18751 = load i64, i64* %i0ptr18749, align 8                                      ; load; *i0ptr18749
  %fptr18750 = inttoptr i64 %f18751 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18750(i64 %cont7120, i64 %rva8924)                  ; tail call
  ret void

else18747:
  %a6966 = call i64 @prim_cdr(i64 %sUc$args)                                         ; call prim_cdr
  %a6967 = call i64 @prim_null_63(i64 %a6966)                                        ; call prim_null_63
  %cmp18752 = icmp eq i64 %a6967, 15                                                 ; false?
  br i1 %cmp18752, label %else18754, label %then18753                                ; if

then18753:
  %retprim7122 = call i64 @prim_car(i64 %sUc$args)                                   ; call prim_car
  %arg7699 = add i64 0, 0                                                            ; quoted ()
  %rva8929 = add i64 0, 0                                                            ; quoted ()
  %rva8928 = call i64 @prim_cons(i64 %retprim7122, i64 %rva8929)                     ; call prim_cons
  %rva8927 = call i64 @prim_cons(i64 %arg7699, i64 %rva8928)                         ; call prim_cons
  %cloptr18755 = inttoptr i64 %cont7120 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18756 = getelementptr inbounds i64, i64* %cloptr18755, i64 0                 ; &cloptr18755[0]
  %f18758 = load i64, i64* %i0ptr18756, align 8                                      ; load; *i0ptr18756
  %fptr18757 = inttoptr i64 %f18758 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18757(i64 %cont7120, i64 %rva8927)                  ; tail call
  ret void

else18754:
  %a6968 = call i64 @prim_car(i64 %sUc$args)                                         ; call prim_car
  %a6969 = call i64 @prim_cdr(i64 %sUc$args)                                         ; call prim_cdr
  %cloptr18759 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18760 = getelementptr inbounds i64, i64* %cloptr18759, i64 0                  ; &cloptr18759[0]
  %f18761 = ptrtoint void(i64,i64)* @lam10721 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18761, i64* %eptr18760                                                 ; store fptr
  %arg7705 = ptrtoint i64* %cloptr18759 to i64                                       ; closure cast; i64* -> i64
  %rva8942 = add i64 0, 0                                                            ; quoted ()
  %rva8941 = call i64 @prim_cons(i64 %a6969, i64 %rva8942)                           ; call prim_cons
  %rva8940 = call i64 @prim_cons(i64 %a6968, i64 %rva8941)                           ; call prim_cons
  %rva8939 = call i64 @prim_cons(i64 %arg7705, i64 %rva8940)                         ; call prim_cons
  %rva8938 = call i64 @prim_cons(i64 %cont7120, i64 %rva8939)                        ; call prim_cons
  %cloptr18762 = inttoptr i64 %PvW$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr18763 = getelementptr inbounds i64, i64* %cloptr18762, i64 0                 ; &cloptr18762[0]
  %f18765 = load i64, i64* %i0ptr18763, align 8                                      ; load; *i0ptr18763
  %fptr18764 = inttoptr i64 %f18765 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18764(i64 %PvW$_37foldl1, i64 %rva8938)             ; tail call
  ret void
}


define void @lam10721(i64 %env10722, i64 %rvp8937) {
  %cont7123 = call i64 @prim_car(i64 %rvp8937)                                       ; call prim_car
  %rvp8936 = call i64 @prim_cdr(i64 %rvp8937)                                        ; call prim_cdr
  %mWf$n = call i64 @prim_car(i64 %rvp8936)                                          ; call prim_car
  %rvp8935 = call i64 @prim_cdr(i64 %rvp8936)                                        ; call prim_cdr
  %a5t$v = call i64 @prim_car(i64 %rvp8935)                                          ; call prim_car
  %na8931 = call i64 @prim_cdr(i64 %rvp8935)                                         ; call prim_cdr
  %retprim7124 = call i64 @prim__47(i64 %a5t$v, i64 %mWf$n)                          ; call prim__47
  %arg7711 = add i64 0, 0                                                            ; quoted ()
  %rva8934 = add i64 0, 0                                                            ; quoted ()
  %rva8933 = call i64 @prim_cons(i64 %retprim7124, i64 %rva8934)                     ; call prim_cons
  %rva8932 = call i64 @prim_cons(i64 %arg7711, i64 %rva8933)                         ; call prim_cons
  %cloptr18766 = inttoptr i64 %cont7123 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18767 = getelementptr inbounds i64, i64* %cloptr18766, i64 0                 ; &cloptr18766[0]
  %f18769 = load i64, i64* %i0ptr18767, align 8                                      ; load; *i0ptr18767
  %fptr18768 = inttoptr i64 %f18769 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18768(i64 %cont7123, i64 %rva8932)                  ; tail call
  ret void
}


define void @lam10711(i64 %env10712, i64 %rvp8949) {
  %cont7125 = call i64 @prim_car(i64 %rvp8949)                                       ; call prim_car
  %rvp8948 = call i64 @prim_cdr(i64 %rvp8949)                                        ; call prim_cdr
  %noF$x = call i64 @prim_car(i64 %rvp8948)                                          ; call prim_car
  %na8944 = call i64 @prim_cdr(i64 %rvp8948)                                         ; call prim_cdr
  %retprim7126 = call i64 @prim_car(i64 %noF$x)                                      ; call prim_car
  %arg7715 = add i64 0, 0                                                            ; quoted ()
  %rva8947 = add i64 0, 0                                                            ; quoted ()
  %rva8946 = call i64 @prim_cons(i64 %retprim7126, i64 %rva8947)                     ; call prim_cons
  %rva8945 = call i64 @prim_cons(i64 %arg7715, i64 %rva8946)                         ; call prim_cons
  %cloptr18770 = inttoptr i64 %cont7125 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18771 = getelementptr inbounds i64, i64* %cloptr18770, i64 0                 ; &cloptr18770[0]
  %f18773 = load i64, i64* %i0ptr18771, align 8                                      ; load; *i0ptr18771
  %fptr18772 = inttoptr i64 %f18773 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18772(i64 %cont7125, i64 %rva8945)                  ; tail call
  ret void
}


define void @lam10707(i64 %env10708, i64 %rvp8956) {
  %cont7127 = call i64 @prim_car(i64 %rvp8956)                                       ; call prim_car
  %rvp8955 = call i64 @prim_cdr(i64 %rvp8956)                                        ; call prim_cdr
  %N44$x = call i64 @prim_car(i64 %rvp8955)                                          ; call prim_car
  %na8951 = call i64 @prim_cdr(i64 %rvp8955)                                         ; call prim_cdr
  %a6970 = call i64 @prim_cdr(i64 %N44$x)                                            ; call prim_cdr
  %retprim7128 = call i64 @prim_car(i64 %a6970)                                      ; call prim_car
  %arg7720 = add i64 0, 0                                                            ; quoted ()
  %rva8954 = add i64 0, 0                                                            ; quoted ()
  %rva8953 = call i64 @prim_cons(i64 %retprim7128, i64 %rva8954)                     ; call prim_cons
  %rva8952 = call i64 @prim_cons(i64 %arg7720, i64 %rva8953)                         ; call prim_cons
  %cloptr18774 = inttoptr i64 %cont7127 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18775 = getelementptr inbounds i64, i64* %cloptr18774, i64 0                 ; &cloptr18774[0]
  %f18777 = load i64, i64* %i0ptr18775, align 8                                      ; load; *i0ptr18775
  %fptr18776 = inttoptr i64 %f18777 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18776(i64 %cont7127, i64 %rva8952)                  ; tail call
  ret void
}


define void @lam10703(i64 %env10704, i64 %rvp8963) {
  %cont7129 = call i64 @prim_car(i64 %rvp8963)                                       ; call prim_car
  %rvp8962 = call i64 @prim_cdr(i64 %rvp8963)                                        ; call prim_cdr
  %Nq2$x = call i64 @prim_car(i64 %rvp8962)                                          ; call prim_car
  %na8958 = call i64 @prim_cdr(i64 %rvp8962)                                         ; call prim_cdr
  %a6971 = call i64 @prim_cdr(i64 %Nq2$x)                                            ; call prim_cdr
  %a6972 = call i64 @prim_cdr(i64 %a6971)                                            ; call prim_cdr
  %retprim7130 = call i64 @prim_car(i64 %a6972)                                      ; call prim_car
  %arg7726 = add i64 0, 0                                                            ; quoted ()
  %rva8961 = add i64 0, 0                                                            ; quoted ()
  %rva8960 = call i64 @prim_cons(i64 %retprim7130, i64 %rva8961)                     ; call prim_cons
  %rva8959 = call i64 @prim_cons(i64 %arg7726, i64 %rva8960)                         ; call prim_cons
  %cloptr18778 = inttoptr i64 %cont7129 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18779 = getelementptr inbounds i64, i64* %cloptr18778, i64 0                 ; &cloptr18778[0]
  %f18781 = load i64, i64* %i0ptr18779, align 8                                      ; load; *i0ptr18779
  %fptr18780 = inttoptr i64 %f18781 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18780(i64 %cont7129, i64 %rva8959)                  ; tail call
  ret void
}


define void @lam10699(i64 %env10700, i64 %rvp8970) {
  %cont7131 = call i64 @prim_car(i64 %rvp8970)                                       ; call prim_car
  %rvp8969 = call i64 @prim_cdr(i64 %rvp8970)                                        ; call prim_cdr
  %irn$x = call i64 @prim_car(i64 %rvp8969)                                          ; call prim_car
  %na8965 = call i64 @prim_cdr(i64 %rvp8969)                                         ; call prim_cdr
  %a6973 = call i64 @prim_cdr(i64 %irn$x)                                            ; call prim_cdr
  %a6974 = call i64 @prim_cdr(i64 %a6973)                                            ; call prim_cdr
  %a6975 = call i64 @prim_cdr(i64 %a6974)                                            ; call prim_cdr
  %retprim7132 = call i64 @prim_car(i64 %a6975)                                      ; call prim_car
  %arg7733 = add i64 0, 0                                                            ; quoted ()
  %rva8968 = add i64 0, 0                                                            ; quoted ()
  %rva8967 = call i64 @prim_cons(i64 %retprim7132, i64 %rva8968)                     ; call prim_cons
  %rva8966 = call i64 @prim_cons(i64 %arg7733, i64 %rva8967)                         ; call prim_cons
  %cloptr18782 = inttoptr i64 %cont7131 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18783 = getelementptr inbounds i64, i64* %cloptr18782, i64 0                 ; &cloptr18782[0]
  %f18785 = load i64, i64* %i0ptr18783, align 8                                      ; load; *i0ptr18783
  %fptr18784 = inttoptr i64 %f18785 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18784(i64 %cont7131, i64 %rva8966)                  ; tail call
  ret void
}


define void @lam10695(i64 %env10696, i64 %rvp8980) {
  %cont7133 = call i64 @prim_car(i64 %rvp8980)                                       ; call prim_car
  %rvp8979 = call i64 @prim_cdr(i64 %rvp8980)                                        ; call prim_cdr
  %FBr$p = call i64 @prim_car(i64 %rvp8979)                                          ; call prim_car
  %na8972 = call i64 @prim_cdr(i64 %rvp8979)                                         ; call prim_cdr
  %a6976 = call i64 @prim_cons_63(i64 %FBr$p)                                        ; call prim_cons_63
  %cmp18786 = icmp eq i64 %a6976, 15                                                 ; false?
  br i1 %cmp18786, label %else18788, label %then18787                                ; if

then18787:
  %a6977 = call i64 @prim_car(i64 %FBr$p)                                            ; call prim_car
  %arg7737 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym18789, i32 0, i32 0)); quoted string
  %retprim7134 = call i64 @prim_eq_63(i64 %a6977, i64 %arg7737)                      ; call prim_eq_63
  %arg7740 = add i64 0, 0                                                            ; quoted ()
  %rva8975 = add i64 0, 0                                                            ; quoted ()
  %rva8974 = call i64 @prim_cons(i64 %retprim7134, i64 %rva8975)                     ; call prim_cons
  %rva8973 = call i64 @prim_cons(i64 %arg7740, i64 %rva8974)                         ; call prim_cons
  %cloptr18790 = inttoptr i64 %cont7133 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18791 = getelementptr inbounds i64, i64* %cloptr18790, i64 0                 ; &cloptr18790[0]
  %f18793 = load i64, i64* %i0ptr18791, align 8                                      ; load; *i0ptr18791
  %fptr18792 = inttoptr i64 %f18793 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18792(i64 %cont7133, i64 %rva8973)                  ; tail call
  ret void

else18788:
  %arg7743 = add i64 0, 0                                                            ; quoted ()
  %arg7742 = call i64 @const_init_false()                                            ; quoted #f
  %rva8978 = add i64 0, 0                                                            ; quoted ()
  %rva8977 = call i64 @prim_cons(i64 %arg7742, i64 %rva8978)                         ; call prim_cons
  %rva8976 = call i64 @prim_cons(i64 %arg7743, i64 %rva8977)                         ; call prim_cons
  %cloptr18794 = inttoptr i64 %cont7133 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18795 = getelementptr inbounds i64, i64* %cloptr18794, i64 0                 ; &cloptr18794[0]
  %f18797 = load i64, i64* %i0ptr18795, align 8                                      ; load; *i0ptr18795
  %fptr18796 = inttoptr i64 %f18797 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18796(i64 %cont7133, i64 %rva8976)                  ; tail call
  ret void
}


define void @lam10687(i64 %env10688, i64 %PFa$lst7260) {
  %cont7259 = call i64 @prim_car(i64 %PFa$lst7260)                                   ; call prim_car
  %PFa$lst = call i64 @prim_cdr(i64 %PFa$lst7260)                                    ; call prim_cdr
  %arg7750 = add i64 0, 0                                                            ; quoted ()
  %rva8983 = add i64 0, 0                                                            ; quoted ()
  %rva8982 = call i64 @prim_cons(i64 %PFa$lst, i64 %rva8983)                         ; call prim_cons
  %rva8981 = call i64 @prim_cons(i64 %arg7750, i64 %rva8982)                         ; call prim_cons
  %cloptr18798 = inttoptr i64 %cont7259 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18799 = getelementptr inbounds i64, i64* %cloptr18798, i64 0                 ; &cloptr18798[0]
  %f18801 = load i64, i64* %i0ptr18799, align 8                                      ; load; *i0ptr18799
  %fptr18800 = inttoptr i64 %f18801 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18800(i64 %cont7259, i64 %rva8981)                  ; tail call
  ret void
}


define void @lam10683(i64 %env10684, i64 %rvp9628) {
  %envptr18802 = inttoptr i64 %env10684 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18803 = getelementptr inbounds i64, i64* %envptr18802, i64 3                ; &envptr18802[3]
  %k4l$_37_62 = load i64, i64* %envptr18803, align 8                                 ; load; *envptr18803
  %envptr18804 = inttoptr i64 %env10684 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18805 = getelementptr inbounds i64, i64* %envptr18804, i64 2                ; &envptr18804[2]
  %JaN$_37drop = load i64, i64* %envptr18805, align 8                                ; load; *envptr18805
  %envptr18806 = inttoptr i64 %env10684 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18807 = getelementptr inbounds i64, i64* %envptr18806, i64 1                ; &envptr18806[1]
  %oki$_37length = load i64, i64* %envptr18807, align 8                              ; load; *envptr18807
  %_957135 = call i64 @prim_car(i64 %rvp9628)                                        ; call prim_car
  %rvp9627 = call i64 @prim_cdr(i64 %rvp9628)                                        ; call prim_cdr
  %qcm$_37raise_45handler = call i64 @prim_car(i64 %rvp9627)                         ; call prim_car
  %na8985 = call i64 @prim_cdr(i64 %rvp9627)                                         ; call prim_cdr
  %cloptr18808 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18809 = getelementptr inbounds i64, i64* %cloptr18808, i64 0                  ; &cloptr18808[0]
  %f18810 = ptrtoint void(i64,i64)* @lam10681 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18810, i64* %eptr18809                                                 ; store fptr
  %arg7753 = ptrtoint i64* %cloptr18808 to i64                                       ; closure cast; i64* -> i64
  %cloptr18811 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr18813 = getelementptr inbounds i64, i64* %cloptr18811, i64 1                  ; &eptr18813[1]
  %eptr18814 = getelementptr inbounds i64, i64* %cloptr18811, i64 2                  ; &eptr18814[2]
  %eptr18815 = getelementptr inbounds i64, i64* %cloptr18811, i64 3                  ; &eptr18815[3]
  %eptr18816 = getelementptr inbounds i64, i64* %cloptr18811, i64 4                  ; &eptr18816[4]
  store i64 %oki$_37length, i64* %eptr18813                                          ; *eptr18813 = %oki$_37length
  store i64 %JaN$_37drop, i64* %eptr18814                                            ; *eptr18814 = %JaN$_37drop
  store i64 %qcm$_37raise_45handler, i64* %eptr18815                                 ; *eptr18815 = %qcm$_37raise_45handler
  store i64 %k4l$_37_62, i64* %eptr18816                                             ; *eptr18816 = %k4l$_37_62
  %eptr18812 = getelementptr inbounds i64, i64* %cloptr18811, i64 0                  ; &cloptr18811[0]
  %f18817 = ptrtoint void(i64,i64)* @lam10677 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18817, i64* %eptr18812                                                 ; store fptr
  %arg7752 = ptrtoint i64* %cloptr18811 to i64                                       ; closure cast; i64* -> i64
  %rva9626 = add i64 0, 0                                                            ; quoted ()
  %rva9625 = call i64 @prim_cons(i64 %arg7752, i64 %rva9626)                         ; call prim_cons
  %cloptr18818 = inttoptr i64 %arg7753 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18819 = getelementptr inbounds i64, i64* %cloptr18818, i64 0                 ; &cloptr18818[0]
  %f18821 = load i64, i64* %i0ptr18819, align 8                                      ; load; *i0ptr18819
  %fptr18820 = inttoptr i64 %f18821 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18820(i64 %arg7753, i64 %rva9625)                   ; tail call
  ret void
}


define void @lam10681(i64 %env10682, i64 %vVI$lst7258) {
  %cont7257 = call i64 @prim_car(i64 %vVI$lst7258)                                   ; call prim_car
  %vVI$lst = call i64 @prim_cdr(i64 %vVI$lst7258)                                    ; call prim_cdr
  %arg7757 = add i64 0, 0                                                            ; quoted ()
  %rva8988 = add i64 0, 0                                                            ; quoted ()
  %rva8987 = call i64 @prim_cons(i64 %vVI$lst, i64 %rva8988)                         ; call prim_cons
  %rva8986 = call i64 @prim_cons(i64 %arg7757, i64 %rva8987)                         ; call prim_cons
  %cloptr18822 = inttoptr i64 %cont7257 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18823 = getelementptr inbounds i64, i64* %cloptr18822, i64 0                 ; &cloptr18822[0]
  %f18825 = load i64, i64* %i0ptr18823, align 8                                      ; load; *i0ptr18823
  %fptr18824 = inttoptr i64 %f18825 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18824(i64 %cont7257, i64 %rva8986)                  ; tail call
  ret void
}


define void @lam10677(i64 %env10678, i64 %rvp9624) {
  %envptr18826 = inttoptr i64 %env10678 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18827 = getelementptr inbounds i64, i64* %envptr18826, i64 4                ; &envptr18826[4]
  %k4l$_37_62 = load i64, i64* %envptr18827, align 8                                 ; load; *envptr18827
  %envptr18828 = inttoptr i64 %env10678 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18829 = getelementptr inbounds i64, i64* %envptr18828, i64 3                ; &envptr18828[3]
  %qcm$_37raise_45handler = load i64, i64* %envptr18829, align 8                     ; load; *envptr18829
  %envptr18830 = inttoptr i64 %env10678 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18831 = getelementptr inbounds i64, i64* %envptr18830, i64 2                ; &envptr18830[2]
  %JaN$_37drop = load i64, i64* %envptr18831, align 8                                ; load; *envptr18831
  %envptr18832 = inttoptr i64 %env10678 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18833 = getelementptr inbounds i64, i64* %envptr18832, i64 1                ; &envptr18832[1]
  %oki$_37length = load i64, i64* %envptr18833, align 8                              ; load; *envptr18833
  %_957255 = call i64 @prim_car(i64 %rvp9624)                                        ; call prim_car
  %rvp9623 = call i64 @prim_cdr(i64 %rvp9624)                                        ; call prim_cdr
  %a6978 = call i64 @prim_car(i64 %rvp9623)                                          ; call prim_car
  %na8990 = call i64 @prim_cdr(i64 %rvp9623)                                         ; call prim_cdr
  %arg7760 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7256 = call i64 @prim_make_45vector(i64 %arg7760, i64 %a6978)              ; call prim_make_45vector
  %cloptr18834 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr18836 = getelementptr inbounds i64, i64* %cloptr18834, i64 1                  ; &eptr18836[1]
  %eptr18837 = getelementptr inbounds i64, i64* %cloptr18834, i64 2                  ; &eptr18837[2]
  %eptr18838 = getelementptr inbounds i64, i64* %cloptr18834, i64 3                  ; &eptr18838[3]
  %eptr18839 = getelementptr inbounds i64, i64* %cloptr18834, i64 4                  ; &eptr18839[4]
  store i64 %oki$_37length, i64* %eptr18836                                          ; *eptr18836 = %oki$_37length
  store i64 %JaN$_37drop, i64* %eptr18837                                            ; *eptr18837 = %JaN$_37drop
  store i64 %qcm$_37raise_45handler, i64* %eptr18838                                 ; *eptr18838 = %qcm$_37raise_45handler
  store i64 %k4l$_37_62, i64* %eptr18839                                             ; *eptr18839 = %k4l$_37_62
  %eptr18835 = getelementptr inbounds i64, i64* %cloptr18834, i64 0                  ; &cloptr18834[0]
  %f18840 = ptrtoint void(i64,i64)* @lam10674 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18840, i64* %eptr18835                                                 ; store fptr
  %arg7763 = ptrtoint i64* %cloptr18834 to i64                                       ; closure cast; i64* -> i64
  %arg7762 = add i64 0, 0                                                            ; quoted ()
  %rva9622 = add i64 0, 0                                                            ; quoted ()
  %rva9621 = call i64 @prim_cons(i64 %retprim7256, i64 %rva9622)                     ; call prim_cons
  %rva9620 = call i64 @prim_cons(i64 %arg7762, i64 %rva9621)                         ; call prim_cons
  %cloptr18841 = inttoptr i64 %arg7763 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18842 = getelementptr inbounds i64, i64* %cloptr18841, i64 0                 ; &cloptr18841[0]
  %f18844 = load i64, i64* %i0ptr18842, align 8                                      ; load; *i0ptr18842
  %fptr18843 = inttoptr i64 %f18844 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18843(i64 %arg7763, i64 %rva9620)                   ; tail call
  ret void
}


define void @lam10674(i64 %env10675, i64 %rvp9619) {
  %envptr18845 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18846 = getelementptr inbounds i64, i64* %envptr18845, i64 4                ; &envptr18845[4]
  %k4l$_37_62 = load i64, i64* %envptr18846, align 8                                 ; load; *envptr18846
  %envptr18847 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18848 = getelementptr inbounds i64, i64* %envptr18847, i64 3                ; &envptr18847[3]
  %qcm$_37raise_45handler = load i64, i64* %envptr18848, align 8                     ; load; *envptr18848
  %envptr18849 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18850 = getelementptr inbounds i64, i64* %envptr18849, i64 2                ; &envptr18849[2]
  %JaN$_37drop = load i64, i64* %envptr18850, align 8                                ; load; *envptr18850
  %envptr18851 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18852 = getelementptr inbounds i64, i64* %envptr18851, i64 1                ; &envptr18851[1]
  %oki$_37length = load i64, i64* %envptr18852, align 8                              ; load; *envptr18852
  %_957136 = call i64 @prim_car(i64 %rvp9619)                                        ; call prim_car
  %rvp9618 = call i64 @prim_cdr(i64 %rvp9619)                                        ; call prim_cdr
  %Ey2$_37wind_45stack = call i64 @prim_car(i64 %rvp9618)                            ; call prim_car
  %na8992 = call i64 @prim_cdr(i64 %rvp9618)                                         ; call prim_cdr
  %cloptr18853 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18855 = getelementptr inbounds i64, i64* %cloptr18853, i64 1                  ; &eptr18855[1]
  %eptr18856 = getelementptr inbounds i64, i64* %cloptr18853, i64 2                  ; &eptr18856[2]
  %eptr18857 = getelementptr inbounds i64, i64* %cloptr18853, i64 3                  ; &eptr18857[3]
  store i64 %oki$_37length, i64* %eptr18855                                          ; *eptr18855 = %oki$_37length
  store i64 %JaN$_37drop, i64* %eptr18856                                            ; *eptr18856 = %JaN$_37drop
  store i64 %k4l$_37_62, i64* %eptr18857                                             ; *eptr18857 = %k4l$_37_62
  %eptr18854 = getelementptr inbounds i64, i64* %cloptr18853, i64 0                  ; &cloptr18853[0]
  %f18858 = ptrtoint void(i64,i64)* @lam10672 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18858, i64* %eptr18854                                                 ; store fptr
  %gdW$_37common_45tail = ptrtoint i64* %cloptr18853 to i64                          ; closure cast; i64* -> i64
  %cloptr18859 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr18861 = getelementptr inbounds i64, i64* %cloptr18859, i64 1                  ; &eptr18861[1]
  %eptr18862 = getelementptr inbounds i64, i64* %cloptr18859, i64 2                  ; &eptr18862[2]
  store i64 %Ey2$_37wind_45stack, i64* %eptr18861                                    ; *eptr18861 = %Ey2$_37wind_45stack
  store i64 %gdW$_37common_45tail, i64* %eptr18862                                   ; *eptr18862 = %gdW$_37common_45tail
  %eptr18860 = getelementptr inbounds i64, i64* %cloptr18859, i64 0                  ; &cloptr18859[0]
  %f18863 = ptrtoint void(i64,i64)* @lam10610 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18863, i64* %eptr18860                                                 ; store fptr
  %NWr$_37do_45wind = ptrtoint i64* %cloptr18859 to i64                              ; closure cast; i64* -> i64
  %cloptr18864 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18865 = getelementptr inbounds i64, i64* %cloptr18864, i64 0                  ; &cloptr18864[0]
  %f18866 = ptrtoint void(i64,i64)* @lam10543 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18866, i64* %eptr18865                                                 ; store fptr
  %arg7949 = ptrtoint i64* %cloptr18864 to i64                                       ; closure cast; i64* -> i64
  %cloptr18867 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr18869 = getelementptr inbounds i64, i64* %cloptr18867, i64 1                  ; &eptr18869[1]
  %eptr18870 = getelementptr inbounds i64, i64* %cloptr18867, i64 2                  ; &eptr18870[2]
  %eptr18871 = getelementptr inbounds i64, i64* %cloptr18867, i64 3                  ; &eptr18871[3]
  store i64 %Ey2$_37wind_45stack, i64* %eptr18869                                    ; *eptr18869 = %Ey2$_37wind_45stack
  store i64 %qcm$_37raise_45handler, i64* %eptr18870                                 ; *eptr18870 = %qcm$_37raise_45handler
  store i64 %NWr$_37do_45wind, i64* %eptr18871                                       ; *eptr18871 = %NWr$_37do_45wind
  %eptr18868 = getelementptr inbounds i64, i64* %cloptr18867, i64 0                  ; &cloptr18867[0]
  %f18872 = ptrtoint void(i64,i64)* @lam10539 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18872, i64* %eptr18868                                                 ; store fptr
  %arg7948 = ptrtoint i64* %cloptr18867 to i64                                       ; closure cast; i64* -> i64
  %rva9617 = add i64 0, 0                                                            ; quoted ()
  %rva9616 = call i64 @prim_cons(i64 %arg7948, i64 %rva9617)                         ; call prim_cons
  %cloptr18873 = inttoptr i64 %arg7949 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18874 = getelementptr inbounds i64, i64* %cloptr18873, i64 0                 ; &cloptr18873[0]
  %f18876 = load i64, i64* %i0ptr18874, align 8                                      ; load; *i0ptr18874
  %fptr18875 = inttoptr i64 %f18876 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18875(i64 %arg7949, i64 %rva9616)                   ; tail call
  ret void
}


define void @lam10672(i64 %env10673, i64 %rvp9124) {
  %envptr18877 = inttoptr i64 %env10673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18878 = getelementptr inbounds i64, i64* %envptr18877, i64 3                ; &envptr18877[3]
  %k4l$_37_62 = load i64, i64* %envptr18878, align 8                                 ; load; *envptr18878
  %envptr18879 = inttoptr i64 %env10673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18880 = getelementptr inbounds i64, i64* %envptr18879, i64 2                ; &envptr18879[2]
  %JaN$_37drop = load i64, i64* %envptr18880, align 8                                ; load; *envptr18880
  %envptr18881 = inttoptr i64 %env10673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18882 = getelementptr inbounds i64, i64* %envptr18881, i64 1                ; &envptr18881[1]
  %oki$_37length = load i64, i64* %envptr18882, align 8                              ; load; *envptr18882
  %cont7137 = call i64 @prim_car(i64 %rvp9124)                                       ; call prim_car
  %rvp9123 = call i64 @prim_cdr(i64 %rvp9124)                                        ; call prim_cdr
  %UxQ$x = call i64 @prim_car(i64 %rvp9123)                                          ; call prim_car
  %rvp9122 = call i64 @prim_cdr(i64 %rvp9123)                                        ; call prim_cdr
  %haR$y = call i64 @prim_car(i64 %rvp9122)                                          ; call prim_car
  %na8994 = call i64 @prim_cdr(i64 %rvp9122)                                         ; call prim_cdr
  %cloptr18883 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr18885 = getelementptr inbounds i64, i64* %cloptr18883, i64 1                  ; &eptr18885[1]
  %eptr18886 = getelementptr inbounds i64, i64* %cloptr18883, i64 2                  ; &eptr18886[2]
  %eptr18887 = getelementptr inbounds i64, i64* %cloptr18883, i64 3                  ; &eptr18887[3]
  %eptr18888 = getelementptr inbounds i64, i64* %cloptr18883, i64 4                  ; &eptr18888[4]
  %eptr18889 = getelementptr inbounds i64, i64* %cloptr18883, i64 5                  ; &eptr18889[5]
  %eptr18890 = getelementptr inbounds i64, i64* %cloptr18883, i64 6                  ; &eptr18890[6]
  store i64 %oki$_37length, i64* %eptr18885                                          ; *eptr18885 = %oki$_37length
  store i64 %JaN$_37drop, i64* %eptr18886                                            ; *eptr18886 = %JaN$_37drop
  store i64 %k4l$_37_62, i64* %eptr18887                                             ; *eptr18887 = %k4l$_37_62
  store i64 %UxQ$x, i64* %eptr18888                                                  ; *eptr18888 = %UxQ$x
  store i64 %cont7137, i64* %eptr18889                                               ; *eptr18889 = %cont7137
  store i64 %haR$y, i64* %eptr18890                                                  ; *eptr18890 = %haR$y
  %eptr18884 = getelementptr inbounds i64, i64* %cloptr18883, i64 0                  ; &cloptr18883[0]
  %f18891 = ptrtoint void(i64,i64)* @lam10670 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18891, i64* %eptr18884                                                 ; store fptr
  %arg7765 = ptrtoint i64* %cloptr18883 to i64                                       ; closure cast; i64* -> i64
  %rva9121 = add i64 0, 0                                                            ; quoted ()
  %rva9120 = call i64 @prim_cons(i64 %UxQ$x, i64 %rva9121)                           ; call prim_cons
  %rva9119 = call i64 @prim_cons(i64 %arg7765, i64 %rva9120)                         ; call prim_cons
  %cloptr18892 = inttoptr i64 %oki$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr18893 = getelementptr inbounds i64, i64* %cloptr18892, i64 0                 ; &cloptr18892[0]
  %f18895 = load i64, i64* %i0ptr18893, align 8                                      ; load; *i0ptr18893
  %fptr18894 = inttoptr i64 %f18895 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18894(i64 %oki$_37length, i64 %rva9119)             ; tail call
  ret void
}


define void @lam10670(i64 %env10671, i64 %rvp9118) {
  %envptr18896 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18897 = getelementptr inbounds i64, i64* %envptr18896, i64 6                ; &envptr18896[6]
  %haR$y = load i64, i64* %envptr18897, align 8                                      ; load; *envptr18897
  %envptr18898 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18899 = getelementptr inbounds i64, i64* %envptr18898, i64 5                ; &envptr18898[5]
  %cont7137 = load i64, i64* %envptr18899, align 8                                   ; load; *envptr18899
  %envptr18900 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18901 = getelementptr inbounds i64, i64* %envptr18900, i64 4                ; &envptr18900[4]
  %UxQ$x = load i64, i64* %envptr18901, align 8                                      ; load; *envptr18901
  %envptr18902 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18903 = getelementptr inbounds i64, i64* %envptr18902, i64 3                ; &envptr18902[3]
  %k4l$_37_62 = load i64, i64* %envptr18903, align 8                                 ; load; *envptr18903
  %envptr18904 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18905 = getelementptr inbounds i64, i64* %envptr18904, i64 2                ; &envptr18904[2]
  %JaN$_37drop = load i64, i64* %envptr18905, align 8                                ; load; *envptr18905
  %envptr18906 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18907 = getelementptr inbounds i64, i64* %envptr18906, i64 1                ; &envptr18906[1]
  %oki$_37length = load i64, i64* %envptr18907, align 8                              ; load; *envptr18907
  %_957138 = call i64 @prim_car(i64 %rvp9118)                                        ; call prim_car
  %rvp9117 = call i64 @prim_cdr(i64 %rvp9118)                                        ; call prim_cdr
  %U5d$lx = call i64 @prim_car(i64 %rvp9117)                                         ; call prim_car
  %na8996 = call i64 @prim_cdr(i64 %rvp9117)                                         ; call prim_cdr
  %cloptr18908 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr18910 = getelementptr inbounds i64, i64* %cloptr18908, i64 1                  ; &eptr18910[1]
  %eptr18911 = getelementptr inbounds i64, i64* %cloptr18908, i64 2                  ; &eptr18911[2]
  %eptr18912 = getelementptr inbounds i64, i64* %cloptr18908, i64 3                  ; &eptr18912[3]
  %eptr18913 = getelementptr inbounds i64, i64* %cloptr18908, i64 4                  ; &eptr18913[4]
  %eptr18914 = getelementptr inbounds i64, i64* %cloptr18908, i64 5                  ; &eptr18914[5]
  %eptr18915 = getelementptr inbounds i64, i64* %cloptr18908, i64 6                  ; &eptr18915[6]
  store i64 %JaN$_37drop, i64* %eptr18910                                            ; *eptr18910 = %JaN$_37drop
  store i64 %U5d$lx, i64* %eptr18911                                                 ; *eptr18911 = %U5d$lx
  store i64 %k4l$_37_62, i64* %eptr18912                                             ; *eptr18912 = %k4l$_37_62
  store i64 %UxQ$x, i64* %eptr18913                                                  ; *eptr18913 = %UxQ$x
  store i64 %cont7137, i64* %eptr18914                                               ; *eptr18914 = %cont7137
  store i64 %haR$y, i64* %eptr18915                                                  ; *eptr18915 = %haR$y
  %eptr18909 = getelementptr inbounds i64, i64* %cloptr18908, i64 0                  ; &cloptr18908[0]
  %f18916 = ptrtoint void(i64,i64)* @lam10668 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18916, i64* %eptr18909                                                 ; store fptr
  %arg7768 = ptrtoint i64* %cloptr18908 to i64                                       ; closure cast; i64* -> i64
  %rva9116 = add i64 0, 0                                                            ; quoted ()
  %rva9115 = call i64 @prim_cons(i64 %haR$y, i64 %rva9116)                           ; call prim_cons
  %rva9114 = call i64 @prim_cons(i64 %arg7768, i64 %rva9115)                         ; call prim_cons
  %cloptr18917 = inttoptr i64 %oki$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr18918 = getelementptr inbounds i64, i64* %cloptr18917, i64 0                 ; &cloptr18917[0]
  %f18920 = load i64, i64* %i0ptr18918, align 8                                      ; load; *i0ptr18918
  %fptr18919 = inttoptr i64 %f18920 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18919(i64 %oki$_37length, i64 %rva9114)             ; tail call
  ret void
}


define void @lam10668(i64 %env10669, i64 %rvp9113) {
  %envptr18921 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18922 = getelementptr inbounds i64, i64* %envptr18921, i64 6                ; &envptr18921[6]
  %haR$y = load i64, i64* %envptr18922, align 8                                      ; load; *envptr18922
  %envptr18923 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18924 = getelementptr inbounds i64, i64* %envptr18923, i64 5                ; &envptr18923[5]
  %cont7137 = load i64, i64* %envptr18924, align 8                                   ; load; *envptr18924
  %envptr18925 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18926 = getelementptr inbounds i64, i64* %envptr18925, i64 4                ; &envptr18925[4]
  %UxQ$x = load i64, i64* %envptr18926, align 8                                      ; load; *envptr18926
  %envptr18927 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18928 = getelementptr inbounds i64, i64* %envptr18927, i64 3                ; &envptr18927[3]
  %k4l$_37_62 = load i64, i64* %envptr18928, align 8                                 ; load; *envptr18928
  %envptr18929 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18930 = getelementptr inbounds i64, i64* %envptr18929, i64 2                ; &envptr18929[2]
  %U5d$lx = load i64, i64* %envptr18930, align 8                                     ; load; *envptr18930
  %envptr18931 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18932 = getelementptr inbounds i64, i64* %envptr18931, i64 1                ; &envptr18931[1]
  %JaN$_37drop = load i64, i64* %envptr18932, align 8                                ; load; *envptr18932
  %_957139 = call i64 @prim_car(i64 %rvp9113)                                        ; call prim_car
  %rvp9112 = call i64 @prim_cdr(i64 %rvp9113)                                        ; call prim_cdr
  %NJq$ly = call i64 @prim_car(i64 %rvp9112)                                         ; call prim_car
  %na8998 = call i64 @prim_cdr(i64 %rvp9112)                                         ; call prim_cdr
  %cloptr18933 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr18934 = getelementptr inbounds i64, i64* %cloptr18933, i64 0                  ; &cloptr18933[0]
  %f18935 = ptrtoint void(i64,i64)* @lam10666 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18935, i64* %eptr18934                                                 ; store fptr
  %arg7771 = ptrtoint i64* %cloptr18933 to i64                                       ; closure cast; i64* -> i64
  %cloptr18936 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr18938 = getelementptr inbounds i64, i64* %cloptr18936, i64 1                  ; &eptr18938[1]
  %eptr18939 = getelementptr inbounds i64, i64* %cloptr18936, i64 2                  ; &eptr18939[2]
  %eptr18940 = getelementptr inbounds i64, i64* %cloptr18936, i64 3                  ; &eptr18940[3]
  %eptr18941 = getelementptr inbounds i64, i64* %cloptr18936, i64 4                  ; &eptr18941[4]
  %eptr18942 = getelementptr inbounds i64, i64* %cloptr18936, i64 5                  ; &eptr18942[5]
  %eptr18943 = getelementptr inbounds i64, i64* %cloptr18936, i64 6                  ; &eptr18943[6]
  %eptr18944 = getelementptr inbounds i64, i64* %cloptr18936, i64 7                  ; &eptr18944[7]
  store i64 %JaN$_37drop, i64* %eptr18938                                            ; *eptr18938 = %JaN$_37drop
  store i64 %U5d$lx, i64* %eptr18939                                                 ; *eptr18939 = %U5d$lx
  store i64 %k4l$_37_62, i64* %eptr18940                                             ; *eptr18940 = %k4l$_37_62
  store i64 %UxQ$x, i64* %eptr18941                                                  ; *eptr18941 = %UxQ$x
  store i64 %NJq$ly, i64* %eptr18942                                                 ; *eptr18942 = %NJq$ly
  store i64 %cont7137, i64* %eptr18943                                               ; *eptr18943 = %cont7137
  store i64 %haR$y, i64* %eptr18944                                                  ; *eptr18944 = %haR$y
  %eptr18937 = getelementptr inbounds i64, i64* %cloptr18936, i64 0                  ; &cloptr18936[0]
  %f18945 = ptrtoint void(i64,i64)* @lam10662 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18945, i64* %eptr18937                                                 ; store fptr
  %arg7770 = ptrtoint i64* %cloptr18936 to i64                                       ; closure cast; i64* -> i64
  %rva9111 = add i64 0, 0                                                            ; quoted ()
  %rva9110 = call i64 @prim_cons(i64 %arg7770, i64 %rva9111)                         ; call prim_cons
  %cloptr18946 = inttoptr i64 %arg7771 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18947 = getelementptr inbounds i64, i64* %cloptr18946, i64 0                 ; &cloptr18946[0]
  %f18949 = load i64, i64* %i0ptr18947, align 8                                      ; load; *i0ptr18947
  %fptr18948 = inttoptr i64 %f18949 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18948(i64 %arg7771, i64 %rva9110)                   ; tail call
  ret void
}


define void @lam10666(i64 %env10667, i64 %fWd$lst7149) {
  %cont7148 = call i64 @prim_car(i64 %fWd$lst7149)                                   ; call prim_car
  %fWd$lst = call i64 @prim_cdr(i64 %fWd$lst7149)                                    ; call prim_cdr
  %arg7775 = add i64 0, 0                                                            ; quoted ()
  %rva9001 = add i64 0, 0                                                            ; quoted ()
  %rva9000 = call i64 @prim_cons(i64 %fWd$lst, i64 %rva9001)                         ; call prim_cons
  %rva8999 = call i64 @prim_cons(i64 %arg7775, i64 %rva9000)                         ; call prim_cons
  %cloptr18950 = inttoptr i64 %cont7148 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr18951 = getelementptr inbounds i64, i64* %cloptr18950, i64 0                 ; &cloptr18950[0]
  %f18953 = load i64, i64* %i0ptr18951, align 8                                      ; load; *i0ptr18951
  %fptr18952 = inttoptr i64 %f18953 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18952(i64 %cont7148, i64 %rva8999)                  ; tail call
  ret void
}


define void @lam10662(i64 %env10663, i64 %rvp9109) {
  %envptr18954 = inttoptr i64 %env10663 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18955 = getelementptr inbounds i64, i64* %envptr18954, i64 7                ; &envptr18954[7]
  %haR$y = load i64, i64* %envptr18955, align 8                                      ; load; *envptr18955
  %envptr18956 = inttoptr i64 %env10663 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18957 = getelementptr inbounds i64, i64* %envptr18956, i64 6                ; &envptr18956[6]
  %cont7137 = load i64, i64* %envptr18957, align 8                                   ; load; *envptr18957
  %envptr18958 = inttoptr i64 %env10663 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18959 = getelementptr inbounds i64, i64* %envptr18958, i64 5                ; &envptr18958[5]
  %NJq$ly = load i64, i64* %envptr18959, align 8                                     ; load; *envptr18959
  %envptr18960 = inttoptr i64 %env10663 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18961 = getelementptr inbounds i64, i64* %envptr18960, i64 4                ; &envptr18960[4]
  %UxQ$x = load i64, i64* %envptr18961, align 8                                      ; load; *envptr18961
  %envptr18962 = inttoptr i64 %env10663 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18963 = getelementptr inbounds i64, i64* %envptr18962, i64 3                ; &envptr18962[3]
  %k4l$_37_62 = load i64, i64* %envptr18963, align 8                                 ; load; *envptr18963
  %envptr18964 = inttoptr i64 %env10663 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18965 = getelementptr inbounds i64, i64* %envptr18964, i64 2                ; &envptr18964[2]
  %U5d$lx = load i64, i64* %envptr18965, align 8                                     ; load; *envptr18965
  %envptr18966 = inttoptr i64 %env10663 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18967 = getelementptr inbounds i64, i64* %envptr18966, i64 1                ; &envptr18966[1]
  %JaN$_37drop = load i64, i64* %envptr18967, align 8                                ; load; *envptr18967
  %_957146 = call i64 @prim_car(i64 %rvp9109)                                        ; call prim_car
  %rvp9108 = call i64 @prim_cdr(i64 %rvp9109)                                        ; call prim_cdr
  %a6979 = call i64 @prim_car(i64 %rvp9108)                                          ; call prim_car
  %na9003 = call i64 @prim_cdr(i64 %rvp9108)                                         ; call prim_cdr
  %arg7778 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7147 = call i64 @prim_make_45vector(i64 %arg7778, i64 %a6979)              ; call prim_make_45vector
  %cloptr18968 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr18970 = getelementptr inbounds i64, i64* %cloptr18968, i64 1                  ; &eptr18970[1]
  %eptr18971 = getelementptr inbounds i64, i64* %cloptr18968, i64 2                  ; &eptr18971[2]
  %eptr18972 = getelementptr inbounds i64, i64* %cloptr18968, i64 3                  ; &eptr18972[3]
  %eptr18973 = getelementptr inbounds i64, i64* %cloptr18968, i64 4                  ; &eptr18973[4]
  %eptr18974 = getelementptr inbounds i64, i64* %cloptr18968, i64 5                  ; &eptr18974[5]
  %eptr18975 = getelementptr inbounds i64, i64* %cloptr18968, i64 6                  ; &eptr18975[6]
  %eptr18976 = getelementptr inbounds i64, i64* %cloptr18968, i64 7                  ; &eptr18976[7]
  store i64 %JaN$_37drop, i64* %eptr18970                                            ; *eptr18970 = %JaN$_37drop
  store i64 %U5d$lx, i64* %eptr18971                                                 ; *eptr18971 = %U5d$lx
  store i64 %k4l$_37_62, i64* %eptr18972                                             ; *eptr18972 = %k4l$_37_62
  store i64 %UxQ$x, i64* %eptr18973                                                  ; *eptr18973 = %UxQ$x
  store i64 %NJq$ly, i64* %eptr18974                                                 ; *eptr18974 = %NJq$ly
  store i64 %cont7137, i64* %eptr18975                                               ; *eptr18975 = %cont7137
  store i64 %haR$y, i64* %eptr18976                                                  ; *eptr18976 = %haR$y
  %eptr18969 = getelementptr inbounds i64, i64* %cloptr18968, i64 0                  ; &cloptr18968[0]
  %f18977 = ptrtoint void(i64,i64)* @lam10659 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18977, i64* %eptr18969                                                 ; store fptr
  %arg7781 = ptrtoint i64* %cloptr18968 to i64                                       ; closure cast; i64* -> i64
  %arg7780 = add i64 0, 0                                                            ; quoted ()
  %rva9107 = add i64 0, 0                                                            ; quoted ()
  %rva9106 = call i64 @prim_cons(i64 %retprim7147, i64 %rva9107)                     ; call prim_cons
  %rva9105 = call i64 @prim_cons(i64 %arg7780, i64 %rva9106)                         ; call prim_cons
  %cloptr18978 = inttoptr i64 %arg7781 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr18979 = getelementptr inbounds i64, i64* %cloptr18978, i64 0                 ; &cloptr18978[0]
  %f18981 = load i64, i64* %i0ptr18979, align 8                                      ; load; *i0ptr18979
  %fptr18980 = inttoptr i64 %f18981 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr18980(i64 %arg7781, i64 %rva9105)                   ; tail call
  ret void
}


define void @lam10659(i64 %env10660, i64 %rvp9104) {
  %envptr18982 = inttoptr i64 %env10660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18983 = getelementptr inbounds i64, i64* %envptr18982, i64 7                ; &envptr18982[7]
  %haR$y = load i64, i64* %envptr18983, align 8                                      ; load; *envptr18983
  %envptr18984 = inttoptr i64 %env10660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18985 = getelementptr inbounds i64, i64* %envptr18984, i64 6                ; &envptr18984[6]
  %cont7137 = load i64, i64* %envptr18985, align 8                                   ; load; *envptr18985
  %envptr18986 = inttoptr i64 %env10660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18987 = getelementptr inbounds i64, i64* %envptr18986, i64 5                ; &envptr18986[5]
  %NJq$ly = load i64, i64* %envptr18987, align 8                                     ; load; *envptr18987
  %envptr18988 = inttoptr i64 %env10660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18989 = getelementptr inbounds i64, i64* %envptr18988, i64 4                ; &envptr18988[4]
  %UxQ$x = load i64, i64* %envptr18989, align 8                                      ; load; *envptr18989
  %envptr18990 = inttoptr i64 %env10660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18991 = getelementptr inbounds i64, i64* %envptr18990, i64 3                ; &envptr18990[3]
  %k4l$_37_62 = load i64, i64* %envptr18991, align 8                                 ; load; *envptr18991
  %envptr18992 = inttoptr i64 %env10660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18993 = getelementptr inbounds i64, i64* %envptr18992, i64 2                ; &envptr18992[2]
  %U5d$lx = load i64, i64* %envptr18993, align 8                                     ; load; *envptr18993
  %envptr18994 = inttoptr i64 %env10660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr18995 = getelementptr inbounds i64, i64* %envptr18994, i64 1                ; &envptr18994[1]
  %JaN$_37drop = load i64, i64* %envptr18995, align 8                                ; load; *envptr18995
  %_957140 = call i64 @prim_car(i64 %rvp9104)                                        ; call prim_car
  %rvp9103 = call i64 @prim_cdr(i64 %rvp9104)                                        ; call prim_cdr
  %nF1$loop = call i64 @prim_car(i64 %rvp9103)                                       ; call prim_car
  %na9005 = call i64 @prim_cdr(i64 %rvp9103)                                         ; call prim_cdr
  %arg7783 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr18996 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr18998 = getelementptr inbounds i64, i64* %cloptr18996, i64 1                  ; &eptr18998[1]
  store i64 %nF1$loop, i64* %eptr18998                                               ; *eptr18998 = %nF1$loop
  %eptr18997 = getelementptr inbounds i64, i64* %cloptr18996, i64 0                  ; &cloptr18996[0]
  %f18999 = ptrtoint void(i64,i64)* @lam10656 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f18999, i64* %eptr18997                                                 ; store fptr
  %arg7782 = ptrtoint i64* %cloptr18996 to i64                                       ; closure cast; i64* -> i64
  %GVN$_956867 = call i64 @prim_vector_45set_33(i64 %nF1$loop, i64 %arg7783, i64 %arg7782); call prim_vector_45set_33
  %arg7798 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6984 = call i64 @prim_vector_45ref(i64 %nF1$loop, i64 %arg7798)                  ; call prim_vector_45ref
  %cloptr19000 = call i64* @alloc(i64 72)                                            ; malloc
  %eptr19002 = getelementptr inbounds i64, i64* %cloptr19000, i64 1                  ; &eptr19002[1]
  %eptr19003 = getelementptr inbounds i64, i64* %cloptr19000, i64 2                  ; &eptr19003[2]
  %eptr19004 = getelementptr inbounds i64, i64* %cloptr19000, i64 3                  ; &eptr19004[3]
  %eptr19005 = getelementptr inbounds i64, i64* %cloptr19000, i64 4                  ; &eptr19005[4]
  %eptr19006 = getelementptr inbounds i64, i64* %cloptr19000, i64 5                  ; &eptr19006[5]
  %eptr19007 = getelementptr inbounds i64, i64* %cloptr19000, i64 6                  ; &eptr19007[6]
  %eptr19008 = getelementptr inbounds i64, i64* %cloptr19000, i64 7                  ; &eptr19008[7]
  %eptr19009 = getelementptr inbounds i64, i64* %cloptr19000, i64 8                  ; &eptr19009[8]
  store i64 %JaN$_37drop, i64* %eptr19002                                            ; *eptr19002 = %JaN$_37drop
  store i64 %U5d$lx, i64* %eptr19003                                                 ; *eptr19003 = %U5d$lx
  store i64 %k4l$_37_62, i64* %eptr19004                                             ; *eptr19004 = %k4l$_37_62
  store i64 %UxQ$x, i64* %eptr19005                                                  ; *eptr19005 = %UxQ$x
  store i64 %a6984, i64* %eptr19006                                                  ; *eptr19006 = %a6984
  store i64 %NJq$ly, i64* %eptr19007                                                 ; *eptr19007 = %NJq$ly
  store i64 %cont7137, i64* %eptr19008                                               ; *eptr19008 = %cont7137
  store i64 %haR$y, i64* %eptr19009                                                  ; *eptr19009 = %haR$y
  %eptr19001 = getelementptr inbounds i64, i64* %cloptr19000, i64 0                  ; &cloptr19000[0]
  %f19010 = ptrtoint void(i64,i64)* @lam10649 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19010, i64* %eptr19001                                                 ; store fptr
  %arg7802 = ptrtoint i64* %cloptr19000 to i64                                       ; closure cast; i64* -> i64
  %rva9102 = add i64 0, 0                                                            ; quoted ()
  %rva9101 = call i64 @prim_cons(i64 %NJq$ly, i64 %rva9102)                          ; call prim_cons
  %rva9100 = call i64 @prim_cons(i64 %U5d$lx, i64 %rva9101)                          ; call prim_cons
  %rva9099 = call i64 @prim_cons(i64 %arg7802, i64 %rva9100)                         ; call prim_cons
  %cloptr19011 = inttoptr i64 %k4l$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr19012 = getelementptr inbounds i64, i64* %cloptr19011, i64 0                 ; &cloptr19011[0]
  %f19014 = load i64, i64* %i0ptr19012, align 8                                      ; load; *i0ptr19012
  %fptr19013 = inttoptr i64 %f19014 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19013(i64 %k4l$_37_62, i64 %rva9099)                ; tail call
  ret void
}


define void @lam10656(i64 %env10657, i64 %rvp9017) {
  %envptr19015 = inttoptr i64 %env10657 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19016 = getelementptr inbounds i64, i64* %envptr19015, i64 1                ; &envptr19015[1]
  %nF1$loop = load i64, i64* %envptr19016, align 8                                   ; load; *envptr19016
  %cont7141 = call i64 @prim_car(i64 %rvp9017)                                       ; call prim_car
  %rvp9016 = call i64 @prim_cdr(i64 %rvp9017)                                        ; call prim_cdr
  %C01$x = call i64 @prim_car(i64 %rvp9016)                                          ; call prim_car
  %rvp9015 = call i64 @prim_cdr(i64 %rvp9016)                                        ; call prim_cdr
  %rWN$y = call i64 @prim_car(i64 %rvp9015)                                          ; call prim_car
  %na9007 = call i64 @prim_cdr(i64 %rvp9015)                                         ; call prim_cdr
  %a6980 = call i64 @prim_eq_63(i64 %C01$x, i64 %rWN$y)                              ; call prim_eq_63
  %cmp19017 = icmp eq i64 %a6980, 15                                                 ; false?
  br i1 %cmp19017, label %else19019, label %then19018                                ; if

then19018:
  %arg7788 = add i64 0, 0                                                            ; quoted ()
  %rva9010 = add i64 0, 0                                                            ; quoted ()
  %rva9009 = call i64 @prim_cons(i64 %C01$x, i64 %rva9010)                           ; call prim_cons
  %rva9008 = call i64 @prim_cons(i64 %arg7788, i64 %rva9009)                         ; call prim_cons
  %cloptr19020 = inttoptr i64 %cont7141 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19021 = getelementptr inbounds i64, i64* %cloptr19020, i64 0                 ; &cloptr19020[0]
  %f19023 = load i64, i64* %i0ptr19021, align 8                                      ; load; *i0ptr19021
  %fptr19022 = inttoptr i64 %f19023 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19022(i64 %cont7141, i64 %rva9008)                  ; tail call
  ret void

else19019:
  %arg7790 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6981 = call i64 @prim_vector_45ref(i64 %nF1$loop, i64 %arg7790)                  ; call prim_vector_45ref
  %a6982 = call i64 @prim_cdr(i64 %C01$x)                                            ; call prim_cdr
  %a6983 = call i64 @prim_cdr(i64 %rWN$y)                                            ; call prim_cdr
  %rva9014 = add i64 0, 0                                                            ; quoted ()
  %rva9013 = call i64 @prim_cons(i64 %a6983, i64 %rva9014)                           ; call prim_cons
  %rva9012 = call i64 @prim_cons(i64 %a6982, i64 %rva9013)                           ; call prim_cons
  %rva9011 = call i64 @prim_cons(i64 %cont7141, i64 %rva9012)                        ; call prim_cons
  %cloptr19024 = inttoptr i64 %a6981 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19025 = getelementptr inbounds i64, i64* %cloptr19024, i64 0                 ; &cloptr19024[0]
  %f19027 = load i64, i64* %i0ptr19025, align 8                                      ; load; *i0ptr19025
  %fptr19026 = inttoptr i64 %f19027 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19026(i64 %a6981, i64 %rva9011)                     ; tail call
  ret void
}


define void @lam10649(i64 %env10650, i64 %rvp9098) {
  %envptr19028 = inttoptr i64 %env10650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19029 = getelementptr inbounds i64, i64* %envptr19028, i64 8                ; &envptr19028[8]
  %haR$y = load i64, i64* %envptr19029, align 8                                      ; load; *envptr19029
  %envptr19030 = inttoptr i64 %env10650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19031 = getelementptr inbounds i64, i64* %envptr19030, i64 7                ; &envptr19030[7]
  %cont7137 = load i64, i64* %envptr19031, align 8                                   ; load; *envptr19031
  %envptr19032 = inttoptr i64 %env10650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19033 = getelementptr inbounds i64, i64* %envptr19032, i64 6                ; &envptr19032[6]
  %NJq$ly = load i64, i64* %envptr19033, align 8                                     ; load; *envptr19033
  %envptr19034 = inttoptr i64 %env10650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19035 = getelementptr inbounds i64, i64* %envptr19034, i64 5                ; &envptr19034[5]
  %a6984 = load i64, i64* %envptr19035, align 8                                      ; load; *envptr19035
  %envptr19036 = inttoptr i64 %env10650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19037 = getelementptr inbounds i64, i64* %envptr19036, i64 4                ; &envptr19036[4]
  %UxQ$x = load i64, i64* %envptr19037, align 8                                      ; load; *envptr19037
  %envptr19038 = inttoptr i64 %env10650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19039 = getelementptr inbounds i64, i64* %envptr19038, i64 3                ; &envptr19038[3]
  %k4l$_37_62 = load i64, i64* %envptr19039, align 8                                 ; load; *envptr19039
  %envptr19040 = inttoptr i64 %env10650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19041 = getelementptr inbounds i64, i64* %envptr19040, i64 2                ; &envptr19040[2]
  %U5d$lx = load i64, i64* %envptr19041, align 8                                     ; load; *envptr19041
  %envptr19042 = inttoptr i64 %env10650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19043 = getelementptr inbounds i64, i64* %envptr19042, i64 1                ; &envptr19042[1]
  %JaN$_37drop = load i64, i64* %envptr19043, align 8                                ; load; *envptr19043
  %_957142 = call i64 @prim_car(i64 %rvp9098)                                        ; call prim_car
  %rvp9097 = call i64 @prim_cdr(i64 %rvp9098)                                        ; call prim_cdr
  %a6985 = call i64 @prim_car(i64 %rvp9097)                                          ; call prim_car
  %na9019 = call i64 @prim_cdr(i64 %rvp9097)                                         ; call prim_cdr
  %cmp19044 = icmp eq i64 %a6985, 15                                                 ; false?
  br i1 %cmp19044, label %else19046, label %then19045                                ; if

then19045:
  %a6986 = call i64 @prim__45(i64 %U5d$lx, i64 %NJq$ly)                              ; call prim__45
  %cloptr19047 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr19049 = getelementptr inbounds i64, i64* %cloptr19047, i64 1                  ; &eptr19049[1]
  %eptr19050 = getelementptr inbounds i64, i64* %cloptr19047, i64 2                  ; &eptr19050[2]
  %eptr19051 = getelementptr inbounds i64, i64* %cloptr19047, i64 3                  ; &eptr19051[3]
  %eptr19052 = getelementptr inbounds i64, i64* %cloptr19047, i64 4                  ; &eptr19052[4]
  %eptr19053 = getelementptr inbounds i64, i64* %cloptr19047, i64 5                  ; &eptr19053[5]
  %eptr19054 = getelementptr inbounds i64, i64* %cloptr19047, i64 6                  ; &eptr19054[6]
  %eptr19055 = getelementptr inbounds i64, i64* %cloptr19047, i64 7                  ; &eptr19055[7]
  store i64 %JaN$_37drop, i64* %eptr19049                                            ; *eptr19049 = %JaN$_37drop
  store i64 %U5d$lx, i64* %eptr19050                                                 ; *eptr19050 = %U5d$lx
  store i64 %k4l$_37_62, i64* %eptr19051                                             ; *eptr19051 = %k4l$_37_62
  store i64 %a6984, i64* %eptr19052                                                  ; *eptr19052 = %a6984
  store i64 %NJq$ly, i64* %eptr19053                                                 ; *eptr19053 = %NJq$ly
  store i64 %cont7137, i64* %eptr19054                                               ; *eptr19054 = %cont7137
  store i64 %haR$y, i64* %eptr19055                                                  ; *eptr19055 = %haR$y
  %eptr19048 = getelementptr inbounds i64, i64* %cloptr19047, i64 0                  ; &cloptr19047[0]
  %f19056 = ptrtoint void(i64,i64)* @lam10631 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19056, i64* %eptr19048                                                 ; store fptr
  %arg7808 = ptrtoint i64* %cloptr19047 to i64                                       ; closure cast; i64* -> i64
  %rva9058 = add i64 0, 0                                                            ; quoted ()
  %rva9057 = call i64 @prim_cons(i64 %a6986, i64 %rva9058)                           ; call prim_cons
  %rva9056 = call i64 @prim_cons(i64 %UxQ$x, i64 %rva9057)                           ; call prim_cons
  %rva9055 = call i64 @prim_cons(i64 %arg7808, i64 %rva9056)                         ; call prim_cons
  %cloptr19057 = inttoptr i64 %JaN$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr19058 = getelementptr inbounds i64, i64* %cloptr19057, i64 0                 ; &cloptr19057[0]
  %f19060 = load i64, i64* %i0ptr19058, align 8                                      ; load; *i0ptr19058
  %fptr19059 = inttoptr i64 %f19060 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19059(i64 %JaN$_37drop, i64 %rva9055)               ; tail call
  ret void

else19046:
  %cloptr19061 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr19063 = getelementptr inbounds i64, i64* %cloptr19061, i64 1                  ; &eptr19063[1]
  %eptr19064 = getelementptr inbounds i64, i64* %cloptr19061, i64 2                  ; &eptr19064[2]
  %eptr19065 = getelementptr inbounds i64, i64* %cloptr19061, i64 3                  ; &eptr19065[3]
  %eptr19066 = getelementptr inbounds i64, i64* %cloptr19061, i64 4                  ; &eptr19066[4]
  %eptr19067 = getelementptr inbounds i64, i64* %cloptr19061, i64 5                  ; &eptr19067[5]
  %eptr19068 = getelementptr inbounds i64, i64* %cloptr19061, i64 6                  ; &eptr19068[6]
  %eptr19069 = getelementptr inbounds i64, i64* %cloptr19061, i64 7                  ; &eptr19069[7]
  store i64 %JaN$_37drop, i64* %eptr19063                                            ; *eptr19063 = %JaN$_37drop
  store i64 %U5d$lx, i64* %eptr19064                                                 ; *eptr19064 = %U5d$lx
  store i64 %k4l$_37_62, i64* %eptr19065                                             ; *eptr19065 = %k4l$_37_62
  store i64 %a6984, i64* %eptr19066                                                  ; *eptr19066 = %a6984
  store i64 %NJq$ly, i64* %eptr19067                                                 ; *eptr19067 = %NJq$ly
  store i64 %cont7137, i64* %eptr19068                                               ; *eptr19068 = %cont7137
  store i64 %haR$y, i64* %eptr19069                                                  ; *eptr19069 = %haR$y
  %eptr19062 = getelementptr inbounds i64, i64* %cloptr19061, i64 0                  ; &cloptr19061[0]
  %f19070 = ptrtoint void(i64,i64)* @lam10647 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19070, i64* %eptr19062                                                 ; store fptr
  %arg7833 = ptrtoint i64* %cloptr19061 to i64                                       ; closure cast; i64* -> i64
  %arg7832 = add i64 0, 0                                                            ; quoted ()
  %rva9096 = add i64 0, 0                                                            ; quoted ()
  %rva9095 = call i64 @prim_cons(i64 %UxQ$x, i64 %rva9096)                           ; call prim_cons
  %rva9094 = call i64 @prim_cons(i64 %arg7832, i64 %rva9095)                         ; call prim_cons
  %cloptr19071 = inttoptr i64 %arg7833 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19072 = getelementptr inbounds i64, i64* %cloptr19071, i64 0                 ; &cloptr19071[0]
  %f19074 = load i64, i64* %i0ptr19072, align 8                                      ; load; *i0ptr19072
  %fptr19073 = inttoptr i64 %f19074 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19073(i64 %arg7833, i64 %rva9094)                   ; tail call
  ret void
}


define void @lam10647(i64 %env10648, i64 %rvp9093) {
  %envptr19075 = inttoptr i64 %env10648 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19076 = getelementptr inbounds i64, i64* %envptr19075, i64 7                ; &envptr19075[7]
  %haR$y = load i64, i64* %envptr19076, align 8                                      ; load; *envptr19076
  %envptr19077 = inttoptr i64 %env10648 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19078 = getelementptr inbounds i64, i64* %envptr19077, i64 6                ; &envptr19077[6]
  %cont7137 = load i64, i64* %envptr19078, align 8                                   ; load; *envptr19078
  %envptr19079 = inttoptr i64 %env10648 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19080 = getelementptr inbounds i64, i64* %envptr19079, i64 5                ; &envptr19079[5]
  %NJq$ly = load i64, i64* %envptr19080, align 8                                     ; load; *envptr19080
  %envptr19081 = inttoptr i64 %env10648 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19082 = getelementptr inbounds i64, i64* %envptr19081, i64 4                ; &envptr19081[4]
  %a6984 = load i64, i64* %envptr19082, align 8                                      ; load; *envptr19082
  %envptr19083 = inttoptr i64 %env10648 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19084 = getelementptr inbounds i64, i64* %envptr19083, i64 3                ; &envptr19083[3]
  %k4l$_37_62 = load i64, i64* %envptr19084, align 8                                 ; load; *envptr19084
  %envptr19085 = inttoptr i64 %env10648 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19086 = getelementptr inbounds i64, i64* %envptr19085, i64 2                ; &envptr19085[2]
  %U5d$lx = load i64, i64* %envptr19086, align 8                                     ; load; *envptr19086
  %envptr19087 = inttoptr i64 %env10648 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19088 = getelementptr inbounds i64, i64* %envptr19087, i64 1                ; &envptr19087[1]
  %JaN$_37drop = load i64, i64* %envptr19088, align 8                                ; load; *envptr19088
  %_957143 = call i64 @prim_car(i64 %rvp9093)                                        ; call prim_car
  %rvp9092 = call i64 @prim_cdr(i64 %rvp9093)                                        ; call prim_cdr
  %a6987 = call i64 @prim_car(i64 %rvp9092)                                          ; call prim_car
  %na9060 = call i64 @prim_cdr(i64 %rvp9092)                                         ; call prim_cdr
  %cloptr19089 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr19091 = getelementptr inbounds i64, i64* %cloptr19089, i64 1                  ; &eptr19091[1]
  %eptr19092 = getelementptr inbounds i64, i64* %cloptr19089, i64 2                  ; &eptr19092[2]
  %eptr19093 = getelementptr inbounds i64, i64* %cloptr19089, i64 3                  ; &eptr19093[3]
  %eptr19094 = getelementptr inbounds i64, i64* %cloptr19089, i64 4                  ; &eptr19094[4]
  %eptr19095 = getelementptr inbounds i64, i64* %cloptr19089, i64 5                  ; &eptr19095[5]
  %eptr19096 = getelementptr inbounds i64, i64* %cloptr19089, i64 6                  ; &eptr19096[6]
  %eptr19097 = getelementptr inbounds i64, i64* %cloptr19089, i64 7                  ; &eptr19097[7]
  store i64 %JaN$_37drop, i64* %eptr19091                                            ; *eptr19091 = %JaN$_37drop
  store i64 %U5d$lx, i64* %eptr19092                                                 ; *eptr19092 = %U5d$lx
  store i64 %a6984, i64* %eptr19093                                                  ; *eptr19093 = %a6984
  store i64 %a6987, i64* %eptr19094                                                  ; *eptr19094 = %a6987
  store i64 %NJq$ly, i64* %eptr19095                                                 ; *eptr19095 = %NJq$ly
  store i64 %cont7137, i64* %eptr19096                                               ; *eptr19096 = %cont7137
  store i64 %haR$y, i64* %eptr19097                                                  ; *eptr19097 = %haR$y
  %eptr19090 = getelementptr inbounds i64, i64* %cloptr19089, i64 0                  ; &cloptr19089[0]
  %f19098 = ptrtoint void(i64,i64)* @lam10645 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19098, i64* %eptr19090                                                 ; store fptr
  %arg7836 = ptrtoint i64* %cloptr19089 to i64                                       ; closure cast; i64* -> i64
  %rva9091 = add i64 0, 0                                                            ; quoted ()
  %rva9090 = call i64 @prim_cons(i64 %U5d$lx, i64 %rva9091)                          ; call prim_cons
  %rva9089 = call i64 @prim_cons(i64 %NJq$ly, i64 %rva9090)                          ; call prim_cons
  %rva9088 = call i64 @prim_cons(i64 %arg7836, i64 %rva9089)                         ; call prim_cons
  %cloptr19099 = inttoptr i64 %k4l$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr19100 = getelementptr inbounds i64, i64* %cloptr19099, i64 0                 ; &cloptr19099[0]
  %f19102 = load i64, i64* %i0ptr19100, align 8                                      ; load; *i0ptr19100
  %fptr19101 = inttoptr i64 %f19102 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19101(i64 %k4l$_37_62, i64 %rva9088)                ; tail call
  ret void
}


define void @lam10645(i64 %env10646, i64 %rvp9087) {
  %envptr19103 = inttoptr i64 %env10646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19104 = getelementptr inbounds i64, i64* %envptr19103, i64 7                ; &envptr19103[7]
  %haR$y = load i64, i64* %envptr19104, align 8                                      ; load; *envptr19104
  %envptr19105 = inttoptr i64 %env10646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19106 = getelementptr inbounds i64, i64* %envptr19105, i64 6                ; &envptr19105[6]
  %cont7137 = load i64, i64* %envptr19106, align 8                                   ; load; *envptr19106
  %envptr19107 = inttoptr i64 %env10646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19108 = getelementptr inbounds i64, i64* %envptr19107, i64 5                ; &envptr19107[5]
  %NJq$ly = load i64, i64* %envptr19108, align 8                                     ; load; *envptr19108
  %envptr19109 = inttoptr i64 %env10646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19110 = getelementptr inbounds i64, i64* %envptr19109, i64 4                ; &envptr19109[4]
  %a6987 = load i64, i64* %envptr19110, align 8                                      ; load; *envptr19110
  %envptr19111 = inttoptr i64 %env10646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19112 = getelementptr inbounds i64, i64* %envptr19111, i64 3                ; &envptr19111[3]
  %a6984 = load i64, i64* %envptr19112, align 8                                      ; load; *envptr19112
  %envptr19113 = inttoptr i64 %env10646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19114 = getelementptr inbounds i64, i64* %envptr19113, i64 2                ; &envptr19113[2]
  %U5d$lx = load i64, i64* %envptr19114, align 8                                     ; load; *envptr19114
  %envptr19115 = inttoptr i64 %env10646 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19116 = getelementptr inbounds i64, i64* %envptr19115, i64 1                ; &envptr19115[1]
  %JaN$_37drop = load i64, i64* %envptr19116, align 8                                ; load; *envptr19116
  %_957144 = call i64 @prim_car(i64 %rvp9087)                                        ; call prim_car
  %rvp9086 = call i64 @prim_cdr(i64 %rvp9087)                                        ; call prim_cdr
  %a6988 = call i64 @prim_car(i64 %rvp9086)                                          ; call prim_car
  %na9062 = call i64 @prim_cdr(i64 %rvp9086)                                         ; call prim_cdr
  %cmp19117 = icmp eq i64 %a6988, 15                                                 ; false?
  br i1 %cmp19117, label %else19119, label %then19118                                ; if

then19118:
  %a6989 = call i64 @prim__45(i64 %NJq$ly, i64 %U5d$lx)                              ; call prim__45
  %cloptr19120 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19122 = getelementptr inbounds i64, i64* %cloptr19120, i64 1                  ; &eptr19122[1]
  %eptr19123 = getelementptr inbounds i64, i64* %cloptr19120, i64 2                  ; &eptr19123[2]
  %eptr19124 = getelementptr inbounds i64, i64* %cloptr19120, i64 3                  ; &eptr19124[3]
  store i64 %a6984, i64* %eptr19122                                                  ; *eptr19122 = %a6984
  store i64 %a6987, i64* %eptr19123                                                  ; *eptr19123 = %a6987
  store i64 %cont7137, i64* %eptr19124                                               ; *eptr19124 = %cont7137
  %eptr19121 = getelementptr inbounds i64, i64* %cloptr19120, i64 0                  ; &cloptr19120[0]
  %f19125 = ptrtoint void(i64,i64)* @lam10638 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19125, i64* %eptr19121                                                 ; store fptr
  %arg7842 = ptrtoint i64* %cloptr19120 to i64                                       ; closure cast; i64* -> i64
  %rva9074 = add i64 0, 0                                                            ; quoted ()
  %rva9073 = call i64 @prim_cons(i64 %a6989, i64 %rva9074)                           ; call prim_cons
  %rva9072 = call i64 @prim_cons(i64 %haR$y, i64 %rva9073)                           ; call prim_cons
  %rva9071 = call i64 @prim_cons(i64 %arg7842, i64 %rva9072)                         ; call prim_cons
  %cloptr19126 = inttoptr i64 %JaN$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr19127 = getelementptr inbounds i64, i64* %cloptr19126, i64 0                 ; &cloptr19126[0]
  %f19129 = load i64, i64* %i0ptr19127, align 8                                      ; load; *i0ptr19127
  %fptr19128 = inttoptr i64 %f19129 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19128(i64 %JaN$_37drop, i64 %rva9071)               ; tail call
  ret void

else19119:
  %cloptr19130 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19132 = getelementptr inbounds i64, i64* %cloptr19130, i64 1                  ; &eptr19132[1]
  %eptr19133 = getelementptr inbounds i64, i64* %cloptr19130, i64 2                  ; &eptr19133[2]
  %eptr19134 = getelementptr inbounds i64, i64* %cloptr19130, i64 3                  ; &eptr19134[3]
  store i64 %a6984, i64* %eptr19132                                                  ; *eptr19132 = %a6984
  store i64 %a6987, i64* %eptr19133                                                  ; *eptr19133 = %a6987
  store i64 %cont7137, i64* %eptr19134                                               ; *eptr19134 = %cont7137
  %eptr19131 = getelementptr inbounds i64, i64* %cloptr19130, i64 0                  ; &cloptr19130[0]
  %f19135 = ptrtoint void(i64,i64)* @lam10643 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19135, i64* %eptr19131                                                 ; store fptr
  %arg7850 = ptrtoint i64* %cloptr19130 to i64                                       ; closure cast; i64* -> i64
  %arg7849 = add i64 0, 0                                                            ; quoted ()
  %rva9085 = add i64 0, 0                                                            ; quoted ()
  %rva9084 = call i64 @prim_cons(i64 %haR$y, i64 %rva9085)                           ; call prim_cons
  %rva9083 = call i64 @prim_cons(i64 %arg7849, i64 %rva9084)                         ; call prim_cons
  %cloptr19136 = inttoptr i64 %arg7850 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19137 = getelementptr inbounds i64, i64* %cloptr19136, i64 0                 ; &cloptr19136[0]
  %f19139 = load i64, i64* %i0ptr19137, align 8                                      ; load; *i0ptr19137
  %fptr19138 = inttoptr i64 %f19139 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19138(i64 %arg7850, i64 %rva9083)                   ; tail call
  ret void
}


define void @lam10643(i64 %env10644, i64 %rvp9082) {
  %envptr19140 = inttoptr i64 %env10644 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19141 = getelementptr inbounds i64, i64* %envptr19140, i64 3                ; &envptr19140[3]
  %cont7137 = load i64, i64* %envptr19141, align 8                                   ; load; *envptr19141
  %envptr19142 = inttoptr i64 %env10644 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19143 = getelementptr inbounds i64, i64* %envptr19142, i64 2                ; &envptr19142[2]
  %a6987 = load i64, i64* %envptr19143, align 8                                      ; load; *envptr19143
  %envptr19144 = inttoptr i64 %env10644 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19145 = getelementptr inbounds i64, i64* %envptr19144, i64 1                ; &envptr19144[1]
  %a6984 = load i64, i64* %envptr19145, align 8                                      ; load; *envptr19145
  %_957145 = call i64 @prim_car(i64 %rvp9082)                                        ; call prim_car
  %rvp9081 = call i64 @prim_cdr(i64 %rvp9082)                                        ; call prim_cdr
  %a6990 = call i64 @prim_car(i64 %rvp9081)                                          ; call prim_car
  %na9076 = call i64 @prim_cdr(i64 %rvp9081)                                         ; call prim_cdr
  %rva9080 = add i64 0, 0                                                            ; quoted ()
  %rva9079 = call i64 @prim_cons(i64 %a6990, i64 %rva9080)                           ; call prim_cons
  %rva9078 = call i64 @prim_cons(i64 %a6987, i64 %rva9079)                           ; call prim_cons
  %rva9077 = call i64 @prim_cons(i64 %cont7137, i64 %rva9078)                        ; call prim_cons
  %cloptr19146 = inttoptr i64 %a6984 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19147 = getelementptr inbounds i64, i64* %cloptr19146, i64 0                 ; &cloptr19146[0]
  %f19149 = load i64, i64* %i0ptr19147, align 8                                      ; load; *i0ptr19147
  %fptr19148 = inttoptr i64 %f19149 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19148(i64 %a6984, i64 %rva9077)                     ; tail call
  ret void
}


define void @lam10638(i64 %env10639, i64 %rvp9070) {
  %envptr19150 = inttoptr i64 %env10639 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19151 = getelementptr inbounds i64, i64* %envptr19150, i64 3                ; &envptr19150[3]
  %cont7137 = load i64, i64* %envptr19151, align 8                                   ; load; *envptr19151
  %envptr19152 = inttoptr i64 %env10639 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19153 = getelementptr inbounds i64, i64* %envptr19152, i64 2                ; &envptr19152[2]
  %a6987 = load i64, i64* %envptr19153, align 8                                      ; load; *envptr19153
  %envptr19154 = inttoptr i64 %env10639 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19155 = getelementptr inbounds i64, i64* %envptr19154, i64 1                ; &envptr19154[1]
  %a6984 = load i64, i64* %envptr19155, align 8                                      ; load; *envptr19155
  %_957145 = call i64 @prim_car(i64 %rvp9070)                                        ; call prim_car
  %rvp9069 = call i64 @prim_cdr(i64 %rvp9070)                                        ; call prim_cdr
  %a6990 = call i64 @prim_car(i64 %rvp9069)                                          ; call prim_car
  %na9064 = call i64 @prim_cdr(i64 %rvp9069)                                         ; call prim_cdr
  %rva9068 = add i64 0, 0                                                            ; quoted ()
  %rva9067 = call i64 @prim_cons(i64 %a6990, i64 %rva9068)                           ; call prim_cons
  %rva9066 = call i64 @prim_cons(i64 %a6987, i64 %rva9067)                           ; call prim_cons
  %rva9065 = call i64 @prim_cons(i64 %cont7137, i64 %rva9066)                        ; call prim_cons
  %cloptr19156 = inttoptr i64 %a6984 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19157 = getelementptr inbounds i64, i64* %cloptr19156, i64 0                 ; &cloptr19156[0]
  %f19159 = load i64, i64* %i0ptr19157, align 8                                      ; load; *i0ptr19157
  %fptr19158 = inttoptr i64 %f19159 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19158(i64 %a6984, i64 %rva9065)                     ; tail call
  ret void
}


define void @lam10631(i64 %env10632, i64 %rvp9054) {
  %envptr19160 = inttoptr i64 %env10632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19161 = getelementptr inbounds i64, i64* %envptr19160, i64 7                ; &envptr19160[7]
  %haR$y = load i64, i64* %envptr19161, align 8                                      ; load; *envptr19161
  %envptr19162 = inttoptr i64 %env10632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19163 = getelementptr inbounds i64, i64* %envptr19162, i64 6                ; &envptr19162[6]
  %cont7137 = load i64, i64* %envptr19163, align 8                                   ; load; *envptr19163
  %envptr19164 = inttoptr i64 %env10632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19165 = getelementptr inbounds i64, i64* %envptr19164, i64 5                ; &envptr19164[5]
  %NJq$ly = load i64, i64* %envptr19165, align 8                                     ; load; *envptr19165
  %envptr19166 = inttoptr i64 %env10632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19167 = getelementptr inbounds i64, i64* %envptr19166, i64 4                ; &envptr19166[4]
  %a6984 = load i64, i64* %envptr19167, align 8                                      ; load; *envptr19167
  %envptr19168 = inttoptr i64 %env10632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19169 = getelementptr inbounds i64, i64* %envptr19168, i64 3                ; &envptr19168[3]
  %k4l$_37_62 = load i64, i64* %envptr19169, align 8                                 ; load; *envptr19169
  %envptr19170 = inttoptr i64 %env10632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19171 = getelementptr inbounds i64, i64* %envptr19170, i64 2                ; &envptr19170[2]
  %U5d$lx = load i64, i64* %envptr19171, align 8                                     ; load; *envptr19171
  %envptr19172 = inttoptr i64 %env10632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19173 = getelementptr inbounds i64, i64* %envptr19172, i64 1                ; &envptr19172[1]
  %JaN$_37drop = load i64, i64* %envptr19173, align 8                                ; load; *envptr19173
  %_957143 = call i64 @prim_car(i64 %rvp9054)                                        ; call prim_car
  %rvp9053 = call i64 @prim_cdr(i64 %rvp9054)                                        ; call prim_cdr
  %a6987 = call i64 @prim_car(i64 %rvp9053)                                          ; call prim_car
  %na9021 = call i64 @prim_cdr(i64 %rvp9053)                                         ; call prim_cdr
  %cloptr19174 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr19176 = getelementptr inbounds i64, i64* %cloptr19174, i64 1                  ; &eptr19176[1]
  %eptr19177 = getelementptr inbounds i64, i64* %cloptr19174, i64 2                  ; &eptr19177[2]
  %eptr19178 = getelementptr inbounds i64, i64* %cloptr19174, i64 3                  ; &eptr19178[3]
  %eptr19179 = getelementptr inbounds i64, i64* %cloptr19174, i64 4                  ; &eptr19179[4]
  %eptr19180 = getelementptr inbounds i64, i64* %cloptr19174, i64 5                  ; &eptr19180[5]
  %eptr19181 = getelementptr inbounds i64, i64* %cloptr19174, i64 6                  ; &eptr19181[6]
  %eptr19182 = getelementptr inbounds i64, i64* %cloptr19174, i64 7                  ; &eptr19182[7]
  store i64 %JaN$_37drop, i64* %eptr19176                                            ; *eptr19176 = %JaN$_37drop
  store i64 %U5d$lx, i64* %eptr19177                                                 ; *eptr19177 = %U5d$lx
  store i64 %a6984, i64* %eptr19178                                                  ; *eptr19178 = %a6984
  store i64 %a6987, i64* %eptr19179                                                  ; *eptr19179 = %a6987
  store i64 %NJq$ly, i64* %eptr19180                                                 ; *eptr19180 = %NJq$ly
  store i64 %cont7137, i64* %eptr19181                                               ; *eptr19181 = %cont7137
  store i64 %haR$y, i64* %eptr19182                                                  ; *eptr19182 = %haR$y
  %eptr19175 = getelementptr inbounds i64, i64* %cloptr19174, i64 0                  ; &cloptr19174[0]
  %f19183 = ptrtoint void(i64,i64)* @lam10629 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19183, i64* %eptr19175                                                 ; store fptr
  %arg7812 = ptrtoint i64* %cloptr19174 to i64                                       ; closure cast; i64* -> i64
  %rva9052 = add i64 0, 0                                                            ; quoted ()
  %rva9051 = call i64 @prim_cons(i64 %U5d$lx, i64 %rva9052)                          ; call prim_cons
  %rva9050 = call i64 @prim_cons(i64 %NJq$ly, i64 %rva9051)                          ; call prim_cons
  %rva9049 = call i64 @prim_cons(i64 %arg7812, i64 %rva9050)                         ; call prim_cons
  %cloptr19184 = inttoptr i64 %k4l$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr19185 = getelementptr inbounds i64, i64* %cloptr19184, i64 0                 ; &cloptr19184[0]
  %f19187 = load i64, i64* %i0ptr19185, align 8                                      ; load; *i0ptr19185
  %fptr19186 = inttoptr i64 %f19187 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19186(i64 %k4l$_37_62, i64 %rva9049)                ; tail call
  ret void
}


define void @lam10629(i64 %env10630, i64 %rvp9048) {
  %envptr19188 = inttoptr i64 %env10630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19189 = getelementptr inbounds i64, i64* %envptr19188, i64 7                ; &envptr19188[7]
  %haR$y = load i64, i64* %envptr19189, align 8                                      ; load; *envptr19189
  %envptr19190 = inttoptr i64 %env10630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19191 = getelementptr inbounds i64, i64* %envptr19190, i64 6                ; &envptr19190[6]
  %cont7137 = load i64, i64* %envptr19191, align 8                                   ; load; *envptr19191
  %envptr19192 = inttoptr i64 %env10630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19193 = getelementptr inbounds i64, i64* %envptr19192, i64 5                ; &envptr19192[5]
  %NJq$ly = load i64, i64* %envptr19193, align 8                                     ; load; *envptr19193
  %envptr19194 = inttoptr i64 %env10630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19195 = getelementptr inbounds i64, i64* %envptr19194, i64 4                ; &envptr19194[4]
  %a6987 = load i64, i64* %envptr19195, align 8                                      ; load; *envptr19195
  %envptr19196 = inttoptr i64 %env10630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19197 = getelementptr inbounds i64, i64* %envptr19196, i64 3                ; &envptr19196[3]
  %a6984 = load i64, i64* %envptr19197, align 8                                      ; load; *envptr19197
  %envptr19198 = inttoptr i64 %env10630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19199 = getelementptr inbounds i64, i64* %envptr19198, i64 2                ; &envptr19198[2]
  %U5d$lx = load i64, i64* %envptr19199, align 8                                     ; load; *envptr19199
  %envptr19200 = inttoptr i64 %env10630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19201 = getelementptr inbounds i64, i64* %envptr19200, i64 1                ; &envptr19200[1]
  %JaN$_37drop = load i64, i64* %envptr19201, align 8                                ; load; *envptr19201
  %_957144 = call i64 @prim_car(i64 %rvp9048)                                        ; call prim_car
  %rvp9047 = call i64 @prim_cdr(i64 %rvp9048)                                        ; call prim_cdr
  %a6988 = call i64 @prim_car(i64 %rvp9047)                                          ; call prim_car
  %na9023 = call i64 @prim_cdr(i64 %rvp9047)                                         ; call prim_cdr
  %cmp19202 = icmp eq i64 %a6988, 15                                                 ; false?
  br i1 %cmp19202, label %else19204, label %then19203                                ; if

then19203:
  %a6989 = call i64 @prim__45(i64 %NJq$ly, i64 %U5d$lx)                              ; call prim__45
  %cloptr19205 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19207 = getelementptr inbounds i64, i64* %cloptr19205, i64 1                  ; &eptr19207[1]
  %eptr19208 = getelementptr inbounds i64, i64* %cloptr19205, i64 2                  ; &eptr19208[2]
  %eptr19209 = getelementptr inbounds i64, i64* %cloptr19205, i64 3                  ; &eptr19209[3]
  store i64 %a6984, i64* %eptr19207                                                  ; *eptr19207 = %a6984
  store i64 %a6987, i64* %eptr19208                                                  ; *eptr19208 = %a6987
  store i64 %cont7137, i64* %eptr19209                                               ; *eptr19209 = %cont7137
  %eptr19206 = getelementptr inbounds i64, i64* %cloptr19205, i64 0                  ; &cloptr19205[0]
  %f19210 = ptrtoint void(i64,i64)* @lam10622 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19210, i64* %eptr19206                                                 ; store fptr
  %arg7818 = ptrtoint i64* %cloptr19205 to i64                                       ; closure cast; i64* -> i64
  %rva9035 = add i64 0, 0                                                            ; quoted ()
  %rva9034 = call i64 @prim_cons(i64 %a6989, i64 %rva9035)                           ; call prim_cons
  %rva9033 = call i64 @prim_cons(i64 %haR$y, i64 %rva9034)                           ; call prim_cons
  %rva9032 = call i64 @prim_cons(i64 %arg7818, i64 %rva9033)                         ; call prim_cons
  %cloptr19211 = inttoptr i64 %JaN$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr19212 = getelementptr inbounds i64, i64* %cloptr19211, i64 0                 ; &cloptr19211[0]
  %f19214 = load i64, i64* %i0ptr19212, align 8                                      ; load; *i0ptr19212
  %fptr19213 = inttoptr i64 %f19214 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19213(i64 %JaN$_37drop, i64 %rva9032)               ; tail call
  ret void

else19204:
  %cloptr19215 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19217 = getelementptr inbounds i64, i64* %cloptr19215, i64 1                  ; &eptr19217[1]
  %eptr19218 = getelementptr inbounds i64, i64* %cloptr19215, i64 2                  ; &eptr19218[2]
  %eptr19219 = getelementptr inbounds i64, i64* %cloptr19215, i64 3                  ; &eptr19219[3]
  store i64 %a6984, i64* %eptr19217                                                  ; *eptr19217 = %a6984
  store i64 %a6987, i64* %eptr19218                                                  ; *eptr19218 = %a6987
  store i64 %cont7137, i64* %eptr19219                                               ; *eptr19219 = %cont7137
  %eptr19216 = getelementptr inbounds i64, i64* %cloptr19215, i64 0                  ; &cloptr19215[0]
  %f19220 = ptrtoint void(i64,i64)* @lam10627 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19220, i64* %eptr19216                                                 ; store fptr
  %arg7826 = ptrtoint i64* %cloptr19215 to i64                                       ; closure cast; i64* -> i64
  %arg7825 = add i64 0, 0                                                            ; quoted ()
  %rva9046 = add i64 0, 0                                                            ; quoted ()
  %rva9045 = call i64 @prim_cons(i64 %haR$y, i64 %rva9046)                           ; call prim_cons
  %rva9044 = call i64 @prim_cons(i64 %arg7825, i64 %rva9045)                         ; call prim_cons
  %cloptr19221 = inttoptr i64 %arg7826 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19222 = getelementptr inbounds i64, i64* %cloptr19221, i64 0                 ; &cloptr19221[0]
  %f19224 = load i64, i64* %i0ptr19222, align 8                                      ; load; *i0ptr19222
  %fptr19223 = inttoptr i64 %f19224 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19223(i64 %arg7826, i64 %rva9044)                   ; tail call
  ret void
}


define void @lam10627(i64 %env10628, i64 %rvp9043) {
  %envptr19225 = inttoptr i64 %env10628 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19226 = getelementptr inbounds i64, i64* %envptr19225, i64 3                ; &envptr19225[3]
  %cont7137 = load i64, i64* %envptr19226, align 8                                   ; load; *envptr19226
  %envptr19227 = inttoptr i64 %env10628 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19228 = getelementptr inbounds i64, i64* %envptr19227, i64 2                ; &envptr19227[2]
  %a6987 = load i64, i64* %envptr19228, align 8                                      ; load; *envptr19228
  %envptr19229 = inttoptr i64 %env10628 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19230 = getelementptr inbounds i64, i64* %envptr19229, i64 1                ; &envptr19229[1]
  %a6984 = load i64, i64* %envptr19230, align 8                                      ; load; *envptr19230
  %_957145 = call i64 @prim_car(i64 %rvp9043)                                        ; call prim_car
  %rvp9042 = call i64 @prim_cdr(i64 %rvp9043)                                        ; call prim_cdr
  %a6990 = call i64 @prim_car(i64 %rvp9042)                                          ; call prim_car
  %na9037 = call i64 @prim_cdr(i64 %rvp9042)                                         ; call prim_cdr
  %rva9041 = add i64 0, 0                                                            ; quoted ()
  %rva9040 = call i64 @prim_cons(i64 %a6990, i64 %rva9041)                           ; call prim_cons
  %rva9039 = call i64 @prim_cons(i64 %a6987, i64 %rva9040)                           ; call prim_cons
  %rva9038 = call i64 @prim_cons(i64 %cont7137, i64 %rva9039)                        ; call prim_cons
  %cloptr19231 = inttoptr i64 %a6984 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19232 = getelementptr inbounds i64, i64* %cloptr19231, i64 0                 ; &cloptr19231[0]
  %f19234 = load i64, i64* %i0ptr19232, align 8                                      ; load; *i0ptr19232
  %fptr19233 = inttoptr i64 %f19234 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19233(i64 %a6984, i64 %rva9038)                     ; tail call
  ret void
}


define void @lam10622(i64 %env10623, i64 %rvp9031) {
  %envptr19235 = inttoptr i64 %env10623 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19236 = getelementptr inbounds i64, i64* %envptr19235, i64 3                ; &envptr19235[3]
  %cont7137 = load i64, i64* %envptr19236, align 8                                   ; load; *envptr19236
  %envptr19237 = inttoptr i64 %env10623 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19238 = getelementptr inbounds i64, i64* %envptr19237, i64 2                ; &envptr19237[2]
  %a6987 = load i64, i64* %envptr19238, align 8                                      ; load; *envptr19238
  %envptr19239 = inttoptr i64 %env10623 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19240 = getelementptr inbounds i64, i64* %envptr19239, i64 1                ; &envptr19239[1]
  %a6984 = load i64, i64* %envptr19240, align 8                                      ; load; *envptr19240
  %_957145 = call i64 @prim_car(i64 %rvp9031)                                        ; call prim_car
  %rvp9030 = call i64 @prim_cdr(i64 %rvp9031)                                        ; call prim_cdr
  %a6990 = call i64 @prim_car(i64 %rvp9030)                                          ; call prim_car
  %na9025 = call i64 @prim_cdr(i64 %rvp9030)                                         ; call prim_cdr
  %rva9029 = add i64 0, 0                                                            ; quoted ()
  %rva9028 = call i64 @prim_cons(i64 %a6990, i64 %rva9029)                           ; call prim_cons
  %rva9027 = call i64 @prim_cons(i64 %a6987, i64 %rva9028)                           ; call prim_cons
  %rva9026 = call i64 @prim_cons(i64 %cont7137, i64 %rva9027)                        ; call prim_cons
  %cloptr19241 = inttoptr i64 %a6984 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19242 = getelementptr inbounds i64, i64* %cloptr19241, i64 0                 ; &cloptr19241[0]
  %f19244 = load i64, i64* %i0ptr19242, align 8                                      ; load; *i0ptr19242
  %fptr19243 = inttoptr i64 %f19244 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19243(i64 %a6984, i64 %rva9026)                     ; tail call
  ret void
}


define void @lam10610(i64 %env10611, i64 %rvp9224) {
  %envptr19245 = inttoptr i64 %env10611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19246 = getelementptr inbounds i64, i64* %envptr19245, i64 2                ; &envptr19245[2]
  %gdW$_37common_45tail = load i64, i64* %envptr19246, align 8                       ; load; *envptr19246
  %envptr19247 = inttoptr i64 %env10611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19248 = getelementptr inbounds i64, i64* %envptr19247, i64 1                ; &envptr19247[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19248, align 8                        ; load; *envptr19248
  %cont7150 = call i64 @prim_car(i64 %rvp9224)                                       ; call prim_car
  %rvp9223 = call i64 @prim_cdr(i64 %rvp9224)                                        ; call prim_cdr
  %s44$new = call i64 @prim_car(i64 %rvp9223)                                        ; call prim_car
  %na9126 = call i64 @prim_cdr(i64 %rvp9223)                                         ; call prim_cdr
  %arg7855 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6991 = call i64 @prim_vector_45ref(i64 %Ey2$_37wind_45stack, i64 %arg7855)       ; call prim_vector_45ref
  %cloptr19249 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19251 = getelementptr inbounds i64, i64* %cloptr19249, i64 1                  ; &eptr19251[1]
  %eptr19252 = getelementptr inbounds i64, i64* %cloptr19249, i64 2                  ; &eptr19252[2]
  %eptr19253 = getelementptr inbounds i64, i64* %cloptr19249, i64 3                  ; &eptr19253[3]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19251                                    ; *eptr19251 = %Ey2$_37wind_45stack
  store i64 %s44$new, i64* %eptr19252                                                ; *eptr19252 = %s44$new
  store i64 %cont7150, i64* %eptr19253                                               ; *eptr19253 = %cont7150
  %eptr19250 = getelementptr inbounds i64, i64* %cloptr19249, i64 0                  ; &cloptr19249[0]
  %f19254 = ptrtoint void(i64,i64)* @lam10607 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19254, i64* %eptr19250                                                 ; store fptr
  %arg7859 = ptrtoint i64* %cloptr19249 to i64                                       ; closure cast; i64* -> i64
  %rva9222 = add i64 0, 0                                                            ; quoted ()
  %rva9221 = call i64 @prim_cons(i64 %a6991, i64 %rva9222)                           ; call prim_cons
  %rva9220 = call i64 @prim_cons(i64 %s44$new, i64 %rva9221)                         ; call prim_cons
  %rva9219 = call i64 @prim_cons(i64 %arg7859, i64 %rva9220)                         ; call prim_cons
  %cloptr19255 = inttoptr i64 %gdW$_37common_45tail to i64*                          ; closure/env cast; i64 -> i64*
  %i0ptr19256 = getelementptr inbounds i64, i64* %cloptr19255, i64 0                 ; &cloptr19255[0]
  %f19258 = load i64, i64* %i0ptr19256, align 8                                      ; load; *i0ptr19256
  %fptr19257 = inttoptr i64 %f19258 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19257(i64 %gdW$_37common_45tail, i64 %rva9219)      ; tail call
  ret void
}


define void @lam10607(i64 %env10608, i64 %rvp9218) {
  %envptr19259 = inttoptr i64 %env10608 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19260 = getelementptr inbounds i64, i64* %envptr19259, i64 3                ; &envptr19259[3]
  %cont7150 = load i64, i64* %envptr19260, align 8                                   ; load; *envptr19260
  %envptr19261 = inttoptr i64 %env10608 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19262 = getelementptr inbounds i64, i64* %envptr19261, i64 2                ; &envptr19261[2]
  %s44$new = load i64, i64* %envptr19262, align 8                                    ; load; *envptr19262
  %envptr19263 = inttoptr i64 %env10608 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19264 = getelementptr inbounds i64, i64* %envptr19263, i64 1                ; &envptr19263[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19264, align 8                        ; load; *envptr19264
  %_957151 = call i64 @prim_car(i64 %rvp9218)                                        ; call prim_car
  %rvp9217 = call i64 @prim_cdr(i64 %rvp9218)                                        ; call prim_cdr
  %C2I$tail = call i64 @prim_car(i64 %rvp9217)                                       ; call prim_car
  %na9128 = call i64 @prim_cdr(i64 %rvp9217)                                         ; call prim_cdr
  %cloptr19265 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19266 = getelementptr inbounds i64, i64* %cloptr19265, i64 0                  ; &cloptr19265[0]
  %f19267 = ptrtoint void(i64,i64)* @lam10605 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19267, i64* %eptr19266                                                 ; store fptr
  %arg7862 = ptrtoint i64* %cloptr19265 to i64                                       ; closure cast; i64* -> i64
  %cloptr19268 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19270 = getelementptr inbounds i64, i64* %cloptr19268, i64 1                  ; &eptr19270[1]
  %eptr19271 = getelementptr inbounds i64, i64* %cloptr19268, i64 2                  ; &eptr19271[2]
  %eptr19272 = getelementptr inbounds i64, i64* %cloptr19268, i64 3                  ; &eptr19272[3]
  %eptr19273 = getelementptr inbounds i64, i64* %cloptr19268, i64 4                  ; &eptr19273[4]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19270                                    ; *eptr19270 = %Ey2$_37wind_45stack
  store i64 %s44$new, i64* %eptr19271                                                ; *eptr19271 = %s44$new
  store i64 %cont7150, i64* %eptr19272                                               ; *eptr19272 = %cont7150
  store i64 %C2I$tail, i64* %eptr19273                                               ; *eptr19273 = %C2I$tail
  %eptr19269 = getelementptr inbounds i64, i64* %cloptr19268, i64 0                  ; &cloptr19268[0]
  %f19274 = ptrtoint void(i64,i64)* @lam10601 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19274, i64* %eptr19269                                                 ; store fptr
  %arg7861 = ptrtoint i64* %cloptr19268 to i64                                       ; closure cast; i64* -> i64
  %rva9216 = add i64 0, 0                                                            ; quoted ()
  %rva9215 = call i64 @prim_cons(i64 %arg7861, i64 %rva9216)                         ; call prim_cons
  %cloptr19275 = inttoptr i64 %arg7862 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19276 = getelementptr inbounds i64, i64* %cloptr19275, i64 0                 ; &cloptr19275[0]
  %f19278 = load i64, i64* %i0ptr19276, align 8                                      ; load; *i0ptr19276
  %fptr19277 = inttoptr i64 %f19278 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19277(i64 %arg7862, i64 %rva9215)                   ; tail call
  ret void
}


define void @lam10605(i64 %env10606, i64 %X2e$lst7172) {
  %cont7171 = call i64 @prim_car(i64 %X2e$lst7172)                                   ; call prim_car
  %X2e$lst = call i64 @prim_cdr(i64 %X2e$lst7172)                                    ; call prim_cdr
  %arg7866 = add i64 0, 0                                                            ; quoted ()
  %rva9131 = add i64 0, 0                                                            ; quoted ()
  %rva9130 = call i64 @prim_cons(i64 %X2e$lst, i64 %rva9131)                         ; call prim_cons
  %rva9129 = call i64 @prim_cons(i64 %arg7866, i64 %rva9130)                         ; call prim_cons
  %cloptr19279 = inttoptr i64 %cont7171 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19280 = getelementptr inbounds i64, i64* %cloptr19279, i64 0                 ; &cloptr19279[0]
  %f19282 = load i64, i64* %i0ptr19280, align 8                                      ; load; *i0ptr19280
  %fptr19281 = inttoptr i64 %f19282 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19281(i64 %cont7171, i64 %rva9129)                  ; tail call
  ret void
}


define void @lam10601(i64 %env10602, i64 %rvp9214) {
  %envptr19283 = inttoptr i64 %env10602 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19284 = getelementptr inbounds i64, i64* %envptr19283, i64 4                ; &envptr19283[4]
  %C2I$tail = load i64, i64* %envptr19284, align 8                                   ; load; *envptr19284
  %envptr19285 = inttoptr i64 %env10602 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19286 = getelementptr inbounds i64, i64* %envptr19285, i64 3                ; &envptr19285[3]
  %cont7150 = load i64, i64* %envptr19286, align 8                                   ; load; *envptr19286
  %envptr19287 = inttoptr i64 %env10602 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19288 = getelementptr inbounds i64, i64* %envptr19287, i64 2                ; &envptr19287[2]
  %s44$new = load i64, i64* %envptr19288, align 8                                    ; load; *envptr19288
  %envptr19289 = inttoptr i64 %env10602 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19290 = getelementptr inbounds i64, i64* %envptr19289, i64 1                ; &envptr19289[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19290, align 8                        ; load; *envptr19290
  %_957169 = call i64 @prim_car(i64 %rvp9214)                                        ; call prim_car
  %rvp9213 = call i64 @prim_cdr(i64 %rvp9214)                                        ; call prim_cdr
  %a6992 = call i64 @prim_car(i64 %rvp9213)                                          ; call prim_car
  %na9133 = call i64 @prim_cdr(i64 %rvp9213)                                         ; call prim_cdr
  %arg7869 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7170 = call i64 @prim_make_45vector(i64 %arg7869, i64 %a6992)              ; call prim_make_45vector
  %cloptr19291 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19293 = getelementptr inbounds i64, i64* %cloptr19291, i64 1                  ; &eptr19293[1]
  %eptr19294 = getelementptr inbounds i64, i64* %cloptr19291, i64 2                  ; &eptr19294[2]
  %eptr19295 = getelementptr inbounds i64, i64* %cloptr19291, i64 3                  ; &eptr19295[3]
  %eptr19296 = getelementptr inbounds i64, i64* %cloptr19291, i64 4                  ; &eptr19296[4]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19293                                    ; *eptr19293 = %Ey2$_37wind_45stack
  store i64 %s44$new, i64* %eptr19294                                                ; *eptr19294 = %s44$new
  store i64 %cont7150, i64* %eptr19295                                               ; *eptr19295 = %cont7150
  store i64 %C2I$tail, i64* %eptr19296                                               ; *eptr19296 = %C2I$tail
  %eptr19292 = getelementptr inbounds i64, i64* %cloptr19291, i64 0                  ; &cloptr19291[0]
  %f19297 = ptrtoint void(i64,i64)* @lam10598 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19297, i64* %eptr19292                                                 ; store fptr
  %arg7872 = ptrtoint i64* %cloptr19291 to i64                                       ; closure cast; i64* -> i64
  %arg7871 = add i64 0, 0                                                            ; quoted ()
  %rva9212 = add i64 0, 0                                                            ; quoted ()
  %rva9211 = call i64 @prim_cons(i64 %retprim7170, i64 %rva9212)                     ; call prim_cons
  %rva9210 = call i64 @prim_cons(i64 %arg7871, i64 %rva9211)                         ; call prim_cons
  %cloptr19298 = inttoptr i64 %arg7872 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19299 = getelementptr inbounds i64, i64* %cloptr19298, i64 0                 ; &cloptr19298[0]
  %f19301 = load i64, i64* %i0ptr19299, align 8                                      ; load; *i0ptr19299
  %fptr19300 = inttoptr i64 %f19301 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19300(i64 %arg7872, i64 %rva9210)                   ; tail call
  ret void
}


define void @lam10598(i64 %env10599, i64 %rvp9209) {
  %envptr19302 = inttoptr i64 %env10599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19303 = getelementptr inbounds i64, i64* %envptr19302, i64 4                ; &envptr19302[4]
  %C2I$tail = load i64, i64* %envptr19303, align 8                                   ; load; *envptr19303
  %envptr19304 = inttoptr i64 %env10599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19305 = getelementptr inbounds i64, i64* %envptr19304, i64 3                ; &envptr19304[3]
  %cont7150 = load i64, i64* %envptr19305, align 8                                   ; load; *envptr19305
  %envptr19306 = inttoptr i64 %env10599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19307 = getelementptr inbounds i64, i64* %envptr19306, i64 2                ; &envptr19306[2]
  %s44$new = load i64, i64* %envptr19307, align 8                                    ; load; *envptr19307
  %envptr19308 = inttoptr i64 %env10599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19309 = getelementptr inbounds i64, i64* %envptr19308, i64 1                ; &envptr19308[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19309, align 8                        ; load; *envptr19309
  %_957163 = call i64 @prim_car(i64 %rvp9209)                                        ; call prim_car
  %rvp9208 = call i64 @prim_cdr(i64 %rvp9209)                                        ; call prim_cdr
  %gJk$f = call i64 @prim_car(i64 %rvp9208)                                          ; call prim_car
  %na9135 = call i64 @prim_cdr(i64 %rvp9208)                                         ; call prim_cdr
  %arg7874 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr19310 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19312 = getelementptr inbounds i64, i64* %cloptr19310, i64 1                  ; &eptr19312[1]
  %eptr19313 = getelementptr inbounds i64, i64* %cloptr19310, i64 2                  ; &eptr19313[2]
  %eptr19314 = getelementptr inbounds i64, i64* %cloptr19310, i64 3                  ; &eptr19314[3]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19312                                    ; *eptr19312 = %Ey2$_37wind_45stack
  store i64 %gJk$f, i64* %eptr19313                                                  ; *eptr19313 = %gJk$f
  store i64 %C2I$tail, i64* %eptr19314                                               ; *eptr19314 = %C2I$tail
  %eptr19311 = getelementptr inbounds i64, i64* %cloptr19310, i64 0                  ; &cloptr19310[0]
  %f19315 = ptrtoint void(i64,i64)* @lam10595 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19315, i64* %eptr19311                                                 ; store fptr
  %arg7873 = ptrtoint i64* %cloptr19310 to i64                                       ; closure cast; i64* -> i64
  %Qn6$_956869 = call i64 @prim_vector_45set_33(i64 %gJk$f, i64 %arg7874, i64 %arg7873); call prim_vector_45set_33
  %arg7899 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7000 = call i64 @prim_vector_45ref(i64 %gJk$f, i64 %arg7899)                     ; call prim_vector_45ref
  %arg7901 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %Ey2$_37wind_45stack, i64 %arg7901)       ; call prim_vector_45ref
  %cloptr19316 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19318 = getelementptr inbounds i64, i64* %cloptr19316, i64 1                  ; &eptr19318[1]
  %eptr19319 = getelementptr inbounds i64, i64* %cloptr19316, i64 2                  ; &eptr19319[2]
  %eptr19320 = getelementptr inbounds i64, i64* %cloptr19316, i64 3                  ; &eptr19320[3]
  %eptr19321 = getelementptr inbounds i64, i64* %cloptr19316, i64 4                  ; &eptr19321[4]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19318                                    ; *eptr19318 = %Ey2$_37wind_45stack
  store i64 %s44$new, i64* %eptr19319                                                ; *eptr19319 = %s44$new
  store i64 %cont7150, i64* %eptr19320                                               ; *eptr19320 = %cont7150
  store i64 %C2I$tail, i64* %eptr19321                                               ; *eptr19321 = %C2I$tail
  %eptr19317 = getelementptr inbounds i64, i64* %cloptr19316, i64 0                  ; &cloptr19316[0]
  %f19322 = ptrtoint void(i64,i64)* @lam10579 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19322, i64* %eptr19317                                                 ; store fptr
  %arg7904 = ptrtoint i64* %cloptr19316 to i64                                       ; closure cast; i64* -> i64
  %rva9207 = add i64 0, 0                                                            ; quoted ()
  %rva9206 = call i64 @prim_cons(i64 %a7001, i64 %rva9207)                           ; call prim_cons
  %rva9205 = call i64 @prim_cons(i64 %arg7904, i64 %rva9206)                         ; call prim_cons
  %cloptr19323 = inttoptr i64 %a7000 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19324 = getelementptr inbounds i64, i64* %cloptr19323, i64 0                 ; &cloptr19323[0]
  %f19326 = load i64, i64* %i0ptr19324, align 8                                      ; load; *i0ptr19324
  %fptr19325 = inttoptr i64 %f19326 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19325(i64 %a7000, i64 %rva9205)                     ; tail call
  ret void
}


define void @lam10595(i64 %env10596, i64 %rvp9158) {
  %envptr19327 = inttoptr i64 %env10596 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19328 = getelementptr inbounds i64, i64* %envptr19327, i64 3                ; &envptr19327[3]
  %C2I$tail = load i64, i64* %envptr19328, align 8                                   ; load; *envptr19328
  %envptr19329 = inttoptr i64 %env10596 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19330 = getelementptr inbounds i64, i64* %envptr19329, i64 2                ; &envptr19329[2]
  %gJk$f = load i64, i64* %envptr19330, align 8                                      ; load; *envptr19330
  %envptr19331 = inttoptr i64 %env10596 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19332 = getelementptr inbounds i64, i64* %envptr19331, i64 1                ; &envptr19331[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19332, align 8                        ; load; *envptr19332
  %cont7164 = call i64 @prim_car(i64 %rvp9158)                                       ; call prim_car
  %rvp9157 = call i64 @prim_cdr(i64 %rvp9158)                                        ; call prim_cdr
  %GxL$l = call i64 @prim_car(i64 %rvp9157)                                          ; call prim_car
  %na9137 = call i64 @prim_cdr(i64 %rvp9157)                                         ; call prim_cdr
  %a6993 = call i64 @prim_eq_63(i64 %GxL$l, i64 %C2I$tail)                           ; call prim_eq_63
  %a6994 = call i64 @prim_not(i64 %a6993)                                            ; call prim_not
  %cmp19333 = icmp eq i64 %a6994, 15                                                 ; false?
  br i1 %cmp19333, label %else19335, label %then19334                                ; if

then19334:
  %a6995 = call i64 @prim_cdr(i64 %GxL$l)                                            ; call prim_cdr
  %arg7881 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7167 = call i64 @prim_vector_45set_33(i64 %Ey2$_37wind_45stack, i64 %arg7881, i64 %a6995); call prim_vector_45set_33
  %cloptr19336 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19338 = getelementptr inbounds i64, i64* %cloptr19336, i64 1                  ; &eptr19338[1]
  %eptr19339 = getelementptr inbounds i64, i64* %cloptr19336, i64 2                  ; &eptr19339[2]
  %eptr19340 = getelementptr inbounds i64, i64* %cloptr19336, i64 3                  ; &eptr19340[3]
  store i64 %GxL$l, i64* %eptr19338                                                  ; *eptr19338 = %GxL$l
  store i64 %gJk$f, i64* %eptr19339                                                  ; *eptr19339 = %gJk$f
  store i64 %cont7164, i64* %eptr19340                                               ; *eptr19340 = %cont7164
  %eptr19337 = getelementptr inbounds i64, i64* %cloptr19336, i64 0                  ; &cloptr19336[0]
  %f19341 = ptrtoint void(i64,i64)* @lam10590 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19341, i64* %eptr19337                                                 ; store fptr
  %arg7885 = ptrtoint i64* %cloptr19336 to i64                                       ; closure cast; i64* -> i64
  %arg7884 = add i64 0, 0                                                            ; quoted ()
  %rva9153 = add i64 0, 0                                                            ; quoted ()
  %rva9152 = call i64 @prim_cons(i64 %retprim7167, i64 %rva9153)                     ; call prim_cons
  %rva9151 = call i64 @prim_cons(i64 %arg7884, i64 %rva9152)                         ; call prim_cons
  %cloptr19342 = inttoptr i64 %arg7885 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19343 = getelementptr inbounds i64, i64* %cloptr19342, i64 0                 ; &cloptr19342[0]
  %f19345 = load i64, i64* %i0ptr19343, align 8                                      ; load; *i0ptr19343
  %fptr19344 = inttoptr i64 %f19345 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19344(i64 %arg7885, i64 %rva9151)                   ; tail call
  ret void

else19335:
  %retprim7168 = call i64 @prim_void()                                               ; call prim_void
  %arg7897 = add i64 0, 0                                                            ; quoted ()
  %rva9156 = add i64 0, 0                                                            ; quoted ()
  %rva9155 = call i64 @prim_cons(i64 %retprim7168, i64 %rva9156)                     ; call prim_cons
  %rva9154 = call i64 @prim_cons(i64 %arg7897, i64 %rva9155)                         ; call prim_cons
  %cloptr19346 = inttoptr i64 %cont7164 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19347 = getelementptr inbounds i64, i64* %cloptr19346, i64 0                 ; &cloptr19346[0]
  %f19349 = load i64, i64* %i0ptr19347, align 8                                      ; load; *i0ptr19347
  %fptr19348 = inttoptr i64 %f19349 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19348(i64 %cont7164, i64 %rva9154)                  ; tail call
  ret void
}


define void @lam10590(i64 %env10591, i64 %rvp9150) {
  %envptr19350 = inttoptr i64 %env10591 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19351 = getelementptr inbounds i64, i64* %envptr19350, i64 3                ; &envptr19350[3]
  %cont7164 = load i64, i64* %envptr19351, align 8                                   ; load; *envptr19351
  %envptr19352 = inttoptr i64 %env10591 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19353 = getelementptr inbounds i64, i64* %envptr19352, i64 2                ; &envptr19352[2]
  %gJk$f = load i64, i64* %envptr19353, align 8                                      ; load; *envptr19353
  %envptr19354 = inttoptr i64 %env10591 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19355 = getelementptr inbounds i64, i64* %envptr19354, i64 1                ; &envptr19354[1]
  %GxL$l = load i64, i64* %envptr19355, align 8                                      ; load; *envptr19355
  %_957165 = call i64 @prim_car(i64 %rvp9150)                                        ; call prim_car
  %rvp9149 = call i64 @prim_cdr(i64 %rvp9150)                                        ; call prim_cdr
  %oZ1$_956870 = call i64 @prim_car(i64 %rvp9149)                                    ; call prim_car
  %na9139 = call i64 @prim_cdr(i64 %rvp9149)                                         ; call prim_cdr
  %a6996 = call i64 @prim_car(i64 %GxL$l)                                            ; call prim_car
  %a6997 = call i64 @prim_cdr(i64 %a6996)                                            ; call prim_cdr
  %cloptr19356 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19358 = getelementptr inbounds i64, i64* %cloptr19356, i64 1                  ; &eptr19358[1]
  %eptr19359 = getelementptr inbounds i64, i64* %cloptr19356, i64 2                  ; &eptr19359[2]
  %eptr19360 = getelementptr inbounds i64, i64* %cloptr19356, i64 3                  ; &eptr19360[3]
  store i64 %GxL$l, i64* %eptr19358                                                  ; *eptr19358 = %GxL$l
  store i64 %gJk$f, i64* %eptr19359                                                  ; *eptr19359 = %gJk$f
  store i64 %cont7164, i64* %eptr19360                                               ; *eptr19360 = %cont7164
  %eptr19357 = getelementptr inbounds i64, i64* %cloptr19356, i64 0                  ; &cloptr19356[0]
  %f19361 = ptrtoint void(i64,i64)* @lam10588 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19361, i64* %eptr19357                                                 ; store fptr
  %arg7888 = ptrtoint i64* %cloptr19356 to i64                                       ; closure cast; i64* -> i64
  %rva9148 = add i64 0, 0                                                            ; quoted ()
  %rva9147 = call i64 @prim_cons(i64 %arg7888, i64 %rva9148)                         ; call prim_cons
  %cloptr19362 = inttoptr i64 %a6997 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19363 = getelementptr inbounds i64, i64* %cloptr19362, i64 0                 ; &cloptr19362[0]
  %f19365 = load i64, i64* %i0ptr19363, align 8                                      ; load; *i0ptr19363
  %fptr19364 = inttoptr i64 %f19365 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19364(i64 %a6997, i64 %rva9147)                     ; tail call
  ret void
}


define void @lam10588(i64 %env10589, i64 %rvp9146) {
  %envptr19366 = inttoptr i64 %env10589 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19367 = getelementptr inbounds i64, i64* %envptr19366, i64 3                ; &envptr19366[3]
  %cont7164 = load i64, i64* %envptr19367, align 8                                   ; load; *envptr19367
  %envptr19368 = inttoptr i64 %env10589 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19369 = getelementptr inbounds i64, i64* %envptr19368, i64 2                ; &envptr19368[2]
  %gJk$f = load i64, i64* %envptr19369, align 8                                      ; load; *envptr19369
  %envptr19370 = inttoptr i64 %env10589 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19371 = getelementptr inbounds i64, i64* %envptr19370, i64 1                ; &envptr19370[1]
  %GxL$l = load i64, i64* %envptr19371, align 8                                      ; load; *envptr19371
  %_957166 = call i64 @prim_car(i64 %rvp9146)                                        ; call prim_car
  %rvp9145 = call i64 @prim_cdr(i64 %rvp9146)                                        ; call prim_cdr
  %Cdt$_956871 = call i64 @prim_car(i64 %rvp9145)                                    ; call prim_car
  %na9141 = call i64 @prim_cdr(i64 %rvp9145)                                         ; call prim_cdr
  %arg7890 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6998 = call i64 @prim_vector_45ref(i64 %gJk$f, i64 %arg7890)                     ; call prim_vector_45ref
  %a6999 = call i64 @prim_cdr(i64 %GxL$l)                                            ; call prim_cdr
  %rva9144 = add i64 0, 0                                                            ; quoted ()
  %rva9143 = call i64 @prim_cons(i64 %a6999, i64 %rva9144)                           ; call prim_cons
  %rva9142 = call i64 @prim_cons(i64 %cont7164, i64 %rva9143)                        ; call prim_cons
  %cloptr19372 = inttoptr i64 %a6998 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19373 = getelementptr inbounds i64, i64* %cloptr19372, i64 0                 ; &cloptr19372[0]
  %f19375 = load i64, i64* %i0ptr19373, align 8                                      ; load; *i0ptr19373
  %fptr19374 = inttoptr i64 %f19375 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19374(i64 %a6998, i64 %rva9142)                     ; tail call
  ret void
}


define void @lam10579(i64 %env10580, i64 %rvp9204) {
  %envptr19376 = inttoptr i64 %env10580 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19377 = getelementptr inbounds i64, i64* %envptr19376, i64 4                ; &envptr19376[4]
  %C2I$tail = load i64, i64* %envptr19377, align 8                                   ; load; *envptr19377
  %envptr19378 = inttoptr i64 %env10580 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19379 = getelementptr inbounds i64, i64* %envptr19378, i64 3                ; &envptr19378[3]
  %cont7150 = load i64, i64* %envptr19379, align 8                                   ; load; *envptr19379
  %envptr19380 = inttoptr i64 %env10580 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19381 = getelementptr inbounds i64, i64* %envptr19380, i64 2                ; &envptr19380[2]
  %s44$new = load i64, i64* %envptr19381, align 8                                    ; load; *envptr19381
  %envptr19382 = inttoptr i64 %env10580 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19383 = getelementptr inbounds i64, i64* %envptr19382, i64 1                ; &envptr19382[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19383, align 8                        ; load; *envptr19383
  %_957152 = call i64 @prim_car(i64 %rvp9204)                                        ; call prim_car
  %rvp9203 = call i64 @prim_cdr(i64 %rvp9204)                                        ; call prim_cdr
  %sTJ$_956868 = call i64 @prim_car(i64 %rvp9203)                                    ; call prim_car
  %na9160 = call i64 @prim_cdr(i64 %rvp9203)                                         ; call prim_cdr
  %cloptr19384 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19385 = getelementptr inbounds i64, i64* %cloptr19384, i64 0                  ; &cloptr19384[0]
  %f19386 = ptrtoint void(i64,i64)* @lam10577 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19386, i64* %eptr19385                                                 ; store fptr
  %arg7907 = ptrtoint i64* %cloptr19384 to i64                                       ; closure cast; i64* -> i64
  %cloptr19387 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19389 = getelementptr inbounds i64, i64* %cloptr19387, i64 1                  ; &eptr19389[1]
  %eptr19390 = getelementptr inbounds i64, i64* %cloptr19387, i64 2                  ; &eptr19390[2]
  %eptr19391 = getelementptr inbounds i64, i64* %cloptr19387, i64 3                  ; &eptr19391[3]
  %eptr19392 = getelementptr inbounds i64, i64* %cloptr19387, i64 4                  ; &eptr19392[4]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19389                                    ; *eptr19389 = %Ey2$_37wind_45stack
  store i64 %s44$new, i64* %eptr19390                                                ; *eptr19390 = %s44$new
  store i64 %cont7150, i64* %eptr19391                                               ; *eptr19391 = %cont7150
  store i64 %C2I$tail, i64* %eptr19392                                               ; *eptr19392 = %C2I$tail
  %eptr19388 = getelementptr inbounds i64, i64* %cloptr19387, i64 0                  ; &cloptr19387[0]
  %f19393 = ptrtoint void(i64,i64)* @lam10573 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19393, i64* %eptr19388                                                 ; store fptr
  %arg7906 = ptrtoint i64* %cloptr19387 to i64                                       ; closure cast; i64* -> i64
  %rva9202 = add i64 0, 0                                                            ; quoted ()
  %rva9201 = call i64 @prim_cons(i64 %arg7906, i64 %rva9202)                         ; call prim_cons
  %cloptr19394 = inttoptr i64 %arg7907 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19395 = getelementptr inbounds i64, i64* %cloptr19394, i64 0                 ; &cloptr19394[0]
  %f19397 = load i64, i64* %i0ptr19395, align 8                                      ; load; *i0ptr19395
  %fptr19396 = inttoptr i64 %f19397 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19396(i64 %arg7907, i64 %rva9201)                   ; tail call
  ret void
}


define void @lam10577(i64 %env10578, i64 %GJ1$lst7162) {
  %cont7161 = call i64 @prim_car(i64 %GJ1$lst7162)                                   ; call prim_car
  %GJ1$lst = call i64 @prim_cdr(i64 %GJ1$lst7162)                                    ; call prim_cdr
  %arg7911 = add i64 0, 0                                                            ; quoted ()
  %rva9163 = add i64 0, 0                                                            ; quoted ()
  %rva9162 = call i64 @prim_cons(i64 %GJ1$lst, i64 %rva9163)                         ; call prim_cons
  %rva9161 = call i64 @prim_cons(i64 %arg7911, i64 %rva9162)                         ; call prim_cons
  %cloptr19398 = inttoptr i64 %cont7161 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19399 = getelementptr inbounds i64, i64* %cloptr19398, i64 0                 ; &cloptr19398[0]
  %f19401 = load i64, i64* %i0ptr19399, align 8                                      ; load; *i0ptr19399
  %fptr19400 = inttoptr i64 %f19401 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19400(i64 %cont7161, i64 %rva9161)                  ; tail call
  ret void
}


define void @lam10573(i64 %env10574, i64 %rvp9200) {
  %envptr19402 = inttoptr i64 %env10574 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19403 = getelementptr inbounds i64, i64* %envptr19402, i64 4                ; &envptr19402[4]
  %C2I$tail = load i64, i64* %envptr19403, align 8                                   ; load; *envptr19403
  %envptr19404 = inttoptr i64 %env10574 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19405 = getelementptr inbounds i64, i64* %envptr19404, i64 3                ; &envptr19404[3]
  %cont7150 = load i64, i64* %envptr19405, align 8                                   ; load; *envptr19405
  %envptr19406 = inttoptr i64 %env10574 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19407 = getelementptr inbounds i64, i64* %envptr19406, i64 2                ; &envptr19406[2]
  %s44$new = load i64, i64* %envptr19407, align 8                                    ; load; *envptr19407
  %envptr19408 = inttoptr i64 %env10574 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19409 = getelementptr inbounds i64, i64* %envptr19408, i64 1                ; &envptr19408[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19409, align 8                        ; load; *envptr19409
  %_957159 = call i64 @prim_car(i64 %rvp9200)                                        ; call prim_car
  %rvp9199 = call i64 @prim_cdr(i64 %rvp9200)                                        ; call prim_cdr
  %a7002 = call i64 @prim_car(i64 %rvp9199)                                          ; call prim_car
  %na9165 = call i64 @prim_cdr(i64 %rvp9199)                                         ; call prim_cdr
  %arg7914 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7160 = call i64 @prim_make_45vector(i64 %arg7914, i64 %a7002)              ; call prim_make_45vector
  %cloptr19410 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19412 = getelementptr inbounds i64, i64* %cloptr19410, i64 1                  ; &eptr19412[1]
  %eptr19413 = getelementptr inbounds i64, i64* %cloptr19410, i64 2                  ; &eptr19413[2]
  %eptr19414 = getelementptr inbounds i64, i64* %cloptr19410, i64 3                  ; &eptr19414[3]
  %eptr19415 = getelementptr inbounds i64, i64* %cloptr19410, i64 4                  ; &eptr19415[4]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19412                                    ; *eptr19412 = %Ey2$_37wind_45stack
  store i64 %s44$new, i64* %eptr19413                                                ; *eptr19413 = %s44$new
  store i64 %cont7150, i64* %eptr19414                                               ; *eptr19414 = %cont7150
  store i64 %C2I$tail, i64* %eptr19415                                               ; *eptr19415 = %C2I$tail
  %eptr19411 = getelementptr inbounds i64, i64* %cloptr19410, i64 0                  ; &cloptr19410[0]
  %f19416 = ptrtoint void(i64,i64)* @lam10570 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19416, i64* %eptr19411                                                 ; store fptr
  %arg7917 = ptrtoint i64* %cloptr19410 to i64                                       ; closure cast; i64* -> i64
  %arg7916 = add i64 0, 0                                                            ; quoted ()
  %rva9198 = add i64 0, 0                                                            ; quoted ()
  %rva9197 = call i64 @prim_cons(i64 %retprim7160, i64 %rva9198)                     ; call prim_cons
  %rva9196 = call i64 @prim_cons(i64 %arg7916, i64 %rva9197)                         ; call prim_cons
  %cloptr19417 = inttoptr i64 %arg7917 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19418 = getelementptr inbounds i64, i64* %cloptr19417, i64 0                 ; &cloptr19417[0]
  %f19420 = load i64, i64* %i0ptr19418, align 8                                      ; load; *i0ptr19418
  %fptr19419 = inttoptr i64 %f19420 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19419(i64 %arg7917, i64 %rva9196)                   ; tail call
  ret void
}


define void @lam10570(i64 %env10571, i64 %rvp9195) {
  %envptr19421 = inttoptr i64 %env10571 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19422 = getelementptr inbounds i64, i64* %envptr19421, i64 4                ; &envptr19421[4]
  %C2I$tail = load i64, i64* %envptr19422, align 8                                   ; load; *envptr19422
  %envptr19423 = inttoptr i64 %env10571 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19424 = getelementptr inbounds i64, i64* %envptr19423, i64 3                ; &envptr19423[3]
  %cont7150 = load i64, i64* %envptr19424, align 8                                   ; load; *envptr19424
  %envptr19425 = inttoptr i64 %env10571 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19426 = getelementptr inbounds i64, i64* %envptr19425, i64 2                ; &envptr19425[2]
  %s44$new = load i64, i64* %envptr19426, align 8                                    ; load; *envptr19426
  %envptr19427 = inttoptr i64 %env10571 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19428 = getelementptr inbounds i64, i64* %envptr19427, i64 1                ; &envptr19427[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19428, align 8                        ; load; *envptr19428
  %_957153 = call i64 @prim_car(i64 %rvp9195)                                        ; call prim_car
  %rvp9194 = call i64 @prim_cdr(i64 %rvp9195)                                        ; call prim_cdr
  %vGC$f = call i64 @prim_car(i64 %rvp9194)                                          ; call prim_car
  %na9167 = call i64 @prim_cdr(i64 %rvp9194)                                         ; call prim_cdr
  %arg7919 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr19429 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19431 = getelementptr inbounds i64, i64* %cloptr19429, i64 1                  ; &eptr19431[1]
  %eptr19432 = getelementptr inbounds i64, i64* %cloptr19429, i64 2                  ; &eptr19432[2]
  %eptr19433 = getelementptr inbounds i64, i64* %cloptr19429, i64 3                  ; &eptr19433[3]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19431                                    ; *eptr19431 = %Ey2$_37wind_45stack
  store i64 %vGC$f, i64* %eptr19432                                                  ; *eptr19432 = %vGC$f
  store i64 %C2I$tail, i64* %eptr19433                                               ; *eptr19433 = %C2I$tail
  %eptr19430 = getelementptr inbounds i64, i64* %cloptr19429, i64 0                  ; &cloptr19429[0]
  %f19434 = ptrtoint void(i64,i64)* @lam10567 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19434, i64* %eptr19430                                                 ; store fptr
  %arg7918 = ptrtoint i64* %cloptr19429 to i64                                       ; closure cast; i64* -> i64
  %l2p$_956872 = call i64 @prim_vector_45set_33(i64 %vGC$f, i64 %arg7919, i64 %arg7918); call prim_vector_45set_33
  %arg7943 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7009 = call i64 @prim_vector_45ref(i64 %vGC$f, i64 %arg7943)                     ; call prim_vector_45ref
  %rva9193 = add i64 0, 0                                                            ; quoted ()
  %rva9192 = call i64 @prim_cons(i64 %s44$new, i64 %rva9193)                         ; call prim_cons
  %rva9191 = call i64 @prim_cons(i64 %cont7150, i64 %rva9192)                        ; call prim_cons
  %cloptr19435 = inttoptr i64 %a7009 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19436 = getelementptr inbounds i64, i64* %cloptr19435, i64 0                 ; &cloptr19435[0]
  %f19438 = load i64, i64* %i0ptr19436, align 8                                      ; load; *i0ptr19436
  %fptr19437 = inttoptr i64 %f19438 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19437(i64 %a7009, i64 %rva9191)                     ; tail call
  ret void
}


define void @lam10567(i64 %env10568, i64 %rvp9190) {
  %envptr19439 = inttoptr i64 %env10568 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19440 = getelementptr inbounds i64, i64* %envptr19439, i64 3                ; &envptr19439[3]
  %C2I$tail = load i64, i64* %envptr19440, align 8                                   ; load; *envptr19440
  %envptr19441 = inttoptr i64 %env10568 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19442 = getelementptr inbounds i64, i64* %envptr19441, i64 2                ; &envptr19441[2]
  %vGC$f = load i64, i64* %envptr19442, align 8                                      ; load; *envptr19442
  %envptr19443 = inttoptr i64 %env10568 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19444 = getelementptr inbounds i64, i64* %envptr19443, i64 1                ; &envptr19443[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19444, align 8                        ; load; *envptr19444
  %cont7154 = call i64 @prim_car(i64 %rvp9190)                                       ; call prim_car
  %rvp9189 = call i64 @prim_cdr(i64 %rvp9190)                                        ; call prim_cdr
  %zNA$l = call i64 @prim_car(i64 %rvp9189)                                          ; call prim_car
  %na9169 = call i64 @prim_cdr(i64 %rvp9189)                                         ; call prim_cdr
  %a7003 = call i64 @prim_eq_63(i64 %zNA$l, i64 %C2I$tail)                           ; call prim_eq_63
  %a7004 = call i64 @prim_not(i64 %a7003)                                            ; call prim_not
  %cmp19445 = icmp eq i64 %a7004, 15                                                 ; false?
  br i1 %cmp19445, label %else19447, label %then19446                                ; if

then19446:
  %arg7924 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7005 = call i64 @prim_vector_45ref(i64 %vGC$f, i64 %arg7924)                     ; call prim_vector_45ref
  %a7006 = call i64 @prim_cdr(i64 %zNA$l)                                            ; call prim_cdr
  %cloptr19448 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19450 = getelementptr inbounds i64, i64* %cloptr19448, i64 1                  ; &eptr19450[1]
  %eptr19451 = getelementptr inbounds i64, i64* %cloptr19448, i64 2                  ; &eptr19451[2]
  %eptr19452 = getelementptr inbounds i64, i64* %cloptr19448, i64 3                  ; &eptr19452[3]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19450                                    ; *eptr19450 = %Ey2$_37wind_45stack
  store i64 %cont7154, i64* %eptr19451                                               ; *eptr19451 = %cont7154
  store i64 %zNA$l, i64* %eptr19452                                                  ; *eptr19452 = %zNA$l
  %eptr19449 = getelementptr inbounds i64, i64* %cloptr19448, i64 0                  ; &cloptr19448[0]
  %f19453 = ptrtoint void(i64,i64)* @lam10562 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19453, i64* %eptr19449                                                 ; store fptr
  %arg7928 = ptrtoint i64* %cloptr19448 to i64                                       ; closure cast; i64* -> i64
  %rva9185 = add i64 0, 0                                                            ; quoted ()
  %rva9184 = call i64 @prim_cons(i64 %a7006, i64 %rva9185)                           ; call prim_cons
  %rva9183 = call i64 @prim_cons(i64 %arg7928, i64 %rva9184)                         ; call prim_cons
  %cloptr19454 = inttoptr i64 %a7005 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19455 = getelementptr inbounds i64, i64* %cloptr19454, i64 0                 ; &cloptr19454[0]
  %f19457 = load i64, i64* %i0ptr19455, align 8                                      ; load; *i0ptr19455
  %fptr19456 = inttoptr i64 %f19457 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19456(i64 %a7005, i64 %rva9183)                     ; tail call
  ret void

else19447:
  %retprim7158 = call i64 @prim_void()                                               ; call prim_void
  %arg7941 = add i64 0, 0                                                            ; quoted ()
  %rva9188 = add i64 0, 0                                                            ; quoted ()
  %rva9187 = call i64 @prim_cons(i64 %retprim7158, i64 %rva9188)                     ; call prim_cons
  %rva9186 = call i64 @prim_cons(i64 %arg7941, i64 %rva9187)                         ; call prim_cons
  %cloptr19458 = inttoptr i64 %cont7154 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19459 = getelementptr inbounds i64, i64* %cloptr19458, i64 0                 ; &cloptr19458[0]
  %f19461 = load i64, i64* %i0ptr19459, align 8                                      ; load; *i0ptr19459
  %fptr19460 = inttoptr i64 %f19461 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19460(i64 %cont7154, i64 %rva9186)                  ; tail call
  ret void
}


define void @lam10562(i64 %env10563, i64 %rvp9182) {
  %envptr19462 = inttoptr i64 %env10563 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19463 = getelementptr inbounds i64, i64* %envptr19462, i64 3                ; &envptr19462[3]
  %zNA$l = load i64, i64* %envptr19463, align 8                                      ; load; *envptr19463
  %envptr19464 = inttoptr i64 %env10563 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19465 = getelementptr inbounds i64, i64* %envptr19464, i64 2                ; &envptr19464[2]
  %cont7154 = load i64, i64* %envptr19465, align 8                                   ; load; *envptr19465
  %envptr19466 = inttoptr i64 %env10563 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19467 = getelementptr inbounds i64, i64* %envptr19466, i64 1                ; &envptr19466[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19467, align 8                        ; load; *envptr19467
  %_957155 = call i64 @prim_car(i64 %rvp9182)                                        ; call prim_car
  %rvp9181 = call i64 @prim_cdr(i64 %rvp9182)                                        ; call prim_cdr
  %rpW$_956873 = call i64 @prim_car(i64 %rvp9181)                                    ; call prim_car
  %na9171 = call i64 @prim_cdr(i64 %rvp9181)                                         ; call prim_cdr
  %a7007 = call i64 @prim_car(i64 %zNA$l)                                            ; call prim_car
  %a7008 = call i64 @prim_car(i64 %a7007)                                            ; call prim_car
  %cloptr19468 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19470 = getelementptr inbounds i64, i64* %cloptr19468, i64 1                  ; &eptr19470[1]
  %eptr19471 = getelementptr inbounds i64, i64* %cloptr19468, i64 2                  ; &eptr19471[2]
  %eptr19472 = getelementptr inbounds i64, i64* %cloptr19468, i64 3                  ; &eptr19472[3]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19470                                    ; *eptr19470 = %Ey2$_37wind_45stack
  store i64 %cont7154, i64* %eptr19471                                               ; *eptr19471 = %cont7154
  store i64 %zNA$l, i64* %eptr19472                                                  ; *eptr19472 = %zNA$l
  %eptr19469 = getelementptr inbounds i64, i64* %cloptr19468, i64 0                  ; &cloptr19468[0]
  %f19473 = ptrtoint void(i64,i64)* @lam10560 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19473, i64* %eptr19469                                                 ; store fptr
  %arg7932 = ptrtoint i64* %cloptr19468 to i64                                       ; closure cast; i64* -> i64
  %rva9180 = add i64 0, 0                                                            ; quoted ()
  %rva9179 = call i64 @prim_cons(i64 %arg7932, i64 %rva9180)                         ; call prim_cons
  %cloptr19474 = inttoptr i64 %a7008 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19475 = getelementptr inbounds i64, i64* %cloptr19474, i64 0                 ; &cloptr19474[0]
  %f19477 = load i64, i64* %i0ptr19475, align 8                                      ; load; *i0ptr19475
  %fptr19476 = inttoptr i64 %f19477 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19476(i64 %a7008, i64 %rva9179)                     ; tail call
  ret void
}


define void @lam10560(i64 %env10561, i64 %rvp9178) {
  %envptr19478 = inttoptr i64 %env10561 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19479 = getelementptr inbounds i64, i64* %envptr19478, i64 3                ; &envptr19478[3]
  %zNA$l = load i64, i64* %envptr19479, align 8                                      ; load; *envptr19479
  %envptr19480 = inttoptr i64 %env10561 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19481 = getelementptr inbounds i64, i64* %envptr19480, i64 2                ; &envptr19480[2]
  %cont7154 = load i64, i64* %envptr19481, align 8                                   ; load; *envptr19481
  %envptr19482 = inttoptr i64 %env10561 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19483 = getelementptr inbounds i64, i64* %envptr19482, i64 1                ; &envptr19482[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19483, align 8                        ; load; *envptr19483
  %_957156 = call i64 @prim_car(i64 %rvp9178)                                        ; call prim_car
  %rvp9177 = call i64 @prim_cdr(i64 %rvp9178)                                        ; call prim_cdr
  %y6I$_956874 = call i64 @prim_car(i64 %rvp9177)                                    ; call prim_car
  %na9173 = call i64 @prim_cdr(i64 %rvp9177)                                         ; call prim_cdr
  %arg7935 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7157 = call i64 @prim_vector_45set_33(i64 %Ey2$_37wind_45stack, i64 %arg7935, i64 %zNA$l); call prim_vector_45set_33
  %arg7938 = add i64 0, 0                                                            ; quoted ()
  %rva9176 = add i64 0, 0                                                            ; quoted ()
  %rva9175 = call i64 @prim_cons(i64 %retprim7157, i64 %rva9176)                     ; call prim_cons
  %rva9174 = call i64 @prim_cons(i64 %arg7938, i64 %rva9175)                         ; call prim_cons
  %cloptr19484 = inttoptr i64 %cont7154 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19485 = getelementptr inbounds i64, i64* %cloptr19484, i64 0                 ; &cloptr19484[0]
  %f19487 = load i64, i64* %i0ptr19485, align 8                                      ; load; *i0ptr19485
  %fptr19486 = inttoptr i64 %f19487 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19486(i64 %cont7154, i64 %rva9174)                  ; tail call
  ret void
}


define void @lam10543(i64 %env10544, i64 %Kyp$lst7254) {
  %cont7253 = call i64 @prim_car(i64 %Kyp$lst7254)                                   ; call prim_car
  %Kyp$lst = call i64 @prim_cdr(i64 %Kyp$lst7254)                                    ; call prim_cdr
  %arg7953 = add i64 0, 0                                                            ; quoted ()
  %rva9227 = add i64 0, 0                                                            ; quoted ()
  %rva9226 = call i64 @prim_cons(i64 %Kyp$lst, i64 %rva9227)                         ; call prim_cons
  %rva9225 = call i64 @prim_cons(i64 %arg7953, i64 %rva9226)                         ; call prim_cons
  %cloptr19488 = inttoptr i64 %cont7253 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19489 = getelementptr inbounds i64, i64* %cloptr19488, i64 0                 ; &cloptr19488[0]
  %f19491 = load i64, i64* %i0ptr19489, align 8                                      ; load; *i0ptr19489
  %fptr19490 = inttoptr i64 %f19491 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19490(i64 %cont7253, i64 %rva9225)                  ; tail call
  ret void
}


define void @lam10539(i64 %env10540, i64 %rvp9615) {
  %envptr19492 = inttoptr i64 %env10540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19493 = getelementptr inbounds i64, i64* %envptr19492, i64 3                ; &envptr19492[3]
  %NWr$_37do_45wind = load i64, i64* %envptr19493, align 8                           ; load; *envptr19493
  %envptr19494 = inttoptr i64 %env10540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19495 = getelementptr inbounds i64, i64* %envptr19494, i64 2                ; &envptr19494[2]
  %qcm$_37raise_45handler = load i64, i64* %envptr19495, align 8                     ; load; *envptr19495
  %envptr19496 = inttoptr i64 %env10540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19497 = getelementptr inbounds i64, i64* %envptr19496, i64 1                ; &envptr19496[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19497, align 8                        ; load; *envptr19497
  %_957251 = call i64 @prim_car(i64 %rvp9615)                                        ; call prim_car
  %rvp9614 = call i64 @prim_cdr(i64 %rvp9615)                                        ; call prim_cdr
  %a7010 = call i64 @prim_car(i64 %rvp9614)                                          ; call prim_car
  %na9229 = call i64 @prim_cdr(i64 %rvp9614)                                         ; call prim_cdr
  %arg7956 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7252 = call i64 @prim_make_45vector(i64 %arg7956, i64 %a7010)              ; call prim_make_45vector
  %cloptr19498 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19500 = getelementptr inbounds i64, i64* %cloptr19498, i64 1                  ; &eptr19500[1]
  %eptr19501 = getelementptr inbounds i64, i64* %cloptr19498, i64 2                  ; &eptr19501[2]
  %eptr19502 = getelementptr inbounds i64, i64* %cloptr19498, i64 3                  ; &eptr19502[3]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19500                                    ; *eptr19500 = %Ey2$_37wind_45stack
  store i64 %qcm$_37raise_45handler, i64* %eptr19501                                 ; *eptr19501 = %qcm$_37raise_45handler
  store i64 %NWr$_37do_45wind, i64* %eptr19502                                       ; *eptr19502 = %NWr$_37do_45wind
  %eptr19499 = getelementptr inbounds i64, i64* %cloptr19498, i64 0                  ; &cloptr19498[0]
  %f19503 = ptrtoint void(i64,i64)* @lam10536 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19503, i64* %eptr19499                                                 ; store fptr
  %arg7959 = ptrtoint i64* %cloptr19498 to i64                                       ; closure cast; i64* -> i64
  %arg7958 = add i64 0, 0                                                            ; quoted ()
  %rva9613 = add i64 0, 0                                                            ; quoted ()
  %rva9612 = call i64 @prim_cons(i64 %retprim7252, i64 %rva9613)                     ; call prim_cons
  %rva9611 = call i64 @prim_cons(i64 %arg7958, i64 %rva9612)                         ; call prim_cons
  %cloptr19504 = inttoptr i64 %arg7959 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19505 = getelementptr inbounds i64, i64* %cloptr19504, i64 0                 ; &cloptr19504[0]
  %f19507 = load i64, i64* %i0ptr19505, align 8                                      ; load; *i0ptr19505
  %fptr19506 = inttoptr i64 %f19507 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19506(i64 %arg7959, i64 %rva9611)                   ; tail call
  ret void
}


define void @lam10536(i64 %env10537, i64 %rvp9610) {
  %envptr19508 = inttoptr i64 %env10537 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19509 = getelementptr inbounds i64, i64* %envptr19508, i64 3                ; &envptr19508[3]
  %NWr$_37do_45wind = load i64, i64* %envptr19509, align 8                           ; load; *envptr19509
  %envptr19510 = inttoptr i64 %env10537 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19511 = getelementptr inbounds i64, i64* %envptr19510, i64 2                ; &envptr19510[2]
  %qcm$_37raise_45handler = load i64, i64* %envptr19511, align 8                     ; load; *envptr19511
  %envptr19512 = inttoptr i64 %env10537 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19513 = getelementptr inbounds i64, i64* %envptr19512, i64 1                ; &envptr19512[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19513, align 8                        ; load; *envptr19513
  %_957173 = call i64 @prim_car(i64 %rvp9610)                                        ; call prim_car
  %rvp9609 = call i64 @prim_cdr(i64 %rvp9610)                                        ; call prim_cdr
  %Qy7$ccstack = call i64 @prim_car(i64 %rvp9609)                                    ; call prim_car
  %na9231 = call i64 @prim_cdr(i64 %rvp9609)                                         ; call prim_cdr
  %cloptr19514 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19515 = getelementptr inbounds i64, i64* %cloptr19514, i64 0                  ; &cloptr19514[0]
  %f19516 = ptrtoint void(i64,i64)* @lam10534 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19516, i64* %eptr19515                                                 ; store fptr
  %arg7961 = ptrtoint i64* %cloptr19514 to i64                                       ; closure cast; i64* -> i64
  %cloptr19517 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19519 = getelementptr inbounds i64, i64* %cloptr19517, i64 1                  ; &eptr19519[1]
  %eptr19520 = getelementptr inbounds i64, i64* %cloptr19517, i64 2                  ; &eptr19520[2]
  %eptr19521 = getelementptr inbounds i64, i64* %cloptr19517, i64 3                  ; &eptr19521[3]
  %eptr19522 = getelementptr inbounds i64, i64* %cloptr19517, i64 4                  ; &eptr19522[4]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19519                                    ; *eptr19519 = %Ey2$_37wind_45stack
  store i64 %qcm$_37raise_45handler, i64* %eptr19520                                 ; *eptr19520 = %qcm$_37raise_45handler
  store i64 %Qy7$ccstack, i64* %eptr19521                                            ; *eptr19521 = %Qy7$ccstack
  store i64 %NWr$_37do_45wind, i64* %eptr19522                                       ; *eptr19522 = %NWr$_37do_45wind
  %eptr19518 = getelementptr inbounds i64, i64* %cloptr19517, i64 0                  ; &cloptr19517[0]
  %f19523 = ptrtoint void(i64,i64)* @lam10530 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19523, i64* %eptr19518                                                 ; store fptr
  %arg7960 = ptrtoint i64* %cloptr19517 to i64                                       ; closure cast; i64* -> i64
  %rva9608 = add i64 0, 0                                                            ; quoted ()
  %rva9607 = call i64 @prim_cons(i64 %arg7960, i64 %rva9608)                         ; call prim_cons
  %cloptr19524 = inttoptr i64 %arg7961 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19525 = getelementptr inbounds i64, i64* %cloptr19524, i64 0                 ; &cloptr19524[0]
  %f19527 = load i64, i64* %i0ptr19525, align 8                                      ; load; *i0ptr19525
  %fptr19526 = inttoptr i64 %f19527 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19526(i64 %arg7961, i64 %rva9607)                   ; tail call
  ret void
}


define void @lam10534(i64 %env10535, i64 %AJu$lst7250) {
  %cont7249 = call i64 @prim_car(i64 %AJu$lst7250)                                   ; call prim_car
  %AJu$lst = call i64 @prim_cdr(i64 %AJu$lst7250)                                    ; call prim_cdr
  %arg7965 = add i64 0, 0                                                            ; quoted ()
  %rva9234 = add i64 0, 0                                                            ; quoted ()
  %rva9233 = call i64 @prim_cons(i64 %AJu$lst, i64 %rva9234)                         ; call prim_cons
  %rva9232 = call i64 @prim_cons(i64 %arg7965, i64 %rva9233)                         ; call prim_cons
  %cloptr19528 = inttoptr i64 %cont7249 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19529 = getelementptr inbounds i64, i64* %cloptr19528, i64 0                 ; &cloptr19528[0]
  %f19531 = load i64, i64* %i0ptr19529, align 8                                      ; load; *i0ptr19529
  %fptr19530 = inttoptr i64 %f19531 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19530(i64 %cont7249, i64 %rva9232)                  ; tail call
  ret void
}


define void @lam10530(i64 %env10531, i64 %rvp9606) {
  %envptr19532 = inttoptr i64 %env10531 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19533 = getelementptr inbounds i64, i64* %envptr19532, i64 4                ; &envptr19532[4]
  %NWr$_37do_45wind = load i64, i64* %envptr19533, align 8                           ; load; *envptr19533
  %envptr19534 = inttoptr i64 %env10531 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19535 = getelementptr inbounds i64, i64* %envptr19534, i64 3                ; &envptr19534[3]
  %Qy7$ccstack = load i64, i64* %envptr19535, align 8                                ; load; *envptr19535
  %envptr19536 = inttoptr i64 %env10531 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19537 = getelementptr inbounds i64, i64* %envptr19536, i64 2                ; &envptr19536[2]
  %qcm$_37raise_45handler = load i64, i64* %envptr19537, align 8                     ; load; *envptr19537
  %envptr19538 = inttoptr i64 %env10531 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19539 = getelementptr inbounds i64, i64* %envptr19538, i64 1                ; &envptr19538[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19539, align 8                        ; load; *envptr19539
  %_957247 = call i64 @prim_car(i64 %rvp9606)                                        ; call prim_car
  %rvp9605 = call i64 @prim_cdr(i64 %rvp9606)                                        ; call prim_cdr
  %a7011 = call i64 @prim_car(i64 %rvp9605)                                          ; call prim_car
  %na9236 = call i64 @prim_cdr(i64 %rvp9605)                                         ; call prim_cdr
  %arg7968 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7248 = call i64 @prim_make_45vector(i64 %arg7968, i64 %a7011)              ; call prim_make_45vector
  %cloptr19540 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19542 = getelementptr inbounds i64, i64* %cloptr19540, i64 1                  ; &eptr19542[1]
  %eptr19543 = getelementptr inbounds i64, i64* %cloptr19540, i64 2                  ; &eptr19543[2]
  %eptr19544 = getelementptr inbounds i64, i64* %cloptr19540, i64 3                  ; &eptr19544[3]
  %eptr19545 = getelementptr inbounds i64, i64* %cloptr19540, i64 4                  ; &eptr19545[4]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19542                                    ; *eptr19542 = %Ey2$_37wind_45stack
  store i64 %qcm$_37raise_45handler, i64* %eptr19543                                 ; *eptr19543 = %qcm$_37raise_45handler
  store i64 %Qy7$ccstack, i64* %eptr19544                                            ; *eptr19544 = %Qy7$ccstack
  store i64 %NWr$_37do_45wind, i64* %eptr19545                                       ; *eptr19545 = %NWr$_37do_45wind
  %eptr19541 = getelementptr inbounds i64, i64* %cloptr19540, i64 0                  ; &cloptr19540[0]
  %f19546 = ptrtoint void(i64,i64)* @lam10527 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19546, i64* %eptr19541                                                 ; store fptr
  %arg7971 = ptrtoint i64* %cloptr19540 to i64                                       ; closure cast; i64* -> i64
  %arg7970 = add i64 0, 0                                                            ; quoted ()
  %rva9604 = add i64 0, 0                                                            ; quoted ()
  %rva9603 = call i64 @prim_cons(i64 %retprim7248, i64 %rva9604)                     ; call prim_cons
  %rva9602 = call i64 @prim_cons(i64 %arg7970, i64 %rva9603)                         ; call prim_cons
  %cloptr19547 = inttoptr i64 %arg7971 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19548 = getelementptr inbounds i64, i64* %cloptr19547, i64 0                 ; &cloptr19547[0]
  %f19550 = load i64, i64* %i0ptr19548, align 8                                      ; load; *i0ptr19548
  %fptr19549 = inttoptr i64 %f19550 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19549(i64 %arg7971, i64 %rva9602)                   ; tail call
  ret void
}


define void @lam10527(i64 %env10528, i64 %rvp9601) {
  %envptr19551 = inttoptr i64 %env10528 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19552 = getelementptr inbounds i64, i64* %envptr19551, i64 4                ; &envptr19551[4]
  %NWr$_37do_45wind = load i64, i64* %envptr19552, align 8                           ; load; *envptr19552
  %envptr19553 = inttoptr i64 %env10528 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19554 = getelementptr inbounds i64, i64* %envptr19553, i64 3                ; &envptr19553[3]
  %Qy7$ccstack = load i64, i64* %envptr19554, align 8                                ; load; *envptr19554
  %envptr19555 = inttoptr i64 %env10528 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19556 = getelementptr inbounds i64, i64* %envptr19555, i64 2                ; &envptr19555[2]
  %qcm$_37raise_45handler = load i64, i64* %envptr19556, align 8                     ; load; *envptr19556
  %envptr19557 = inttoptr i64 %env10528 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19558 = getelementptr inbounds i64, i64* %envptr19557, i64 1                ; &envptr19557[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19558, align 8                        ; load; *envptr19558
  %_957174 = call i64 @prim_car(i64 %rvp9601)                                        ; call prim_car
  %rvp9600 = call i64 @prim_cdr(i64 %rvp9601)                                        ; call prim_cdr
  %izc$fail = call i64 @prim_car(i64 %rvp9600)                                       ; call prim_car
  %na9238 = call i64 @prim_cdr(i64 %rvp9600)                                         ; call prim_cdr
  %cloptr19559 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19560 = getelementptr inbounds i64, i64* %cloptr19559, i64 0                  ; &cloptr19559[0]
  %f19561 = ptrtoint void(i64,i64)* @lam10525 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19561, i64* %eptr19560                                                 ; store fptr
  %arg7973 = ptrtoint i64* %cloptr19559 to i64                                       ; closure cast; i64* -> i64
  %cloptr19562 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr19564 = getelementptr inbounds i64, i64* %cloptr19562, i64 1                  ; &eptr19564[1]
  %eptr19565 = getelementptr inbounds i64, i64* %cloptr19562, i64 2                  ; &eptr19565[2]
  %eptr19566 = getelementptr inbounds i64, i64* %cloptr19562, i64 3                  ; &eptr19566[3]
  %eptr19567 = getelementptr inbounds i64, i64* %cloptr19562, i64 4                  ; &eptr19567[4]
  %eptr19568 = getelementptr inbounds i64, i64* %cloptr19562, i64 5                  ; &eptr19568[5]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19564                                    ; *eptr19564 = %Ey2$_37wind_45stack
  store i64 %izc$fail, i64* %eptr19565                                               ; *eptr19565 = %izc$fail
  store i64 %qcm$_37raise_45handler, i64* %eptr19566                                 ; *eptr19566 = %qcm$_37raise_45handler
  store i64 %Qy7$ccstack, i64* %eptr19567                                            ; *eptr19567 = %Qy7$ccstack
  store i64 %NWr$_37do_45wind, i64* %eptr19568                                       ; *eptr19568 = %NWr$_37do_45wind
  %eptr19563 = getelementptr inbounds i64, i64* %cloptr19562, i64 0                  ; &cloptr19562[0]
  %f19569 = ptrtoint void(i64,i64)* @lam10521 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19569, i64* %eptr19563                                                 ; store fptr
  %arg7972 = ptrtoint i64* %cloptr19562 to i64                                       ; closure cast; i64* -> i64
  %rva9599 = add i64 0, 0                                                            ; quoted ()
  %rva9598 = call i64 @prim_cons(i64 %arg7972, i64 %rva9599)                         ; call prim_cons
  %cloptr19570 = inttoptr i64 %arg7973 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19571 = getelementptr inbounds i64, i64* %cloptr19570, i64 0                 ; &cloptr19570[0]
  %f19573 = load i64, i64* %i0ptr19571, align 8                                      ; load; *i0ptr19571
  %fptr19572 = inttoptr i64 %f19573 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19572(i64 %arg7973, i64 %rva9598)                   ; tail call
  ret void
}


define void @lam10525(i64 %env10526, i64 %jFm$lst7246) {
  %cont7245 = call i64 @prim_car(i64 %jFm$lst7246)                                   ; call prim_car
  %jFm$lst = call i64 @prim_cdr(i64 %jFm$lst7246)                                    ; call prim_cdr
  %arg7977 = add i64 0, 0                                                            ; quoted ()
  %rva9241 = add i64 0, 0                                                            ; quoted ()
  %rva9240 = call i64 @prim_cons(i64 %jFm$lst, i64 %rva9241)                         ; call prim_cons
  %rva9239 = call i64 @prim_cons(i64 %arg7977, i64 %rva9240)                         ; call prim_cons
  %cloptr19574 = inttoptr i64 %cont7245 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19575 = getelementptr inbounds i64, i64* %cloptr19574, i64 0                 ; &cloptr19574[0]
  %f19577 = load i64, i64* %i0ptr19575, align 8                                      ; load; *i0ptr19575
  %fptr19576 = inttoptr i64 %f19577 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19576(i64 %cont7245, i64 %rva9239)                  ; tail call
  ret void
}


define void @lam10521(i64 %env10522, i64 %rvp9597) {
  %envptr19578 = inttoptr i64 %env10522 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19579 = getelementptr inbounds i64, i64* %envptr19578, i64 5                ; &envptr19578[5]
  %NWr$_37do_45wind = load i64, i64* %envptr19579, align 8                           ; load; *envptr19579
  %envptr19580 = inttoptr i64 %env10522 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19581 = getelementptr inbounds i64, i64* %envptr19580, i64 4                ; &envptr19580[4]
  %Qy7$ccstack = load i64, i64* %envptr19581, align 8                                ; load; *envptr19581
  %envptr19582 = inttoptr i64 %env10522 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19583 = getelementptr inbounds i64, i64* %envptr19582, i64 3                ; &envptr19582[3]
  %qcm$_37raise_45handler = load i64, i64* %envptr19583, align 8                     ; load; *envptr19583
  %envptr19584 = inttoptr i64 %env10522 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19585 = getelementptr inbounds i64, i64* %envptr19584, i64 2                ; &envptr19584[2]
  %izc$fail = load i64, i64* %envptr19585, align 8                                   ; load; *envptr19585
  %envptr19586 = inttoptr i64 %env10522 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19587 = getelementptr inbounds i64, i64* %envptr19586, i64 1                ; &envptr19586[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19587, align 8                        ; load; *envptr19587
  %_957243 = call i64 @prim_car(i64 %rvp9597)                                        ; call prim_car
  %rvp9596 = call i64 @prim_cdr(i64 %rvp9597)                                        ; call prim_cdr
  %a7012 = call i64 @prim_car(i64 %rvp9596)                                          ; call prim_car
  %na9243 = call i64 @prim_cdr(i64 %rvp9596)                                         ; call prim_cdr
  %arg7980 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7244 = call i64 @prim_make_45vector(i64 %arg7980, i64 %a7012)              ; call prim_make_45vector
  %cloptr19588 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr19590 = getelementptr inbounds i64, i64* %cloptr19588, i64 1                  ; &eptr19590[1]
  %eptr19591 = getelementptr inbounds i64, i64* %cloptr19588, i64 2                  ; &eptr19591[2]
  %eptr19592 = getelementptr inbounds i64, i64* %cloptr19588, i64 3                  ; &eptr19592[3]
  %eptr19593 = getelementptr inbounds i64, i64* %cloptr19588, i64 4                  ; &eptr19593[4]
  %eptr19594 = getelementptr inbounds i64, i64* %cloptr19588, i64 5                  ; &eptr19594[5]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19590                                    ; *eptr19590 = %Ey2$_37wind_45stack
  store i64 %izc$fail, i64* %eptr19591                                               ; *eptr19591 = %izc$fail
  store i64 %qcm$_37raise_45handler, i64* %eptr19592                                 ; *eptr19592 = %qcm$_37raise_45handler
  store i64 %Qy7$ccstack, i64* %eptr19593                                            ; *eptr19593 = %Qy7$ccstack
  store i64 %NWr$_37do_45wind, i64* %eptr19594                                       ; *eptr19594 = %NWr$_37do_45wind
  %eptr19589 = getelementptr inbounds i64, i64* %cloptr19588, i64 0                  ; &cloptr19588[0]
  %f19595 = ptrtoint void(i64,i64)* @lam10518 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19595, i64* %eptr19589                                                 ; store fptr
  %arg7983 = ptrtoint i64* %cloptr19588 to i64                                       ; closure cast; i64* -> i64
  %arg7982 = add i64 0, 0                                                            ; quoted ()
  %rva9595 = add i64 0, 0                                                            ; quoted ()
  %rva9594 = call i64 @prim_cons(i64 %retprim7244, i64 %rva9595)                     ; call prim_cons
  %rva9593 = call i64 @prim_cons(i64 %arg7982, i64 %rva9594)                         ; call prim_cons
  %cloptr19596 = inttoptr i64 %arg7983 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19597 = getelementptr inbounds i64, i64* %cloptr19596, i64 0                 ; &cloptr19596[0]
  %f19599 = load i64, i64* %i0ptr19597, align 8                                      ; load; *i0ptr19597
  %fptr19598 = inttoptr i64 %f19599 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19598(i64 %arg7983, i64 %rva9593)                   ; tail call
  ret void
}


define void @lam10518(i64 %env10519, i64 %rvp9592) {
  %envptr19600 = inttoptr i64 %env10519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19601 = getelementptr inbounds i64, i64* %envptr19600, i64 5                ; &envptr19600[5]
  %NWr$_37do_45wind = load i64, i64* %envptr19601, align 8                           ; load; *envptr19601
  %envptr19602 = inttoptr i64 %env10519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19603 = getelementptr inbounds i64, i64* %envptr19602, i64 4                ; &envptr19602[4]
  %Qy7$ccstack = load i64, i64* %envptr19603, align 8                                ; load; *envptr19603
  %envptr19604 = inttoptr i64 %env10519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19605 = getelementptr inbounds i64, i64* %envptr19604, i64 3                ; &envptr19604[3]
  %qcm$_37raise_45handler = load i64, i64* %envptr19605, align 8                     ; load; *envptr19605
  %envptr19606 = inttoptr i64 %env10519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19607 = getelementptr inbounds i64, i64* %envptr19606, i64 2                ; &envptr19606[2]
  %izc$fail = load i64, i64* %envptr19607, align 8                                   ; load; *envptr19607
  %envptr19608 = inttoptr i64 %env10519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19609 = getelementptr inbounds i64, i64* %envptr19608, i64 1                ; &envptr19608[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19609, align 8                        ; load; *envptr19609
  %_957175 = call i64 @prim_car(i64 %rvp9592)                                        ; call prim_car
  %rvp9591 = call i64 @prim_cdr(i64 %rvp9592)                                        ; call prim_cdr
  %IqI$assert = call i64 @prim_car(i64 %rvp9591)                                     ; call prim_car
  %na9245 = call i64 @prim_cdr(i64 %rvp9591)                                         ; call prim_cdr
  %cloptr19610 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19611 = getelementptr inbounds i64, i64* %cloptr19610, i64 0                  ; &cloptr19610[0]
  %f19612 = ptrtoint void(i64,i64)* @lam10516 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19612, i64* %eptr19611                                                 ; store fptr
  %arg7985 = ptrtoint i64* %cloptr19610 to i64                                       ; closure cast; i64* -> i64
  %cloptr19613 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr19615 = getelementptr inbounds i64, i64* %cloptr19613, i64 1                  ; &eptr19615[1]
  %eptr19616 = getelementptr inbounds i64, i64* %cloptr19613, i64 2                  ; &eptr19616[2]
  %eptr19617 = getelementptr inbounds i64, i64* %cloptr19613, i64 3                  ; &eptr19617[3]
  %eptr19618 = getelementptr inbounds i64, i64* %cloptr19613, i64 4                  ; &eptr19618[4]
  %eptr19619 = getelementptr inbounds i64, i64* %cloptr19613, i64 5                  ; &eptr19619[5]
  %eptr19620 = getelementptr inbounds i64, i64* %cloptr19613, i64 6                  ; &eptr19620[6]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19615                                    ; *eptr19615 = %Ey2$_37wind_45stack
  store i64 %izc$fail, i64* %eptr19616                                               ; *eptr19616 = %izc$fail
  store i64 %qcm$_37raise_45handler, i64* %eptr19617                                 ; *eptr19617 = %qcm$_37raise_45handler
  store i64 %Qy7$ccstack, i64* %eptr19618                                            ; *eptr19618 = %Qy7$ccstack
  store i64 %NWr$_37do_45wind, i64* %eptr19619                                       ; *eptr19619 = %NWr$_37do_45wind
  store i64 %IqI$assert, i64* %eptr19620                                             ; *eptr19620 = %IqI$assert
  %eptr19614 = getelementptr inbounds i64, i64* %cloptr19613, i64 0                  ; &cloptr19613[0]
  %f19621 = ptrtoint void(i64,i64)* @lam10512 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19621, i64* %eptr19614                                                 ; store fptr
  %arg7984 = ptrtoint i64* %cloptr19613 to i64                                       ; closure cast; i64* -> i64
  %rva9590 = add i64 0, 0                                                            ; quoted ()
  %rva9589 = call i64 @prim_cons(i64 %arg7984, i64 %rva9590)                         ; call prim_cons
  %cloptr19622 = inttoptr i64 %arg7985 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19623 = getelementptr inbounds i64, i64* %cloptr19622, i64 0                 ; &cloptr19622[0]
  %f19625 = load i64, i64* %i0ptr19623, align 8                                      ; load; *i0ptr19623
  %fptr19624 = inttoptr i64 %f19625 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19624(i64 %arg7985, i64 %rva9589)                   ; tail call
  ret void
}


define void @lam10516(i64 %env10517, i64 %Omw$lst7242) {
  %cont7241 = call i64 @prim_car(i64 %Omw$lst7242)                                   ; call prim_car
  %Omw$lst = call i64 @prim_cdr(i64 %Omw$lst7242)                                    ; call prim_cdr
  %arg7989 = add i64 0, 0                                                            ; quoted ()
  %rva9248 = add i64 0, 0                                                            ; quoted ()
  %rva9247 = call i64 @prim_cons(i64 %Omw$lst, i64 %rva9248)                         ; call prim_cons
  %rva9246 = call i64 @prim_cons(i64 %arg7989, i64 %rva9247)                         ; call prim_cons
  %cloptr19626 = inttoptr i64 %cont7241 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19627 = getelementptr inbounds i64, i64* %cloptr19626, i64 0                 ; &cloptr19626[0]
  %f19629 = load i64, i64* %i0ptr19627, align 8                                      ; load; *i0ptr19627
  %fptr19628 = inttoptr i64 %f19629 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19628(i64 %cont7241, i64 %rva9246)                  ; tail call
  ret void
}


define void @lam10512(i64 %env10513, i64 %rvp9588) {
  %envptr19630 = inttoptr i64 %env10513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19631 = getelementptr inbounds i64, i64* %envptr19630, i64 6                ; &envptr19630[6]
  %IqI$assert = load i64, i64* %envptr19631, align 8                                 ; load; *envptr19631
  %envptr19632 = inttoptr i64 %env10513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19633 = getelementptr inbounds i64, i64* %envptr19632, i64 5                ; &envptr19632[5]
  %NWr$_37do_45wind = load i64, i64* %envptr19633, align 8                           ; load; *envptr19633
  %envptr19634 = inttoptr i64 %env10513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19635 = getelementptr inbounds i64, i64* %envptr19634, i64 4                ; &envptr19634[4]
  %Qy7$ccstack = load i64, i64* %envptr19635, align 8                                ; load; *envptr19635
  %envptr19636 = inttoptr i64 %env10513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19637 = getelementptr inbounds i64, i64* %envptr19636, i64 3                ; &envptr19636[3]
  %qcm$_37raise_45handler = load i64, i64* %envptr19637, align 8                     ; load; *envptr19637
  %envptr19638 = inttoptr i64 %env10513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19639 = getelementptr inbounds i64, i64* %envptr19638, i64 2                ; &envptr19638[2]
  %izc$fail = load i64, i64* %envptr19639, align 8                                   ; load; *envptr19639
  %envptr19640 = inttoptr i64 %env10513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19641 = getelementptr inbounds i64, i64* %envptr19640, i64 1                ; &envptr19640[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19641, align 8                        ; load; *envptr19641
  %_957239 = call i64 @prim_car(i64 %rvp9588)                                        ; call prim_car
  %rvp9587 = call i64 @prim_cdr(i64 %rvp9588)                                        ; call prim_cdr
  %a7013 = call i64 @prim_car(i64 %rvp9587)                                          ; call prim_car
  %na9250 = call i64 @prim_cdr(i64 %rvp9587)                                         ; call prim_cdr
  %arg7992 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7240 = call i64 @prim_make_45vector(i64 %arg7992, i64 %a7013)              ; call prim_make_45vector
  %cloptr19642 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr19644 = getelementptr inbounds i64, i64* %cloptr19642, i64 1                  ; &eptr19644[1]
  %eptr19645 = getelementptr inbounds i64, i64* %cloptr19642, i64 2                  ; &eptr19645[2]
  %eptr19646 = getelementptr inbounds i64, i64* %cloptr19642, i64 3                  ; &eptr19646[3]
  %eptr19647 = getelementptr inbounds i64, i64* %cloptr19642, i64 4                  ; &eptr19647[4]
  %eptr19648 = getelementptr inbounds i64, i64* %cloptr19642, i64 5                  ; &eptr19648[5]
  %eptr19649 = getelementptr inbounds i64, i64* %cloptr19642, i64 6                  ; &eptr19649[6]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19644                                    ; *eptr19644 = %Ey2$_37wind_45stack
  store i64 %izc$fail, i64* %eptr19645                                               ; *eptr19645 = %izc$fail
  store i64 %qcm$_37raise_45handler, i64* %eptr19646                                 ; *eptr19646 = %qcm$_37raise_45handler
  store i64 %Qy7$ccstack, i64* %eptr19647                                            ; *eptr19647 = %Qy7$ccstack
  store i64 %NWr$_37do_45wind, i64* %eptr19648                                       ; *eptr19648 = %NWr$_37do_45wind
  store i64 %IqI$assert, i64* %eptr19649                                             ; *eptr19649 = %IqI$assert
  %eptr19643 = getelementptr inbounds i64, i64* %cloptr19642, i64 0                  ; &cloptr19642[0]
  %f19650 = ptrtoint void(i64,i64)* @lam10509 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19650, i64* %eptr19643                                                 ; store fptr
  %arg7995 = ptrtoint i64* %cloptr19642 to i64                                       ; closure cast; i64* -> i64
  %arg7994 = add i64 0, 0                                                            ; quoted ()
  %rva9586 = add i64 0, 0                                                            ; quoted ()
  %rva9585 = call i64 @prim_cons(i64 %retprim7240, i64 %rva9586)                     ; call prim_cons
  %rva9584 = call i64 @prim_cons(i64 %arg7994, i64 %rva9585)                         ; call prim_cons
  %cloptr19651 = inttoptr i64 %arg7995 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19652 = getelementptr inbounds i64, i64* %cloptr19651, i64 0                 ; &cloptr19651[0]
  %f19654 = load i64, i64* %i0ptr19652, align 8                                      ; load; *i0ptr19652
  %fptr19653 = inttoptr i64 %f19654 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19653(i64 %arg7995, i64 %rva9584)                   ; tail call
  ret void
}


define void @lam10509(i64 %env10510, i64 %rvp9583) {
  %envptr19655 = inttoptr i64 %env10510 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19656 = getelementptr inbounds i64, i64* %envptr19655, i64 6                ; &envptr19655[6]
  %IqI$assert = load i64, i64* %envptr19656, align 8                                 ; load; *envptr19656
  %envptr19657 = inttoptr i64 %env10510 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19658 = getelementptr inbounds i64, i64* %envptr19657, i64 5                ; &envptr19657[5]
  %NWr$_37do_45wind = load i64, i64* %envptr19658, align 8                           ; load; *envptr19658
  %envptr19659 = inttoptr i64 %env10510 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19660 = getelementptr inbounds i64, i64* %envptr19659, i64 4                ; &envptr19659[4]
  %Qy7$ccstack = load i64, i64* %envptr19660, align 8                                ; load; *envptr19660
  %envptr19661 = inttoptr i64 %env10510 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19662 = getelementptr inbounds i64, i64* %envptr19661, i64 3                ; &envptr19661[3]
  %qcm$_37raise_45handler = load i64, i64* %envptr19662, align 8                     ; load; *envptr19662
  %envptr19663 = inttoptr i64 %env10510 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19664 = getelementptr inbounds i64, i64* %envptr19663, i64 2                ; &envptr19663[2]
  %izc$fail = load i64, i64* %envptr19664, align 8                                   ; load; *envptr19664
  %envptr19665 = inttoptr i64 %env10510 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19666 = getelementptr inbounds i64, i64* %envptr19665, i64 1                ; &envptr19665[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19666, align 8                        ; load; *envptr19666
  %_957176 = call i64 @prim_car(i64 %rvp9583)                                        ; call prim_car
  %rvp9582 = call i64 @prim_cdr(i64 %rvp9583)                                        ; call prim_cdr
  %jS8$amb = call i64 @prim_car(i64 %rvp9582)                                        ; call prim_car
  %na9252 = call i64 @prim_cdr(i64 %rvp9582)                                         ; call prim_cdr
  %cloptr19667 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19668 = getelementptr inbounds i64, i64* %cloptr19667, i64 0                  ; &cloptr19667[0]
  %f19669 = ptrtoint void(i64,i64)* @lam10507 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19669, i64* %eptr19668                                                 ; store fptr
  %arg7997 = ptrtoint i64* %cloptr19667 to i64                                       ; closure cast; i64* -> i64
  %cloptr19670 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr19672 = getelementptr inbounds i64, i64* %cloptr19670, i64 1                  ; &eptr19672[1]
  %eptr19673 = getelementptr inbounds i64, i64* %cloptr19670, i64 2                  ; &eptr19673[2]
  %eptr19674 = getelementptr inbounds i64, i64* %cloptr19670, i64 3                  ; &eptr19674[3]
  %eptr19675 = getelementptr inbounds i64, i64* %cloptr19670, i64 4                  ; &eptr19675[4]
  %eptr19676 = getelementptr inbounds i64, i64* %cloptr19670, i64 5                  ; &eptr19676[5]
  %eptr19677 = getelementptr inbounds i64, i64* %cloptr19670, i64 6                  ; &eptr19677[6]
  %eptr19678 = getelementptr inbounds i64, i64* %cloptr19670, i64 7                  ; &eptr19678[7]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19672                                    ; *eptr19672 = %Ey2$_37wind_45stack
  store i64 %izc$fail, i64* %eptr19673                                               ; *eptr19673 = %izc$fail
  store i64 %jS8$amb, i64* %eptr19674                                                ; *eptr19674 = %jS8$amb
  store i64 %qcm$_37raise_45handler, i64* %eptr19675                                 ; *eptr19675 = %qcm$_37raise_45handler
  store i64 %Qy7$ccstack, i64* %eptr19676                                            ; *eptr19676 = %Qy7$ccstack
  store i64 %NWr$_37do_45wind, i64* %eptr19677                                       ; *eptr19677 = %NWr$_37do_45wind
  store i64 %IqI$assert, i64* %eptr19678                                             ; *eptr19678 = %IqI$assert
  %eptr19671 = getelementptr inbounds i64, i64* %cloptr19670, i64 0                  ; &cloptr19670[0]
  %f19679 = ptrtoint void(i64,i64)* @lam10503 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19679, i64* %eptr19671                                                 ; store fptr
  %arg7996 = ptrtoint i64* %cloptr19670 to i64                                       ; closure cast; i64* -> i64
  %rva9581 = add i64 0, 0                                                            ; quoted ()
  %rva9580 = call i64 @prim_cons(i64 %arg7996, i64 %rva9581)                         ; call prim_cons
  %cloptr19680 = inttoptr i64 %arg7997 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19681 = getelementptr inbounds i64, i64* %cloptr19680, i64 0                 ; &cloptr19680[0]
  %f19683 = load i64, i64* %i0ptr19681, align 8                                      ; load; *i0ptr19681
  %fptr19682 = inttoptr i64 %f19683 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19682(i64 %arg7997, i64 %rva9580)                   ; tail call
  ret void
}


define void @lam10507(i64 %env10508, i64 %YJ4$lst7238) {
  %cont7237 = call i64 @prim_car(i64 %YJ4$lst7238)                                   ; call prim_car
  %YJ4$lst = call i64 @prim_cdr(i64 %YJ4$lst7238)                                    ; call prim_cdr
  %arg8001 = add i64 0, 0                                                            ; quoted ()
  %rva9255 = add i64 0, 0                                                            ; quoted ()
  %rva9254 = call i64 @prim_cons(i64 %YJ4$lst, i64 %rva9255)                         ; call prim_cons
  %rva9253 = call i64 @prim_cons(i64 %arg8001, i64 %rva9254)                         ; call prim_cons
  %cloptr19684 = inttoptr i64 %cont7237 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19685 = getelementptr inbounds i64, i64* %cloptr19684, i64 0                 ; &cloptr19684[0]
  %f19687 = load i64, i64* %i0ptr19685, align 8                                      ; load; *i0ptr19685
  %fptr19686 = inttoptr i64 %f19687 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19686(i64 %cont7237, i64 %rva9253)                  ; tail call
  ret void
}


define void @lam10503(i64 %env10504, i64 %rvp9579) {
  %envptr19688 = inttoptr i64 %env10504 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19689 = getelementptr inbounds i64, i64* %envptr19688, i64 7                ; &envptr19688[7]
  %IqI$assert = load i64, i64* %envptr19689, align 8                                 ; load; *envptr19689
  %envptr19690 = inttoptr i64 %env10504 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19691 = getelementptr inbounds i64, i64* %envptr19690, i64 6                ; &envptr19690[6]
  %NWr$_37do_45wind = load i64, i64* %envptr19691, align 8                           ; load; *envptr19691
  %envptr19692 = inttoptr i64 %env10504 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19693 = getelementptr inbounds i64, i64* %envptr19692, i64 5                ; &envptr19692[5]
  %Qy7$ccstack = load i64, i64* %envptr19693, align 8                                ; load; *envptr19693
  %envptr19694 = inttoptr i64 %env10504 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19695 = getelementptr inbounds i64, i64* %envptr19694, i64 4                ; &envptr19694[4]
  %qcm$_37raise_45handler = load i64, i64* %envptr19695, align 8                     ; load; *envptr19695
  %envptr19696 = inttoptr i64 %env10504 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19697 = getelementptr inbounds i64, i64* %envptr19696, i64 3                ; &envptr19696[3]
  %jS8$amb = load i64, i64* %envptr19697, align 8                                    ; load; *envptr19697
  %envptr19698 = inttoptr i64 %env10504 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19699 = getelementptr inbounds i64, i64* %envptr19698, i64 2                ; &envptr19698[2]
  %izc$fail = load i64, i64* %envptr19699, align 8                                   ; load; *envptr19699
  %envptr19700 = inttoptr i64 %env10504 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19701 = getelementptr inbounds i64, i64* %envptr19700, i64 1                ; &envptr19700[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19701, align 8                        ; load; *envptr19701
  %_957177 = call i64 @prim_car(i64 %rvp9579)                                        ; call prim_car
  %rvp9578 = call i64 @prim_cdr(i64 %rvp9579)                                        ; call prim_cdr
  %Y6m$letrec6875 = call i64 @prim_car(i64 %rvp9578)                                 ; call prim_car
  %na9257 = call i64 @prim_cdr(i64 %rvp9578)                                         ; call prim_cdr
  %cloptr19702 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr19704 = getelementptr inbounds i64, i64* %cloptr19702, i64 1                  ; &eptr19704[1]
  %eptr19705 = getelementptr inbounds i64, i64* %cloptr19702, i64 2                  ; &eptr19705[2]
  store i64 %qcm$_37raise_45handler, i64* %eptr19704                                 ; *eptr19704 = %qcm$_37raise_45handler
  store i64 %Qy7$ccstack, i64* %eptr19705                                            ; *eptr19705 = %Qy7$ccstack
  %eptr19703 = getelementptr inbounds i64, i64* %cloptr19702, i64 0                  ; &cloptr19702[0]
  %f19706 = ptrtoint void(i64,i64)* @lam10501 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19706, i64* %eptr19703                                                 ; store fptr
  %O4y$letrec6876 = ptrtoint i64* %cloptr19702 to i64                                ; closure cast; i64* -> i64
  %cloptr19707 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr19709 = getelementptr inbounds i64, i64* %cloptr19707, i64 1                  ; &eptr19709[1]
  store i64 %izc$fail, i64* %eptr19709                                               ; *eptr19709 = %izc$fail
  %eptr19708 = getelementptr inbounds i64, i64* %cloptr19707, i64 0                  ; &cloptr19707[0]
  %f19710 = ptrtoint void(i64,i64)* @lam10471 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19710, i64* %eptr19708                                                 ; store fptr
  %S7F$letrec6877 = ptrtoint i64* %cloptr19707 to i64                                ; closure cast; i64* -> i64
  %cloptr19711 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19713 = getelementptr inbounds i64, i64* %cloptr19711, i64 1                  ; &eptr19713[1]
  %eptr19714 = getelementptr inbounds i64, i64* %cloptr19711, i64 2                  ; &eptr19714[2]
  %eptr19715 = getelementptr inbounds i64, i64* %cloptr19711, i64 3                  ; &eptr19715[3]
  %eptr19716 = getelementptr inbounds i64, i64* %cloptr19711, i64 4                  ; &eptr19716[4]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19713                                    ; *eptr19713 = %Ey2$_37wind_45stack
  store i64 %izc$fail, i64* %eptr19714                                               ; *eptr19714 = %izc$fail
  store i64 %Qy7$ccstack, i64* %eptr19715                                            ; *eptr19715 = %Qy7$ccstack
  store i64 %NWr$_37do_45wind, i64* %eptr19716                                       ; *eptr19716 = %NWr$_37do_45wind
  %eptr19712 = getelementptr inbounds i64, i64* %cloptr19711, i64 0                  ; &cloptr19711[0]
  %f19717 = ptrtoint void(i64,i64)* @lam10464 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19717, i64* %eptr19712                                                 ; store fptr
  %AVp$letrec6878 = ptrtoint i64* %cloptr19711 to i64                                ; closure cast; i64* -> i64
  %arg8212 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %kVA$_956883 = call i64 @prim_vector_45set_33(i64 %Qy7$ccstack, i64 %arg8212, i64 %Y6m$letrec6875); call prim_vector_45set_33
  %arg8215 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %GXf$_956884 = call i64 @prim_vector_45set_33(i64 %izc$fail, i64 %arg8215, i64 %O4y$letrec6876); call prim_vector_45set_33
  %arg8218 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %Vbh$_956885 = call i64 @prim_vector_45set_33(i64 %IqI$assert, i64 %arg8218, i64 %S7F$letrec6877); call prim_vector_45set_33
  %arg8221 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %UBR$_956886 = call i64 @prim_vector_45set_33(i64 %jS8$amb, i64 %arg8221, i64 %AVp$letrec6878); call prim_vector_45set_33
  %arg8223 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7037 = call i64 @prim_vector_45ref(i64 %jS8$amb, i64 %arg8223)                   ; call prim_vector_45ref
  %cloptr19718 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19719 = getelementptr inbounds i64, i64* %cloptr19718, i64 0                  ; &cloptr19718[0]
  %f19720 = ptrtoint void(i64,i64)* @lam10332 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19720, i64* %eptr19719                                                 ; store fptr
  %arg8226 = ptrtoint i64* %cloptr19718 to i64                                       ; closure cast; i64* -> i64
  %cloptr19721 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19723 = getelementptr inbounds i64, i64* %cloptr19721, i64 1                  ; &eptr19723[1]
  %eptr19724 = getelementptr inbounds i64, i64* %cloptr19721, i64 2                  ; &eptr19724[2]
  %eptr19725 = getelementptr inbounds i64, i64* %cloptr19721, i64 3                  ; &eptr19725[3]
  store i64 %jS8$amb, i64* %eptr19723                                                ; *eptr19723 = %jS8$amb
  store i64 %IqI$assert, i64* %eptr19724                                             ; *eptr19724 = %IqI$assert
  store i64 %a7037, i64* %eptr19725                                                  ; *eptr19725 = %a7037
  %eptr19722 = getelementptr inbounds i64, i64* %cloptr19721, i64 0                  ; &cloptr19721[0]
  %f19726 = ptrtoint void(i64,i64)* @lam10328 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19726, i64* %eptr19722                                                 ; store fptr
  %arg8225 = ptrtoint i64* %cloptr19721 to i64                                       ; closure cast; i64* -> i64
  %rva9577 = add i64 0, 0                                                            ; quoted ()
  %rva9576 = call i64 @prim_cons(i64 %arg8225, i64 %rva9577)                         ; call prim_cons
  %cloptr19727 = inttoptr i64 %arg8226 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19728 = getelementptr inbounds i64, i64* %cloptr19727, i64 0                 ; &cloptr19727[0]
  %f19730 = load i64, i64* %i0ptr19728, align 8                                      ; load; *i0ptr19728
  %fptr19729 = inttoptr i64 %f19730 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19729(i64 %arg8226, i64 %rva9576)                   ; tail call
  ret void
}


define void @lam10501(i64 %env10502, i64 %rvp9296) {
  %envptr19731 = inttoptr i64 %env10502 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19732 = getelementptr inbounds i64, i64* %envptr19731, i64 2                ; &envptr19731[2]
  %Qy7$ccstack = load i64, i64* %envptr19732, align 8                                ; load; *envptr19732
  %envptr19733 = inttoptr i64 %env10502 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19734 = getelementptr inbounds i64, i64* %envptr19733, i64 1                ; &envptr19733[1]
  %qcm$_37raise_45handler = load i64, i64* %envptr19734, align 8                     ; load; *envptr19734
  %cont7178 = call i64 @prim_car(i64 %rvp9296)                                       ; call prim_car
  %na9259 = call i64 @prim_cdr(i64 %rvp9296)                                         ; call prim_cdr
  %arg8003 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %Qy7$ccstack, i64 %arg8003)               ; call prim_vector_45ref
  %a7015 = call i64 @prim_null_63(i64 %a7014)                                        ; call prim_null_63
  %cmp19735 = icmp eq i64 %a7015, 15                                                 ; false?
  br i1 %cmp19735, label %else19737, label %then19736                                ; if

then19736:
  %arg8006 = call i64 @const_init_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @sym19738, i32 0, i32 0)); quoted string
  %rva9262 = add i64 0, 0                                                            ; quoted ()
  %rva9261 = call i64 @prim_cons(i64 %arg8006, i64 %rva9262)                         ; call prim_cons
  %rva9260 = call i64 @prim_cons(i64 %cont7178, i64 %rva9261)                        ; call prim_cons
  %cloptr19739 = inttoptr i64 %qcm$_37raise_45handler to i64*                        ; closure/env cast; i64 -> i64*
  %i0ptr19740 = getelementptr inbounds i64, i64* %cloptr19739, i64 0                 ; &cloptr19739[0]
  %f19742 = load i64, i64* %i0ptr19740, align 8                                      ; load; *i0ptr19740
  %fptr19741 = inttoptr i64 %f19742 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19741(i64 %qcm$_37raise_45handler, i64 %rva9260)    ; tail call
  ret void

else19737:
  %arg8009 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7016 = call i64 @prim_vector_45ref(i64 %Qy7$ccstack, i64 %arg8009)               ; call prim_vector_45ref
  %retprim7187 = call i64 @prim_car(i64 %a7016)                                      ; call prim_car
  %cloptr19743 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr19745 = getelementptr inbounds i64, i64* %cloptr19743, i64 1                  ; &eptr19745[1]
  %eptr19746 = getelementptr inbounds i64, i64* %cloptr19743, i64 2                  ; &eptr19746[2]
  store i64 %Qy7$ccstack, i64* %eptr19745                                            ; *eptr19745 = %Qy7$ccstack
  store i64 %cont7178, i64* %eptr19746                                               ; *eptr19746 = %cont7178
  %eptr19744 = getelementptr inbounds i64, i64* %cloptr19743, i64 0                  ; &cloptr19743[0]
  %f19747 = ptrtoint void(i64,i64)* @lam10497 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19747, i64* %eptr19744                                                 ; store fptr
  %arg8014 = ptrtoint i64* %cloptr19743 to i64                                       ; closure cast; i64* -> i64
  %arg8013 = add i64 0, 0                                                            ; quoted ()
  %rva9295 = add i64 0, 0                                                            ; quoted ()
  %rva9294 = call i64 @prim_cons(i64 %retprim7187, i64 %rva9295)                     ; call prim_cons
  %rva9293 = call i64 @prim_cons(i64 %arg8013, i64 %rva9294)                         ; call prim_cons
  %cloptr19748 = inttoptr i64 %arg8014 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19749 = getelementptr inbounds i64, i64* %cloptr19748, i64 0                 ; &cloptr19748[0]
  %f19751 = load i64, i64* %i0ptr19749, align 8                                      ; load; *i0ptr19749
  %fptr19750 = inttoptr i64 %f19751 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19750(i64 %arg8014, i64 %rva9293)                   ; tail call
  ret void
}


define void @lam10497(i64 %env10498, i64 %rvp9292) {
  %envptr19752 = inttoptr i64 %env10498 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19753 = getelementptr inbounds i64, i64* %envptr19752, i64 2                ; &envptr19752[2]
  %cont7178 = load i64, i64* %envptr19753, align 8                                   ; load; *envptr19753
  %envptr19754 = inttoptr i64 %env10498 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19755 = getelementptr inbounds i64, i64* %envptr19754, i64 1                ; &envptr19754[1]
  %Qy7$ccstack = load i64, i64* %envptr19755, align 8                                ; load; *envptr19755
  %_957179 = call i64 @prim_car(i64 %rvp9292)                                        ; call prim_car
  %rvp9291 = call i64 @prim_cdr(i64 %rvp9292)                                        ; call prim_cdr
  %Sc5$next_45cc = call i64 @prim_car(i64 %rvp9291)                                  ; call prim_car
  %na9264 = call i64 @prim_cdr(i64 %rvp9291)                                         ; call prim_cdr
  %cloptr19756 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19757 = getelementptr inbounds i64, i64* %cloptr19756, i64 0                  ; &cloptr19756[0]
  %f19758 = ptrtoint void(i64,i64)* @lam10495 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19758, i64* %eptr19757                                                 ; store fptr
  %arg8016 = ptrtoint i64* %cloptr19756 to i64                                       ; closure cast; i64* -> i64
  %cloptr19759 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19761 = getelementptr inbounds i64, i64* %cloptr19759, i64 1                  ; &eptr19761[1]
  %eptr19762 = getelementptr inbounds i64, i64* %cloptr19759, i64 2                  ; &eptr19762[2]
  %eptr19763 = getelementptr inbounds i64, i64* %cloptr19759, i64 3                  ; &eptr19763[3]
  store i64 %Qy7$ccstack, i64* %eptr19761                                            ; *eptr19761 = %Qy7$ccstack
  store i64 %cont7178, i64* %eptr19762                                               ; *eptr19762 = %cont7178
  store i64 %Sc5$next_45cc, i64* %eptr19763                                          ; *eptr19763 = %Sc5$next_45cc
  %eptr19760 = getelementptr inbounds i64, i64* %cloptr19759, i64 0                  ; &cloptr19759[0]
  %f19764 = ptrtoint void(i64,i64)* @lam10491 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19764, i64* %eptr19760                                                 ; store fptr
  %arg8015 = ptrtoint i64* %cloptr19759 to i64                                       ; closure cast; i64* -> i64
  %rva9290 = add i64 0, 0                                                            ; quoted ()
  %rva9289 = call i64 @prim_cons(i64 %arg8015, i64 %rva9290)                         ; call prim_cons
  %cloptr19765 = inttoptr i64 %arg8016 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19766 = getelementptr inbounds i64, i64* %cloptr19765, i64 0                 ; &cloptr19765[0]
  %f19768 = load i64, i64* %i0ptr19766, align 8                                      ; load; *i0ptr19766
  %fptr19767 = inttoptr i64 %f19768 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19767(i64 %arg8016, i64 %rva9289)                   ; tail call
  ret void
}


define void @lam10495(i64 %env10496, i64 %wrN$lst7186) {
  %cont7185 = call i64 @prim_car(i64 %wrN$lst7186)                                   ; call prim_car
  %wrN$lst = call i64 @prim_cdr(i64 %wrN$lst7186)                                    ; call prim_cdr
  %arg8020 = add i64 0, 0                                                            ; quoted ()
  %rva9267 = add i64 0, 0                                                            ; quoted ()
  %rva9266 = call i64 @prim_cons(i64 %wrN$lst, i64 %rva9267)                         ; call prim_cons
  %rva9265 = call i64 @prim_cons(i64 %arg8020, i64 %rva9266)                         ; call prim_cons
  %cloptr19769 = inttoptr i64 %cont7185 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19770 = getelementptr inbounds i64, i64* %cloptr19769, i64 0                 ; &cloptr19769[0]
  %f19772 = load i64, i64* %i0ptr19770, align 8                                      ; load; *i0ptr19770
  %fptr19771 = inttoptr i64 %f19772 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19771(i64 %cont7185, i64 %rva9265)                  ; tail call
  ret void
}


define void @lam10491(i64 %env10492, i64 %rvp9288) {
  %envptr19773 = inttoptr i64 %env10492 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19774 = getelementptr inbounds i64, i64* %envptr19773, i64 3                ; &envptr19773[3]
  %Sc5$next_45cc = load i64, i64* %envptr19774, align 8                              ; load; *envptr19774
  %envptr19775 = inttoptr i64 %env10492 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19776 = getelementptr inbounds i64, i64* %envptr19775, i64 2                ; &envptr19775[2]
  %cont7178 = load i64, i64* %envptr19776, align 8                                   ; load; *envptr19776
  %envptr19777 = inttoptr i64 %env10492 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19778 = getelementptr inbounds i64, i64* %envptr19777, i64 1                ; &envptr19777[1]
  %Qy7$ccstack = load i64, i64* %envptr19778, align 8                                ; load; *envptr19778
  %_957183 = call i64 @prim_car(i64 %rvp9288)                                        ; call prim_car
  %rvp9287 = call i64 @prim_cdr(i64 %rvp9288)                                        ; call prim_cdr
  %a7017 = call i64 @prim_car(i64 %rvp9287)                                          ; call prim_car
  %na9269 = call i64 @prim_cdr(i64 %rvp9287)                                         ; call prim_cdr
  %arg8023 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7184 = call i64 @prim_make_45vector(i64 %arg8023, i64 %a7017)              ; call prim_make_45vector
  %cloptr19779 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19781 = getelementptr inbounds i64, i64* %cloptr19779, i64 1                  ; &eptr19781[1]
  %eptr19782 = getelementptr inbounds i64, i64* %cloptr19779, i64 2                  ; &eptr19782[2]
  %eptr19783 = getelementptr inbounds i64, i64* %cloptr19779, i64 3                  ; &eptr19783[3]
  store i64 %Qy7$ccstack, i64* %eptr19781                                            ; *eptr19781 = %Qy7$ccstack
  store i64 %cont7178, i64* %eptr19782                                               ; *eptr19782 = %cont7178
  store i64 %Sc5$next_45cc, i64* %eptr19783                                          ; *eptr19783 = %Sc5$next_45cc
  %eptr19780 = getelementptr inbounds i64, i64* %cloptr19779, i64 0                  ; &cloptr19779[0]
  %f19784 = ptrtoint void(i64,i64)* @lam10488 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19784, i64* %eptr19780                                                 ; store fptr
  %arg8026 = ptrtoint i64* %cloptr19779 to i64                                       ; closure cast; i64* -> i64
  %arg8025 = add i64 0, 0                                                            ; quoted ()
  %rva9286 = add i64 0, 0                                                            ; quoted ()
  %rva9285 = call i64 @prim_cons(i64 %retprim7184, i64 %rva9286)                     ; call prim_cons
  %rva9284 = call i64 @prim_cons(i64 %arg8025, i64 %rva9285)                         ; call prim_cons
  %cloptr19785 = inttoptr i64 %arg8026 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19786 = getelementptr inbounds i64, i64* %cloptr19785, i64 0                 ; &cloptr19785[0]
  %f19788 = load i64, i64* %i0ptr19786, align 8                                      ; load; *i0ptr19786
  %fptr19787 = inttoptr i64 %f19788 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19787(i64 %arg8026, i64 %rva9284)                   ; tail call
  ret void
}


define void @lam10488(i64 %env10489, i64 %rvp9283) {
  %envptr19789 = inttoptr i64 %env10489 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19790 = getelementptr inbounds i64, i64* %envptr19789, i64 3                ; &envptr19789[3]
  %Sc5$next_45cc = load i64, i64* %envptr19790, align 8                              ; load; *envptr19790
  %envptr19791 = inttoptr i64 %env10489 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19792 = getelementptr inbounds i64, i64* %envptr19791, i64 2                ; &envptr19791[2]
  %cont7178 = load i64, i64* %envptr19792, align 8                                   ; load; *envptr19792
  %envptr19793 = inttoptr i64 %env10489 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19794 = getelementptr inbounds i64, i64* %envptr19793, i64 1                ; &envptr19793[1]
  %Qy7$ccstack = load i64, i64* %envptr19794, align 8                                ; load; *envptr19794
  %_957180 = call i64 @prim_car(i64 %rvp9283)                                        ; call prim_car
  %rvp9282 = call i64 @prim_cdr(i64 %rvp9283)                                        ; call prim_cdr
  %teP$tmp6859 = call i64 @prim_car(i64 %rvp9282)                                    ; call prim_car
  %na9271 = call i64 @prim_cdr(i64 %rvp9282)                                         ; call prim_cdr
  %arg8027 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7018 = call i64 @prim_vector_45ref(i64 %Qy7$ccstack, i64 %arg8027)               ; call prim_vector_45ref
  %a7019 = call i64 @prim_cdr(i64 %a7018)                                            ; call prim_cdr
  %arg8031 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7020 = call i64 @prim_vector_45set_33(i64 %Qy7$ccstack, i64 %arg8031, i64 %a7019); call prim_vector_45set_33
  %arg8034 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7182 = call i64 @prim_vector_45set_33(i64 %teP$tmp6859, i64 %arg8034, i64 %a7020); call prim_vector_45set_33
  %cloptr19795 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr19797 = getelementptr inbounds i64, i64* %cloptr19795, i64 1                  ; &eptr19797[1]
  %eptr19798 = getelementptr inbounds i64, i64* %cloptr19795, i64 2                  ; &eptr19798[2]
  store i64 %cont7178, i64* %eptr19797                                               ; *eptr19797 = %cont7178
  store i64 %Sc5$next_45cc, i64* %eptr19798                                          ; *eptr19798 = %Sc5$next_45cc
  %eptr19796 = getelementptr inbounds i64, i64* %cloptr19795, i64 0                  ; &cloptr19795[0]
  %f19799 = ptrtoint void(i64,i64)* @lam10483 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19799, i64* %eptr19796                                                 ; store fptr
  %arg8038 = ptrtoint i64* %cloptr19795 to i64                                       ; closure cast; i64* -> i64
  %arg8037 = add i64 0, 0                                                            ; quoted ()
  %rva9281 = add i64 0, 0                                                            ; quoted ()
  %rva9280 = call i64 @prim_cons(i64 %retprim7182, i64 %rva9281)                     ; call prim_cons
  %rva9279 = call i64 @prim_cons(i64 %arg8037, i64 %rva9280)                         ; call prim_cons
  %cloptr19800 = inttoptr i64 %arg8038 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19801 = getelementptr inbounds i64, i64* %cloptr19800, i64 0                 ; &cloptr19800[0]
  %f19803 = load i64, i64* %i0ptr19801, align 8                                      ; load; *i0ptr19801
  %fptr19802 = inttoptr i64 %f19803 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19802(i64 %arg8038, i64 %rva9279)                   ; tail call
  ret void
}


define void @lam10483(i64 %env10484, i64 %rvp9278) {
  %envptr19804 = inttoptr i64 %env10484 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19805 = getelementptr inbounds i64, i64* %envptr19804, i64 2                ; &envptr19804[2]
  %Sc5$next_45cc = load i64, i64* %envptr19805, align 8                              ; load; *envptr19805
  %envptr19806 = inttoptr i64 %env10484 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19807 = getelementptr inbounds i64, i64* %envptr19806, i64 1                ; &envptr19806[1]
  %cont7178 = load i64, i64* %envptr19807, align 8                                   ; load; *envptr19807
  %_957181 = call i64 @prim_car(i64 %rvp9278)                                        ; call prim_car
  %rvp9277 = call i64 @prim_cdr(i64 %rvp9278)                                        ; call prim_cdr
  %uVR$_956879 = call i64 @prim_car(i64 %rvp9277)                                    ; call prim_car
  %na9273 = call i64 @prim_cdr(i64 %rvp9277)                                         ; call prim_cdr
  %rva9276 = add i64 0, 0                                                            ; quoted ()
  %rva9275 = call i64 @prim_cons(i64 %Sc5$next_45cc, i64 %rva9276)                   ; call prim_cons
  %rva9274 = call i64 @prim_cons(i64 %cont7178, i64 %rva9275)                        ; call prim_cons
  %cloptr19808 = inttoptr i64 %Sc5$next_45cc to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr19809 = getelementptr inbounds i64, i64* %cloptr19808, i64 0                 ; &cloptr19808[0]
  %f19811 = load i64, i64* %i0ptr19809, align 8                                      ; load; *i0ptr19809
  %fptr19810 = inttoptr i64 %f19811 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19810(i64 %Sc5$next_45cc, i64 %rva9274)             ; tail call
  ret void
}


define void @lam10471(i64 %env10472, i64 %rvp9305) {
  %envptr19812 = inttoptr i64 %env10472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19813 = getelementptr inbounds i64, i64* %envptr19812, i64 1                ; &envptr19812[1]
  %izc$fail = load i64, i64* %envptr19813, align 8                                   ; load; *envptr19813
  %cont7188 = call i64 @prim_car(i64 %rvp9305)                                       ; call prim_car
  %rvp9304 = call i64 @prim_cdr(i64 %rvp9305)                                        ; call prim_cdr
  %TdT$b = call i64 @prim_car(i64 %rvp9304)                                          ; call prim_car
  %na9298 = call i64 @prim_cdr(i64 %rvp9304)                                         ; call prim_cdr
  %cmp19814 = icmp eq i64 %TdT$b, 15                                                 ; false?
  br i1 %cmp19814, label %else19816, label %then19815                                ; if

then19815:
  %arg8043 = add i64 0, 0                                                            ; quoted ()
  %arg8042 = call i64 @const_init_true()                                             ; quoted #t
  %rva9301 = add i64 0, 0                                                            ; quoted ()
  %rva9300 = call i64 @prim_cons(i64 %arg8042, i64 %rva9301)                         ; call prim_cons
  %rva9299 = call i64 @prim_cons(i64 %arg8043, i64 %rva9300)                         ; call prim_cons
  %cloptr19817 = inttoptr i64 %cont7188 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19818 = getelementptr inbounds i64, i64* %cloptr19817, i64 0                 ; &cloptr19817[0]
  %f19820 = load i64, i64* %i0ptr19818, align 8                                      ; load; *i0ptr19818
  %fptr19819 = inttoptr i64 %f19820 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19819(i64 %cont7188, i64 %rva9299)                  ; tail call
  ret void

else19816:
  %arg8045 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7021 = call i64 @prim_vector_45ref(i64 %izc$fail, i64 %arg8045)                  ; call prim_vector_45ref
  %rva9303 = add i64 0, 0                                                            ; quoted ()
  %rva9302 = call i64 @prim_cons(i64 %cont7188, i64 %rva9303)                        ; call prim_cons
  %cloptr19821 = inttoptr i64 %a7021 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19822 = getelementptr inbounds i64, i64* %cloptr19821, i64 0                 ; &cloptr19821[0]
  %f19824 = load i64, i64* %i0ptr19822, align 8                                      ; load; *i0ptr19822
  %fptr19823 = inttoptr i64 %f19824 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19823(i64 %a7021, i64 %rva9302)                     ; tail call
  ret void
}


define void @lam10464(i64 %env10465, i64 %rvp9481) {
  %envptr19825 = inttoptr i64 %env10465 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19826 = getelementptr inbounds i64, i64* %envptr19825, i64 4                ; &envptr19825[4]
  %NWr$_37do_45wind = load i64, i64* %envptr19826, align 8                           ; load; *envptr19826
  %envptr19827 = inttoptr i64 %env10465 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19828 = getelementptr inbounds i64, i64* %envptr19827, i64 3                ; &envptr19827[3]
  %Qy7$ccstack = load i64, i64* %envptr19828, align 8                                ; load; *envptr19828
  %envptr19829 = inttoptr i64 %env10465 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19830 = getelementptr inbounds i64, i64* %envptr19829, i64 2                ; &envptr19829[2]
  %izc$fail = load i64, i64* %envptr19830, align 8                                   ; load; *envptr19830
  %envptr19831 = inttoptr i64 %env10465 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19832 = getelementptr inbounds i64, i64* %envptr19831, i64 1                ; &envptr19831[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19832, align 8                        ; load; *envptr19832
  %cont7189 = call i64 @prim_car(i64 %rvp9481)                                       ; call prim_car
  %rvp9480 = call i64 @prim_cdr(i64 %rvp9481)                                        ; call prim_cdr
  %M27$lst = call i64 @prim_car(i64 %rvp9480)                                        ; call prim_car
  %na9307 = call i64 @prim_cdr(i64 %rvp9480)                                         ; call prim_cdr
  %arg8050 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %Azg$lst = call i64 @prim_make_45vector(i64 %arg8050, i64 %M27$lst)                ; call prim_make_45vector
  %cloptr19833 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr19835 = getelementptr inbounds i64, i64* %cloptr19833, i64 1                  ; &eptr19835[1]
  %eptr19836 = getelementptr inbounds i64, i64* %cloptr19833, i64 2                  ; &eptr19836[2]
  store i64 %Ey2$_37wind_45stack, i64* %eptr19835                                    ; *eptr19835 = %Ey2$_37wind_45stack
  store i64 %NWr$_37do_45wind, i64* %eptr19836                                       ; *eptr19836 = %NWr$_37do_45wind
  %eptr19834 = getelementptr inbounds i64, i64* %cloptr19833, i64 0                  ; &cloptr19833[0]
  %f19837 = ptrtoint void(i64,i64)* @lam10461 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19837, i64* %eptr19834                                                 ; store fptr
  %arg8053 = ptrtoint i64* %cloptr19833 to i64                                       ; closure cast; i64* -> i64
  %cloptr19838 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19840 = getelementptr inbounds i64, i64* %cloptr19838, i64 1                  ; &eptr19840[1]
  %eptr19841 = getelementptr inbounds i64, i64* %cloptr19838, i64 2                  ; &eptr19841[2]
  %eptr19842 = getelementptr inbounds i64, i64* %cloptr19838, i64 3                  ; &eptr19842[3]
  %eptr19843 = getelementptr inbounds i64, i64* %cloptr19838, i64 4                  ; &eptr19843[4]
  store i64 %izc$fail, i64* %eptr19840                                               ; *eptr19840 = %izc$fail
  store i64 %Qy7$ccstack, i64* %eptr19841                                            ; *eptr19841 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr19842                                                ; *eptr19842 = %Azg$lst
  store i64 %cont7189, i64* %eptr19843                                               ; *eptr19843 = %cont7189
  %eptr19839 = getelementptr inbounds i64, i64* %cloptr19838, i64 0                  ; &cloptr19838[0]
  %f19844 = ptrtoint void(i64,i64)* @lam10438 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19844, i64* %eptr19839                                                 ; store fptr
  %arg8052 = ptrtoint i64* %cloptr19838 to i64                                       ; closure cast; i64* -> i64
  %cloptr19845 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19847 = getelementptr inbounds i64, i64* %cloptr19845, i64 1                  ; &eptr19847[1]
  %eptr19848 = getelementptr inbounds i64, i64* %cloptr19845, i64 2                  ; &eptr19848[2]
  %eptr19849 = getelementptr inbounds i64, i64* %cloptr19845, i64 3                  ; &eptr19849[3]
  %eptr19850 = getelementptr inbounds i64, i64* %cloptr19845, i64 4                  ; &eptr19850[4]
  store i64 %izc$fail, i64* %eptr19847                                               ; *eptr19847 = %izc$fail
  store i64 %Qy7$ccstack, i64* %eptr19848                                            ; *eptr19848 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr19849                                                ; *eptr19849 = %Azg$lst
  store i64 %cont7189, i64* %eptr19850                                               ; *eptr19850 = %cont7189
  %eptr19846 = getelementptr inbounds i64, i64* %cloptr19845, i64 0                  ; &cloptr19845[0]
  %f19851 = ptrtoint void(i64,i64)* @lam10388 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19851, i64* %eptr19846                                                 ; store fptr
  %arg8051 = ptrtoint i64* %cloptr19845 to i64                                       ; closure cast; i64* -> i64
  %rva9479 = add i64 0, 0                                                            ; quoted ()
  %rva9478 = call i64 @prim_cons(i64 %arg8051, i64 %rva9479)                         ; call prim_cons
  %rva9477 = call i64 @prim_cons(i64 %arg8052, i64 %rva9478)                         ; call prim_cons
  %cloptr19852 = inttoptr i64 %arg8053 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19853 = getelementptr inbounds i64, i64* %cloptr19852, i64 0                 ; &cloptr19852[0]
  %f19855 = load i64, i64* %i0ptr19853, align 8                                      ; load; *i0ptr19853
  %fptr19854 = inttoptr i64 %f19855 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19854(i64 %arg8053, i64 %rva9477)                   ; tail call
  ret void
}


define void @lam10461(i64 %env10462, i64 %rvp9352) {
  %envptr19856 = inttoptr i64 %env10462 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19857 = getelementptr inbounds i64, i64* %envptr19856, i64 2                ; &envptr19856[2]
  %NWr$_37do_45wind = load i64, i64* %envptr19857, align 8                           ; load; *envptr19857
  %envptr19858 = inttoptr i64 %env10462 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19859 = getelementptr inbounds i64, i64* %envptr19858, i64 1                ; &envptr19858[1]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19859, align 8                        ; load; *envptr19859
  %cont7207 = call i64 @prim_car(i64 %rvp9352)                                       ; call prim_car
  %rvp9351 = call i64 @prim_cdr(i64 %rvp9352)                                        ; call prim_cdr
  %orr$_37k = call i64 @prim_car(i64 %rvp9351)                                       ; call prim_car
  %na9309 = call i64 @prim_cdr(i64 %rvp9351)                                         ; call prim_cdr
  %arg8054 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %ZBv$_37saved_45stack = call i64 @prim_vector_45ref(i64 %Ey2$_37wind_45stack, i64 %arg8054); call prim_vector_45ref
  %cloptr19860 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr19862 = getelementptr inbounds i64, i64* %cloptr19860, i64 1                  ; &eptr19862[1]
  store i64 %cont7207, i64* %eptr19862                                               ; *eptr19862 = %cont7207
  %eptr19861 = getelementptr inbounds i64, i64* %cloptr19860, i64 0                  ; &cloptr19860[0]
  %f19863 = ptrtoint void(i64,i64)* @lam10458 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19863, i64* %eptr19861                                                 ; store fptr
  %arg8058 = ptrtoint i64* %cloptr19860 to i64                                       ; closure cast; i64* -> i64
  %arg8057 = add i64 0, 0                                                            ; quoted ()
  %cloptr19864 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19866 = getelementptr inbounds i64, i64* %cloptr19864, i64 1                  ; &eptr19866[1]
  %eptr19867 = getelementptr inbounds i64, i64* %cloptr19864, i64 2                  ; &eptr19867[2]
  %eptr19868 = getelementptr inbounds i64, i64* %cloptr19864, i64 3                  ; &eptr19868[3]
  %eptr19869 = getelementptr inbounds i64, i64* %cloptr19864, i64 4                  ; &eptr19869[4]
  store i64 %orr$_37k, i64* %eptr19866                                               ; *eptr19866 = %orr$_37k
  store i64 %Ey2$_37wind_45stack, i64* %eptr19867                                    ; *eptr19867 = %Ey2$_37wind_45stack
  store i64 %ZBv$_37saved_45stack, i64* %eptr19868                                   ; *eptr19868 = %ZBv$_37saved_45stack
  store i64 %NWr$_37do_45wind, i64* %eptr19869                                       ; *eptr19869 = %NWr$_37do_45wind
  %eptr19865 = getelementptr inbounds i64, i64* %cloptr19864, i64 0                  ; &cloptr19864[0]
  %f19870 = ptrtoint void(i64,i64)* @lam10451 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19870, i64* %eptr19865                                                 ; store fptr
  %arg8056 = ptrtoint i64* %cloptr19864 to i64                                       ; closure cast; i64* -> i64
  %rva9350 = add i64 0, 0                                                            ; quoted ()
  %rva9349 = call i64 @prim_cons(i64 %arg8056, i64 %rva9350)                         ; call prim_cons
  %rva9348 = call i64 @prim_cons(i64 %arg8057, i64 %rva9349)                         ; call prim_cons
  %cloptr19871 = inttoptr i64 %arg8058 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19872 = getelementptr inbounds i64, i64* %cloptr19871, i64 0                 ; &cloptr19871[0]
  %f19874 = load i64, i64* %i0ptr19872, align 8                                      ; load; *i0ptr19872
  %fptr19873 = inttoptr i64 %f19874 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19873(i64 %arg8058, i64 %rva9348)                   ; tail call
  ret void
}


define void @lam10458(i64 %env10459, i64 %rvp9323) {
  %envptr19875 = inttoptr i64 %env10459 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19876 = getelementptr inbounds i64, i64* %envptr19875, i64 1                ; &envptr19875[1]
  %cont7207 = load i64, i64* %envptr19876, align 8                                   ; load; *envptr19876
  %_957208 = call i64 @prim_car(i64 %rvp9323)                                        ; call prim_car
  %rvp9322 = call i64 @prim_cdr(i64 %rvp9323)                                        ; call prim_cdr
  %a7024 = call i64 @prim_car(i64 %rvp9322)                                          ; call prim_car
  %na9311 = call i64 @prim_cdr(i64 %rvp9322)                                         ; call prim_cdr
  %cloptr19877 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19878 = getelementptr inbounds i64, i64* %cloptr19877, i64 0                  ; &cloptr19877[0]
  %f19879 = ptrtoint void(i64,i64)* @lam10456 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19879, i64* %eptr19878                                                 ; store fptr
  %arg8061 = ptrtoint i64* %cloptr19877 to i64                                       ; closure cast; i64* -> i64
  %rva9321 = add i64 0, 0                                                            ; quoted ()
  %rva9320 = call i64 @prim_cons(i64 %a7024, i64 %rva9321)                           ; call prim_cons
  %rva9319 = call i64 @prim_cons(i64 %cont7207, i64 %rva9320)                        ; call prim_cons
  %cloptr19880 = inttoptr i64 %arg8061 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19881 = getelementptr inbounds i64, i64* %cloptr19880, i64 0                 ; &cloptr19880[0]
  %f19883 = load i64, i64* %i0ptr19881, align 8                                      ; load; *i0ptr19881
  %fptr19882 = inttoptr i64 %f19883 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19882(i64 %arg8061, i64 %rva9319)                   ; tail call
  ret void
}


define void @lam10456(i64 %env10457, i64 %rvp9318) {
  %cont7209 = call i64 @prim_car(i64 %rvp9318)                                       ; call prim_car
  %rvp9317 = call i64 @prim_cdr(i64 %rvp9318)                                        ; call prim_cdr
  %ySs$u = call i64 @prim_car(i64 %rvp9317)                                          ; call prim_car
  %na9313 = call i64 @prim_cdr(i64 %rvp9317)                                         ; call prim_cdr
  %rva9316 = add i64 0, 0                                                            ; quoted ()
  %rva9315 = call i64 @prim_cons(i64 %ySs$u, i64 %rva9316)                           ; call prim_cons
  %rva9314 = call i64 @prim_cons(i64 %cont7209, i64 %rva9315)                        ; call prim_cons
  %cloptr19884 = inttoptr i64 %ySs$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19885 = getelementptr inbounds i64, i64* %cloptr19884, i64 0                 ; &cloptr19884[0]
  %f19887 = load i64, i64* %i0ptr19885, align 8                                      ; load; *i0ptr19885
  %fptr19886 = inttoptr i64 %f19887 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19886(i64 %ySs$u, i64 %rva9314)                     ; tail call
  ret void
}


define void @lam10451(i64 %env10452, i64 %rvp9347) {
  %envptr19888 = inttoptr i64 %env10452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19889 = getelementptr inbounds i64, i64* %envptr19888, i64 4                ; &envptr19888[4]
  %NWr$_37do_45wind = load i64, i64* %envptr19889, align 8                           ; load; *envptr19889
  %envptr19890 = inttoptr i64 %env10452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19891 = getelementptr inbounds i64, i64* %envptr19890, i64 3                ; &envptr19890[3]
  %ZBv$_37saved_45stack = load i64, i64* %envptr19891, align 8                       ; load; *envptr19891
  %envptr19892 = inttoptr i64 %env10452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19893 = getelementptr inbounds i64, i64* %envptr19892, i64 2                ; &envptr19892[2]
  %Ey2$_37wind_45stack = load i64, i64* %envptr19893, align 8                        ; load; *envptr19893
  %envptr19894 = inttoptr i64 %env10452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19895 = getelementptr inbounds i64, i64* %envptr19894, i64 1                ; &envptr19894[1]
  %orr$_37k = load i64, i64* %envptr19895, align 8                                   ; load; *envptr19895
  %cont7210 = call i64 @prim_car(i64 %rvp9347)                                       ; call prim_car
  %rvp9346 = call i64 @prim_cdr(i64 %rvp9347)                                        ; call prim_cdr
  %CSG$_37x = call i64 @prim_car(i64 %rvp9346)                                       ; call prim_car
  %na9325 = call i64 @prim_cdr(i64 %rvp9346)                                         ; call prim_cdr
  %arg8065 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7022 = call i64 @prim_vector_45ref(i64 %Ey2$_37wind_45stack, i64 %arg8065)       ; call prim_vector_45ref
  %a7023 = call i64 @prim_eq_63(i64 %ZBv$_37saved_45stack, i64 %a7022)               ; call prim_eq_63
  %cmp19896 = icmp eq i64 %a7023, 15                                                 ; false?
  br i1 %cmp19896, label %else19898, label %then19897                                ; if

then19897:
  %retprim7212 = call i64 @prim_void()                                               ; call prim_void
  %cloptr19899 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19901 = getelementptr inbounds i64, i64* %cloptr19899, i64 1                  ; &eptr19901[1]
  %eptr19902 = getelementptr inbounds i64, i64* %cloptr19899, i64 2                  ; &eptr19902[2]
  %eptr19903 = getelementptr inbounds i64, i64* %cloptr19899, i64 3                  ; &eptr19903[3]
  store i64 %orr$_37k, i64* %eptr19901                                               ; *eptr19901 = %orr$_37k
  store i64 %cont7210, i64* %eptr19902                                               ; *eptr19902 = %cont7210
  store i64 %CSG$_37x, i64* %eptr19903                                               ; *eptr19903 = %CSG$_37x
  %eptr19900 = getelementptr inbounds i64, i64* %cloptr19899, i64 0                  ; &cloptr19899[0]
  %f19904 = ptrtoint void(i64,i64)* @lam10444 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19904, i64* %eptr19900                                                 ; store fptr
  %arg8071 = ptrtoint i64* %cloptr19899 to i64                                       ; closure cast; i64* -> i64
  %arg8070 = add i64 0, 0                                                            ; quoted ()
  %rva9335 = add i64 0, 0                                                            ; quoted ()
  %rva9334 = call i64 @prim_cons(i64 %retprim7212, i64 %rva9335)                     ; call prim_cons
  %rva9333 = call i64 @prim_cons(i64 %arg8070, i64 %rva9334)                         ; call prim_cons
  %cloptr19905 = inttoptr i64 %arg8071 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19906 = getelementptr inbounds i64, i64* %cloptr19905, i64 0                 ; &cloptr19905[0]
  %f19908 = load i64, i64* %i0ptr19906, align 8                                      ; load; *i0ptr19906
  %fptr19907 = inttoptr i64 %f19908 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19907(i64 %arg8071, i64 %rva9333)                   ; tail call
  ret void

else19898:
  %cloptr19909 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr19911 = getelementptr inbounds i64, i64* %cloptr19909, i64 1                  ; &eptr19911[1]
  %eptr19912 = getelementptr inbounds i64, i64* %cloptr19909, i64 2                  ; &eptr19912[2]
  %eptr19913 = getelementptr inbounds i64, i64* %cloptr19909, i64 3                  ; &eptr19913[3]
  store i64 %orr$_37k, i64* %eptr19911                                               ; *eptr19911 = %orr$_37k
  store i64 %cont7210, i64* %eptr19912                                               ; *eptr19912 = %cont7210
  store i64 %CSG$_37x, i64* %eptr19913                                               ; *eptr19913 = %CSG$_37x
  %eptr19910 = getelementptr inbounds i64, i64* %cloptr19909, i64 0                  ; &cloptr19909[0]
  %f19914 = ptrtoint void(i64,i64)* @lam10448 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19914, i64* %eptr19910                                                 ; store fptr
  %arg8076 = ptrtoint i64* %cloptr19909 to i64                                       ; closure cast; i64* -> i64
  %rva9345 = add i64 0, 0                                                            ; quoted ()
  %rva9344 = call i64 @prim_cons(i64 %ZBv$_37saved_45stack, i64 %rva9345)            ; call prim_cons
  %rva9343 = call i64 @prim_cons(i64 %arg8076, i64 %rva9344)                         ; call prim_cons
  %cloptr19915 = inttoptr i64 %NWr$_37do_45wind to i64*                              ; closure/env cast; i64 -> i64*
  %i0ptr19916 = getelementptr inbounds i64, i64* %cloptr19915, i64 0                 ; &cloptr19915[0]
  %f19918 = load i64, i64* %i0ptr19916, align 8                                      ; load; *i0ptr19916
  %fptr19917 = inttoptr i64 %f19918 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19917(i64 %NWr$_37do_45wind, i64 %rva9343)          ; tail call
  ret void
}


define void @lam10448(i64 %env10449, i64 %rvp9342) {
  %envptr19919 = inttoptr i64 %env10449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19920 = getelementptr inbounds i64, i64* %envptr19919, i64 3                ; &envptr19919[3]
  %CSG$_37x = load i64, i64* %envptr19920, align 8                                   ; load; *envptr19920
  %envptr19921 = inttoptr i64 %env10449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19922 = getelementptr inbounds i64, i64* %envptr19921, i64 2                ; &envptr19921[2]
  %cont7210 = load i64, i64* %envptr19922, align 8                                   ; load; *envptr19922
  %envptr19923 = inttoptr i64 %env10449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19924 = getelementptr inbounds i64, i64* %envptr19923, i64 1                ; &envptr19923[1]
  %orr$_37k = load i64, i64* %envptr19924, align 8                                   ; load; *envptr19924
  %_957211 = call i64 @prim_car(i64 %rvp9342)                                        ; call prim_car
  %rvp9341 = call i64 @prim_cdr(i64 %rvp9342)                                        ; call prim_cdr
  %znj$_956880 = call i64 @prim_car(i64 %rvp9341)                                    ; call prim_car
  %na9337 = call i64 @prim_cdr(i64 %rvp9341)                                         ; call prim_cdr
  %rva9340 = add i64 0, 0                                                            ; quoted ()
  %rva9339 = call i64 @prim_cons(i64 %CSG$_37x, i64 %rva9340)                        ; call prim_cons
  %rva9338 = call i64 @prim_cons(i64 %cont7210, i64 %rva9339)                        ; call prim_cons
  %cloptr19925 = inttoptr i64 %orr$_37k to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19926 = getelementptr inbounds i64, i64* %cloptr19925, i64 0                 ; &cloptr19925[0]
  %f19928 = load i64, i64* %i0ptr19926, align 8                                      ; load; *i0ptr19926
  %fptr19927 = inttoptr i64 %f19928 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19927(i64 %orr$_37k, i64 %rva9338)                  ; tail call
  ret void
}


define void @lam10444(i64 %env10445, i64 %rvp9332) {
  %envptr19929 = inttoptr i64 %env10445 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19930 = getelementptr inbounds i64, i64* %envptr19929, i64 3                ; &envptr19929[3]
  %CSG$_37x = load i64, i64* %envptr19930, align 8                                   ; load; *envptr19930
  %envptr19931 = inttoptr i64 %env10445 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19932 = getelementptr inbounds i64, i64* %envptr19931, i64 2                ; &envptr19931[2]
  %cont7210 = load i64, i64* %envptr19932, align 8                                   ; load; *envptr19932
  %envptr19933 = inttoptr i64 %env10445 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19934 = getelementptr inbounds i64, i64* %envptr19933, i64 1                ; &envptr19933[1]
  %orr$_37k = load i64, i64* %envptr19934, align 8                                   ; load; *envptr19934
  %_957211 = call i64 @prim_car(i64 %rvp9332)                                        ; call prim_car
  %rvp9331 = call i64 @prim_cdr(i64 %rvp9332)                                        ; call prim_cdr
  %znj$_956880 = call i64 @prim_car(i64 %rvp9331)                                    ; call prim_car
  %na9327 = call i64 @prim_cdr(i64 %rvp9331)                                         ; call prim_cdr
  %rva9330 = add i64 0, 0                                                            ; quoted ()
  %rva9329 = call i64 @prim_cons(i64 %CSG$_37x, i64 %rva9330)                        ; call prim_cons
  %rva9328 = call i64 @prim_cons(i64 %cont7210, i64 %rva9329)                        ; call prim_cons
  %cloptr19935 = inttoptr i64 %orr$_37k to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19936 = getelementptr inbounds i64, i64* %cloptr19935, i64 0                 ; &cloptr19935[0]
  %f19938 = load i64, i64* %i0ptr19936, align 8                                      ; load; *i0ptr19936
  %fptr19937 = inttoptr i64 %f19938 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19937(i64 %orr$_37k, i64 %rva9328)                  ; tail call
  ret void
}


define void @lam10438(i64 %env10439, i64 %rvp9414) {
  %envptr19939 = inttoptr i64 %env10439 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19940 = getelementptr inbounds i64, i64* %envptr19939, i64 4                ; &envptr19939[4]
  %cont7189 = load i64, i64* %envptr19940, align 8                                   ; load; *envptr19940
  %envptr19941 = inttoptr i64 %env10439 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19942 = getelementptr inbounds i64, i64* %envptr19941, i64 3                ; &envptr19941[3]
  %Azg$lst = load i64, i64* %envptr19942, align 8                                    ; load; *envptr19942
  %envptr19943 = inttoptr i64 %env10439 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19944 = getelementptr inbounds i64, i64* %envptr19943, i64 2                ; &envptr19943[2]
  %Qy7$ccstack = load i64, i64* %envptr19944, align 8                                ; load; *envptr19944
  %envptr19945 = inttoptr i64 %env10439 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19946 = getelementptr inbounds i64, i64* %envptr19945, i64 1                ; &envptr19945[1]
  %izc$fail = load i64, i64* %envptr19946, align 8                                   ; load; *envptr19946
  %_957190 = call i64 @prim_car(i64 %rvp9414)                                        ; call prim_car
  %rvp9413 = call i64 @prim_cdr(i64 %rvp9414)                                        ; call prim_cdr
  %G57$cc = call i64 @prim_car(i64 %rvp9413)                                         ; call prim_car
  %na9354 = call i64 @prim_cdr(i64 %rvp9413)                                         ; call prim_cdr
  %arg8081 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7025 = call i64 @prim_vector_45ref(i64 %Azg$lst, i64 %arg8081)                   ; call prim_vector_45ref
  %a7026 = call i64 @prim_null_63(i64 %a7025)                                        ; call prim_null_63
  %cmp19947 = icmp eq i64 %a7026, 15                                                 ; false?
  br i1 %cmp19947, label %else19949, label %then19948                                ; if

then19948:
  %arg8084 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7027 = call i64 @prim_vector_45ref(i64 %izc$fail, i64 %arg8084)                  ; call prim_vector_45ref
  %rva9356 = add i64 0, 0                                                            ; quoted ()
  %rva9355 = call i64 @prim_cons(i64 %cont7189, i64 %rva9356)                        ; call prim_cons
  %cloptr19950 = inttoptr i64 %a7027 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr19951 = getelementptr inbounds i64, i64* %cloptr19950, i64 0                 ; &cloptr19950[0]
  %f19953 = load i64, i64* %i0ptr19951, align 8                                      ; load; *i0ptr19951
  %fptr19952 = inttoptr i64 %f19953 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19952(i64 %a7027, i64 %rva9355)                     ; tail call
  ret void

else19949:
  %arg8088 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7028 = call i64 @prim_vector_45ref(i64 %Azg$lst, i64 %arg8088)                   ; call prim_vector_45ref
  %retprim7206 = call i64 @prim_car(i64 %a7028)                                      ; call prim_car
  %cloptr19954 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr19956 = getelementptr inbounds i64, i64* %cloptr19954, i64 1                  ; &eptr19956[1]
  %eptr19957 = getelementptr inbounds i64, i64* %cloptr19954, i64 2                  ; &eptr19957[2]
  %eptr19958 = getelementptr inbounds i64, i64* %cloptr19954, i64 3                  ; &eptr19958[3]
  %eptr19959 = getelementptr inbounds i64, i64* %cloptr19954, i64 4                  ; &eptr19959[4]
  store i64 %G57$cc, i64* %eptr19956                                                 ; *eptr19956 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr19957                                            ; *eptr19957 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr19958                                                ; *eptr19958 = %Azg$lst
  store i64 %cont7189, i64* %eptr19959                                               ; *eptr19959 = %cont7189
  %eptr19955 = getelementptr inbounds i64, i64* %cloptr19954, i64 0                  ; &cloptr19954[0]
  %f19960 = ptrtoint void(i64,i64)* @lam10434 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19960, i64* %eptr19955                                                 ; store fptr
  %arg8093 = ptrtoint i64* %cloptr19954 to i64                                       ; closure cast; i64* -> i64
  %arg8092 = add i64 0, 0                                                            ; quoted ()
  %rva9412 = add i64 0, 0                                                            ; quoted ()
  %rva9411 = call i64 @prim_cons(i64 %retprim7206, i64 %rva9412)                     ; call prim_cons
  %rva9410 = call i64 @prim_cons(i64 %arg8092, i64 %rva9411)                         ; call prim_cons
  %cloptr19961 = inttoptr i64 %arg8093 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19962 = getelementptr inbounds i64, i64* %cloptr19961, i64 0                 ; &cloptr19961[0]
  %f19964 = load i64, i64* %i0ptr19962, align 8                                      ; load; *i0ptr19962
  %fptr19963 = inttoptr i64 %f19964 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19963(i64 %arg8093, i64 %rva9410)                   ; tail call
  ret void
}


define void @lam10434(i64 %env10435, i64 %rvp9409) {
  %envptr19965 = inttoptr i64 %env10435 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19966 = getelementptr inbounds i64, i64* %envptr19965, i64 4                ; &envptr19965[4]
  %cont7189 = load i64, i64* %envptr19966, align 8                                   ; load; *envptr19966
  %envptr19967 = inttoptr i64 %env10435 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19968 = getelementptr inbounds i64, i64* %envptr19967, i64 3                ; &envptr19967[3]
  %Azg$lst = load i64, i64* %envptr19968, align 8                                    ; load; *envptr19968
  %envptr19969 = inttoptr i64 %env10435 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19970 = getelementptr inbounds i64, i64* %envptr19969, i64 2                ; &envptr19969[2]
  %Qy7$ccstack = load i64, i64* %envptr19970, align 8                                ; load; *envptr19970
  %envptr19971 = inttoptr i64 %env10435 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19972 = getelementptr inbounds i64, i64* %envptr19971, i64 1                ; &envptr19971[1]
  %G57$cc = load i64, i64* %envptr19972, align 8                                     ; load; *envptr19972
  %_957191 = call i64 @prim_car(i64 %rvp9409)                                        ; call prim_car
  %rvp9408 = call i64 @prim_cdr(i64 %rvp9409)                                        ; call prim_cdr
  %xNv$head = call i64 @prim_car(i64 %rvp9408)                                       ; call prim_car
  %na9358 = call i64 @prim_cdr(i64 %rvp9408)                                         ; call prim_cdr
  %cloptr19973 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr19974 = getelementptr inbounds i64, i64* %cloptr19973, i64 0                  ; &cloptr19973[0]
  %f19975 = ptrtoint void(i64,i64)* @lam10432 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19975, i64* %eptr19974                                                 ; store fptr
  %arg8095 = ptrtoint i64* %cloptr19973 to i64                                       ; closure cast; i64* -> i64
  %cloptr19976 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr19978 = getelementptr inbounds i64, i64* %cloptr19976, i64 1                  ; &eptr19978[1]
  %eptr19979 = getelementptr inbounds i64, i64* %cloptr19976, i64 2                  ; &eptr19979[2]
  %eptr19980 = getelementptr inbounds i64, i64* %cloptr19976, i64 3                  ; &eptr19980[3]
  %eptr19981 = getelementptr inbounds i64, i64* %cloptr19976, i64 4                  ; &eptr19981[4]
  %eptr19982 = getelementptr inbounds i64, i64* %cloptr19976, i64 5                  ; &eptr19982[5]
  store i64 %G57$cc, i64* %eptr19978                                                 ; *eptr19978 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr19979                                            ; *eptr19979 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr19980                                                ; *eptr19980 = %Azg$lst
  store i64 %cont7189, i64* %eptr19981                                               ; *eptr19981 = %cont7189
  store i64 %xNv$head, i64* %eptr19982                                               ; *eptr19982 = %xNv$head
  %eptr19977 = getelementptr inbounds i64, i64* %cloptr19976, i64 0                  ; &cloptr19976[0]
  %f19983 = ptrtoint void(i64,i64)* @lam10428 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f19983, i64* %eptr19977                                                 ; store fptr
  %arg8094 = ptrtoint i64* %cloptr19976 to i64                                       ; closure cast; i64* -> i64
  %rva9407 = add i64 0, 0                                                            ; quoted ()
  %rva9406 = call i64 @prim_cons(i64 %arg8094, i64 %rva9407)                         ; call prim_cons
  %cloptr19984 = inttoptr i64 %arg8095 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr19985 = getelementptr inbounds i64, i64* %cloptr19984, i64 0                 ; &cloptr19984[0]
  %f19987 = load i64, i64* %i0ptr19985, align 8                                      ; load; *i0ptr19985
  %fptr19986 = inttoptr i64 %f19987 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19986(i64 %arg8095, i64 %rva9406)                   ; tail call
  ret void
}


define void @lam10432(i64 %env10433, i64 %PbK$lst7205) {
  %cont7204 = call i64 @prim_car(i64 %PbK$lst7205)                                   ; call prim_car
  %PbK$lst = call i64 @prim_cdr(i64 %PbK$lst7205)                                    ; call prim_cdr
  %arg8099 = add i64 0, 0                                                            ; quoted ()
  %rva9361 = add i64 0, 0                                                            ; quoted ()
  %rva9360 = call i64 @prim_cons(i64 %PbK$lst, i64 %rva9361)                         ; call prim_cons
  %rva9359 = call i64 @prim_cons(i64 %arg8099, i64 %rva9360)                         ; call prim_cons
  %cloptr19988 = inttoptr i64 %cont7204 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr19989 = getelementptr inbounds i64, i64* %cloptr19988, i64 0                 ; &cloptr19988[0]
  %f19991 = load i64, i64* %i0ptr19989, align 8                                      ; load; *i0ptr19989
  %fptr19990 = inttoptr i64 %f19991 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr19990(i64 %cont7204, i64 %rva9359)                  ; tail call
  ret void
}


define void @lam10428(i64 %env10429, i64 %rvp9405) {
  %envptr19992 = inttoptr i64 %env10429 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19993 = getelementptr inbounds i64, i64* %envptr19992, i64 5                ; &envptr19992[5]
  %xNv$head = load i64, i64* %envptr19993, align 8                                   ; load; *envptr19993
  %envptr19994 = inttoptr i64 %env10429 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19995 = getelementptr inbounds i64, i64* %envptr19994, i64 4                ; &envptr19994[4]
  %cont7189 = load i64, i64* %envptr19995, align 8                                   ; load; *envptr19995
  %envptr19996 = inttoptr i64 %env10429 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19997 = getelementptr inbounds i64, i64* %envptr19996, i64 3                ; &envptr19996[3]
  %Azg$lst = load i64, i64* %envptr19997, align 8                                    ; load; *envptr19997
  %envptr19998 = inttoptr i64 %env10429 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr19999 = getelementptr inbounds i64, i64* %envptr19998, i64 2                ; &envptr19998[2]
  %Qy7$ccstack = load i64, i64* %envptr19999, align 8                                ; load; *envptr19999
  %envptr20000 = inttoptr i64 %env10429 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20001 = getelementptr inbounds i64, i64* %envptr20000, i64 1                ; &envptr20000[1]
  %G57$cc = load i64, i64* %envptr20001, align 8                                     ; load; *envptr20001
  %_957202 = call i64 @prim_car(i64 %rvp9405)                                        ; call prim_car
  %rvp9404 = call i64 @prim_cdr(i64 %rvp9405)                                        ; call prim_cdr
  %a7029 = call i64 @prim_car(i64 %rvp9404)                                          ; call prim_car
  %na9363 = call i64 @prim_cdr(i64 %rvp9404)                                         ; call prim_cdr
  %arg8102 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7203 = call i64 @prim_make_45vector(i64 %arg8102, i64 %a7029)              ; call prim_make_45vector
  %cloptr20002 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr20004 = getelementptr inbounds i64, i64* %cloptr20002, i64 1                  ; &eptr20004[1]
  %eptr20005 = getelementptr inbounds i64, i64* %cloptr20002, i64 2                  ; &eptr20005[2]
  %eptr20006 = getelementptr inbounds i64, i64* %cloptr20002, i64 3                  ; &eptr20006[3]
  %eptr20007 = getelementptr inbounds i64, i64* %cloptr20002, i64 4                  ; &eptr20007[4]
  %eptr20008 = getelementptr inbounds i64, i64* %cloptr20002, i64 5                  ; &eptr20008[5]
  store i64 %G57$cc, i64* %eptr20004                                                 ; *eptr20004 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20005                                            ; *eptr20005 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr20006                                                ; *eptr20006 = %Azg$lst
  store i64 %cont7189, i64* %eptr20007                                               ; *eptr20007 = %cont7189
  store i64 %xNv$head, i64* %eptr20008                                               ; *eptr20008 = %xNv$head
  %eptr20003 = getelementptr inbounds i64, i64* %cloptr20002, i64 0                  ; &cloptr20002[0]
  %f20009 = ptrtoint void(i64,i64)* @lam10425 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20009, i64* %eptr20003                                                 ; store fptr
  %arg8105 = ptrtoint i64* %cloptr20002 to i64                                       ; closure cast; i64* -> i64
  %arg8104 = add i64 0, 0                                                            ; quoted ()
  %rva9403 = add i64 0, 0                                                            ; quoted ()
  %rva9402 = call i64 @prim_cons(i64 %retprim7203, i64 %rva9403)                     ; call prim_cons
  %rva9401 = call i64 @prim_cons(i64 %arg8104, i64 %rva9402)                         ; call prim_cons
  %cloptr20010 = inttoptr i64 %arg8105 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20011 = getelementptr inbounds i64, i64* %cloptr20010, i64 0                 ; &cloptr20010[0]
  %f20013 = load i64, i64* %i0ptr20011, align 8                                      ; load; *i0ptr20011
  %fptr20012 = inttoptr i64 %f20013 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20012(i64 %arg8105, i64 %rva9401)                   ; tail call
  ret void
}


define void @lam10425(i64 %env10426, i64 %rvp9400) {
  %envptr20014 = inttoptr i64 %env10426 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20015 = getelementptr inbounds i64, i64* %envptr20014, i64 5                ; &envptr20014[5]
  %xNv$head = load i64, i64* %envptr20015, align 8                                   ; load; *envptr20015
  %envptr20016 = inttoptr i64 %env10426 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20017 = getelementptr inbounds i64, i64* %envptr20016, i64 4                ; &envptr20016[4]
  %cont7189 = load i64, i64* %envptr20017, align 8                                   ; load; *envptr20017
  %envptr20018 = inttoptr i64 %env10426 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20019 = getelementptr inbounds i64, i64* %envptr20018, i64 3                ; &envptr20018[3]
  %Azg$lst = load i64, i64* %envptr20019, align 8                                    ; load; *envptr20019
  %envptr20020 = inttoptr i64 %env10426 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20021 = getelementptr inbounds i64, i64* %envptr20020, i64 2                ; &envptr20020[2]
  %Qy7$ccstack = load i64, i64* %envptr20021, align 8                                ; load; *envptr20021
  %envptr20022 = inttoptr i64 %env10426 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20023 = getelementptr inbounds i64, i64* %envptr20022, i64 1                ; &envptr20022[1]
  %G57$cc = load i64, i64* %envptr20023, align 8                                     ; load; *envptr20023
  %_957192 = call i64 @prim_car(i64 %rvp9400)                                        ; call prim_car
  %rvp9399 = call i64 @prim_cdr(i64 %rvp9400)                                        ; call prim_cdr
  %lfx$tmp6864 = call i64 @prim_car(i64 %rvp9399)                                    ; call prim_car
  %na9365 = call i64 @prim_cdr(i64 %rvp9399)                                         ; call prim_cdr
  %cloptr20024 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20025 = getelementptr inbounds i64, i64* %cloptr20024, i64 0                  ; &cloptr20024[0]
  %f20026 = ptrtoint void(i64,i64)* @lam10423 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20026, i64* %eptr20025                                                 ; store fptr
  %arg8107 = ptrtoint i64* %cloptr20024 to i64                                       ; closure cast; i64* -> i64
  %cloptr20027 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr20029 = getelementptr inbounds i64, i64* %cloptr20027, i64 1                  ; &eptr20029[1]
  %eptr20030 = getelementptr inbounds i64, i64* %cloptr20027, i64 2                  ; &eptr20030[2]
  %eptr20031 = getelementptr inbounds i64, i64* %cloptr20027, i64 3                  ; &eptr20031[3]
  %eptr20032 = getelementptr inbounds i64, i64* %cloptr20027, i64 4                  ; &eptr20032[4]
  %eptr20033 = getelementptr inbounds i64, i64* %cloptr20027, i64 5                  ; &eptr20033[5]
  %eptr20034 = getelementptr inbounds i64, i64* %cloptr20027, i64 6                  ; &eptr20034[6]
  store i64 %G57$cc, i64* %eptr20029                                                 ; *eptr20029 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20030                                            ; *eptr20030 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr20031                                                ; *eptr20031 = %Azg$lst
  store i64 %lfx$tmp6864, i64* %eptr20032                                            ; *eptr20032 = %lfx$tmp6864
  store i64 %cont7189, i64* %eptr20033                                               ; *eptr20033 = %cont7189
  store i64 %xNv$head, i64* %eptr20034                                               ; *eptr20034 = %xNv$head
  %eptr20028 = getelementptr inbounds i64, i64* %cloptr20027, i64 0                  ; &cloptr20027[0]
  %f20035 = ptrtoint void(i64,i64)* @lam10419 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20035, i64* %eptr20028                                                 ; store fptr
  %arg8106 = ptrtoint i64* %cloptr20027 to i64                                       ; closure cast; i64* -> i64
  %rva9398 = add i64 0, 0                                                            ; quoted ()
  %rva9397 = call i64 @prim_cons(i64 %arg8106, i64 %rva9398)                         ; call prim_cons
  %cloptr20036 = inttoptr i64 %arg8107 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20037 = getelementptr inbounds i64, i64* %cloptr20036, i64 0                 ; &cloptr20036[0]
  %f20039 = load i64, i64* %i0ptr20037, align 8                                      ; load; *i0ptr20037
  %fptr20038 = inttoptr i64 %f20039 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20038(i64 %arg8107, i64 %rva9397)                   ; tail call
  ret void
}


define void @lam10423(i64 %env10424, i64 %BN6$lst7201) {
  %cont7200 = call i64 @prim_car(i64 %BN6$lst7201)                                   ; call prim_car
  %BN6$lst = call i64 @prim_cdr(i64 %BN6$lst7201)                                    ; call prim_cdr
  %arg8111 = add i64 0, 0                                                            ; quoted ()
  %rva9368 = add i64 0, 0                                                            ; quoted ()
  %rva9367 = call i64 @prim_cons(i64 %BN6$lst, i64 %rva9368)                         ; call prim_cons
  %rva9366 = call i64 @prim_cons(i64 %arg8111, i64 %rva9367)                         ; call prim_cons
  %cloptr20040 = inttoptr i64 %cont7200 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20041 = getelementptr inbounds i64, i64* %cloptr20040, i64 0                 ; &cloptr20040[0]
  %f20043 = load i64, i64* %i0ptr20041, align 8                                      ; load; *i0ptr20041
  %fptr20042 = inttoptr i64 %f20043 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20042(i64 %cont7200, i64 %rva9366)                  ; tail call
  ret void
}


define void @lam10419(i64 %env10420, i64 %rvp9396) {
  %envptr20044 = inttoptr i64 %env10420 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20045 = getelementptr inbounds i64, i64* %envptr20044, i64 6                ; &envptr20044[6]
  %xNv$head = load i64, i64* %envptr20045, align 8                                   ; load; *envptr20045
  %envptr20046 = inttoptr i64 %env10420 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20047 = getelementptr inbounds i64, i64* %envptr20046, i64 5                ; &envptr20046[5]
  %cont7189 = load i64, i64* %envptr20047, align 8                                   ; load; *envptr20047
  %envptr20048 = inttoptr i64 %env10420 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20049 = getelementptr inbounds i64, i64* %envptr20048, i64 4                ; &envptr20048[4]
  %lfx$tmp6864 = load i64, i64* %envptr20049, align 8                                ; load; *envptr20049
  %envptr20050 = inttoptr i64 %env10420 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20051 = getelementptr inbounds i64, i64* %envptr20050, i64 3                ; &envptr20050[3]
  %Azg$lst = load i64, i64* %envptr20051, align 8                                    ; load; *envptr20051
  %envptr20052 = inttoptr i64 %env10420 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20053 = getelementptr inbounds i64, i64* %envptr20052, i64 2                ; &envptr20052[2]
  %Qy7$ccstack = load i64, i64* %envptr20053, align 8                                ; load; *envptr20053
  %envptr20054 = inttoptr i64 %env10420 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20055 = getelementptr inbounds i64, i64* %envptr20054, i64 1                ; &envptr20054[1]
  %G57$cc = load i64, i64* %envptr20055, align 8                                     ; load; *envptr20055
  %_957198 = call i64 @prim_car(i64 %rvp9396)                                        ; call prim_car
  %rvp9395 = call i64 @prim_cdr(i64 %rvp9396)                                        ; call prim_cdr
  %a7030 = call i64 @prim_car(i64 %rvp9395)                                          ; call prim_car
  %na9370 = call i64 @prim_cdr(i64 %rvp9395)                                         ; call prim_cdr
  %arg8114 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7199 = call i64 @prim_make_45vector(i64 %arg8114, i64 %a7030)              ; call prim_make_45vector
  %cloptr20056 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr20058 = getelementptr inbounds i64, i64* %cloptr20056, i64 1                  ; &eptr20058[1]
  %eptr20059 = getelementptr inbounds i64, i64* %cloptr20056, i64 2                  ; &eptr20059[2]
  %eptr20060 = getelementptr inbounds i64, i64* %cloptr20056, i64 3                  ; &eptr20060[3]
  %eptr20061 = getelementptr inbounds i64, i64* %cloptr20056, i64 4                  ; &eptr20061[4]
  %eptr20062 = getelementptr inbounds i64, i64* %cloptr20056, i64 5                  ; &eptr20062[5]
  %eptr20063 = getelementptr inbounds i64, i64* %cloptr20056, i64 6                  ; &eptr20063[6]
  store i64 %G57$cc, i64* %eptr20058                                                 ; *eptr20058 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20059                                            ; *eptr20059 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr20060                                                ; *eptr20060 = %Azg$lst
  store i64 %lfx$tmp6864, i64* %eptr20061                                            ; *eptr20061 = %lfx$tmp6864
  store i64 %cont7189, i64* %eptr20062                                               ; *eptr20062 = %cont7189
  store i64 %xNv$head, i64* %eptr20063                                               ; *eptr20063 = %xNv$head
  %eptr20057 = getelementptr inbounds i64, i64* %cloptr20056, i64 0                  ; &cloptr20056[0]
  %f20064 = ptrtoint void(i64,i64)* @lam10416 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20064, i64* %eptr20057                                                 ; store fptr
  %arg8117 = ptrtoint i64* %cloptr20056 to i64                                       ; closure cast; i64* -> i64
  %arg8116 = add i64 0, 0                                                            ; quoted ()
  %rva9394 = add i64 0, 0                                                            ; quoted ()
  %rva9393 = call i64 @prim_cons(i64 %retprim7199, i64 %rva9394)                     ; call prim_cons
  %rva9392 = call i64 @prim_cons(i64 %arg8116, i64 %rva9393)                         ; call prim_cons
  %cloptr20065 = inttoptr i64 %arg8117 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20066 = getelementptr inbounds i64, i64* %cloptr20065, i64 0                 ; &cloptr20065[0]
  %f20068 = load i64, i64* %i0ptr20066, align 8                                      ; load; *i0ptr20066
  %fptr20067 = inttoptr i64 %f20068 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20067(i64 %arg8117, i64 %rva9392)                   ; tail call
  ret void
}


define void @lam10416(i64 %env10417, i64 %rvp9391) {
  %envptr20069 = inttoptr i64 %env10417 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20070 = getelementptr inbounds i64, i64* %envptr20069, i64 6                ; &envptr20069[6]
  %xNv$head = load i64, i64* %envptr20070, align 8                                   ; load; *envptr20070
  %envptr20071 = inttoptr i64 %env10417 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20072 = getelementptr inbounds i64, i64* %envptr20071, i64 5                ; &envptr20071[5]
  %cont7189 = load i64, i64* %envptr20072, align 8                                   ; load; *envptr20072
  %envptr20073 = inttoptr i64 %env10417 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20074 = getelementptr inbounds i64, i64* %envptr20073, i64 4                ; &envptr20073[4]
  %lfx$tmp6864 = load i64, i64* %envptr20074, align 8                                ; load; *envptr20074
  %envptr20075 = inttoptr i64 %env10417 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20076 = getelementptr inbounds i64, i64* %envptr20075, i64 3                ; &envptr20075[3]
  %Azg$lst = load i64, i64* %envptr20076, align 8                                    ; load; *envptr20076
  %envptr20077 = inttoptr i64 %env10417 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20078 = getelementptr inbounds i64, i64* %envptr20077, i64 2                ; &envptr20077[2]
  %Qy7$ccstack = load i64, i64* %envptr20078, align 8                                ; load; *envptr20078
  %envptr20079 = inttoptr i64 %env10417 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20080 = getelementptr inbounds i64, i64* %envptr20079, i64 1                ; &envptr20079[1]
  %G57$cc = load i64, i64* %envptr20080, align 8                                     ; load; *envptr20080
  %_957193 = call i64 @prim_car(i64 %rvp9391)                                        ; call prim_car
  %rvp9390 = call i64 @prim_cdr(i64 %rvp9391)                                        ; call prim_cdr
  %ncM$tmp6863 = call i64 @prim_car(i64 %rvp9390)                                    ; call prim_car
  %na9372 = call i64 @prim_cdr(i64 %rvp9390)                                         ; call prim_cdr
  %arg8118 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7031 = call i64 @prim_vector_45ref(i64 %Azg$lst, i64 %arg8118)                   ; call prim_vector_45ref
  %a7032 = call i64 @prim_cdr(i64 %a7031)                                            ; call prim_cdr
  %arg8122 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7033 = call i64 @prim_vector_45set_33(i64 %Azg$lst, i64 %arg8122, i64 %a7032)    ; call prim_vector_45set_33
  %arg8125 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7197 = call i64 @prim_vector_45set_33(i64 %lfx$tmp6864, i64 %arg8125, i64 %a7033); call prim_vector_45set_33
  %cloptr20081 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr20083 = getelementptr inbounds i64, i64* %cloptr20081, i64 1                  ; &eptr20083[1]
  %eptr20084 = getelementptr inbounds i64, i64* %cloptr20081, i64 2                  ; &eptr20084[2]
  %eptr20085 = getelementptr inbounds i64, i64* %cloptr20081, i64 3                  ; &eptr20085[3]
  %eptr20086 = getelementptr inbounds i64, i64* %cloptr20081, i64 4                  ; &eptr20086[4]
  %eptr20087 = getelementptr inbounds i64, i64* %cloptr20081, i64 5                  ; &eptr20087[5]
  store i64 %ncM$tmp6863, i64* %eptr20083                                            ; *eptr20083 = %ncM$tmp6863
  store i64 %G57$cc, i64* %eptr20084                                                 ; *eptr20084 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20085                                            ; *eptr20085 = %Qy7$ccstack
  store i64 %cont7189, i64* %eptr20086                                               ; *eptr20086 = %cont7189
  store i64 %xNv$head, i64* %eptr20087                                               ; *eptr20087 = %xNv$head
  %eptr20082 = getelementptr inbounds i64, i64* %cloptr20081, i64 0                  ; &cloptr20081[0]
  %f20088 = ptrtoint void(i64,i64)* @lam10411 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20088, i64* %eptr20082                                                 ; store fptr
  %arg8129 = ptrtoint i64* %cloptr20081 to i64                                       ; closure cast; i64* -> i64
  %arg8128 = add i64 0, 0                                                            ; quoted ()
  %rva9389 = add i64 0, 0                                                            ; quoted ()
  %rva9388 = call i64 @prim_cons(i64 %retprim7197, i64 %rva9389)                     ; call prim_cons
  %rva9387 = call i64 @prim_cons(i64 %arg8128, i64 %rva9388)                         ; call prim_cons
  %cloptr20089 = inttoptr i64 %arg8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20090 = getelementptr inbounds i64, i64* %cloptr20089, i64 0                 ; &cloptr20089[0]
  %f20092 = load i64, i64* %i0ptr20090, align 8                                      ; load; *i0ptr20090
  %fptr20091 = inttoptr i64 %f20092 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20091(i64 %arg8129, i64 %rva9387)                   ; tail call
  ret void
}


define void @lam10411(i64 %env10412, i64 %rvp9386) {
  %envptr20093 = inttoptr i64 %env10412 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20094 = getelementptr inbounds i64, i64* %envptr20093, i64 5                ; &envptr20093[5]
  %xNv$head = load i64, i64* %envptr20094, align 8                                   ; load; *envptr20094
  %envptr20095 = inttoptr i64 %env10412 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20096 = getelementptr inbounds i64, i64* %envptr20095, i64 4                ; &envptr20095[4]
  %cont7189 = load i64, i64* %envptr20096, align 8                                   ; load; *envptr20096
  %envptr20097 = inttoptr i64 %env10412 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20098 = getelementptr inbounds i64, i64* %envptr20097, i64 3                ; &envptr20097[3]
  %Qy7$ccstack = load i64, i64* %envptr20098, align 8                                ; load; *envptr20098
  %envptr20099 = inttoptr i64 %env10412 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20100 = getelementptr inbounds i64, i64* %envptr20099, i64 2                ; &envptr20099[2]
  %G57$cc = load i64, i64* %envptr20100, align 8                                     ; load; *envptr20100
  %envptr20101 = inttoptr i64 %env10412 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20102 = getelementptr inbounds i64, i64* %envptr20101, i64 1                ; &envptr20101[1]
  %ncM$tmp6863 = load i64, i64* %envptr20102, align 8                                ; load; *envptr20102
  %_957194 = call i64 @prim_car(i64 %rvp9386)                                        ; call prim_car
  %rvp9385 = call i64 @prim_cdr(i64 %rvp9386)                                        ; call prim_cdr
  %Jhl$_956881 = call i64 @prim_car(i64 %rvp9385)                                    ; call prim_car
  %na9374 = call i64 @prim_cdr(i64 %rvp9385)                                         ; call prim_cdr
  %arg8130 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7034 = call i64 @prim_vector_45ref(i64 %Qy7$ccstack, i64 %arg8130)               ; call prim_vector_45ref
  %a7035 = call i64 @prim_cons(i64 %G57$cc, i64 %a7034)                              ; call prim_cons
  %arg8135 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7036 = call i64 @prim_vector_45set_33(i64 %Qy7$ccstack, i64 %arg8135, i64 %a7035); call prim_vector_45set_33
  %arg8138 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7196 = call i64 @prim_vector_45set_33(i64 %ncM$tmp6863, i64 %arg8138, i64 %a7036); call prim_vector_45set_33
  %cloptr20103 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr20105 = getelementptr inbounds i64, i64* %cloptr20103, i64 1                  ; &eptr20105[1]
  %eptr20106 = getelementptr inbounds i64, i64* %cloptr20103, i64 2                  ; &eptr20106[2]
  store i64 %cont7189, i64* %eptr20105                                               ; *eptr20105 = %cont7189
  store i64 %xNv$head, i64* %eptr20106                                               ; *eptr20106 = %xNv$head
  %eptr20104 = getelementptr inbounds i64, i64* %cloptr20103, i64 0                  ; &cloptr20103[0]
  %f20107 = ptrtoint void(i64,i64)* @lam10406 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20107, i64* %eptr20104                                                 ; store fptr
  %arg8142 = ptrtoint i64* %cloptr20103 to i64                                       ; closure cast; i64* -> i64
  %arg8141 = add i64 0, 0                                                            ; quoted ()
  %rva9384 = add i64 0, 0                                                            ; quoted ()
  %rva9383 = call i64 @prim_cons(i64 %retprim7196, i64 %rva9384)                     ; call prim_cons
  %rva9382 = call i64 @prim_cons(i64 %arg8141, i64 %rva9383)                         ; call prim_cons
  %cloptr20108 = inttoptr i64 %arg8142 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20109 = getelementptr inbounds i64, i64* %cloptr20108, i64 0                 ; &cloptr20108[0]
  %f20111 = load i64, i64* %i0ptr20109, align 8                                      ; load; *i0ptr20109
  %fptr20110 = inttoptr i64 %f20111 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20110(i64 %arg8142, i64 %rva9382)                   ; tail call
  ret void
}


define void @lam10406(i64 %env10407, i64 %rvp9381) {
  %envptr20112 = inttoptr i64 %env10407 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20113 = getelementptr inbounds i64, i64* %envptr20112, i64 2                ; &envptr20112[2]
  %xNv$head = load i64, i64* %envptr20113, align 8                                   ; load; *envptr20113
  %envptr20114 = inttoptr i64 %env10407 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20115 = getelementptr inbounds i64, i64* %envptr20114, i64 1                ; &envptr20114[1]
  %cont7189 = load i64, i64* %envptr20115, align 8                                   ; load; *envptr20115
  %_957195 = call i64 @prim_car(i64 %rvp9381)                                        ; call prim_car
  %rvp9380 = call i64 @prim_cdr(i64 %rvp9381)                                        ; call prim_cdr
  %IXv$_956882 = call i64 @prim_car(i64 %rvp9380)                                    ; call prim_car
  %na9376 = call i64 @prim_cdr(i64 %rvp9380)                                         ; call prim_cdr
  %arg8144 = add i64 0, 0                                                            ; quoted ()
  %rva9379 = add i64 0, 0                                                            ; quoted ()
  %rva9378 = call i64 @prim_cons(i64 %xNv$head, i64 %rva9379)                        ; call prim_cons
  %rva9377 = call i64 @prim_cons(i64 %arg8144, i64 %rva9378)                         ; call prim_cons
  %cloptr20116 = inttoptr i64 %cont7189 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20117 = getelementptr inbounds i64, i64* %cloptr20116, i64 0                 ; &cloptr20116[0]
  %f20119 = load i64, i64* %i0ptr20117, align 8                                      ; load; *i0ptr20117
  %fptr20118 = inttoptr i64 %f20119 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20118(i64 %cont7189, i64 %rva9377)                  ; tail call
  ret void
}


define void @lam10388(i64 %env10389, i64 %rvp9476) {
  %envptr20120 = inttoptr i64 %env10389 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20121 = getelementptr inbounds i64, i64* %envptr20120, i64 4                ; &envptr20120[4]
  %cont7189 = load i64, i64* %envptr20121, align 8                                   ; load; *envptr20121
  %envptr20122 = inttoptr i64 %env10389 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20123 = getelementptr inbounds i64, i64* %envptr20122, i64 3                ; &envptr20122[3]
  %Azg$lst = load i64, i64* %envptr20123, align 8                                    ; load; *envptr20123
  %envptr20124 = inttoptr i64 %env10389 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20125 = getelementptr inbounds i64, i64* %envptr20124, i64 2                ; &envptr20124[2]
  %Qy7$ccstack = load i64, i64* %envptr20125, align 8                                ; load; *envptr20125
  %envptr20126 = inttoptr i64 %env10389 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20127 = getelementptr inbounds i64, i64* %envptr20126, i64 1                ; &envptr20126[1]
  %izc$fail = load i64, i64* %envptr20127, align 8                                   ; load; *envptr20127
  %_957190 = call i64 @prim_car(i64 %rvp9476)                                        ; call prim_car
  %rvp9475 = call i64 @prim_cdr(i64 %rvp9476)                                        ; call prim_cdr
  %G57$cc = call i64 @prim_car(i64 %rvp9475)                                         ; call prim_car
  %na9416 = call i64 @prim_cdr(i64 %rvp9475)                                         ; call prim_cdr
  %arg8146 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7025 = call i64 @prim_vector_45ref(i64 %Azg$lst, i64 %arg8146)                   ; call prim_vector_45ref
  %a7026 = call i64 @prim_null_63(i64 %a7025)                                        ; call prim_null_63
  %cmp20128 = icmp eq i64 %a7026, 15                                                 ; false?
  br i1 %cmp20128, label %else20130, label %then20129                                ; if

then20129:
  %arg8149 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7027 = call i64 @prim_vector_45ref(i64 %izc$fail, i64 %arg8149)                  ; call prim_vector_45ref
  %rva9418 = add i64 0, 0                                                            ; quoted ()
  %rva9417 = call i64 @prim_cons(i64 %cont7189, i64 %rva9418)                        ; call prim_cons
  %cloptr20131 = inttoptr i64 %a7027 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr20132 = getelementptr inbounds i64, i64* %cloptr20131, i64 0                 ; &cloptr20131[0]
  %f20134 = load i64, i64* %i0ptr20132, align 8                                      ; load; *i0ptr20132
  %fptr20133 = inttoptr i64 %f20134 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20133(i64 %a7027, i64 %rva9417)                     ; tail call
  ret void

else20130:
  %arg8153 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7028 = call i64 @prim_vector_45ref(i64 %Azg$lst, i64 %arg8153)                   ; call prim_vector_45ref
  %retprim7206 = call i64 @prim_car(i64 %a7028)                                      ; call prim_car
  %cloptr20135 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20137 = getelementptr inbounds i64, i64* %cloptr20135, i64 1                  ; &eptr20137[1]
  %eptr20138 = getelementptr inbounds i64, i64* %cloptr20135, i64 2                  ; &eptr20138[2]
  %eptr20139 = getelementptr inbounds i64, i64* %cloptr20135, i64 3                  ; &eptr20139[3]
  %eptr20140 = getelementptr inbounds i64, i64* %cloptr20135, i64 4                  ; &eptr20140[4]
  store i64 %G57$cc, i64* %eptr20137                                                 ; *eptr20137 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20138                                            ; *eptr20138 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr20139                                                ; *eptr20139 = %Azg$lst
  store i64 %cont7189, i64* %eptr20140                                               ; *eptr20140 = %cont7189
  %eptr20136 = getelementptr inbounds i64, i64* %cloptr20135, i64 0                  ; &cloptr20135[0]
  %f20141 = ptrtoint void(i64,i64)* @lam10384 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20141, i64* %eptr20136                                                 ; store fptr
  %arg8158 = ptrtoint i64* %cloptr20135 to i64                                       ; closure cast; i64* -> i64
  %arg8157 = add i64 0, 0                                                            ; quoted ()
  %rva9474 = add i64 0, 0                                                            ; quoted ()
  %rva9473 = call i64 @prim_cons(i64 %retprim7206, i64 %rva9474)                     ; call prim_cons
  %rva9472 = call i64 @prim_cons(i64 %arg8157, i64 %rva9473)                         ; call prim_cons
  %cloptr20142 = inttoptr i64 %arg8158 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20143 = getelementptr inbounds i64, i64* %cloptr20142, i64 0                 ; &cloptr20142[0]
  %f20145 = load i64, i64* %i0ptr20143, align 8                                      ; load; *i0ptr20143
  %fptr20144 = inttoptr i64 %f20145 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20144(i64 %arg8158, i64 %rva9472)                   ; tail call
  ret void
}


define void @lam10384(i64 %env10385, i64 %rvp9471) {
  %envptr20146 = inttoptr i64 %env10385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20147 = getelementptr inbounds i64, i64* %envptr20146, i64 4                ; &envptr20146[4]
  %cont7189 = load i64, i64* %envptr20147, align 8                                   ; load; *envptr20147
  %envptr20148 = inttoptr i64 %env10385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20149 = getelementptr inbounds i64, i64* %envptr20148, i64 3                ; &envptr20148[3]
  %Azg$lst = load i64, i64* %envptr20149, align 8                                    ; load; *envptr20149
  %envptr20150 = inttoptr i64 %env10385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20151 = getelementptr inbounds i64, i64* %envptr20150, i64 2                ; &envptr20150[2]
  %Qy7$ccstack = load i64, i64* %envptr20151, align 8                                ; load; *envptr20151
  %envptr20152 = inttoptr i64 %env10385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20153 = getelementptr inbounds i64, i64* %envptr20152, i64 1                ; &envptr20152[1]
  %G57$cc = load i64, i64* %envptr20153, align 8                                     ; load; *envptr20153
  %_957191 = call i64 @prim_car(i64 %rvp9471)                                        ; call prim_car
  %rvp9470 = call i64 @prim_cdr(i64 %rvp9471)                                        ; call prim_cdr
  %xNv$head = call i64 @prim_car(i64 %rvp9470)                                       ; call prim_car
  %na9420 = call i64 @prim_cdr(i64 %rvp9470)                                         ; call prim_cdr
  %cloptr20154 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20155 = getelementptr inbounds i64, i64* %cloptr20154, i64 0                  ; &cloptr20154[0]
  %f20156 = ptrtoint void(i64,i64)* @lam10382 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20156, i64* %eptr20155                                                 ; store fptr
  %arg8160 = ptrtoint i64* %cloptr20154 to i64                                       ; closure cast; i64* -> i64
  %cloptr20157 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr20159 = getelementptr inbounds i64, i64* %cloptr20157, i64 1                  ; &eptr20159[1]
  %eptr20160 = getelementptr inbounds i64, i64* %cloptr20157, i64 2                  ; &eptr20160[2]
  %eptr20161 = getelementptr inbounds i64, i64* %cloptr20157, i64 3                  ; &eptr20161[3]
  %eptr20162 = getelementptr inbounds i64, i64* %cloptr20157, i64 4                  ; &eptr20162[4]
  %eptr20163 = getelementptr inbounds i64, i64* %cloptr20157, i64 5                  ; &eptr20163[5]
  store i64 %G57$cc, i64* %eptr20159                                                 ; *eptr20159 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20160                                            ; *eptr20160 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr20161                                                ; *eptr20161 = %Azg$lst
  store i64 %cont7189, i64* %eptr20162                                               ; *eptr20162 = %cont7189
  store i64 %xNv$head, i64* %eptr20163                                               ; *eptr20163 = %xNv$head
  %eptr20158 = getelementptr inbounds i64, i64* %cloptr20157, i64 0                  ; &cloptr20157[0]
  %f20164 = ptrtoint void(i64,i64)* @lam10378 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20164, i64* %eptr20158                                                 ; store fptr
  %arg8159 = ptrtoint i64* %cloptr20157 to i64                                       ; closure cast; i64* -> i64
  %rva9469 = add i64 0, 0                                                            ; quoted ()
  %rva9468 = call i64 @prim_cons(i64 %arg8159, i64 %rva9469)                         ; call prim_cons
  %cloptr20165 = inttoptr i64 %arg8160 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20166 = getelementptr inbounds i64, i64* %cloptr20165, i64 0                 ; &cloptr20165[0]
  %f20168 = load i64, i64* %i0ptr20166, align 8                                      ; load; *i0ptr20166
  %fptr20167 = inttoptr i64 %f20168 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20167(i64 %arg8160, i64 %rva9468)                   ; tail call
  ret void
}


define void @lam10382(i64 %env10383, i64 %PbK$lst7205) {
  %cont7204 = call i64 @prim_car(i64 %PbK$lst7205)                                   ; call prim_car
  %PbK$lst = call i64 @prim_cdr(i64 %PbK$lst7205)                                    ; call prim_cdr
  %arg8164 = add i64 0, 0                                                            ; quoted ()
  %rva9423 = add i64 0, 0                                                            ; quoted ()
  %rva9422 = call i64 @prim_cons(i64 %PbK$lst, i64 %rva9423)                         ; call prim_cons
  %rva9421 = call i64 @prim_cons(i64 %arg8164, i64 %rva9422)                         ; call prim_cons
  %cloptr20169 = inttoptr i64 %cont7204 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20170 = getelementptr inbounds i64, i64* %cloptr20169, i64 0                 ; &cloptr20169[0]
  %f20172 = load i64, i64* %i0ptr20170, align 8                                      ; load; *i0ptr20170
  %fptr20171 = inttoptr i64 %f20172 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20171(i64 %cont7204, i64 %rva9421)                  ; tail call
  ret void
}


define void @lam10378(i64 %env10379, i64 %rvp9467) {
  %envptr20173 = inttoptr i64 %env10379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20174 = getelementptr inbounds i64, i64* %envptr20173, i64 5                ; &envptr20173[5]
  %xNv$head = load i64, i64* %envptr20174, align 8                                   ; load; *envptr20174
  %envptr20175 = inttoptr i64 %env10379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20176 = getelementptr inbounds i64, i64* %envptr20175, i64 4                ; &envptr20175[4]
  %cont7189 = load i64, i64* %envptr20176, align 8                                   ; load; *envptr20176
  %envptr20177 = inttoptr i64 %env10379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20178 = getelementptr inbounds i64, i64* %envptr20177, i64 3                ; &envptr20177[3]
  %Azg$lst = load i64, i64* %envptr20178, align 8                                    ; load; *envptr20178
  %envptr20179 = inttoptr i64 %env10379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20180 = getelementptr inbounds i64, i64* %envptr20179, i64 2                ; &envptr20179[2]
  %Qy7$ccstack = load i64, i64* %envptr20180, align 8                                ; load; *envptr20180
  %envptr20181 = inttoptr i64 %env10379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20182 = getelementptr inbounds i64, i64* %envptr20181, i64 1                ; &envptr20181[1]
  %G57$cc = load i64, i64* %envptr20182, align 8                                     ; load; *envptr20182
  %_957202 = call i64 @prim_car(i64 %rvp9467)                                        ; call prim_car
  %rvp9466 = call i64 @prim_cdr(i64 %rvp9467)                                        ; call prim_cdr
  %a7029 = call i64 @prim_car(i64 %rvp9466)                                          ; call prim_car
  %na9425 = call i64 @prim_cdr(i64 %rvp9466)                                         ; call prim_cdr
  %arg8167 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7203 = call i64 @prim_make_45vector(i64 %arg8167, i64 %a7029)              ; call prim_make_45vector
  %cloptr20183 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr20185 = getelementptr inbounds i64, i64* %cloptr20183, i64 1                  ; &eptr20185[1]
  %eptr20186 = getelementptr inbounds i64, i64* %cloptr20183, i64 2                  ; &eptr20186[2]
  %eptr20187 = getelementptr inbounds i64, i64* %cloptr20183, i64 3                  ; &eptr20187[3]
  %eptr20188 = getelementptr inbounds i64, i64* %cloptr20183, i64 4                  ; &eptr20188[4]
  %eptr20189 = getelementptr inbounds i64, i64* %cloptr20183, i64 5                  ; &eptr20189[5]
  store i64 %G57$cc, i64* %eptr20185                                                 ; *eptr20185 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20186                                            ; *eptr20186 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr20187                                                ; *eptr20187 = %Azg$lst
  store i64 %cont7189, i64* %eptr20188                                               ; *eptr20188 = %cont7189
  store i64 %xNv$head, i64* %eptr20189                                               ; *eptr20189 = %xNv$head
  %eptr20184 = getelementptr inbounds i64, i64* %cloptr20183, i64 0                  ; &cloptr20183[0]
  %f20190 = ptrtoint void(i64,i64)* @lam10375 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20190, i64* %eptr20184                                                 ; store fptr
  %arg8170 = ptrtoint i64* %cloptr20183 to i64                                       ; closure cast; i64* -> i64
  %arg8169 = add i64 0, 0                                                            ; quoted ()
  %rva9465 = add i64 0, 0                                                            ; quoted ()
  %rva9464 = call i64 @prim_cons(i64 %retprim7203, i64 %rva9465)                     ; call prim_cons
  %rva9463 = call i64 @prim_cons(i64 %arg8169, i64 %rva9464)                         ; call prim_cons
  %cloptr20191 = inttoptr i64 %arg8170 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20192 = getelementptr inbounds i64, i64* %cloptr20191, i64 0                 ; &cloptr20191[0]
  %f20194 = load i64, i64* %i0ptr20192, align 8                                      ; load; *i0ptr20192
  %fptr20193 = inttoptr i64 %f20194 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20193(i64 %arg8170, i64 %rva9463)                   ; tail call
  ret void
}


define void @lam10375(i64 %env10376, i64 %rvp9462) {
  %envptr20195 = inttoptr i64 %env10376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20196 = getelementptr inbounds i64, i64* %envptr20195, i64 5                ; &envptr20195[5]
  %xNv$head = load i64, i64* %envptr20196, align 8                                   ; load; *envptr20196
  %envptr20197 = inttoptr i64 %env10376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20198 = getelementptr inbounds i64, i64* %envptr20197, i64 4                ; &envptr20197[4]
  %cont7189 = load i64, i64* %envptr20198, align 8                                   ; load; *envptr20198
  %envptr20199 = inttoptr i64 %env10376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20200 = getelementptr inbounds i64, i64* %envptr20199, i64 3                ; &envptr20199[3]
  %Azg$lst = load i64, i64* %envptr20200, align 8                                    ; load; *envptr20200
  %envptr20201 = inttoptr i64 %env10376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20202 = getelementptr inbounds i64, i64* %envptr20201, i64 2                ; &envptr20201[2]
  %Qy7$ccstack = load i64, i64* %envptr20202, align 8                                ; load; *envptr20202
  %envptr20203 = inttoptr i64 %env10376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20204 = getelementptr inbounds i64, i64* %envptr20203, i64 1                ; &envptr20203[1]
  %G57$cc = load i64, i64* %envptr20204, align 8                                     ; load; *envptr20204
  %_957192 = call i64 @prim_car(i64 %rvp9462)                                        ; call prim_car
  %rvp9461 = call i64 @prim_cdr(i64 %rvp9462)                                        ; call prim_cdr
  %lfx$tmp6864 = call i64 @prim_car(i64 %rvp9461)                                    ; call prim_car
  %na9427 = call i64 @prim_cdr(i64 %rvp9461)                                         ; call prim_cdr
  %cloptr20205 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20206 = getelementptr inbounds i64, i64* %cloptr20205, i64 0                  ; &cloptr20205[0]
  %f20207 = ptrtoint void(i64,i64)* @lam10373 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20207, i64* %eptr20206                                                 ; store fptr
  %arg8172 = ptrtoint i64* %cloptr20205 to i64                                       ; closure cast; i64* -> i64
  %cloptr20208 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr20210 = getelementptr inbounds i64, i64* %cloptr20208, i64 1                  ; &eptr20210[1]
  %eptr20211 = getelementptr inbounds i64, i64* %cloptr20208, i64 2                  ; &eptr20211[2]
  %eptr20212 = getelementptr inbounds i64, i64* %cloptr20208, i64 3                  ; &eptr20212[3]
  %eptr20213 = getelementptr inbounds i64, i64* %cloptr20208, i64 4                  ; &eptr20213[4]
  %eptr20214 = getelementptr inbounds i64, i64* %cloptr20208, i64 5                  ; &eptr20214[5]
  %eptr20215 = getelementptr inbounds i64, i64* %cloptr20208, i64 6                  ; &eptr20215[6]
  store i64 %G57$cc, i64* %eptr20210                                                 ; *eptr20210 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20211                                            ; *eptr20211 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr20212                                                ; *eptr20212 = %Azg$lst
  store i64 %lfx$tmp6864, i64* %eptr20213                                            ; *eptr20213 = %lfx$tmp6864
  store i64 %cont7189, i64* %eptr20214                                               ; *eptr20214 = %cont7189
  store i64 %xNv$head, i64* %eptr20215                                               ; *eptr20215 = %xNv$head
  %eptr20209 = getelementptr inbounds i64, i64* %cloptr20208, i64 0                  ; &cloptr20208[0]
  %f20216 = ptrtoint void(i64,i64)* @lam10369 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20216, i64* %eptr20209                                                 ; store fptr
  %arg8171 = ptrtoint i64* %cloptr20208 to i64                                       ; closure cast; i64* -> i64
  %rva9460 = add i64 0, 0                                                            ; quoted ()
  %rva9459 = call i64 @prim_cons(i64 %arg8171, i64 %rva9460)                         ; call prim_cons
  %cloptr20217 = inttoptr i64 %arg8172 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20218 = getelementptr inbounds i64, i64* %cloptr20217, i64 0                 ; &cloptr20217[0]
  %f20220 = load i64, i64* %i0ptr20218, align 8                                      ; load; *i0ptr20218
  %fptr20219 = inttoptr i64 %f20220 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20219(i64 %arg8172, i64 %rva9459)                   ; tail call
  ret void
}


define void @lam10373(i64 %env10374, i64 %BN6$lst7201) {
  %cont7200 = call i64 @prim_car(i64 %BN6$lst7201)                                   ; call prim_car
  %BN6$lst = call i64 @prim_cdr(i64 %BN6$lst7201)                                    ; call prim_cdr
  %arg8176 = add i64 0, 0                                                            ; quoted ()
  %rva9430 = add i64 0, 0                                                            ; quoted ()
  %rva9429 = call i64 @prim_cons(i64 %BN6$lst, i64 %rva9430)                         ; call prim_cons
  %rva9428 = call i64 @prim_cons(i64 %arg8176, i64 %rva9429)                         ; call prim_cons
  %cloptr20221 = inttoptr i64 %cont7200 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20222 = getelementptr inbounds i64, i64* %cloptr20221, i64 0                 ; &cloptr20221[0]
  %f20224 = load i64, i64* %i0ptr20222, align 8                                      ; load; *i0ptr20222
  %fptr20223 = inttoptr i64 %f20224 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20223(i64 %cont7200, i64 %rva9428)                  ; tail call
  ret void
}


define void @lam10369(i64 %env10370, i64 %rvp9458) {
  %envptr20225 = inttoptr i64 %env10370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20226 = getelementptr inbounds i64, i64* %envptr20225, i64 6                ; &envptr20225[6]
  %xNv$head = load i64, i64* %envptr20226, align 8                                   ; load; *envptr20226
  %envptr20227 = inttoptr i64 %env10370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20228 = getelementptr inbounds i64, i64* %envptr20227, i64 5                ; &envptr20227[5]
  %cont7189 = load i64, i64* %envptr20228, align 8                                   ; load; *envptr20228
  %envptr20229 = inttoptr i64 %env10370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20230 = getelementptr inbounds i64, i64* %envptr20229, i64 4                ; &envptr20229[4]
  %lfx$tmp6864 = load i64, i64* %envptr20230, align 8                                ; load; *envptr20230
  %envptr20231 = inttoptr i64 %env10370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20232 = getelementptr inbounds i64, i64* %envptr20231, i64 3                ; &envptr20231[3]
  %Azg$lst = load i64, i64* %envptr20232, align 8                                    ; load; *envptr20232
  %envptr20233 = inttoptr i64 %env10370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20234 = getelementptr inbounds i64, i64* %envptr20233, i64 2                ; &envptr20233[2]
  %Qy7$ccstack = load i64, i64* %envptr20234, align 8                                ; load; *envptr20234
  %envptr20235 = inttoptr i64 %env10370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20236 = getelementptr inbounds i64, i64* %envptr20235, i64 1                ; &envptr20235[1]
  %G57$cc = load i64, i64* %envptr20236, align 8                                     ; load; *envptr20236
  %_957198 = call i64 @prim_car(i64 %rvp9458)                                        ; call prim_car
  %rvp9457 = call i64 @prim_cdr(i64 %rvp9458)                                        ; call prim_cdr
  %a7030 = call i64 @prim_car(i64 %rvp9457)                                          ; call prim_car
  %na9432 = call i64 @prim_cdr(i64 %rvp9457)                                         ; call prim_cdr
  %arg8179 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7199 = call i64 @prim_make_45vector(i64 %arg8179, i64 %a7030)              ; call prim_make_45vector
  %cloptr20237 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr20239 = getelementptr inbounds i64, i64* %cloptr20237, i64 1                  ; &eptr20239[1]
  %eptr20240 = getelementptr inbounds i64, i64* %cloptr20237, i64 2                  ; &eptr20240[2]
  %eptr20241 = getelementptr inbounds i64, i64* %cloptr20237, i64 3                  ; &eptr20241[3]
  %eptr20242 = getelementptr inbounds i64, i64* %cloptr20237, i64 4                  ; &eptr20242[4]
  %eptr20243 = getelementptr inbounds i64, i64* %cloptr20237, i64 5                  ; &eptr20243[5]
  %eptr20244 = getelementptr inbounds i64, i64* %cloptr20237, i64 6                  ; &eptr20244[6]
  store i64 %G57$cc, i64* %eptr20239                                                 ; *eptr20239 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20240                                            ; *eptr20240 = %Qy7$ccstack
  store i64 %Azg$lst, i64* %eptr20241                                                ; *eptr20241 = %Azg$lst
  store i64 %lfx$tmp6864, i64* %eptr20242                                            ; *eptr20242 = %lfx$tmp6864
  store i64 %cont7189, i64* %eptr20243                                               ; *eptr20243 = %cont7189
  store i64 %xNv$head, i64* %eptr20244                                               ; *eptr20244 = %xNv$head
  %eptr20238 = getelementptr inbounds i64, i64* %cloptr20237, i64 0                  ; &cloptr20237[0]
  %f20245 = ptrtoint void(i64,i64)* @lam10366 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20245, i64* %eptr20238                                                 ; store fptr
  %arg8182 = ptrtoint i64* %cloptr20237 to i64                                       ; closure cast; i64* -> i64
  %arg8181 = add i64 0, 0                                                            ; quoted ()
  %rva9456 = add i64 0, 0                                                            ; quoted ()
  %rva9455 = call i64 @prim_cons(i64 %retprim7199, i64 %rva9456)                     ; call prim_cons
  %rva9454 = call i64 @prim_cons(i64 %arg8181, i64 %rva9455)                         ; call prim_cons
  %cloptr20246 = inttoptr i64 %arg8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20247 = getelementptr inbounds i64, i64* %cloptr20246, i64 0                 ; &cloptr20246[0]
  %f20249 = load i64, i64* %i0ptr20247, align 8                                      ; load; *i0ptr20247
  %fptr20248 = inttoptr i64 %f20249 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20248(i64 %arg8182, i64 %rva9454)                   ; tail call
  ret void
}


define void @lam10366(i64 %env10367, i64 %rvp9453) {
  %envptr20250 = inttoptr i64 %env10367 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20251 = getelementptr inbounds i64, i64* %envptr20250, i64 6                ; &envptr20250[6]
  %xNv$head = load i64, i64* %envptr20251, align 8                                   ; load; *envptr20251
  %envptr20252 = inttoptr i64 %env10367 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20253 = getelementptr inbounds i64, i64* %envptr20252, i64 5                ; &envptr20252[5]
  %cont7189 = load i64, i64* %envptr20253, align 8                                   ; load; *envptr20253
  %envptr20254 = inttoptr i64 %env10367 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20255 = getelementptr inbounds i64, i64* %envptr20254, i64 4                ; &envptr20254[4]
  %lfx$tmp6864 = load i64, i64* %envptr20255, align 8                                ; load; *envptr20255
  %envptr20256 = inttoptr i64 %env10367 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20257 = getelementptr inbounds i64, i64* %envptr20256, i64 3                ; &envptr20256[3]
  %Azg$lst = load i64, i64* %envptr20257, align 8                                    ; load; *envptr20257
  %envptr20258 = inttoptr i64 %env10367 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20259 = getelementptr inbounds i64, i64* %envptr20258, i64 2                ; &envptr20258[2]
  %Qy7$ccstack = load i64, i64* %envptr20259, align 8                                ; load; *envptr20259
  %envptr20260 = inttoptr i64 %env10367 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20261 = getelementptr inbounds i64, i64* %envptr20260, i64 1                ; &envptr20260[1]
  %G57$cc = load i64, i64* %envptr20261, align 8                                     ; load; *envptr20261
  %_957193 = call i64 @prim_car(i64 %rvp9453)                                        ; call prim_car
  %rvp9452 = call i64 @prim_cdr(i64 %rvp9453)                                        ; call prim_cdr
  %ncM$tmp6863 = call i64 @prim_car(i64 %rvp9452)                                    ; call prim_car
  %na9434 = call i64 @prim_cdr(i64 %rvp9452)                                         ; call prim_cdr
  %arg8183 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7031 = call i64 @prim_vector_45ref(i64 %Azg$lst, i64 %arg8183)                   ; call prim_vector_45ref
  %a7032 = call i64 @prim_cdr(i64 %a7031)                                            ; call prim_cdr
  %arg8187 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7033 = call i64 @prim_vector_45set_33(i64 %Azg$lst, i64 %arg8187, i64 %a7032)    ; call prim_vector_45set_33
  %arg8190 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7197 = call i64 @prim_vector_45set_33(i64 %lfx$tmp6864, i64 %arg8190, i64 %a7033); call prim_vector_45set_33
  %cloptr20262 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr20264 = getelementptr inbounds i64, i64* %cloptr20262, i64 1                  ; &eptr20264[1]
  %eptr20265 = getelementptr inbounds i64, i64* %cloptr20262, i64 2                  ; &eptr20265[2]
  %eptr20266 = getelementptr inbounds i64, i64* %cloptr20262, i64 3                  ; &eptr20266[3]
  %eptr20267 = getelementptr inbounds i64, i64* %cloptr20262, i64 4                  ; &eptr20267[4]
  %eptr20268 = getelementptr inbounds i64, i64* %cloptr20262, i64 5                  ; &eptr20268[5]
  store i64 %ncM$tmp6863, i64* %eptr20264                                            ; *eptr20264 = %ncM$tmp6863
  store i64 %G57$cc, i64* %eptr20265                                                 ; *eptr20265 = %G57$cc
  store i64 %Qy7$ccstack, i64* %eptr20266                                            ; *eptr20266 = %Qy7$ccstack
  store i64 %cont7189, i64* %eptr20267                                               ; *eptr20267 = %cont7189
  store i64 %xNv$head, i64* %eptr20268                                               ; *eptr20268 = %xNv$head
  %eptr20263 = getelementptr inbounds i64, i64* %cloptr20262, i64 0                  ; &cloptr20262[0]
  %f20269 = ptrtoint void(i64,i64)* @lam10361 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20269, i64* %eptr20263                                                 ; store fptr
  %arg8194 = ptrtoint i64* %cloptr20262 to i64                                       ; closure cast; i64* -> i64
  %arg8193 = add i64 0, 0                                                            ; quoted ()
  %rva9451 = add i64 0, 0                                                            ; quoted ()
  %rva9450 = call i64 @prim_cons(i64 %retprim7197, i64 %rva9451)                     ; call prim_cons
  %rva9449 = call i64 @prim_cons(i64 %arg8193, i64 %rva9450)                         ; call prim_cons
  %cloptr20270 = inttoptr i64 %arg8194 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20271 = getelementptr inbounds i64, i64* %cloptr20270, i64 0                 ; &cloptr20270[0]
  %f20273 = load i64, i64* %i0ptr20271, align 8                                      ; load; *i0ptr20271
  %fptr20272 = inttoptr i64 %f20273 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20272(i64 %arg8194, i64 %rva9449)                   ; tail call
  ret void
}


define void @lam10361(i64 %env10362, i64 %rvp9448) {
  %envptr20274 = inttoptr i64 %env10362 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20275 = getelementptr inbounds i64, i64* %envptr20274, i64 5                ; &envptr20274[5]
  %xNv$head = load i64, i64* %envptr20275, align 8                                   ; load; *envptr20275
  %envptr20276 = inttoptr i64 %env10362 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20277 = getelementptr inbounds i64, i64* %envptr20276, i64 4                ; &envptr20276[4]
  %cont7189 = load i64, i64* %envptr20277, align 8                                   ; load; *envptr20277
  %envptr20278 = inttoptr i64 %env10362 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20279 = getelementptr inbounds i64, i64* %envptr20278, i64 3                ; &envptr20278[3]
  %Qy7$ccstack = load i64, i64* %envptr20279, align 8                                ; load; *envptr20279
  %envptr20280 = inttoptr i64 %env10362 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20281 = getelementptr inbounds i64, i64* %envptr20280, i64 2                ; &envptr20280[2]
  %G57$cc = load i64, i64* %envptr20281, align 8                                     ; load; *envptr20281
  %envptr20282 = inttoptr i64 %env10362 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20283 = getelementptr inbounds i64, i64* %envptr20282, i64 1                ; &envptr20282[1]
  %ncM$tmp6863 = load i64, i64* %envptr20283, align 8                                ; load; *envptr20283
  %_957194 = call i64 @prim_car(i64 %rvp9448)                                        ; call prim_car
  %rvp9447 = call i64 @prim_cdr(i64 %rvp9448)                                        ; call prim_cdr
  %Jhl$_956881 = call i64 @prim_car(i64 %rvp9447)                                    ; call prim_car
  %na9436 = call i64 @prim_cdr(i64 %rvp9447)                                         ; call prim_cdr
  %arg8195 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7034 = call i64 @prim_vector_45ref(i64 %Qy7$ccstack, i64 %arg8195)               ; call prim_vector_45ref
  %a7035 = call i64 @prim_cons(i64 %G57$cc, i64 %a7034)                              ; call prim_cons
  %arg8200 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7036 = call i64 @prim_vector_45set_33(i64 %Qy7$ccstack, i64 %arg8200, i64 %a7035); call prim_vector_45set_33
  %arg8203 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7196 = call i64 @prim_vector_45set_33(i64 %ncM$tmp6863, i64 %arg8203, i64 %a7036); call prim_vector_45set_33
  %cloptr20284 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr20286 = getelementptr inbounds i64, i64* %cloptr20284, i64 1                  ; &eptr20286[1]
  %eptr20287 = getelementptr inbounds i64, i64* %cloptr20284, i64 2                  ; &eptr20287[2]
  store i64 %cont7189, i64* %eptr20286                                               ; *eptr20286 = %cont7189
  store i64 %xNv$head, i64* %eptr20287                                               ; *eptr20287 = %xNv$head
  %eptr20285 = getelementptr inbounds i64, i64* %cloptr20284, i64 0                  ; &cloptr20284[0]
  %f20288 = ptrtoint void(i64,i64)* @lam10356 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20288, i64* %eptr20285                                                 ; store fptr
  %arg8207 = ptrtoint i64* %cloptr20284 to i64                                       ; closure cast; i64* -> i64
  %arg8206 = add i64 0, 0                                                            ; quoted ()
  %rva9446 = add i64 0, 0                                                            ; quoted ()
  %rva9445 = call i64 @prim_cons(i64 %retprim7196, i64 %rva9446)                     ; call prim_cons
  %rva9444 = call i64 @prim_cons(i64 %arg8206, i64 %rva9445)                         ; call prim_cons
  %cloptr20289 = inttoptr i64 %arg8207 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20290 = getelementptr inbounds i64, i64* %cloptr20289, i64 0                 ; &cloptr20289[0]
  %f20292 = load i64, i64* %i0ptr20290, align 8                                      ; load; *i0ptr20290
  %fptr20291 = inttoptr i64 %f20292 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20291(i64 %arg8207, i64 %rva9444)                   ; tail call
  ret void
}


define void @lam10356(i64 %env10357, i64 %rvp9443) {
  %envptr20293 = inttoptr i64 %env10357 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20294 = getelementptr inbounds i64, i64* %envptr20293, i64 2                ; &envptr20293[2]
  %xNv$head = load i64, i64* %envptr20294, align 8                                   ; load; *envptr20294
  %envptr20295 = inttoptr i64 %env10357 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20296 = getelementptr inbounds i64, i64* %envptr20295, i64 1                ; &envptr20295[1]
  %cont7189 = load i64, i64* %envptr20296, align 8                                   ; load; *envptr20296
  %_957195 = call i64 @prim_car(i64 %rvp9443)                                        ; call prim_car
  %rvp9442 = call i64 @prim_cdr(i64 %rvp9443)                                        ; call prim_cdr
  %IXv$_956882 = call i64 @prim_car(i64 %rvp9442)                                    ; call prim_car
  %na9438 = call i64 @prim_cdr(i64 %rvp9442)                                         ; call prim_cdr
  %arg8209 = add i64 0, 0                                                            ; quoted ()
  %rva9441 = add i64 0, 0                                                            ; quoted ()
  %rva9440 = call i64 @prim_cons(i64 %xNv$head, i64 %rva9441)                        ; call prim_cons
  %rva9439 = call i64 @prim_cons(i64 %arg8209, i64 %rva9440)                         ; call prim_cons
  %cloptr20297 = inttoptr i64 %cont7189 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20298 = getelementptr inbounds i64, i64* %cloptr20297, i64 0                 ; &cloptr20297[0]
  %f20300 = load i64, i64* %i0ptr20298, align 8                                      ; load; *i0ptr20298
  %fptr20299 = inttoptr i64 %f20300 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20299(i64 %cont7189, i64 %rva9439)                  ; tail call
  ret void
}


define void @lam10332(i64 %env10333, i64 %VTh$lst7236) {
  %cont7235 = call i64 @prim_car(i64 %VTh$lst7236)                                   ; call prim_car
  %VTh$lst = call i64 @prim_cdr(i64 %VTh$lst7236)                                    ; call prim_cdr
  %arg8230 = add i64 0, 0                                                            ; quoted ()
  %rva9484 = add i64 0, 0                                                            ; quoted ()
  %rva9483 = call i64 @prim_cons(i64 %VTh$lst, i64 %rva9484)                         ; call prim_cons
  %rva9482 = call i64 @prim_cons(i64 %arg8230, i64 %rva9483)                         ; call prim_cons
  %cloptr20301 = inttoptr i64 %cont7235 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20302 = getelementptr inbounds i64, i64* %cloptr20301, i64 0                 ; &cloptr20301[0]
  %f20304 = load i64, i64* %i0ptr20302, align 8                                      ; load; *i0ptr20302
  %fptr20303 = inttoptr i64 %f20304 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20303(i64 %cont7235, i64 %rva9482)                  ; tail call
  ret void
}


define void @lam10328(i64 %env10329, i64 %rvp9575) {
  %envptr20305 = inttoptr i64 %env10329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20306 = getelementptr inbounds i64, i64* %envptr20305, i64 3                ; &envptr20305[3]
  %a7037 = load i64, i64* %envptr20306, align 8                                      ; load; *envptr20306
  %envptr20307 = inttoptr i64 %env10329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20308 = getelementptr inbounds i64, i64* %envptr20307, i64 2                ; &envptr20307[2]
  %IqI$assert = load i64, i64* %envptr20308, align 8                                 ; load; *envptr20308
  %envptr20309 = inttoptr i64 %env10329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20310 = getelementptr inbounds i64, i64* %envptr20309, i64 1                ; &envptr20309[1]
  %jS8$amb = load i64, i64* %envptr20310, align 8                                    ; load; *envptr20310
  %_957234 = call i64 @prim_car(i64 %rvp9575)                                        ; call prim_car
  %rvp9574 = call i64 @prim_cdr(i64 %rvp9575)                                        ; call prim_cdr
  %a7038 = call i64 @prim_car(i64 %rvp9574)                                          ; call prim_car
  %na9486 = call i64 @prim_cdr(i64 %rvp9574)                                         ; call prim_cdr
  %arg8233 = call i64 @const_init_int(i64 5)                                         ; quoted int
  %a7039 = call i64 @prim_cons(i64 %arg8233, i64 %a7038)                             ; call prim_cons
  %arg8235 = call i64 @const_init_int(i64 4)                                         ; quoted int
  %a7040 = call i64 @prim_cons(i64 %arg8235, i64 %a7039)                             ; call prim_cons
  %arg8237 = call i64 @const_init_int(i64 3)                                         ; quoted int
  %a7041 = call i64 @prim_cons(i64 %arg8237, i64 %a7040)                             ; call prim_cons
  %arg8239 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %a7042 = call i64 @prim_cons(i64 %arg8239, i64 %a7041)                             ; call prim_cons
  %cloptr20311 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr20313 = getelementptr inbounds i64, i64* %cloptr20311, i64 1                  ; &eptr20313[1]
  %eptr20314 = getelementptr inbounds i64, i64* %cloptr20311, i64 2                  ; &eptr20314[2]
  store i64 %jS8$amb, i64* %eptr20313                                                ; *eptr20313 = %jS8$amb
  store i64 %IqI$assert, i64* %eptr20314                                             ; *eptr20314 = %IqI$assert
  %eptr20312 = getelementptr inbounds i64, i64* %cloptr20311, i64 0                  ; &cloptr20311[0]
  %f20315 = ptrtoint void(i64,i64)* @lam10322 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20315, i64* %eptr20312                                                 ; store fptr
  %arg8241 = ptrtoint i64* %cloptr20311 to i64                                       ; closure cast; i64* -> i64
  %rva9573 = add i64 0, 0                                                            ; quoted ()
  %rva9572 = call i64 @prim_cons(i64 %a7042, i64 %rva9573)                           ; call prim_cons
  %rva9571 = call i64 @prim_cons(i64 %arg8241, i64 %rva9572)                         ; call prim_cons
  %cloptr20316 = inttoptr i64 %a7037 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr20317 = getelementptr inbounds i64, i64* %cloptr20316, i64 0                 ; &cloptr20316[0]
  %f20319 = load i64, i64* %i0ptr20317, align 8                                      ; load; *i0ptr20317
  %fptr20318 = inttoptr i64 %f20319 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20318(i64 %a7037, i64 %rva9571)                     ; tail call
  ret void
}


define void @lam10322(i64 %env10323, i64 %rvp9570) {
  %envptr20320 = inttoptr i64 %env10323 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20321 = getelementptr inbounds i64, i64* %envptr20320, i64 2                ; &envptr20320[2]
  %IqI$assert = load i64, i64* %envptr20321, align 8                                 ; load; *envptr20321
  %envptr20322 = inttoptr i64 %env10323 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20323 = getelementptr inbounds i64, i64* %envptr20322, i64 1                ; &envptr20322[1]
  %jS8$amb = load i64, i64* %envptr20323, align 8                                    ; load; *envptr20323
  %_957213 = call i64 @prim_car(i64 %rvp9570)                                        ; call prim_car
  %rvp9569 = call i64 @prim_cdr(i64 %rvp9570)                                        ; call prim_cdr
  %eOT$a = call i64 @prim_car(i64 %rvp9569)                                          ; call prim_car
  %na9488 = call i64 @prim_cdr(i64 %rvp9569)                                         ; call prim_cdr
  %arg8243 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7043 = call i64 @prim_vector_45ref(i64 %jS8$amb, i64 %arg8243)                   ; call prim_vector_45ref
  %cloptr20324 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20325 = getelementptr inbounds i64, i64* %cloptr20324, i64 0                  ; &cloptr20324[0]
  %f20326 = ptrtoint void(i64,i64)* @lam10319 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20326, i64* %eptr20325                                                 ; store fptr
  %arg8246 = ptrtoint i64* %cloptr20324 to i64                                       ; closure cast; i64* -> i64
  %cloptr20327 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20329 = getelementptr inbounds i64, i64* %cloptr20327, i64 1                  ; &eptr20329[1]
  %eptr20330 = getelementptr inbounds i64, i64* %cloptr20327, i64 2                  ; &eptr20330[2]
  %eptr20331 = getelementptr inbounds i64, i64* %cloptr20327, i64 3                  ; &eptr20331[3]
  %eptr20332 = getelementptr inbounds i64, i64* %cloptr20327, i64 4                  ; &eptr20332[4]
  store i64 %jS8$amb, i64* %eptr20329                                                ; *eptr20329 = %jS8$amb
  store i64 %a7043, i64* %eptr20330                                                  ; *eptr20330 = %a7043
  store i64 %eOT$a, i64* %eptr20331                                                  ; *eptr20331 = %eOT$a
  store i64 %IqI$assert, i64* %eptr20332                                             ; *eptr20332 = %IqI$assert
  %eptr20328 = getelementptr inbounds i64, i64* %cloptr20327, i64 0                  ; &cloptr20327[0]
  %f20333 = ptrtoint void(i64,i64)* @lam10315 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20333, i64* %eptr20328                                                 ; store fptr
  %arg8245 = ptrtoint i64* %cloptr20327 to i64                                       ; closure cast; i64* -> i64
  %rva9568 = add i64 0, 0                                                            ; quoted ()
  %rva9567 = call i64 @prim_cons(i64 %arg8245, i64 %rva9568)                         ; call prim_cons
  %cloptr20334 = inttoptr i64 %arg8246 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20335 = getelementptr inbounds i64, i64* %cloptr20334, i64 0                 ; &cloptr20334[0]
  %f20337 = load i64, i64* %i0ptr20335, align 8                                      ; load; *i0ptr20335
  %fptr20336 = inttoptr i64 %f20337 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20336(i64 %arg8246, i64 %rva9567)                   ; tail call
  ret void
}


define void @lam10319(i64 %env10320, i64 %UUE$lst7233) {
  %cont7232 = call i64 @prim_car(i64 %UUE$lst7233)                                   ; call prim_car
  %UUE$lst = call i64 @prim_cdr(i64 %UUE$lst7233)                                    ; call prim_cdr
  %arg8250 = add i64 0, 0                                                            ; quoted ()
  %rva9491 = add i64 0, 0                                                            ; quoted ()
  %rva9490 = call i64 @prim_cons(i64 %UUE$lst, i64 %rva9491)                         ; call prim_cons
  %rva9489 = call i64 @prim_cons(i64 %arg8250, i64 %rva9490)                         ; call prim_cons
  %cloptr20338 = inttoptr i64 %cont7232 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20339 = getelementptr inbounds i64, i64* %cloptr20338, i64 0                 ; &cloptr20338[0]
  %f20341 = load i64, i64* %i0ptr20339, align 8                                      ; load; *i0ptr20339
  %fptr20340 = inttoptr i64 %f20341 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20340(i64 %cont7232, i64 %rva9489)                  ; tail call
  ret void
}


define void @lam10315(i64 %env10316, i64 %rvp9566) {
  %envptr20342 = inttoptr i64 %env10316 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20343 = getelementptr inbounds i64, i64* %envptr20342, i64 4                ; &envptr20342[4]
  %IqI$assert = load i64, i64* %envptr20343, align 8                                 ; load; *envptr20343
  %envptr20344 = inttoptr i64 %env10316 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20345 = getelementptr inbounds i64, i64* %envptr20344, i64 3                ; &envptr20344[3]
  %eOT$a = load i64, i64* %envptr20345, align 8                                      ; load; *envptr20345
  %envptr20346 = inttoptr i64 %env10316 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20347 = getelementptr inbounds i64, i64* %envptr20346, i64 2                ; &envptr20346[2]
  %a7043 = load i64, i64* %envptr20347, align 8                                      ; load; *envptr20347
  %envptr20348 = inttoptr i64 %env10316 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20349 = getelementptr inbounds i64, i64* %envptr20348, i64 1                ; &envptr20348[1]
  %jS8$amb = load i64, i64* %envptr20349, align 8                                    ; load; *envptr20349
  %_957231 = call i64 @prim_car(i64 %rvp9566)                                        ; call prim_car
  %rvp9565 = call i64 @prim_cdr(i64 %rvp9566)                                        ; call prim_cdr
  %a7044 = call i64 @prim_car(i64 %rvp9565)                                          ; call prim_car
  %na9493 = call i64 @prim_cdr(i64 %rvp9565)                                         ; call prim_cdr
  %arg8253 = call i64 @const_init_int(i64 6)                                         ; quoted int
  %a7045 = call i64 @prim_cons(i64 %arg8253, i64 %a7044)                             ; call prim_cons
  %arg8255 = call i64 @const_init_int(i64 5)                                         ; quoted int
  %a7046 = call i64 @prim_cons(i64 %arg8255, i64 %a7045)                             ; call prim_cons
  %arg8257 = call i64 @const_init_int(i64 4)                                         ; quoted int
  %a7047 = call i64 @prim_cons(i64 %arg8257, i64 %a7046)                             ; call prim_cons
  %arg8259 = call i64 @const_init_int(i64 3)                                         ; quoted int
  %a7048 = call i64 @prim_cons(i64 %arg8259, i64 %a7047)                             ; call prim_cons
  %arg8261 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %a7049 = call i64 @prim_cons(i64 %arg8261, i64 %a7048)                             ; call prim_cons
  %cloptr20350 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr20352 = getelementptr inbounds i64, i64* %cloptr20350, i64 1                  ; &eptr20352[1]
  %eptr20353 = getelementptr inbounds i64, i64* %cloptr20350, i64 2                  ; &eptr20353[2]
  %eptr20354 = getelementptr inbounds i64, i64* %cloptr20350, i64 3                  ; &eptr20354[3]
  store i64 %jS8$amb, i64* %eptr20352                                                ; *eptr20352 = %jS8$amb
  store i64 %eOT$a, i64* %eptr20353                                                  ; *eptr20353 = %eOT$a
  store i64 %IqI$assert, i64* %eptr20354                                             ; *eptr20354 = %IqI$assert
  %eptr20351 = getelementptr inbounds i64, i64* %cloptr20350, i64 0                  ; &cloptr20350[0]
  %f20355 = ptrtoint void(i64,i64)* @lam10308 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20355, i64* %eptr20351                                                 ; store fptr
  %arg8263 = ptrtoint i64* %cloptr20350 to i64                                       ; closure cast; i64* -> i64
  %rva9564 = add i64 0, 0                                                            ; quoted ()
  %rva9563 = call i64 @prim_cons(i64 %a7049, i64 %rva9564)                           ; call prim_cons
  %rva9562 = call i64 @prim_cons(i64 %arg8263, i64 %rva9563)                         ; call prim_cons
  %cloptr20356 = inttoptr i64 %a7043 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr20357 = getelementptr inbounds i64, i64* %cloptr20356, i64 0                 ; &cloptr20356[0]
  %f20359 = load i64, i64* %i0ptr20357, align 8                                      ; load; *i0ptr20357
  %fptr20358 = inttoptr i64 %f20359 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20358(i64 %a7043, i64 %rva9562)                     ; tail call
  ret void
}


define void @lam10308(i64 %env10309, i64 %rvp9561) {
  %envptr20360 = inttoptr i64 %env10309 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20361 = getelementptr inbounds i64, i64* %envptr20360, i64 3                ; &envptr20360[3]
  %IqI$assert = load i64, i64* %envptr20361, align 8                                 ; load; *envptr20361
  %envptr20362 = inttoptr i64 %env10309 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20363 = getelementptr inbounds i64, i64* %envptr20362, i64 2                ; &envptr20362[2]
  %eOT$a = load i64, i64* %envptr20363, align 8                                      ; load; *envptr20363
  %envptr20364 = inttoptr i64 %env10309 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20365 = getelementptr inbounds i64, i64* %envptr20364, i64 1                ; &envptr20364[1]
  %jS8$amb = load i64, i64* %envptr20365, align 8                                    ; load; *envptr20365
  %_957214 = call i64 @prim_car(i64 %rvp9561)                                        ; call prim_car
  %rvp9560 = call i64 @prim_cdr(i64 %rvp9561)                                        ; call prim_cdr
  %bXE$b = call i64 @prim_car(i64 %rvp9560)                                          ; call prim_car
  %na9495 = call i64 @prim_cdr(i64 %rvp9560)                                         ; call prim_cdr
  %arg8265 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7050 = call i64 @prim_vector_45ref(i64 %jS8$amb, i64 %arg8265)                   ; call prim_vector_45ref
  %cloptr20366 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20367 = getelementptr inbounds i64, i64* %cloptr20366, i64 0                  ; &cloptr20366[0]
  %f20368 = ptrtoint void(i64,i64)* @lam10305 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20368, i64* %eptr20367                                                 ; store fptr
  %arg8268 = ptrtoint i64* %cloptr20366 to i64                                       ; closure cast; i64* -> i64
  %cloptr20369 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20371 = getelementptr inbounds i64, i64* %cloptr20369, i64 1                  ; &eptr20371[1]
  %eptr20372 = getelementptr inbounds i64, i64* %cloptr20369, i64 2                  ; &eptr20372[2]
  %eptr20373 = getelementptr inbounds i64, i64* %cloptr20369, i64 3                  ; &eptr20373[3]
  %eptr20374 = getelementptr inbounds i64, i64* %cloptr20369, i64 4                  ; &eptr20374[4]
  store i64 %a7050, i64* %eptr20371                                                  ; *eptr20371 = %a7050
  store i64 %eOT$a, i64* %eptr20372                                                  ; *eptr20372 = %eOT$a
  store i64 %bXE$b, i64* %eptr20373                                                  ; *eptr20373 = %bXE$b
  store i64 %IqI$assert, i64* %eptr20374                                             ; *eptr20374 = %IqI$assert
  %eptr20370 = getelementptr inbounds i64, i64* %cloptr20369, i64 0                  ; &cloptr20369[0]
  %f20375 = ptrtoint void(i64,i64)* @lam10301 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20375, i64* %eptr20370                                                 ; store fptr
  %arg8267 = ptrtoint i64* %cloptr20369 to i64                                       ; closure cast; i64* -> i64
  %rva9559 = add i64 0, 0                                                            ; quoted ()
  %rva9558 = call i64 @prim_cons(i64 %arg8267, i64 %rva9559)                         ; call prim_cons
  %cloptr20376 = inttoptr i64 %arg8268 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20377 = getelementptr inbounds i64, i64* %cloptr20376, i64 0                 ; &cloptr20376[0]
  %f20379 = load i64, i64* %i0ptr20377, align 8                                      ; load; *i0ptr20377
  %fptr20378 = inttoptr i64 %f20379 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20378(i64 %arg8268, i64 %rva9558)                   ; tail call
  ret void
}


define void @lam10305(i64 %env10306, i64 %EEz$lst7230) {
  %cont7229 = call i64 @prim_car(i64 %EEz$lst7230)                                   ; call prim_car
  %EEz$lst = call i64 @prim_cdr(i64 %EEz$lst7230)                                    ; call prim_cdr
  %arg8272 = add i64 0, 0                                                            ; quoted ()
  %rva9498 = add i64 0, 0                                                            ; quoted ()
  %rva9497 = call i64 @prim_cons(i64 %EEz$lst, i64 %rva9498)                         ; call prim_cons
  %rva9496 = call i64 @prim_cons(i64 %arg8272, i64 %rva9497)                         ; call prim_cons
  %cloptr20380 = inttoptr i64 %cont7229 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20381 = getelementptr inbounds i64, i64* %cloptr20380, i64 0                 ; &cloptr20380[0]
  %f20383 = load i64, i64* %i0ptr20381, align 8                                      ; load; *i0ptr20381
  %fptr20382 = inttoptr i64 %f20383 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20382(i64 %cont7229, i64 %rva9496)                  ; tail call
  ret void
}


define void @lam10301(i64 %env10302, i64 %rvp9557) {
  %envptr20384 = inttoptr i64 %env10302 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20385 = getelementptr inbounds i64, i64* %envptr20384, i64 4                ; &envptr20384[4]
  %IqI$assert = load i64, i64* %envptr20385, align 8                                 ; load; *envptr20385
  %envptr20386 = inttoptr i64 %env10302 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20387 = getelementptr inbounds i64, i64* %envptr20386, i64 3                ; &envptr20386[3]
  %bXE$b = load i64, i64* %envptr20387, align 8                                      ; load; *envptr20387
  %envptr20388 = inttoptr i64 %env10302 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20389 = getelementptr inbounds i64, i64* %envptr20388, i64 2                ; &envptr20388[2]
  %eOT$a = load i64, i64* %envptr20389, align 8                                      ; load; *envptr20389
  %envptr20390 = inttoptr i64 %env10302 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20391 = getelementptr inbounds i64, i64* %envptr20390, i64 1                ; &envptr20390[1]
  %a7050 = load i64, i64* %envptr20391, align 8                                      ; load; *envptr20391
  %_957228 = call i64 @prim_car(i64 %rvp9557)                                        ; call prim_car
  %rvp9556 = call i64 @prim_cdr(i64 %rvp9557)                                        ; call prim_cdr
  %a7051 = call i64 @prim_car(i64 %rvp9556)                                          ; call prim_car
  %na9500 = call i64 @prim_cdr(i64 %rvp9556)                                         ; call prim_cdr
  %arg8275 = call i64 @const_init_int(i64 5)                                         ; quoted int
  %a7052 = call i64 @prim_cons(i64 %arg8275, i64 %a7051)                             ; call prim_cons
  %arg8277 = call i64 @const_init_int(i64 4)                                         ; quoted int
  %a7053 = call i64 @prim_cons(i64 %arg8277, i64 %a7052)                             ; call prim_cons
  %arg8279 = call i64 @const_init_int(i64 3)                                         ; quoted int
  %a7054 = call i64 @prim_cons(i64 %arg8279, i64 %a7053)                             ; call prim_cons
  %arg8281 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %a7055 = call i64 @prim_cons(i64 %arg8281, i64 %a7054)                             ; call prim_cons
  %cloptr20392 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr20394 = getelementptr inbounds i64, i64* %cloptr20392, i64 1                  ; &eptr20394[1]
  %eptr20395 = getelementptr inbounds i64, i64* %cloptr20392, i64 2                  ; &eptr20395[2]
  %eptr20396 = getelementptr inbounds i64, i64* %cloptr20392, i64 3                  ; &eptr20396[3]
  store i64 %eOT$a, i64* %eptr20394                                                  ; *eptr20394 = %eOT$a
  store i64 %bXE$b, i64* %eptr20395                                                  ; *eptr20395 = %bXE$b
  store i64 %IqI$assert, i64* %eptr20396                                             ; *eptr20396 = %IqI$assert
  %eptr20393 = getelementptr inbounds i64, i64* %cloptr20392, i64 0                  ; &cloptr20392[0]
  %f20397 = ptrtoint void(i64,i64)* @lam10295 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20397, i64* %eptr20393                                                 ; store fptr
  %arg8283 = ptrtoint i64* %cloptr20392 to i64                                       ; closure cast; i64* -> i64
  %rva9555 = add i64 0, 0                                                            ; quoted ()
  %rva9554 = call i64 @prim_cons(i64 %a7055, i64 %rva9555)                           ; call prim_cons
  %rva9553 = call i64 @prim_cons(i64 %arg8283, i64 %rva9554)                         ; call prim_cons
  %cloptr20398 = inttoptr i64 %a7050 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr20399 = getelementptr inbounds i64, i64* %cloptr20398, i64 0                 ; &cloptr20398[0]
  %f20401 = load i64, i64* %i0ptr20399, align 8                                      ; load; *i0ptr20399
  %fptr20400 = inttoptr i64 %f20401 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20400(i64 %a7050, i64 %rva9553)                     ; tail call
  ret void
}


define void @lam10295(i64 %env10296, i64 %rvp9552) {
  %envptr20402 = inttoptr i64 %env10296 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20403 = getelementptr inbounds i64, i64* %envptr20402, i64 3                ; &envptr20402[3]
  %IqI$assert = load i64, i64* %envptr20403, align 8                                 ; load; *envptr20403
  %envptr20404 = inttoptr i64 %env10296 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20405 = getelementptr inbounds i64, i64* %envptr20404, i64 2                ; &envptr20404[2]
  %bXE$b = load i64, i64* %envptr20405, align 8                                      ; load; *envptr20405
  %envptr20406 = inttoptr i64 %env10296 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20407 = getelementptr inbounds i64, i64* %envptr20406, i64 1                ; &envptr20406[1]
  %eOT$a = load i64, i64* %envptr20407, align 8                                      ; load; *envptr20407
  %_957215 = call i64 @prim_car(i64 %rvp9552)                                        ; call prim_car
  %rvp9551 = call i64 @prim_cdr(i64 %rvp9552)                                        ; call prim_cdr
  %Pfq$c = call i64 @prim_car(i64 %rvp9551)                                          ; call prim_car
  %na9502 = call i64 @prim_cdr(i64 %rvp9551)                                         ; call prim_cdr
  %cloptr20408 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20409 = getelementptr inbounds i64, i64* %cloptr20408, i64 0                  ; &cloptr20408[0]
  %f20410 = ptrtoint void(i64,i64)* @lam10293 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20410, i64* %eptr20409                                                 ; store fptr
  %arg8286 = ptrtoint i64* %cloptr20408 to i64                                       ; closure cast; i64* -> i64
  %cloptr20411 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20413 = getelementptr inbounds i64, i64* %cloptr20411, i64 1                  ; &eptr20413[1]
  %eptr20414 = getelementptr inbounds i64, i64* %cloptr20411, i64 2                  ; &eptr20414[2]
  %eptr20415 = getelementptr inbounds i64, i64* %cloptr20411, i64 3                  ; &eptr20415[3]
  %eptr20416 = getelementptr inbounds i64, i64* %cloptr20411, i64 4                  ; &eptr20416[4]
  store i64 %Pfq$c, i64* %eptr20413                                                  ; *eptr20413 = %Pfq$c
  store i64 %eOT$a, i64* %eptr20414                                                  ; *eptr20414 = %eOT$a
  store i64 %bXE$b, i64* %eptr20415                                                  ; *eptr20415 = %bXE$b
  store i64 %IqI$assert, i64* %eptr20416                                             ; *eptr20416 = %IqI$assert
  %eptr20412 = getelementptr inbounds i64, i64* %cloptr20411, i64 0                  ; &cloptr20411[0]
  %f20417 = ptrtoint void(i64,i64)* @lam10289 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20417, i64* %eptr20412                                                 ; store fptr
  %arg8285 = ptrtoint i64* %cloptr20411 to i64                                       ; closure cast; i64* -> i64
  %rva9550 = add i64 0, 0                                                            ; quoted ()
  %rva9549 = call i64 @prim_cons(i64 %arg8285, i64 %rva9550)                         ; call prim_cons
  %cloptr20418 = inttoptr i64 %arg8286 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20419 = getelementptr inbounds i64, i64* %cloptr20418, i64 0                 ; &cloptr20418[0]
  %f20421 = load i64, i64* %i0ptr20419, align 8                                      ; load; *i0ptr20419
  %fptr20420 = inttoptr i64 %f20421 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20420(i64 %arg8286, i64 %rva9549)                   ; tail call
  ret void
}


define void @lam10293(i64 %env10294, i64 %WfI$lst7227) {
  %cont7226 = call i64 @prim_car(i64 %WfI$lst7227)                                   ; call prim_car
  %WfI$lst = call i64 @prim_cdr(i64 %WfI$lst7227)                                    ; call prim_cdr
  %arg8290 = add i64 0, 0                                                            ; quoted ()
  %rva9505 = add i64 0, 0                                                            ; quoted ()
  %rva9504 = call i64 @prim_cons(i64 %WfI$lst, i64 %rva9505)                         ; call prim_cons
  %rva9503 = call i64 @prim_cons(i64 %arg8290, i64 %rva9504)                         ; call prim_cons
  %cloptr20422 = inttoptr i64 %cont7226 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20423 = getelementptr inbounds i64, i64* %cloptr20422, i64 0                 ; &cloptr20422[0]
  %f20425 = load i64, i64* %i0ptr20423, align 8                                      ; load; *i0ptr20423
  %fptr20424 = inttoptr i64 %f20425 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20424(i64 %cont7226, i64 %rva9503)                  ; tail call
  ret void
}


define void @lam10289(i64 %env10290, i64 %rvp9548) {
  %envptr20426 = inttoptr i64 %env10290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20427 = getelementptr inbounds i64, i64* %envptr20426, i64 4                ; &envptr20426[4]
  %IqI$assert = load i64, i64* %envptr20427, align 8                                 ; load; *envptr20427
  %envptr20428 = inttoptr i64 %env10290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20429 = getelementptr inbounds i64, i64* %envptr20428, i64 3                ; &envptr20428[3]
  %bXE$b = load i64, i64* %envptr20429, align 8                                      ; load; *envptr20429
  %envptr20430 = inttoptr i64 %env10290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20431 = getelementptr inbounds i64, i64* %envptr20430, i64 2                ; &envptr20430[2]
  %eOT$a = load i64, i64* %envptr20431, align 8                                      ; load; *envptr20431
  %envptr20432 = inttoptr i64 %env10290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20433 = getelementptr inbounds i64, i64* %envptr20432, i64 1                ; &envptr20432[1]
  %Pfq$c = load i64, i64* %envptr20433, align 8                                      ; load; *envptr20433
  %_957224 = call i64 @prim_car(i64 %rvp9548)                                        ; call prim_car
  %rvp9547 = call i64 @prim_cdr(i64 %rvp9548)                                        ; call prim_cdr
  %a7056 = call i64 @prim_car(i64 %rvp9547)                                          ; call prim_car
  %na9507 = call i64 @prim_cdr(i64 %rvp9547)                                         ; call prim_cdr
  %arg8293 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7225 = call i64 @prim_make_45vector(i64 %arg8293, i64 %a7056)              ; call prim_make_45vector
  %cloptr20434 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20436 = getelementptr inbounds i64, i64* %cloptr20434, i64 1                  ; &eptr20436[1]
  %eptr20437 = getelementptr inbounds i64, i64* %cloptr20434, i64 2                  ; &eptr20437[2]
  %eptr20438 = getelementptr inbounds i64, i64* %cloptr20434, i64 3                  ; &eptr20438[3]
  %eptr20439 = getelementptr inbounds i64, i64* %cloptr20434, i64 4                  ; &eptr20439[4]
  store i64 %Pfq$c, i64* %eptr20436                                                  ; *eptr20436 = %Pfq$c
  store i64 %eOT$a, i64* %eptr20437                                                  ; *eptr20437 = %eOT$a
  store i64 %bXE$b, i64* %eptr20438                                                  ; *eptr20438 = %bXE$b
  store i64 %IqI$assert, i64* %eptr20439                                             ; *eptr20439 = %IqI$assert
  %eptr20435 = getelementptr inbounds i64, i64* %cloptr20434, i64 0                  ; &cloptr20434[0]
  %f20440 = ptrtoint void(i64,i64)* @lam10286 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20440, i64* %eptr20435                                                 ; store fptr
  %arg8296 = ptrtoint i64* %cloptr20434 to i64                                       ; closure cast; i64* -> i64
  %arg8295 = add i64 0, 0                                                            ; quoted ()
  %rva9546 = add i64 0, 0                                                            ; quoted ()
  %rva9545 = call i64 @prim_cons(i64 %retprim7225, i64 %rva9546)                     ; call prim_cons
  %rva9544 = call i64 @prim_cons(i64 %arg8295, i64 %rva9545)                         ; call prim_cons
  %cloptr20441 = inttoptr i64 %arg8296 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20442 = getelementptr inbounds i64, i64* %cloptr20441, i64 0                 ; &cloptr20441[0]
  %f20444 = load i64, i64* %i0ptr20442, align 8                                      ; load; *i0ptr20442
  %fptr20443 = inttoptr i64 %f20444 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20443(i64 %arg8296, i64 %rva9544)                   ; tail call
  ret void
}


define void @lam10286(i64 %env10287, i64 %rvp9543) {
  %envptr20445 = inttoptr i64 %env10287 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20446 = getelementptr inbounds i64, i64* %envptr20445, i64 4                ; &envptr20445[4]
  %IqI$assert = load i64, i64* %envptr20446, align 8                                 ; load; *envptr20446
  %envptr20447 = inttoptr i64 %env10287 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20448 = getelementptr inbounds i64, i64* %envptr20447, i64 3                ; &envptr20447[3]
  %bXE$b = load i64, i64* %envptr20448, align 8                                      ; load; *envptr20448
  %envptr20449 = inttoptr i64 %env10287 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20450 = getelementptr inbounds i64, i64* %envptr20449, i64 2                ; &envptr20449[2]
  %eOT$a = load i64, i64* %envptr20450, align 8                                      ; load; *envptr20450
  %envptr20451 = inttoptr i64 %env10287 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20452 = getelementptr inbounds i64, i64* %envptr20451, i64 1                ; &envptr20451[1]
  %Pfq$c = load i64, i64* %envptr20452, align 8                                      ; load; *envptr20452
  %_957216 = call i64 @prim_car(i64 %rvp9543)                                        ; call prim_car
  %rvp9542 = call i64 @prim_cdr(i64 %rvp9543)                                        ; call prim_cdr
  %qFF$tmp6866 = call i64 @prim_car(i64 %rvp9542)                                    ; call prim_car
  %na9509 = call i64 @prim_cdr(i64 %rvp9542)                                         ; call prim_cdr
  %arg8297 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7057 = call i64 @prim_vector_45ref(i64 %IqI$assert, i64 %arg8297)                ; call prim_vector_45ref
  %a7058 = call i64 @prim__42(i64 %eOT$a, i64 %eOT$a)                                ; call prim__42
  %a7059 = call i64 @prim__42(i64 %bXE$b, i64 %bXE$b)                                ; call prim__42
  %a7060 = call i64 @prim__43(i64 %a7058, i64 %a7059)                                ; call prim__43
  %a7061 = call i64 @prim__42(i64 %Pfq$c, i64 %Pfq$c)                                ; call prim__42
  %a7062 = call i64 @prim__61(i64 %a7060, i64 %a7061)                                ; call prim__61
  %cloptr20453 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20455 = getelementptr inbounds i64, i64* %cloptr20453, i64 1                  ; &eptr20455[1]
  %eptr20456 = getelementptr inbounds i64, i64* %cloptr20453, i64 2                  ; &eptr20456[2]
  %eptr20457 = getelementptr inbounds i64, i64* %cloptr20453, i64 3                  ; &eptr20457[3]
  %eptr20458 = getelementptr inbounds i64, i64* %cloptr20453, i64 4                  ; &eptr20458[4]
  store i64 %Pfq$c, i64* %eptr20455                                                  ; *eptr20455 = %Pfq$c
  store i64 %eOT$a, i64* %eptr20456                                                  ; *eptr20456 = %eOT$a
  store i64 %bXE$b, i64* %eptr20457                                                  ; *eptr20457 = %bXE$b
  store i64 %qFF$tmp6866, i64* %eptr20458                                            ; *eptr20458 = %qFF$tmp6866
  %eptr20454 = getelementptr inbounds i64, i64* %cloptr20453, i64 0                  ; &cloptr20453[0]
  %f20459 = ptrtoint void(i64,i64)* @lam10283 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20459, i64* %eptr20454                                                 ; store fptr
  %arg8310 = ptrtoint i64* %cloptr20453 to i64                                       ; closure cast; i64* -> i64
  %rva9541 = add i64 0, 0                                                            ; quoted ()
  %rva9540 = call i64 @prim_cons(i64 %a7062, i64 %rva9541)                           ; call prim_cons
  %rva9539 = call i64 @prim_cons(i64 %arg8310, i64 %rva9540)                         ; call prim_cons
  %cloptr20460 = inttoptr i64 %a7057 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr20461 = getelementptr inbounds i64, i64* %cloptr20460, i64 0                 ; &cloptr20460[0]
  %f20463 = load i64, i64* %i0ptr20461, align 8                                      ; load; *i0ptr20461
  %fptr20462 = inttoptr i64 %f20463 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20462(i64 %a7057, i64 %rva9539)                     ; tail call
  ret void
}


define void @lam10283(i64 %env10284, i64 %rvp9538) {
  %envptr20464 = inttoptr i64 %env10284 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20465 = getelementptr inbounds i64, i64* %envptr20464, i64 4                ; &envptr20464[4]
  %qFF$tmp6866 = load i64, i64* %envptr20465, align 8                                ; load; *envptr20465
  %envptr20466 = inttoptr i64 %env10284 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20467 = getelementptr inbounds i64, i64* %envptr20466, i64 3                ; &envptr20466[3]
  %bXE$b = load i64, i64* %envptr20467, align 8                                      ; load; *envptr20467
  %envptr20468 = inttoptr i64 %env10284 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20469 = getelementptr inbounds i64, i64* %envptr20468, i64 2                ; &envptr20468[2]
  %eOT$a = load i64, i64* %envptr20469, align 8                                      ; load; *envptr20469
  %envptr20470 = inttoptr i64 %env10284 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20471 = getelementptr inbounds i64, i64* %envptr20470, i64 1                ; &envptr20470[1]
  %Pfq$c = load i64, i64* %envptr20471, align 8                                      ; load; *envptr20471
  %_957222 = call i64 @prim_car(i64 %rvp9538)                                        ; call prim_car
  %rvp9537 = call i64 @prim_cdr(i64 %rvp9538)                                        ; call prim_cdr
  %a7063 = call i64 @prim_car(i64 %rvp9537)                                          ; call prim_car
  %na9511 = call i64 @prim_cdr(i64 %rvp9537)                                         ; call prim_cdr
  %arg8313 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7223 = call i64 @prim_vector_45set_33(i64 %qFF$tmp6866, i64 %arg8313, i64 %a7063); call prim_vector_45set_33
  %cloptr20472 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr20474 = getelementptr inbounds i64, i64* %cloptr20472, i64 1                  ; &eptr20474[1]
  %eptr20475 = getelementptr inbounds i64, i64* %cloptr20472, i64 2                  ; &eptr20475[2]
  %eptr20476 = getelementptr inbounds i64, i64* %cloptr20472, i64 3                  ; &eptr20476[3]
  store i64 %Pfq$c, i64* %eptr20474                                                  ; *eptr20474 = %Pfq$c
  store i64 %eOT$a, i64* %eptr20475                                                  ; *eptr20475 = %eOT$a
  store i64 %bXE$b, i64* %eptr20476                                                  ; *eptr20476 = %bXE$b
  %eptr20473 = getelementptr inbounds i64, i64* %cloptr20472, i64 0                  ; &cloptr20472[0]
  %f20477 = ptrtoint void(i64,i64)* @lam10280 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20477, i64* %eptr20473                                                 ; store fptr
  %arg8317 = ptrtoint i64* %cloptr20472 to i64                                       ; closure cast; i64* -> i64
  %arg8316 = add i64 0, 0                                                            ; quoted ()
  %rva9536 = add i64 0, 0                                                            ; quoted ()
  %rva9535 = call i64 @prim_cons(i64 %retprim7223, i64 %rva9536)                     ; call prim_cons
  %rva9534 = call i64 @prim_cons(i64 %arg8316, i64 %rva9535)                         ; call prim_cons
  %cloptr20478 = inttoptr i64 %arg8317 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20479 = getelementptr inbounds i64, i64* %cloptr20478, i64 0                 ; &cloptr20478[0]
  %f20481 = load i64, i64* %i0ptr20479, align 8                                      ; load; *i0ptr20479
  %fptr20480 = inttoptr i64 %f20481 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20480(i64 %arg8317, i64 %rva9534)                   ; tail call
  ret void
}


define void @lam10280(i64 %env10281, i64 %rvp9533) {
  %envptr20482 = inttoptr i64 %env10281 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20483 = getelementptr inbounds i64, i64* %envptr20482, i64 3                ; &envptr20482[3]
  %bXE$b = load i64, i64* %envptr20483, align 8                                      ; load; *envptr20483
  %envptr20484 = inttoptr i64 %env10281 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20485 = getelementptr inbounds i64, i64* %envptr20484, i64 2                ; &envptr20484[2]
  %eOT$a = load i64, i64* %envptr20485, align 8                                      ; load; *envptr20485
  %envptr20486 = inttoptr i64 %env10281 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20487 = getelementptr inbounds i64, i64* %envptr20486, i64 1                ; &envptr20486[1]
  %Pfq$c = load i64, i64* %envptr20487, align 8                                      ; load; *envptr20487
  %_957217 = call i64 @prim_car(i64 %rvp9533)                                        ; call prim_car
  %rvp9532 = call i64 @prim_cdr(i64 %rvp9533)                                        ; call prim_cdr
  %qgi$_956887 = call i64 @prim_car(i64 %rvp9532)                                    ; call prim_car
  %na9513 = call i64 @prim_cdr(i64 %rvp9532)                                         ; call prim_cdr
  %cloptr20488 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20489 = getelementptr inbounds i64, i64* %cloptr20488, i64 0                  ; &cloptr20488[0]
  %f20490 = ptrtoint void(i64,i64)* @lam10278 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20490, i64* %eptr20489                                                 ; store fptr
  %arg8319 = ptrtoint i64* %cloptr20488 to i64                                       ; closure cast; i64* -> i64
  %cloptr20491 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr20493 = getelementptr inbounds i64, i64* %cloptr20491, i64 1                  ; &eptr20493[1]
  %eptr20494 = getelementptr inbounds i64, i64* %cloptr20491, i64 2                  ; &eptr20494[2]
  %eptr20495 = getelementptr inbounds i64, i64* %cloptr20491, i64 3                  ; &eptr20495[3]
  store i64 %Pfq$c, i64* %eptr20493                                                  ; *eptr20493 = %Pfq$c
  store i64 %eOT$a, i64* %eptr20494                                                  ; *eptr20494 = %eOT$a
  store i64 %bXE$b, i64* %eptr20495                                                  ; *eptr20495 = %bXE$b
  %eptr20492 = getelementptr inbounds i64, i64* %cloptr20491, i64 0                  ; &cloptr20491[0]
  %f20496 = ptrtoint void(i64,i64)* @lam10274 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20496, i64* %eptr20492                                                 ; store fptr
  %arg8318 = ptrtoint i64* %cloptr20491 to i64                                       ; closure cast; i64* -> i64
  %rva9531 = add i64 0, 0                                                            ; quoted ()
  %rva9530 = call i64 @prim_cons(i64 %arg8318, i64 %rva9531)                         ; call prim_cons
  %cloptr20497 = inttoptr i64 %arg8319 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20498 = getelementptr inbounds i64, i64* %cloptr20497, i64 0                 ; &cloptr20497[0]
  %f20500 = load i64, i64* %i0ptr20498, align 8                                      ; load; *i0ptr20498
  %fptr20499 = inttoptr i64 %f20500 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20499(i64 %arg8319, i64 %rva9530)                   ; tail call
  ret void
}


define void @lam10278(i64 %env10279, i64 %y7e$lst7221) {
  %cont7220 = call i64 @prim_car(i64 %y7e$lst7221)                                   ; call prim_car
  %y7e$lst = call i64 @prim_cdr(i64 %y7e$lst7221)                                    ; call prim_cdr
  %arg8323 = add i64 0, 0                                                            ; quoted ()
  %rva9516 = add i64 0, 0                                                            ; quoted ()
  %rva9515 = call i64 @prim_cons(i64 %y7e$lst, i64 %rva9516)                         ; call prim_cons
  %rva9514 = call i64 @prim_cons(i64 %arg8323, i64 %rva9515)                         ; call prim_cons
  %cloptr20501 = inttoptr i64 %cont7220 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20502 = getelementptr inbounds i64, i64* %cloptr20501, i64 0                 ; &cloptr20501[0]
  %f20504 = load i64, i64* %i0ptr20502, align 8                                      ; load; *i0ptr20502
  %fptr20503 = inttoptr i64 %f20504 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20503(i64 %cont7220, i64 %rva9514)                  ; tail call
  ret void
}


define void @lam10274(i64 %env10275, i64 %rvp9529) {
  %envptr20505 = inttoptr i64 %env10275 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20506 = getelementptr inbounds i64, i64* %envptr20505, i64 3                ; &envptr20505[3]
  %bXE$b = load i64, i64* %envptr20506, align 8                                      ; load; *envptr20506
  %envptr20507 = inttoptr i64 %env10275 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20508 = getelementptr inbounds i64, i64* %envptr20507, i64 2                ; &envptr20507[2]
  %eOT$a = load i64, i64* %envptr20508, align 8                                      ; load; *envptr20508
  %envptr20509 = inttoptr i64 %env10275 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20510 = getelementptr inbounds i64, i64* %envptr20509, i64 1                ; &envptr20509[1]
  %Pfq$c = load i64, i64* %envptr20510, align 8                                      ; load; *envptr20510
  %_957218 = call i64 @prim_car(i64 %rvp9529)                                        ; call prim_car
  %rvp9528 = call i64 @prim_cdr(i64 %rvp9529)                                        ; call prim_cdr
  %a7064 = call i64 @prim_car(i64 %rvp9528)                                          ; call prim_car
  %na9518 = call i64 @prim_cdr(i64 %rvp9528)                                         ; call prim_cdr
  %a7065 = call i64 @prim_cons(i64 %Pfq$c, i64 %a7064)                               ; call prim_cons
  %a7066 = call i64 @prim_cons(i64 %bXE$b, i64 %a7065)                               ; call prim_cons
  %a7067 = call i64 @prim_cons(i64 %eOT$a, i64 %a7066)                               ; call prim_cons
  %arg8332 = call i64 @const_init_symbol(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @sym20511, i32 0, i32 0)); quoted string
  %retprim7219 = call i64 @prim_cons(i64 %arg8332, i64 %a7067)                       ; call prim_cons
  %cloptr20512 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20513 = getelementptr inbounds i64, i64* %cloptr20512, i64 0                  ; &cloptr20512[0]
  %f20514 = ptrtoint void(i64,i64)* @lam10271 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20514, i64* %eptr20513                                                 ; store fptr
  %arg8335 = ptrtoint i64* %cloptr20512 to i64                                       ; closure cast; i64* -> i64
  %arg8334 = add i64 0, 0                                                            ; quoted ()
  %rva9527 = add i64 0, 0                                                            ; quoted ()
  %rva9526 = call i64 @prim_cons(i64 %retprim7219, i64 %rva9527)                     ; call prim_cons
  %rva9525 = call i64 @prim_cons(i64 %arg8334, i64 %rva9526)                         ; call prim_cons
  %cloptr20515 = inttoptr i64 %arg8335 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20516 = getelementptr inbounds i64, i64* %cloptr20515, i64 0                 ; &cloptr20515[0]
  %f20518 = load i64, i64* %i0ptr20516, align 8                                      ; load; *i0ptr20516
  %fptr20517 = inttoptr i64 %f20518 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20517(i64 %arg8335, i64 %rva9525)                   ; tail call
  ret void
}


define void @lam10271(i64 %env10272, i64 %rvp9524) {
  %_950 = call i64 @prim_car(i64 %rvp9524)                                           ; call prim_car
  %rvp9523 = call i64 @prim_cdr(i64 %rvp9524)                                        ; call prim_cdr
  %x = call i64 @prim_car(i64 %rvp9523)                                              ; call prim_car
  %na9520 = call i64 @prim_cdr(i64 %rvp9523)                                         ; call prim_cdr
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva9522 = add i64 0, 0                                                            ; quoted ()
  %rva9521 = call i64 @prim_cons(i64 %_951, i64 %rva9522)                            ; call prim_cons
  %cloptr20519 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  %i0ptr20520 = getelementptr inbounds i64, i64* %cloptr20519, i64 0                 ; &cloptr20519[0]
  %f20522 = load i64, i64* %i0ptr20520, align 8                                      ; load; *i0ptr20520
  %fptr20521 = inttoptr i64 %f20522 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20521(i64 %_951, i64 %rva9521)                      ; tail call
  ret void
}


define void @lam10234(i64 %env10235, i64 %rvp9732) {
  %envptr20523 = inttoptr i64 %env10235 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20524 = getelementptr inbounds i64, i64* %envptr20523, i64 3                ; &envptr20523[3]
  %Hkd$_37foldr1 = load i64, i64* %envptr20524, align 8                              ; load; *envptr20524
  %envptr20525 = inttoptr i64 %env10235 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20526 = getelementptr inbounds i64, i64* %envptr20525, i64 2                ; &envptr20525[2]
  %qqv$_37foldr = load i64, i64* %envptr20526, align 8                               ; load; *envptr20526
  %envptr20527 = inttoptr i64 %env10235 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20528 = getelementptr inbounds i64, i64* %envptr20527, i64 1                ; &envptr20527[1]
  %e8h$_37map1 = load i64, i64* %envptr20528, align 8                                ; load; *envptr20528
  %cont7269 = call i64 @prim_car(i64 %rvp9732)                                       ; call prim_car
  %rvp9731 = call i64 @prim_cdr(i64 %rvp9732)                                        ; call prim_cdr
  %hAg$_37foldl = call i64 @prim_car(i64 %rvp9731)                                   ; call prim_car
  %na9639 = call i64 @prim_cdr(i64 %rvp9731)                                         ; call prim_cdr
  %arg8340 = add i64 0, 0                                                            ; quoted ()
  %cloptr20529 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20531 = getelementptr inbounds i64, i64* %cloptr20529, i64 1                  ; &eptr20531[1]
  %eptr20532 = getelementptr inbounds i64, i64* %cloptr20529, i64 2                  ; &eptr20532[2]
  %eptr20533 = getelementptr inbounds i64, i64* %cloptr20529, i64 3                  ; &eptr20533[3]
  %eptr20534 = getelementptr inbounds i64, i64* %cloptr20529, i64 4                  ; &eptr20534[4]
  store i64 %e8h$_37map1, i64* %eptr20531                                            ; *eptr20531 = %e8h$_37map1
  store i64 %qqv$_37foldr, i64* %eptr20532                                           ; *eptr20532 = %qqv$_37foldr
  store i64 %Hkd$_37foldr1, i64* %eptr20533                                          ; *eptr20533 = %Hkd$_37foldr1
  store i64 %hAg$_37foldl, i64* %eptr20534                                           ; *eptr20534 = %hAg$_37foldl
  %eptr20530 = getelementptr inbounds i64, i64* %cloptr20529, i64 0                  ; &cloptr20529[0]
  %f20535 = ptrtoint void(i64,i64)* @lam10231 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20535, i64* %eptr20530                                                 ; store fptr
  %arg8339 = ptrtoint i64* %cloptr20529 to i64                                       ; closure cast; i64* -> i64
  %rva9730 = add i64 0, 0                                                            ; quoted ()
  %rva9729 = call i64 @prim_cons(i64 %arg8339, i64 %rva9730)                         ; call prim_cons
  %rva9728 = call i64 @prim_cons(i64 %arg8340, i64 %rva9729)                         ; call prim_cons
  %cloptr20536 = inttoptr i64 %cont7269 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20537 = getelementptr inbounds i64, i64* %cloptr20536, i64 0                 ; &cloptr20536[0]
  %f20539 = load i64, i64* %i0ptr20537, align 8                                      ; load; *i0ptr20537
  %fptr20538 = inttoptr i64 %f20539 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20538(i64 %cont7269, i64 %rva9728)                  ; tail call
  ret void
}


define void @lam10231(i64 %env10232, i64 %w95$args7271) {
  %envptr20540 = inttoptr i64 %env10232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20541 = getelementptr inbounds i64, i64* %envptr20540, i64 4                ; &envptr20540[4]
  %hAg$_37foldl = load i64, i64* %envptr20541, align 8                               ; load; *envptr20541
  %envptr20542 = inttoptr i64 %env10232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20543 = getelementptr inbounds i64, i64* %envptr20542, i64 3                ; &envptr20542[3]
  %Hkd$_37foldr1 = load i64, i64* %envptr20543, align 8                              ; load; *envptr20543
  %envptr20544 = inttoptr i64 %env10232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20545 = getelementptr inbounds i64, i64* %envptr20544, i64 2                ; &envptr20544[2]
  %qqv$_37foldr = load i64, i64* %envptr20545, align 8                               ; load; *envptr20545
  %envptr20546 = inttoptr i64 %env10232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20547 = getelementptr inbounds i64, i64* %envptr20546, i64 1                ; &envptr20546[1]
  %e8h$_37map1 = load i64, i64* %envptr20547, align 8                                ; load; *envptr20547
  %cont7270 = call i64 @prim_car(i64 %w95$args7271)                                  ; call prim_car
  %w95$args = call i64 @prim_cdr(i64 %w95$args7271)                                  ; call prim_cdr
  %sOp$f = call i64 @prim_car(i64 %w95$args)                                         ; call prim_car
  %a6928 = call i64 @prim_cdr(i64 %w95$args)                                         ; call prim_cdr
  %retprim7290 = call i64 @prim_car(i64 %a6928)                                      ; call prim_car
  %cloptr20548 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr20550 = getelementptr inbounds i64, i64* %cloptr20548, i64 1                  ; &eptr20550[1]
  %eptr20551 = getelementptr inbounds i64, i64* %cloptr20548, i64 2                  ; &eptr20551[2]
  %eptr20552 = getelementptr inbounds i64, i64* %cloptr20548, i64 3                  ; &eptr20552[3]
  %eptr20553 = getelementptr inbounds i64, i64* %cloptr20548, i64 4                  ; &eptr20553[4]
  %eptr20554 = getelementptr inbounds i64, i64* %cloptr20548, i64 5                  ; &eptr20554[5]
  %eptr20555 = getelementptr inbounds i64, i64* %cloptr20548, i64 6                  ; &eptr20555[6]
  %eptr20556 = getelementptr inbounds i64, i64* %cloptr20548, i64 7                  ; &eptr20556[7]
  store i64 %e8h$_37map1, i64* %eptr20550                                            ; *eptr20550 = %e8h$_37map1
  store i64 %qqv$_37foldr, i64* %eptr20551                                           ; *eptr20551 = %qqv$_37foldr
  store i64 %Hkd$_37foldr1, i64* %eptr20552                                          ; *eptr20552 = %Hkd$_37foldr1
  store i64 %sOp$f, i64* %eptr20553                                                  ; *eptr20553 = %sOp$f
  store i64 %w95$args, i64* %eptr20554                                               ; *eptr20554 = %w95$args
  store i64 %hAg$_37foldl, i64* %eptr20555                                           ; *eptr20555 = %hAg$_37foldl
  store i64 %cont7270, i64* %eptr20556                                               ; *eptr20556 = %cont7270
  %eptr20549 = getelementptr inbounds i64, i64* %cloptr20548, i64 0                  ; &cloptr20548[0]
  %f20557 = ptrtoint void(i64,i64)* @lam10229 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20557, i64* %eptr20549                                                 ; store fptr
  %arg8349 = ptrtoint i64* %cloptr20548 to i64                                       ; closure cast; i64* -> i64
  %arg8348 = add i64 0, 0                                                            ; quoted ()
  %rva9727 = add i64 0, 0                                                            ; quoted ()
  %rva9726 = call i64 @prim_cons(i64 %retprim7290, i64 %rva9727)                     ; call prim_cons
  %rva9725 = call i64 @prim_cons(i64 %arg8348, i64 %rva9726)                         ; call prim_cons
  %cloptr20558 = inttoptr i64 %arg8349 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20559 = getelementptr inbounds i64, i64* %cloptr20558, i64 0                 ; &cloptr20558[0]
  %f20561 = load i64, i64* %i0ptr20559, align 8                                      ; load; *i0ptr20559
  %fptr20560 = inttoptr i64 %f20561 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20560(i64 %arg8349, i64 %rva9725)                   ; tail call
  ret void
}


define void @lam10229(i64 %env10230, i64 %rvp9724) {
  %envptr20562 = inttoptr i64 %env10230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20563 = getelementptr inbounds i64, i64* %envptr20562, i64 7                ; &envptr20562[7]
  %cont7270 = load i64, i64* %envptr20563, align 8                                   ; load; *envptr20563
  %envptr20564 = inttoptr i64 %env10230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20565 = getelementptr inbounds i64, i64* %envptr20564, i64 6                ; &envptr20564[6]
  %hAg$_37foldl = load i64, i64* %envptr20565, align 8                               ; load; *envptr20565
  %envptr20566 = inttoptr i64 %env10230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20567 = getelementptr inbounds i64, i64* %envptr20566, i64 5                ; &envptr20566[5]
  %w95$args = load i64, i64* %envptr20567, align 8                                   ; load; *envptr20567
  %envptr20568 = inttoptr i64 %env10230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20569 = getelementptr inbounds i64, i64* %envptr20568, i64 4                ; &envptr20568[4]
  %sOp$f = load i64, i64* %envptr20569, align 8                                      ; load; *envptr20569
  %envptr20570 = inttoptr i64 %env10230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20571 = getelementptr inbounds i64, i64* %envptr20570, i64 3                ; &envptr20570[3]
  %Hkd$_37foldr1 = load i64, i64* %envptr20571, align 8                              ; load; *envptr20571
  %envptr20572 = inttoptr i64 %env10230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20573 = getelementptr inbounds i64, i64* %envptr20572, i64 2                ; &envptr20572[2]
  %qqv$_37foldr = load i64, i64* %envptr20573, align 8                               ; load; *envptr20573
  %envptr20574 = inttoptr i64 %env10230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20575 = getelementptr inbounds i64, i64* %envptr20574, i64 1                ; &envptr20574[1]
  %e8h$_37map1 = load i64, i64* %envptr20575, align 8                                ; load; *envptr20575
  %_957272 = call i64 @prim_car(i64 %rvp9724)                                        ; call prim_car
  %rvp9723 = call i64 @prim_cdr(i64 %rvp9724)                                        ; call prim_cdr
  %LoI$acc = call i64 @prim_car(i64 %rvp9723)                                        ; call prim_car
  %na9641 = call i64 @prim_cdr(i64 %rvp9723)                                         ; call prim_cdr
  %a6929 = call i64 @prim_cdr(i64 %w95$args)                                         ; call prim_cdr
  %retprim7289 = call i64 @prim_cdr(i64 %a6929)                                      ; call prim_cdr
  %cloptr20576 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr20578 = getelementptr inbounds i64, i64* %cloptr20576, i64 1                  ; &eptr20578[1]
  %eptr20579 = getelementptr inbounds i64, i64* %cloptr20576, i64 2                  ; &eptr20579[2]
  %eptr20580 = getelementptr inbounds i64, i64* %cloptr20576, i64 3                  ; &eptr20580[3]
  %eptr20581 = getelementptr inbounds i64, i64* %cloptr20576, i64 4                  ; &eptr20581[4]
  %eptr20582 = getelementptr inbounds i64, i64* %cloptr20576, i64 5                  ; &eptr20582[5]
  %eptr20583 = getelementptr inbounds i64, i64* %cloptr20576, i64 6                  ; &eptr20583[6]
  %eptr20584 = getelementptr inbounds i64, i64* %cloptr20576, i64 7                  ; &eptr20584[7]
  store i64 %LoI$acc, i64* %eptr20578                                                ; *eptr20578 = %LoI$acc
  store i64 %e8h$_37map1, i64* %eptr20579                                            ; *eptr20579 = %e8h$_37map1
  store i64 %qqv$_37foldr, i64* %eptr20580                                           ; *eptr20580 = %qqv$_37foldr
  store i64 %Hkd$_37foldr1, i64* %eptr20581                                          ; *eptr20581 = %Hkd$_37foldr1
  store i64 %sOp$f, i64* %eptr20582                                                  ; *eptr20582 = %sOp$f
  store i64 %hAg$_37foldl, i64* %eptr20583                                           ; *eptr20583 = %hAg$_37foldl
  store i64 %cont7270, i64* %eptr20584                                               ; *eptr20584 = %cont7270
  %eptr20577 = getelementptr inbounds i64, i64* %cloptr20576, i64 0                  ; &cloptr20576[0]
  %f20585 = ptrtoint void(i64,i64)* @lam10227 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20585, i64* %eptr20577                                                 ; store fptr
  %arg8354 = ptrtoint i64* %cloptr20576 to i64                                       ; closure cast; i64* -> i64
  %arg8353 = add i64 0, 0                                                            ; quoted ()
  %rva9722 = add i64 0, 0                                                            ; quoted ()
  %rva9721 = call i64 @prim_cons(i64 %retprim7289, i64 %rva9722)                     ; call prim_cons
  %rva9720 = call i64 @prim_cons(i64 %arg8353, i64 %rva9721)                         ; call prim_cons
  %cloptr20586 = inttoptr i64 %arg8354 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20587 = getelementptr inbounds i64, i64* %cloptr20586, i64 0                 ; &cloptr20586[0]
  %f20589 = load i64, i64* %i0ptr20587, align 8                                      ; load; *i0ptr20587
  %fptr20588 = inttoptr i64 %f20589 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20588(i64 %arg8354, i64 %rva9720)                   ; tail call
  ret void
}


define void @lam10227(i64 %env10228, i64 %rvp9719) {
  %envptr20590 = inttoptr i64 %env10228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20591 = getelementptr inbounds i64, i64* %envptr20590, i64 7                ; &envptr20590[7]
  %cont7270 = load i64, i64* %envptr20591, align 8                                   ; load; *envptr20591
  %envptr20592 = inttoptr i64 %env10228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20593 = getelementptr inbounds i64, i64* %envptr20592, i64 6                ; &envptr20592[6]
  %hAg$_37foldl = load i64, i64* %envptr20593, align 8                               ; load; *envptr20593
  %envptr20594 = inttoptr i64 %env10228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20595 = getelementptr inbounds i64, i64* %envptr20594, i64 5                ; &envptr20594[5]
  %sOp$f = load i64, i64* %envptr20595, align 8                                      ; load; *envptr20595
  %envptr20596 = inttoptr i64 %env10228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20597 = getelementptr inbounds i64, i64* %envptr20596, i64 4                ; &envptr20596[4]
  %Hkd$_37foldr1 = load i64, i64* %envptr20597, align 8                              ; load; *envptr20597
  %envptr20598 = inttoptr i64 %env10228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20599 = getelementptr inbounds i64, i64* %envptr20598, i64 3                ; &envptr20598[3]
  %qqv$_37foldr = load i64, i64* %envptr20599, align 8                               ; load; *envptr20599
  %envptr20600 = inttoptr i64 %env10228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20601 = getelementptr inbounds i64, i64* %envptr20600, i64 2                ; &envptr20600[2]
  %e8h$_37map1 = load i64, i64* %envptr20601, align 8                                ; load; *envptr20601
  %envptr20602 = inttoptr i64 %env10228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20603 = getelementptr inbounds i64, i64* %envptr20602, i64 1                ; &envptr20602[1]
  %LoI$acc = load i64, i64* %envptr20603, align 8                                    ; load; *envptr20603
  %_957273 = call i64 @prim_car(i64 %rvp9719)                                        ; call prim_car
  %rvp9718 = call i64 @prim_cdr(i64 %rvp9719)                                        ; call prim_cdr
  %x1d$lsts = call i64 @prim_car(i64 %rvp9718)                                       ; call prim_car
  %na9643 = call i64 @prim_cdr(i64 %rvp9718)                                         ; call prim_cdr
  %cloptr20604 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr20606 = getelementptr inbounds i64, i64* %cloptr20604, i64 1                  ; &eptr20606[1]
  %eptr20607 = getelementptr inbounds i64, i64* %cloptr20604, i64 2                  ; &eptr20607[2]
  %eptr20608 = getelementptr inbounds i64, i64* %cloptr20604, i64 3                  ; &eptr20608[3]
  %eptr20609 = getelementptr inbounds i64, i64* %cloptr20604, i64 4                  ; &eptr20609[4]
  %eptr20610 = getelementptr inbounds i64, i64* %cloptr20604, i64 5                  ; &eptr20610[5]
  %eptr20611 = getelementptr inbounds i64, i64* %cloptr20604, i64 6                  ; &eptr20611[6]
  %eptr20612 = getelementptr inbounds i64, i64* %cloptr20604, i64 7                  ; &eptr20612[7]
  store i64 %LoI$acc, i64* %eptr20606                                                ; *eptr20606 = %LoI$acc
  store i64 %e8h$_37map1, i64* %eptr20607                                            ; *eptr20607 = %e8h$_37map1
  store i64 %x1d$lsts, i64* %eptr20608                                               ; *eptr20608 = %x1d$lsts
  store i64 %qqv$_37foldr, i64* %eptr20609                                           ; *eptr20609 = %qqv$_37foldr
  store i64 %sOp$f, i64* %eptr20610                                                  ; *eptr20610 = %sOp$f
  store i64 %hAg$_37foldl, i64* %eptr20611                                           ; *eptr20611 = %hAg$_37foldl
  store i64 %cont7270, i64* %eptr20612                                               ; *eptr20612 = %cont7270
  %eptr20605 = getelementptr inbounds i64, i64* %cloptr20604, i64 0                  ; &cloptr20604[0]
  %f20613 = ptrtoint void(i64,i64)* @lam10225 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20613, i64* %eptr20605                                                 ; store fptr
  %arg8358 = ptrtoint i64* %cloptr20604 to i64                                       ; closure cast; i64* -> i64
  %cloptr20614 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20615 = getelementptr inbounds i64, i64* %cloptr20614, i64 0                  ; &cloptr20614[0]
  %f20616 = ptrtoint void(i64,i64)* @lam10197 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20616, i64* %eptr20615                                                 ; store fptr
  %arg8357 = ptrtoint i64* %cloptr20614 to i64                                       ; closure cast; i64* -> i64
  %arg8356 = call i64 @const_init_false()                                            ; quoted #f
  %rva9717 = add i64 0, 0                                                            ; quoted ()
  %rva9716 = call i64 @prim_cons(i64 %x1d$lsts, i64 %rva9717)                        ; call prim_cons
  %rva9715 = call i64 @prim_cons(i64 %arg8356, i64 %rva9716)                         ; call prim_cons
  %rva9714 = call i64 @prim_cons(i64 %arg8357, i64 %rva9715)                         ; call prim_cons
  %rva9713 = call i64 @prim_cons(i64 %arg8358, i64 %rva9714)                         ; call prim_cons
  %cloptr20617 = inttoptr i64 %Hkd$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr20618 = getelementptr inbounds i64, i64* %cloptr20617, i64 0                 ; &cloptr20617[0]
  %f20620 = load i64, i64* %i0ptr20618, align 8                                      ; load; *i0ptr20618
  %fptr20619 = inttoptr i64 %f20620 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20619(i64 %Hkd$_37foldr1, i64 %rva9713)             ; tail call
  ret void
}


define void @lam10225(i64 %env10226, i64 %rvp9701) {
  %envptr20621 = inttoptr i64 %env10226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20622 = getelementptr inbounds i64, i64* %envptr20621, i64 7                ; &envptr20621[7]
  %cont7270 = load i64, i64* %envptr20622, align 8                                   ; load; *envptr20622
  %envptr20623 = inttoptr i64 %env10226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20624 = getelementptr inbounds i64, i64* %envptr20623, i64 6                ; &envptr20623[6]
  %hAg$_37foldl = load i64, i64* %envptr20624, align 8                               ; load; *envptr20624
  %envptr20625 = inttoptr i64 %env10226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20626 = getelementptr inbounds i64, i64* %envptr20625, i64 5                ; &envptr20625[5]
  %sOp$f = load i64, i64* %envptr20626, align 8                                      ; load; *envptr20626
  %envptr20627 = inttoptr i64 %env10226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20628 = getelementptr inbounds i64, i64* %envptr20627, i64 4                ; &envptr20627[4]
  %qqv$_37foldr = load i64, i64* %envptr20628, align 8                               ; load; *envptr20628
  %envptr20629 = inttoptr i64 %env10226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20630 = getelementptr inbounds i64, i64* %envptr20629, i64 3                ; &envptr20629[3]
  %x1d$lsts = load i64, i64* %envptr20630, align 8                                   ; load; *envptr20630
  %envptr20631 = inttoptr i64 %env10226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20632 = getelementptr inbounds i64, i64* %envptr20631, i64 2                ; &envptr20631[2]
  %e8h$_37map1 = load i64, i64* %envptr20632, align 8                                ; load; *envptr20632
  %envptr20633 = inttoptr i64 %env10226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20634 = getelementptr inbounds i64, i64* %envptr20633, i64 1                ; &envptr20633[1]
  %LoI$acc = load i64, i64* %envptr20634, align 8                                    ; load; *envptr20634
  %_957274 = call i64 @prim_car(i64 %rvp9701)                                        ; call prim_car
  %rvp9700 = call i64 @prim_cdr(i64 %rvp9701)                                        ; call prim_cdr
  %a6930 = call i64 @prim_car(i64 %rvp9700)                                          ; call prim_car
  %na9645 = call i64 @prim_cdr(i64 %rvp9700)                                         ; call prim_cdr
  %cmp20635 = icmp eq i64 %a6930, 15                                                 ; false?
  br i1 %cmp20635, label %else20637, label %then20636                                ; if

then20636:
  %arg8361 = add i64 0, 0                                                            ; quoted ()
  %rva9648 = add i64 0, 0                                                            ; quoted ()
  %rva9647 = call i64 @prim_cons(i64 %LoI$acc, i64 %rva9648)                         ; call prim_cons
  %rva9646 = call i64 @prim_cons(i64 %arg8361, i64 %rva9647)                         ; call prim_cons
  %cloptr20638 = inttoptr i64 %cont7270 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20639 = getelementptr inbounds i64, i64* %cloptr20638, i64 0                 ; &cloptr20638[0]
  %f20641 = load i64, i64* %i0ptr20639, align 8                                      ; load; *i0ptr20639
  %fptr20640 = inttoptr i64 %f20641 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20640(i64 %cont7270, i64 %rva9646)                  ; tail call
  ret void

else20637:
  %cloptr20642 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr20644 = getelementptr inbounds i64, i64* %cloptr20642, i64 1                  ; &eptr20644[1]
  %eptr20645 = getelementptr inbounds i64, i64* %cloptr20642, i64 2                  ; &eptr20645[2]
  %eptr20646 = getelementptr inbounds i64, i64* %cloptr20642, i64 3                  ; &eptr20646[3]
  %eptr20647 = getelementptr inbounds i64, i64* %cloptr20642, i64 4                  ; &eptr20647[4]
  %eptr20648 = getelementptr inbounds i64, i64* %cloptr20642, i64 5                  ; &eptr20648[5]
  %eptr20649 = getelementptr inbounds i64, i64* %cloptr20642, i64 6                  ; &eptr20649[6]
  %eptr20650 = getelementptr inbounds i64, i64* %cloptr20642, i64 7                  ; &eptr20650[7]
  store i64 %LoI$acc, i64* %eptr20644                                                ; *eptr20644 = %LoI$acc
  store i64 %e8h$_37map1, i64* %eptr20645                                            ; *eptr20645 = %e8h$_37map1
  store i64 %x1d$lsts, i64* %eptr20646                                               ; *eptr20646 = %x1d$lsts
  store i64 %qqv$_37foldr, i64* %eptr20647                                           ; *eptr20647 = %qqv$_37foldr
  store i64 %sOp$f, i64* %eptr20648                                                  ; *eptr20648 = %sOp$f
  store i64 %hAg$_37foldl, i64* %eptr20649                                           ; *eptr20649 = %hAg$_37foldl
  store i64 %cont7270, i64* %eptr20650                                               ; *eptr20650 = %cont7270
  %eptr20643 = getelementptr inbounds i64, i64* %cloptr20642, i64 0                  ; &cloptr20642[0]
  %f20651 = ptrtoint void(i64,i64)* @lam10223 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20651, i64* %eptr20643                                                 ; store fptr
  %arg8365 = ptrtoint i64* %cloptr20642 to i64                                       ; closure cast; i64* -> i64
  %cloptr20652 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20653 = getelementptr inbounds i64, i64* %cloptr20652, i64 0                  ; &cloptr20652[0]
  %f20654 = ptrtoint void(i64,i64)* @lam10204 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20654, i64* %eptr20653                                                 ; store fptr
  %arg8364 = ptrtoint i64* %cloptr20652 to i64                                       ; closure cast; i64* -> i64
  %rva9699 = add i64 0, 0                                                            ; quoted ()
  %rva9698 = call i64 @prim_cons(i64 %x1d$lsts, i64 %rva9699)                        ; call prim_cons
  %rva9697 = call i64 @prim_cons(i64 %arg8364, i64 %rva9698)                         ; call prim_cons
  %rva9696 = call i64 @prim_cons(i64 %arg8365, i64 %rva9697)                         ; call prim_cons
  %cloptr20655 = inttoptr i64 %e8h$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr20656 = getelementptr inbounds i64, i64* %cloptr20655, i64 0                 ; &cloptr20655[0]
  %f20658 = load i64, i64* %i0ptr20656, align 8                                      ; load; *i0ptr20656
  %fptr20657 = inttoptr i64 %f20658 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20657(i64 %e8h$_37map1, i64 %rva9696)               ; tail call
  ret void
}


define void @lam10223(i64 %env10224, i64 %rvp9688) {
  %envptr20659 = inttoptr i64 %env10224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20660 = getelementptr inbounds i64, i64* %envptr20659, i64 7                ; &envptr20659[7]
  %cont7270 = load i64, i64* %envptr20660, align 8                                   ; load; *envptr20660
  %envptr20661 = inttoptr i64 %env10224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20662 = getelementptr inbounds i64, i64* %envptr20661, i64 6                ; &envptr20661[6]
  %hAg$_37foldl = load i64, i64* %envptr20662, align 8                               ; load; *envptr20662
  %envptr20663 = inttoptr i64 %env10224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20664 = getelementptr inbounds i64, i64* %envptr20663, i64 5                ; &envptr20663[5]
  %sOp$f = load i64, i64* %envptr20664, align 8                                      ; load; *envptr20664
  %envptr20665 = inttoptr i64 %env10224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20666 = getelementptr inbounds i64, i64* %envptr20665, i64 4                ; &envptr20665[4]
  %qqv$_37foldr = load i64, i64* %envptr20666, align 8                               ; load; *envptr20666
  %envptr20667 = inttoptr i64 %env10224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20668 = getelementptr inbounds i64, i64* %envptr20667, i64 3                ; &envptr20667[3]
  %x1d$lsts = load i64, i64* %envptr20668, align 8                                   ; load; *envptr20668
  %envptr20669 = inttoptr i64 %env10224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20670 = getelementptr inbounds i64, i64* %envptr20669, i64 2                ; &envptr20669[2]
  %e8h$_37map1 = load i64, i64* %envptr20670, align 8                                ; load; *envptr20670
  %envptr20671 = inttoptr i64 %env10224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20672 = getelementptr inbounds i64, i64* %envptr20671, i64 1                ; &envptr20671[1]
  %LoI$acc = load i64, i64* %envptr20672, align 8                                    ; load; *envptr20672
  %_957275 = call i64 @prim_car(i64 %rvp9688)                                        ; call prim_car
  %rvp9687 = call i64 @prim_cdr(i64 %rvp9688)                                        ; call prim_cdr
  %m2m$lsts_43 = call i64 @prim_car(i64 %rvp9687)                                    ; call prim_car
  %na9650 = call i64 @prim_cdr(i64 %rvp9687)                                         ; call prim_cdr
  %cloptr20673 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr20675 = getelementptr inbounds i64, i64* %cloptr20673, i64 1                  ; &eptr20675[1]
  %eptr20676 = getelementptr inbounds i64, i64* %cloptr20673, i64 2                  ; &eptr20676[2]
  %eptr20677 = getelementptr inbounds i64, i64* %cloptr20673, i64 3                  ; &eptr20677[3]
  %eptr20678 = getelementptr inbounds i64, i64* %cloptr20673, i64 4                  ; &eptr20678[4]
  %eptr20679 = getelementptr inbounds i64, i64* %cloptr20673, i64 5                  ; &eptr20679[5]
  %eptr20680 = getelementptr inbounds i64, i64* %cloptr20673, i64 6                  ; &eptr20680[6]
  store i64 %LoI$acc, i64* %eptr20675                                                ; *eptr20675 = %LoI$acc
  store i64 %qqv$_37foldr, i64* %eptr20676                                           ; *eptr20676 = %qqv$_37foldr
  store i64 %m2m$lsts_43, i64* %eptr20677                                            ; *eptr20677 = %m2m$lsts_43
  store i64 %sOp$f, i64* %eptr20678                                                  ; *eptr20678 = %sOp$f
  store i64 %hAg$_37foldl, i64* %eptr20679                                           ; *eptr20679 = %hAg$_37foldl
  store i64 %cont7270, i64* %eptr20680                                               ; *eptr20680 = %cont7270
  %eptr20674 = getelementptr inbounds i64, i64* %cloptr20673, i64 0                  ; &cloptr20673[0]
  %f20681 = ptrtoint void(i64,i64)* @lam10221 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20681, i64* %eptr20674                                                 ; store fptr
  %arg8369 = ptrtoint i64* %cloptr20673 to i64                                       ; closure cast; i64* -> i64
  %cloptr20682 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20683 = getelementptr inbounds i64, i64* %cloptr20682, i64 0                  ; &cloptr20682[0]
  %f20684 = ptrtoint void(i64,i64)* @lam10209 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20684, i64* %eptr20683                                                 ; store fptr
  %arg8368 = ptrtoint i64* %cloptr20682 to i64                                       ; closure cast; i64* -> i64
  %rva9686 = add i64 0, 0                                                            ; quoted ()
  %rva9685 = call i64 @prim_cons(i64 %x1d$lsts, i64 %rva9686)                        ; call prim_cons
  %rva9684 = call i64 @prim_cons(i64 %arg8368, i64 %rva9685)                         ; call prim_cons
  %rva9683 = call i64 @prim_cons(i64 %arg8369, i64 %rva9684)                         ; call prim_cons
  %cloptr20685 = inttoptr i64 %e8h$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr20686 = getelementptr inbounds i64, i64* %cloptr20685, i64 0                 ; &cloptr20685[0]
  %f20688 = load i64, i64* %i0ptr20686, align 8                                      ; load; *i0ptr20686
  %fptr20687 = inttoptr i64 %f20688 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20687(i64 %e8h$_37map1, i64 %rva9683)               ; tail call
  ret void
}


define void @lam10221(i64 %env10222, i64 %rvp9675) {
  %envptr20689 = inttoptr i64 %env10222 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20690 = getelementptr inbounds i64, i64* %envptr20689, i64 6                ; &envptr20689[6]
  %cont7270 = load i64, i64* %envptr20690, align 8                                   ; load; *envptr20690
  %envptr20691 = inttoptr i64 %env10222 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20692 = getelementptr inbounds i64, i64* %envptr20691, i64 5                ; &envptr20691[5]
  %hAg$_37foldl = load i64, i64* %envptr20692, align 8                               ; load; *envptr20692
  %envptr20693 = inttoptr i64 %env10222 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20694 = getelementptr inbounds i64, i64* %envptr20693, i64 4                ; &envptr20693[4]
  %sOp$f = load i64, i64* %envptr20694, align 8                                      ; load; *envptr20694
  %envptr20695 = inttoptr i64 %env10222 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20696 = getelementptr inbounds i64, i64* %envptr20695, i64 3                ; &envptr20695[3]
  %m2m$lsts_43 = load i64, i64* %envptr20696, align 8                                ; load; *envptr20696
  %envptr20697 = inttoptr i64 %env10222 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20698 = getelementptr inbounds i64, i64* %envptr20697, i64 2                ; &envptr20697[2]
  %qqv$_37foldr = load i64, i64* %envptr20698, align 8                               ; load; *envptr20698
  %envptr20699 = inttoptr i64 %env10222 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20700 = getelementptr inbounds i64, i64* %envptr20699, i64 1                ; &envptr20699[1]
  %LoI$acc = load i64, i64* %envptr20700, align 8                                    ; load; *envptr20700
  %_957276 = call i64 @prim_car(i64 %rvp9675)                                        ; call prim_car
  %rvp9674 = call i64 @prim_cdr(i64 %rvp9675)                                        ; call prim_cdr
  %Q0E$vs = call i64 @prim_car(i64 %rvp9674)                                         ; call prim_car
  %na9652 = call i64 @prim_cdr(i64 %rvp9674)                                         ; call prim_cdr
  %arg8371 = add i64 0, 0                                                            ; quoted ()
  %a6931 = call i64 @prim_cons(i64 %LoI$acc, i64 %arg8371)                           ; call prim_cons
  %cloptr20701 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20703 = getelementptr inbounds i64, i64* %cloptr20701, i64 1                  ; &eptr20703[1]
  %eptr20704 = getelementptr inbounds i64, i64* %cloptr20701, i64 2                  ; &eptr20704[2]
  %eptr20705 = getelementptr inbounds i64, i64* %cloptr20701, i64 3                  ; &eptr20705[3]
  %eptr20706 = getelementptr inbounds i64, i64* %cloptr20701, i64 4                  ; &eptr20706[4]
  store i64 %m2m$lsts_43, i64* %eptr20703                                            ; *eptr20703 = %m2m$lsts_43
  store i64 %sOp$f, i64* %eptr20704                                                  ; *eptr20704 = %sOp$f
  store i64 %hAg$_37foldl, i64* %eptr20705                                           ; *eptr20705 = %hAg$_37foldl
  store i64 %cont7270, i64* %eptr20706                                               ; *eptr20706 = %cont7270
  %eptr20702 = getelementptr inbounds i64, i64* %cloptr20701, i64 0                  ; &cloptr20701[0]
  %f20707 = ptrtoint void(i64,i64)* @lam10218 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20707, i64* %eptr20702                                                 ; store fptr
  %arg8376 = ptrtoint i64* %cloptr20701 to i64                                       ; closure cast; i64* -> i64
  %cloptr20708 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20709 = getelementptr inbounds i64, i64* %cloptr20708, i64 0                  ; &cloptr20708[0]
  %f20710 = ptrtoint void(i64,i64)* @lam10214 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20710, i64* %eptr20709                                                 ; store fptr
  %arg8375 = ptrtoint i64* %cloptr20708 to i64                                       ; closure cast; i64* -> i64
  %rva9673 = add i64 0, 0                                                            ; quoted ()
  %rva9672 = call i64 @prim_cons(i64 %Q0E$vs, i64 %rva9673)                          ; call prim_cons
  %rva9671 = call i64 @prim_cons(i64 %a6931, i64 %rva9672)                           ; call prim_cons
  %rva9670 = call i64 @prim_cons(i64 %arg8375, i64 %rva9671)                         ; call prim_cons
  %rva9669 = call i64 @prim_cons(i64 %arg8376, i64 %rva9670)                         ; call prim_cons
  %cloptr20711 = inttoptr i64 %qqv$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr20712 = getelementptr inbounds i64, i64* %cloptr20711, i64 0                 ; &cloptr20711[0]
  %f20714 = load i64, i64* %i0ptr20712, align 8                                      ; load; *i0ptr20712
  %fptr20713 = inttoptr i64 %f20714 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20713(i64 %qqv$_37foldr, i64 %rva9669)              ; tail call
  ret void
}


define void @lam10218(i64 %env10219, i64 %rvp9660) {
  %envptr20715 = inttoptr i64 %env10219 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20716 = getelementptr inbounds i64, i64* %envptr20715, i64 4                ; &envptr20715[4]
  %cont7270 = load i64, i64* %envptr20716, align 8                                   ; load; *envptr20716
  %envptr20717 = inttoptr i64 %env10219 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20718 = getelementptr inbounds i64, i64* %envptr20717, i64 3                ; &envptr20717[3]
  %hAg$_37foldl = load i64, i64* %envptr20718, align 8                               ; load; *envptr20718
  %envptr20719 = inttoptr i64 %env10219 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20720 = getelementptr inbounds i64, i64* %envptr20719, i64 2                ; &envptr20719[2]
  %sOp$f = load i64, i64* %envptr20720, align 8                                      ; load; *envptr20720
  %envptr20721 = inttoptr i64 %env10219 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20722 = getelementptr inbounds i64, i64* %envptr20721, i64 1                ; &envptr20721[1]
  %m2m$lsts_43 = load i64, i64* %envptr20722, align 8                                ; load; *envptr20722
  %_957279 = call i64 @prim_car(i64 %rvp9660)                                        ; call prim_car
  %rvp9659 = call i64 @prim_cdr(i64 %rvp9660)                                        ; call prim_cdr
  %a6932 = call i64 @prim_car(i64 %rvp9659)                                          ; call prim_car
  %na9654 = call i64 @prim_cdr(i64 %rvp9659)                                         ; call prim_cdr
  %cloptr20723 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20725 = getelementptr inbounds i64, i64* %cloptr20723, i64 1                  ; &eptr20725[1]
  %eptr20726 = getelementptr inbounds i64, i64* %cloptr20723, i64 2                  ; &eptr20726[2]
  %eptr20727 = getelementptr inbounds i64, i64* %cloptr20723, i64 3                  ; &eptr20727[3]
  %eptr20728 = getelementptr inbounds i64, i64* %cloptr20723, i64 4                  ; &eptr20728[4]
  store i64 %m2m$lsts_43, i64* %eptr20725                                            ; *eptr20725 = %m2m$lsts_43
  store i64 %sOp$f, i64* %eptr20726                                                  ; *eptr20726 = %sOp$f
  store i64 %hAg$_37foldl, i64* %eptr20727                                           ; *eptr20727 = %hAg$_37foldl
  store i64 %cont7270, i64* %eptr20728                                               ; *eptr20728 = %cont7270
  %eptr20724 = getelementptr inbounds i64, i64* %cloptr20723, i64 0                  ; &cloptr20723[0]
  %f20729 = ptrtoint void(i64,i64)* @lam10216 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20729, i64* %eptr20724                                                 ; store fptr
  %arg8379 = ptrtoint i64* %cloptr20723 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7280 = call i64 @prim_cons(i64 %arg8379, i64 %a6932)                     ; call prim_cons
  %cloptr20730 = inttoptr i64 %sOp$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr20731 = getelementptr inbounds i64, i64* %cloptr20730, i64 0                 ; &cloptr20730[0]
  %f20733 = load i64, i64* %i0ptr20731, align 8                                      ; load; *i0ptr20731
  %fptr20732 = inttoptr i64 %f20733 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20732(i64 %sOp$f, i64 %cps_45lst7280)               ; tail call
  ret void
}


define void @lam10216(i64 %env10217, i64 %rvp9658) {
  %envptr20734 = inttoptr i64 %env10217 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20735 = getelementptr inbounds i64, i64* %envptr20734, i64 4                ; &envptr20734[4]
  %cont7270 = load i64, i64* %envptr20735, align 8                                   ; load; *envptr20735
  %envptr20736 = inttoptr i64 %env10217 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20737 = getelementptr inbounds i64, i64* %envptr20736, i64 3                ; &envptr20736[3]
  %hAg$_37foldl = load i64, i64* %envptr20737, align 8                               ; load; *envptr20737
  %envptr20738 = inttoptr i64 %env10217 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20739 = getelementptr inbounds i64, i64* %envptr20738, i64 2                ; &envptr20738[2]
  %sOp$f = load i64, i64* %envptr20739, align 8                                      ; load; *envptr20739
  %envptr20740 = inttoptr i64 %env10217 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20741 = getelementptr inbounds i64, i64* %envptr20740, i64 1                ; &envptr20740[1]
  %m2m$lsts_43 = load i64, i64* %envptr20741, align 8                                ; load; *envptr20741
  %_957277 = call i64 @prim_car(i64 %rvp9658)                                        ; call prim_car
  %rvp9657 = call i64 @prim_cdr(i64 %rvp9658)                                        ; call prim_cdr
  %hu3$acc_43 = call i64 @prim_car(i64 %rvp9657)                                     ; call prim_car
  %na9656 = call i64 @prim_cdr(i64 %rvp9657)                                         ; call prim_cdr
  %a6933 = call i64 @prim_cons(i64 %hu3$acc_43, i64 %m2m$lsts_43)                    ; call prim_cons
  %a6934 = call i64 @prim_cons(i64 %sOp$f, i64 %a6933)                               ; call prim_cons
  %cps_45lst7278 = call i64 @prim_cons(i64 %cont7270, i64 %a6934)                    ; call prim_cons
  %cloptr20742 = inttoptr i64 %hAg$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr20743 = getelementptr inbounds i64, i64* %cloptr20742, i64 0                 ; &cloptr20742[0]
  %f20745 = load i64, i64* %i0ptr20743, align 8                                      ; load; *i0ptr20743
  %fptr20744 = inttoptr i64 %f20745 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20744(i64 %hAg$_37foldl, i64 %cps_45lst7278)        ; tail call
  ret void
}


define void @lam10214(i64 %env10215, i64 %rvp9668) {
  %cont7281 = call i64 @prim_car(i64 %rvp9668)                                       ; call prim_car
  %rvp9667 = call i64 @prim_cdr(i64 %rvp9668)                                        ; call prim_cdr
  %QSh$a = call i64 @prim_car(i64 %rvp9667)                                          ; call prim_car
  %rvp9666 = call i64 @prim_cdr(i64 %rvp9667)                                        ; call prim_cdr
  %jMW$b = call i64 @prim_car(i64 %rvp9666)                                          ; call prim_car
  %na9662 = call i64 @prim_cdr(i64 %rvp9666)                                         ; call prim_cdr
  %retprim7282 = call i64 @prim_cons(i64 %QSh$a, i64 %jMW$b)                         ; call prim_cons
  %arg8389 = add i64 0, 0                                                            ; quoted ()
  %rva9665 = add i64 0, 0                                                            ; quoted ()
  %rva9664 = call i64 @prim_cons(i64 %retprim7282, i64 %rva9665)                     ; call prim_cons
  %rva9663 = call i64 @prim_cons(i64 %arg8389, i64 %rva9664)                         ; call prim_cons
  %cloptr20746 = inttoptr i64 %cont7281 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20747 = getelementptr inbounds i64, i64* %cloptr20746, i64 0                 ; &cloptr20746[0]
  %f20749 = load i64, i64* %i0ptr20747, align 8                                      ; load; *i0ptr20747
  %fptr20748 = inttoptr i64 %f20749 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20748(i64 %cont7281, i64 %rva9663)                  ; tail call
  ret void
}


define void @lam10209(i64 %env10210, i64 %rvp9682) {
  %cont7283 = call i64 @prim_car(i64 %rvp9682)                                       ; call prim_car
  %rvp9681 = call i64 @prim_cdr(i64 %rvp9682)                                        ; call prim_cdr
  %xm7$x = call i64 @prim_car(i64 %rvp9681)                                          ; call prim_car
  %na9677 = call i64 @prim_cdr(i64 %rvp9681)                                         ; call prim_cdr
  %retprim7284 = call i64 @prim_car(i64 %xm7$x)                                      ; call prim_car
  %arg8393 = add i64 0, 0                                                            ; quoted ()
  %rva9680 = add i64 0, 0                                                            ; quoted ()
  %rva9679 = call i64 @prim_cons(i64 %retprim7284, i64 %rva9680)                     ; call prim_cons
  %rva9678 = call i64 @prim_cons(i64 %arg8393, i64 %rva9679)                         ; call prim_cons
  %cloptr20750 = inttoptr i64 %cont7283 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20751 = getelementptr inbounds i64, i64* %cloptr20750, i64 0                 ; &cloptr20750[0]
  %f20753 = load i64, i64* %i0ptr20751, align 8                                      ; load; *i0ptr20751
  %fptr20752 = inttoptr i64 %f20753 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20752(i64 %cont7283, i64 %rva9678)                  ; tail call
  ret void
}


define void @lam10204(i64 %env10205, i64 %rvp9695) {
  %cont7285 = call i64 @prim_car(i64 %rvp9695)                                       ; call prim_car
  %rvp9694 = call i64 @prim_cdr(i64 %rvp9695)                                        ; call prim_cdr
  %GFk$x = call i64 @prim_car(i64 %rvp9694)                                          ; call prim_car
  %na9690 = call i64 @prim_cdr(i64 %rvp9694)                                         ; call prim_cdr
  %retprim7286 = call i64 @prim_cdr(i64 %GFk$x)                                      ; call prim_cdr
  %arg8397 = add i64 0, 0                                                            ; quoted ()
  %rva9693 = add i64 0, 0                                                            ; quoted ()
  %rva9692 = call i64 @prim_cons(i64 %retprim7286, i64 %rva9693)                     ; call prim_cons
  %rva9691 = call i64 @prim_cons(i64 %arg8397, i64 %rva9692)                         ; call prim_cons
  %cloptr20754 = inttoptr i64 %cont7285 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20755 = getelementptr inbounds i64, i64* %cloptr20754, i64 0                 ; &cloptr20754[0]
  %f20757 = load i64, i64* %i0ptr20755, align 8                                      ; load; *i0ptr20755
  %fptr20756 = inttoptr i64 %f20757 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20756(i64 %cont7285, i64 %rva9691)                  ; tail call
  ret void
}


define void @lam10197(i64 %env10198, i64 %rvp9712) {
  %cont7287 = call i64 @prim_car(i64 %rvp9712)                                       ; call prim_car
  %rvp9711 = call i64 @prim_cdr(i64 %rvp9712)                                        ; call prim_cdr
  %fju$lst = call i64 @prim_car(i64 %rvp9711)                                        ; call prim_car
  %rvp9710 = call i64 @prim_cdr(i64 %rvp9711)                                        ; call prim_cdr
  %uLH$b = call i64 @prim_car(i64 %rvp9710)                                          ; call prim_car
  %na9703 = call i64 @prim_cdr(i64 %rvp9710)                                         ; call prim_cdr
  %cmp20758 = icmp eq i64 %uLH$b, 15                                                 ; false?
  br i1 %cmp20758, label %else20760, label %then20759                                ; if

then20759:
  %arg8400 = add i64 0, 0                                                            ; quoted ()
  %rva9706 = add i64 0, 0                                                            ; quoted ()
  %rva9705 = call i64 @prim_cons(i64 %uLH$b, i64 %rva9706)                           ; call prim_cons
  %rva9704 = call i64 @prim_cons(i64 %arg8400, i64 %rva9705)                         ; call prim_cons
  %cloptr20761 = inttoptr i64 %cont7287 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20762 = getelementptr inbounds i64, i64* %cloptr20761, i64 0                 ; &cloptr20761[0]
  %f20764 = load i64, i64* %i0ptr20762, align 8                                      ; load; *i0ptr20762
  %fptr20763 = inttoptr i64 %f20764 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20763(i64 %cont7287, i64 %rva9704)                  ; tail call
  ret void

else20760:
  %retprim7288 = call i64 @prim_null_63(i64 %fju$lst)                                ; call prim_null_63
  %arg8404 = add i64 0, 0                                                            ; quoted ()
  %rva9709 = add i64 0, 0                                                            ; quoted ()
  %rva9708 = call i64 @prim_cons(i64 %retprim7288, i64 %rva9709)                     ; call prim_cons
  %rva9707 = call i64 @prim_cons(i64 %arg8404, i64 %rva9708)                         ; call prim_cons
  %cloptr20765 = inttoptr i64 %cont7287 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20766 = getelementptr inbounds i64, i64* %cloptr20765, i64 0                 ; &cloptr20765[0]
  %f20768 = load i64, i64* %i0ptr20766, align 8                                      ; load; *i0ptr20766
  %fptr20767 = inttoptr i64 %f20768 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20767(i64 %cont7287, i64 %rva9707)                  ; tail call
  ret void
}


define void @lam10183(i64 %env10184, i64 %rvp9832) {
  %envptr20769 = inttoptr i64 %env10184 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20770 = getelementptr inbounds i64, i64* %envptr20769, i64 2                ; &envptr20769[2]
  %vzO$_37map1 = load i64, i64* %envptr20770, align 8                                ; load; *envptr20770
  %envptr20771 = inttoptr i64 %env10184 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20772 = getelementptr inbounds i64, i64* %envptr20771, i64 1                ; &envptr20771[1]
  %Hkd$_37foldr1 = load i64, i64* %envptr20772, align 8                              ; load; *envptr20772
  %cont7291 = call i64 @prim_car(i64 %rvp9832)                                       ; call prim_car
  %rvp9831 = call i64 @prim_cdr(i64 %rvp9832)                                        ; call prim_cdr
  %zqc$_37foldr = call i64 @prim_car(i64 %rvp9831)                                   ; call prim_car
  %na9739 = call i64 @prim_cdr(i64 %rvp9831)                                         ; call prim_cdr
  %arg8407 = add i64 0, 0                                                            ; quoted ()
  %cloptr20773 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr20775 = getelementptr inbounds i64, i64* %cloptr20773, i64 1                  ; &eptr20775[1]
  %eptr20776 = getelementptr inbounds i64, i64* %cloptr20773, i64 2                  ; &eptr20776[2]
  %eptr20777 = getelementptr inbounds i64, i64* %cloptr20773, i64 3                  ; &eptr20777[3]
  store i64 %Hkd$_37foldr1, i64* %eptr20775                                          ; *eptr20775 = %Hkd$_37foldr1
  store i64 %vzO$_37map1, i64* %eptr20776                                            ; *eptr20776 = %vzO$_37map1
  store i64 %zqc$_37foldr, i64* %eptr20777                                           ; *eptr20777 = %zqc$_37foldr
  %eptr20774 = getelementptr inbounds i64, i64* %cloptr20773, i64 0                  ; &cloptr20773[0]
  %f20778 = ptrtoint void(i64,i64)* @lam10180 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20778, i64* %eptr20774                                                 ; store fptr
  %arg8406 = ptrtoint i64* %cloptr20773 to i64                                       ; closure cast; i64* -> i64
  %rva9830 = add i64 0, 0                                                            ; quoted ()
  %rva9829 = call i64 @prim_cons(i64 %arg8406, i64 %rva9830)                         ; call prim_cons
  %rva9828 = call i64 @prim_cons(i64 %arg8407, i64 %rva9829)                         ; call prim_cons
  %cloptr20779 = inttoptr i64 %cont7291 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20780 = getelementptr inbounds i64, i64* %cloptr20779, i64 0                 ; &cloptr20779[0]
  %f20782 = load i64, i64* %i0ptr20780, align 8                                      ; load; *i0ptr20780
  %fptr20781 = inttoptr i64 %f20782 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20781(i64 %cont7291, i64 %rva9828)                  ; tail call
  ret void
}


define void @lam10180(i64 %env10181, i64 %yzU$args7293) {
  %envptr20783 = inttoptr i64 %env10181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20784 = getelementptr inbounds i64, i64* %envptr20783, i64 3                ; &envptr20783[3]
  %zqc$_37foldr = load i64, i64* %envptr20784, align 8                               ; load; *envptr20784
  %envptr20785 = inttoptr i64 %env10181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20786 = getelementptr inbounds i64, i64* %envptr20785, i64 2                ; &envptr20785[2]
  %vzO$_37map1 = load i64, i64* %envptr20786, align 8                                ; load; *envptr20786
  %envptr20787 = inttoptr i64 %env10181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20788 = getelementptr inbounds i64, i64* %envptr20787, i64 1                ; &envptr20787[1]
  %Hkd$_37foldr1 = load i64, i64* %envptr20788, align 8                              ; load; *envptr20788
  %cont7292 = call i64 @prim_car(i64 %yzU$args7293)                                  ; call prim_car
  %yzU$args = call i64 @prim_cdr(i64 %yzU$args7293)                                  ; call prim_cdr
  %lk0$f = call i64 @prim_car(i64 %yzU$args)                                         ; call prim_car
  %a6914 = call i64 @prim_cdr(i64 %yzU$args)                                         ; call prim_cdr
  %retprim7312 = call i64 @prim_car(i64 %a6914)                                      ; call prim_car
  %cloptr20789 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr20791 = getelementptr inbounds i64, i64* %cloptr20789, i64 1                  ; &eptr20791[1]
  %eptr20792 = getelementptr inbounds i64, i64* %cloptr20789, i64 2                  ; &eptr20792[2]
  %eptr20793 = getelementptr inbounds i64, i64* %cloptr20789, i64 3                  ; &eptr20793[3]
  %eptr20794 = getelementptr inbounds i64, i64* %cloptr20789, i64 4                  ; &eptr20794[4]
  %eptr20795 = getelementptr inbounds i64, i64* %cloptr20789, i64 5                  ; &eptr20795[5]
  %eptr20796 = getelementptr inbounds i64, i64* %cloptr20789, i64 6                  ; &eptr20796[6]
  store i64 %lk0$f, i64* %eptr20791                                                  ; *eptr20791 = %lk0$f
  store i64 %cont7292, i64* %eptr20792                                               ; *eptr20792 = %cont7292
  store i64 %Hkd$_37foldr1, i64* %eptr20793                                          ; *eptr20793 = %Hkd$_37foldr1
  store i64 %yzU$args, i64* %eptr20794                                               ; *eptr20794 = %yzU$args
  store i64 %vzO$_37map1, i64* %eptr20795                                            ; *eptr20795 = %vzO$_37map1
  store i64 %zqc$_37foldr, i64* %eptr20796                                           ; *eptr20796 = %zqc$_37foldr
  %eptr20790 = getelementptr inbounds i64, i64* %cloptr20789, i64 0                  ; &cloptr20789[0]
  %f20797 = ptrtoint void(i64,i64)* @lam10178 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20797, i64* %eptr20790                                                 ; store fptr
  %arg8416 = ptrtoint i64* %cloptr20789 to i64                                       ; closure cast; i64* -> i64
  %arg8415 = add i64 0, 0                                                            ; quoted ()
  %rva9827 = add i64 0, 0                                                            ; quoted ()
  %rva9826 = call i64 @prim_cons(i64 %retprim7312, i64 %rva9827)                     ; call prim_cons
  %rva9825 = call i64 @prim_cons(i64 %arg8415, i64 %rva9826)                         ; call prim_cons
  %cloptr20798 = inttoptr i64 %arg8416 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20799 = getelementptr inbounds i64, i64* %cloptr20798, i64 0                 ; &cloptr20798[0]
  %f20801 = load i64, i64* %i0ptr20799, align 8                                      ; load; *i0ptr20799
  %fptr20800 = inttoptr i64 %f20801 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20800(i64 %arg8416, i64 %rva9825)                   ; tail call
  ret void
}


define void @lam10178(i64 %env10179, i64 %rvp9824) {
  %envptr20802 = inttoptr i64 %env10179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20803 = getelementptr inbounds i64, i64* %envptr20802, i64 6                ; &envptr20802[6]
  %zqc$_37foldr = load i64, i64* %envptr20803, align 8                               ; load; *envptr20803
  %envptr20804 = inttoptr i64 %env10179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20805 = getelementptr inbounds i64, i64* %envptr20804, i64 5                ; &envptr20804[5]
  %vzO$_37map1 = load i64, i64* %envptr20805, align 8                                ; load; *envptr20805
  %envptr20806 = inttoptr i64 %env10179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20807 = getelementptr inbounds i64, i64* %envptr20806, i64 4                ; &envptr20806[4]
  %yzU$args = load i64, i64* %envptr20807, align 8                                   ; load; *envptr20807
  %envptr20808 = inttoptr i64 %env10179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20809 = getelementptr inbounds i64, i64* %envptr20808, i64 3                ; &envptr20808[3]
  %Hkd$_37foldr1 = load i64, i64* %envptr20809, align 8                              ; load; *envptr20809
  %envptr20810 = inttoptr i64 %env10179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20811 = getelementptr inbounds i64, i64* %envptr20810, i64 2                ; &envptr20810[2]
  %cont7292 = load i64, i64* %envptr20811, align 8                                   ; load; *envptr20811
  %envptr20812 = inttoptr i64 %env10179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20813 = getelementptr inbounds i64, i64* %envptr20812, i64 1                ; &envptr20812[1]
  %lk0$f = load i64, i64* %envptr20813, align 8                                      ; load; *envptr20813
  %_957294 = call i64 @prim_car(i64 %rvp9824)                                        ; call prim_car
  %rvp9823 = call i64 @prim_cdr(i64 %rvp9824)                                        ; call prim_cdr
  %F69$acc = call i64 @prim_car(i64 %rvp9823)                                        ; call prim_car
  %na9741 = call i64 @prim_cdr(i64 %rvp9823)                                         ; call prim_cdr
  %a6915 = call i64 @prim_cdr(i64 %yzU$args)                                         ; call prim_cdr
  %retprim7311 = call i64 @prim_cdr(i64 %a6915)                                      ; call prim_cdr
  %cloptr20814 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr20816 = getelementptr inbounds i64, i64* %cloptr20814, i64 1                  ; &eptr20816[1]
  %eptr20817 = getelementptr inbounds i64, i64* %cloptr20814, i64 2                  ; &eptr20817[2]
  %eptr20818 = getelementptr inbounds i64, i64* %cloptr20814, i64 3                  ; &eptr20818[3]
  %eptr20819 = getelementptr inbounds i64, i64* %cloptr20814, i64 4                  ; &eptr20819[4]
  %eptr20820 = getelementptr inbounds i64, i64* %cloptr20814, i64 5                  ; &eptr20820[5]
  %eptr20821 = getelementptr inbounds i64, i64* %cloptr20814, i64 6                  ; &eptr20821[6]
  store i64 %lk0$f, i64* %eptr20816                                                  ; *eptr20816 = %lk0$f
  store i64 %F69$acc, i64* %eptr20817                                                ; *eptr20817 = %F69$acc
  store i64 %cont7292, i64* %eptr20818                                               ; *eptr20818 = %cont7292
  store i64 %Hkd$_37foldr1, i64* %eptr20819                                          ; *eptr20819 = %Hkd$_37foldr1
  store i64 %vzO$_37map1, i64* %eptr20820                                            ; *eptr20820 = %vzO$_37map1
  store i64 %zqc$_37foldr, i64* %eptr20821                                           ; *eptr20821 = %zqc$_37foldr
  %eptr20815 = getelementptr inbounds i64, i64* %cloptr20814, i64 0                  ; &cloptr20814[0]
  %f20822 = ptrtoint void(i64,i64)* @lam10176 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20822, i64* %eptr20815                                                 ; store fptr
  %arg8421 = ptrtoint i64* %cloptr20814 to i64                                       ; closure cast; i64* -> i64
  %arg8420 = add i64 0, 0                                                            ; quoted ()
  %rva9822 = add i64 0, 0                                                            ; quoted ()
  %rva9821 = call i64 @prim_cons(i64 %retprim7311, i64 %rva9822)                     ; call prim_cons
  %rva9820 = call i64 @prim_cons(i64 %arg8420, i64 %rva9821)                         ; call prim_cons
  %cloptr20823 = inttoptr i64 %arg8421 to i64*                                       ; closure/env cast; i64 -> i64*
  %i0ptr20824 = getelementptr inbounds i64, i64* %cloptr20823, i64 0                 ; &cloptr20823[0]
  %f20826 = load i64, i64* %i0ptr20824, align 8                                      ; load; *i0ptr20824
  %fptr20825 = inttoptr i64 %f20826 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20825(i64 %arg8421, i64 %rva9820)                   ; tail call
  ret void
}


define void @lam10176(i64 %env10177, i64 %rvp9819) {
  %envptr20827 = inttoptr i64 %env10177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20828 = getelementptr inbounds i64, i64* %envptr20827, i64 6                ; &envptr20827[6]
  %zqc$_37foldr = load i64, i64* %envptr20828, align 8                               ; load; *envptr20828
  %envptr20829 = inttoptr i64 %env10177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20830 = getelementptr inbounds i64, i64* %envptr20829, i64 5                ; &envptr20829[5]
  %vzO$_37map1 = load i64, i64* %envptr20830, align 8                                ; load; *envptr20830
  %envptr20831 = inttoptr i64 %env10177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20832 = getelementptr inbounds i64, i64* %envptr20831, i64 4                ; &envptr20831[4]
  %Hkd$_37foldr1 = load i64, i64* %envptr20832, align 8                              ; load; *envptr20832
  %envptr20833 = inttoptr i64 %env10177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20834 = getelementptr inbounds i64, i64* %envptr20833, i64 3                ; &envptr20833[3]
  %cont7292 = load i64, i64* %envptr20834, align 8                                   ; load; *envptr20834
  %envptr20835 = inttoptr i64 %env10177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20836 = getelementptr inbounds i64, i64* %envptr20835, i64 2                ; &envptr20835[2]
  %F69$acc = load i64, i64* %envptr20836, align 8                                    ; load; *envptr20836
  %envptr20837 = inttoptr i64 %env10177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20838 = getelementptr inbounds i64, i64* %envptr20837, i64 1                ; &envptr20837[1]
  %lk0$f = load i64, i64* %envptr20838, align 8                                      ; load; *envptr20838
  %_957295 = call i64 @prim_car(i64 %rvp9819)                                        ; call prim_car
  %rvp9818 = call i64 @prim_cdr(i64 %rvp9819)                                        ; call prim_cdr
  %AjE$lsts = call i64 @prim_car(i64 %rvp9818)                                       ; call prim_car
  %na9743 = call i64 @prim_cdr(i64 %rvp9818)                                         ; call prim_cdr
  %cloptr20839 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr20841 = getelementptr inbounds i64, i64* %cloptr20839, i64 1                  ; &eptr20841[1]
  %eptr20842 = getelementptr inbounds i64, i64* %cloptr20839, i64 2                  ; &eptr20842[2]
  %eptr20843 = getelementptr inbounds i64, i64* %cloptr20839, i64 3                  ; &eptr20843[3]
  %eptr20844 = getelementptr inbounds i64, i64* %cloptr20839, i64 4                  ; &eptr20844[4]
  %eptr20845 = getelementptr inbounds i64, i64* %cloptr20839, i64 5                  ; &eptr20845[5]
  %eptr20846 = getelementptr inbounds i64, i64* %cloptr20839, i64 6                  ; &eptr20846[6]
  %eptr20847 = getelementptr inbounds i64, i64* %cloptr20839, i64 7                  ; &eptr20847[7]
  store i64 %lk0$f, i64* %eptr20841                                                  ; *eptr20841 = %lk0$f
  store i64 %F69$acc, i64* %eptr20842                                                ; *eptr20842 = %F69$acc
  store i64 %cont7292, i64* %eptr20843                                               ; *eptr20843 = %cont7292
  store i64 %Hkd$_37foldr1, i64* %eptr20844                                          ; *eptr20844 = %Hkd$_37foldr1
  store i64 %AjE$lsts, i64* %eptr20845                                               ; *eptr20845 = %AjE$lsts
  store i64 %vzO$_37map1, i64* %eptr20846                                            ; *eptr20846 = %vzO$_37map1
  store i64 %zqc$_37foldr, i64* %eptr20847                                           ; *eptr20847 = %zqc$_37foldr
  %eptr20840 = getelementptr inbounds i64, i64* %cloptr20839, i64 0                  ; &cloptr20839[0]
  %f20848 = ptrtoint void(i64,i64)* @lam10174 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20848, i64* %eptr20840                                                 ; store fptr
  %arg8425 = ptrtoint i64* %cloptr20839 to i64                                       ; closure cast; i64* -> i64
  %cloptr20849 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20850 = getelementptr inbounds i64, i64* %cloptr20849, i64 0                  ; &cloptr20849[0]
  %f20851 = ptrtoint void(i64,i64)* @lam10146 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20851, i64* %eptr20850                                                 ; store fptr
  %arg8424 = ptrtoint i64* %cloptr20849 to i64                                       ; closure cast; i64* -> i64
  %arg8423 = call i64 @const_init_false()                                            ; quoted #f
  %rva9817 = add i64 0, 0                                                            ; quoted ()
  %rva9816 = call i64 @prim_cons(i64 %AjE$lsts, i64 %rva9817)                        ; call prim_cons
  %rva9815 = call i64 @prim_cons(i64 %arg8423, i64 %rva9816)                         ; call prim_cons
  %rva9814 = call i64 @prim_cons(i64 %arg8424, i64 %rva9815)                         ; call prim_cons
  %rva9813 = call i64 @prim_cons(i64 %arg8425, i64 %rva9814)                         ; call prim_cons
  %cloptr20852 = inttoptr i64 %Hkd$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr20853 = getelementptr inbounds i64, i64* %cloptr20852, i64 0                 ; &cloptr20852[0]
  %f20855 = load i64, i64* %i0ptr20853, align 8                                      ; load; *i0ptr20853
  %fptr20854 = inttoptr i64 %f20855 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20854(i64 %Hkd$_37foldr1, i64 %rva9813)             ; tail call
  ret void
}


define void @lam10174(i64 %env10175, i64 %rvp9801) {
  %envptr20856 = inttoptr i64 %env10175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20857 = getelementptr inbounds i64, i64* %envptr20856, i64 7                ; &envptr20856[7]
  %zqc$_37foldr = load i64, i64* %envptr20857, align 8                               ; load; *envptr20857
  %envptr20858 = inttoptr i64 %env10175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20859 = getelementptr inbounds i64, i64* %envptr20858, i64 6                ; &envptr20858[6]
  %vzO$_37map1 = load i64, i64* %envptr20859, align 8                                ; load; *envptr20859
  %envptr20860 = inttoptr i64 %env10175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20861 = getelementptr inbounds i64, i64* %envptr20860, i64 5                ; &envptr20860[5]
  %AjE$lsts = load i64, i64* %envptr20861, align 8                                   ; load; *envptr20861
  %envptr20862 = inttoptr i64 %env10175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20863 = getelementptr inbounds i64, i64* %envptr20862, i64 4                ; &envptr20862[4]
  %Hkd$_37foldr1 = load i64, i64* %envptr20863, align 8                              ; load; *envptr20863
  %envptr20864 = inttoptr i64 %env10175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20865 = getelementptr inbounds i64, i64* %envptr20864, i64 3                ; &envptr20864[3]
  %cont7292 = load i64, i64* %envptr20865, align 8                                   ; load; *envptr20865
  %envptr20866 = inttoptr i64 %env10175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20867 = getelementptr inbounds i64, i64* %envptr20866, i64 2                ; &envptr20866[2]
  %F69$acc = load i64, i64* %envptr20867, align 8                                    ; load; *envptr20867
  %envptr20868 = inttoptr i64 %env10175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20869 = getelementptr inbounds i64, i64* %envptr20868, i64 1                ; &envptr20868[1]
  %lk0$f = load i64, i64* %envptr20869, align 8                                      ; load; *envptr20869
  %_957296 = call i64 @prim_car(i64 %rvp9801)                                        ; call prim_car
  %rvp9800 = call i64 @prim_cdr(i64 %rvp9801)                                        ; call prim_cdr
  %a6916 = call i64 @prim_car(i64 %rvp9800)                                          ; call prim_car
  %na9745 = call i64 @prim_cdr(i64 %rvp9800)                                         ; call prim_cdr
  %cmp20870 = icmp eq i64 %a6916, 15                                                 ; false?
  br i1 %cmp20870, label %else20872, label %then20871                                ; if

then20871:
  %arg8428 = add i64 0, 0                                                            ; quoted ()
  %rva9748 = add i64 0, 0                                                            ; quoted ()
  %rva9747 = call i64 @prim_cons(i64 %F69$acc, i64 %rva9748)                         ; call prim_cons
  %rva9746 = call i64 @prim_cons(i64 %arg8428, i64 %rva9747)                         ; call prim_cons
  %cloptr20873 = inttoptr i64 %cont7292 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20874 = getelementptr inbounds i64, i64* %cloptr20873, i64 0                 ; &cloptr20873[0]
  %f20876 = load i64, i64* %i0ptr20874, align 8                                      ; load; *i0ptr20874
  %fptr20875 = inttoptr i64 %f20876 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20875(i64 %cont7292, i64 %rva9746)                  ; tail call
  ret void

else20872:
  %cloptr20877 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr20879 = getelementptr inbounds i64, i64* %cloptr20877, i64 1                  ; &eptr20879[1]
  %eptr20880 = getelementptr inbounds i64, i64* %cloptr20877, i64 2                  ; &eptr20880[2]
  %eptr20881 = getelementptr inbounds i64, i64* %cloptr20877, i64 3                  ; &eptr20881[3]
  %eptr20882 = getelementptr inbounds i64, i64* %cloptr20877, i64 4                  ; &eptr20882[4]
  %eptr20883 = getelementptr inbounds i64, i64* %cloptr20877, i64 5                  ; &eptr20883[5]
  %eptr20884 = getelementptr inbounds i64, i64* %cloptr20877, i64 6                  ; &eptr20884[6]
  %eptr20885 = getelementptr inbounds i64, i64* %cloptr20877, i64 7                  ; &eptr20885[7]
  store i64 %lk0$f, i64* %eptr20879                                                  ; *eptr20879 = %lk0$f
  store i64 %F69$acc, i64* %eptr20880                                                ; *eptr20880 = %F69$acc
  store i64 %cont7292, i64* %eptr20881                                               ; *eptr20881 = %cont7292
  store i64 %Hkd$_37foldr1, i64* %eptr20882                                          ; *eptr20882 = %Hkd$_37foldr1
  store i64 %AjE$lsts, i64* %eptr20883                                               ; *eptr20883 = %AjE$lsts
  store i64 %vzO$_37map1, i64* %eptr20884                                            ; *eptr20884 = %vzO$_37map1
  store i64 %zqc$_37foldr, i64* %eptr20885                                           ; *eptr20885 = %zqc$_37foldr
  %eptr20878 = getelementptr inbounds i64, i64* %cloptr20877, i64 0                  ; &cloptr20877[0]
  %f20886 = ptrtoint void(i64,i64)* @lam10172 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20886, i64* %eptr20878                                                 ; store fptr
  %arg8432 = ptrtoint i64* %cloptr20877 to i64                                       ; closure cast; i64* -> i64
  %cloptr20887 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20888 = getelementptr inbounds i64, i64* %cloptr20887, i64 0                  ; &cloptr20887[0]
  %f20889 = ptrtoint void(i64,i64)* @lam10153 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20889, i64* %eptr20888                                                 ; store fptr
  %arg8431 = ptrtoint i64* %cloptr20887 to i64                                       ; closure cast; i64* -> i64
  %rva9799 = add i64 0, 0                                                            ; quoted ()
  %rva9798 = call i64 @prim_cons(i64 %AjE$lsts, i64 %rva9799)                        ; call prim_cons
  %rva9797 = call i64 @prim_cons(i64 %arg8431, i64 %rva9798)                         ; call prim_cons
  %rva9796 = call i64 @prim_cons(i64 %arg8432, i64 %rva9797)                         ; call prim_cons
  %cloptr20890 = inttoptr i64 %vzO$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr20891 = getelementptr inbounds i64, i64* %cloptr20890, i64 0                 ; &cloptr20890[0]
  %f20893 = load i64, i64* %i0ptr20891, align 8                                      ; load; *i0ptr20891
  %fptr20892 = inttoptr i64 %f20893 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20892(i64 %vzO$_37map1, i64 %rva9796)               ; tail call
  ret void
}


define void @lam10172(i64 %env10173, i64 %rvp9788) {
  %envptr20894 = inttoptr i64 %env10173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20895 = getelementptr inbounds i64, i64* %envptr20894, i64 7                ; &envptr20894[7]
  %zqc$_37foldr = load i64, i64* %envptr20895, align 8                               ; load; *envptr20895
  %envptr20896 = inttoptr i64 %env10173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20897 = getelementptr inbounds i64, i64* %envptr20896, i64 6                ; &envptr20896[6]
  %vzO$_37map1 = load i64, i64* %envptr20897, align 8                                ; load; *envptr20897
  %envptr20898 = inttoptr i64 %env10173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20899 = getelementptr inbounds i64, i64* %envptr20898, i64 5                ; &envptr20898[5]
  %AjE$lsts = load i64, i64* %envptr20899, align 8                                   ; load; *envptr20899
  %envptr20900 = inttoptr i64 %env10173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20901 = getelementptr inbounds i64, i64* %envptr20900, i64 4                ; &envptr20900[4]
  %Hkd$_37foldr1 = load i64, i64* %envptr20901, align 8                              ; load; *envptr20901
  %envptr20902 = inttoptr i64 %env10173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20903 = getelementptr inbounds i64, i64* %envptr20902, i64 3                ; &envptr20902[3]
  %cont7292 = load i64, i64* %envptr20903, align 8                                   ; load; *envptr20903
  %envptr20904 = inttoptr i64 %env10173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20905 = getelementptr inbounds i64, i64* %envptr20904, i64 2                ; &envptr20904[2]
  %F69$acc = load i64, i64* %envptr20905, align 8                                    ; load; *envptr20905
  %envptr20906 = inttoptr i64 %env10173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20907 = getelementptr inbounds i64, i64* %envptr20906, i64 1                ; &envptr20906[1]
  %lk0$f = load i64, i64* %envptr20907, align 8                                      ; load; *envptr20907
  %_957297 = call i64 @prim_car(i64 %rvp9788)                                        ; call prim_car
  %rvp9787 = call i64 @prim_cdr(i64 %rvp9788)                                        ; call prim_cdr
  %P7m$lsts_43 = call i64 @prim_car(i64 %rvp9787)                                    ; call prim_car
  %na9750 = call i64 @prim_cdr(i64 %rvp9787)                                         ; call prim_cdr
  %cloptr20908 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr20910 = getelementptr inbounds i64, i64* %cloptr20908, i64 1                  ; &eptr20910[1]
  %eptr20911 = getelementptr inbounds i64, i64* %cloptr20908, i64 2                  ; &eptr20911[2]
  %eptr20912 = getelementptr inbounds i64, i64* %cloptr20908, i64 3                  ; &eptr20912[3]
  %eptr20913 = getelementptr inbounds i64, i64* %cloptr20908, i64 4                  ; &eptr20913[4]
  %eptr20914 = getelementptr inbounds i64, i64* %cloptr20908, i64 5                  ; &eptr20914[5]
  %eptr20915 = getelementptr inbounds i64, i64* %cloptr20908, i64 6                  ; &eptr20915[6]
  store i64 %lk0$f, i64* %eptr20910                                                  ; *eptr20910 = %lk0$f
  store i64 %F69$acc, i64* %eptr20911                                                ; *eptr20911 = %F69$acc
  store i64 %P7m$lsts_43, i64* %eptr20912                                            ; *eptr20912 = %P7m$lsts_43
  store i64 %cont7292, i64* %eptr20913                                               ; *eptr20913 = %cont7292
  store i64 %Hkd$_37foldr1, i64* %eptr20914                                          ; *eptr20914 = %Hkd$_37foldr1
  store i64 %zqc$_37foldr, i64* %eptr20915                                           ; *eptr20915 = %zqc$_37foldr
  %eptr20909 = getelementptr inbounds i64, i64* %cloptr20908, i64 0                  ; &cloptr20908[0]
  %f20916 = ptrtoint void(i64,i64)* @lam10170 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20916, i64* %eptr20909                                                 ; store fptr
  %arg8436 = ptrtoint i64* %cloptr20908 to i64                                       ; closure cast; i64* -> i64
  %cloptr20917 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20918 = getelementptr inbounds i64, i64* %cloptr20917, i64 0                  ; &cloptr20917[0]
  %f20919 = ptrtoint void(i64,i64)* @lam10158 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20919, i64* %eptr20918                                                 ; store fptr
  %arg8435 = ptrtoint i64* %cloptr20917 to i64                                       ; closure cast; i64* -> i64
  %rva9786 = add i64 0, 0                                                            ; quoted ()
  %rva9785 = call i64 @prim_cons(i64 %AjE$lsts, i64 %rva9786)                        ; call prim_cons
  %rva9784 = call i64 @prim_cons(i64 %arg8435, i64 %rva9785)                         ; call prim_cons
  %rva9783 = call i64 @prim_cons(i64 %arg8436, i64 %rva9784)                         ; call prim_cons
  %cloptr20920 = inttoptr i64 %vzO$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr20921 = getelementptr inbounds i64, i64* %cloptr20920, i64 0                 ; &cloptr20920[0]
  %f20923 = load i64, i64* %i0ptr20921, align 8                                      ; load; *i0ptr20921
  %fptr20922 = inttoptr i64 %f20923 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20922(i64 %vzO$_37map1, i64 %rva9783)               ; tail call
  ret void
}


define void @lam10170(i64 %env10171, i64 %rvp9775) {
  %envptr20924 = inttoptr i64 %env10171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20925 = getelementptr inbounds i64, i64* %envptr20924, i64 6                ; &envptr20924[6]
  %zqc$_37foldr = load i64, i64* %envptr20925, align 8                               ; load; *envptr20925
  %envptr20926 = inttoptr i64 %env10171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20927 = getelementptr inbounds i64, i64* %envptr20926, i64 5                ; &envptr20926[5]
  %Hkd$_37foldr1 = load i64, i64* %envptr20927, align 8                              ; load; *envptr20927
  %envptr20928 = inttoptr i64 %env10171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20929 = getelementptr inbounds i64, i64* %envptr20928, i64 4                ; &envptr20928[4]
  %cont7292 = load i64, i64* %envptr20929, align 8                                   ; load; *envptr20929
  %envptr20930 = inttoptr i64 %env10171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20931 = getelementptr inbounds i64, i64* %envptr20930, i64 3                ; &envptr20930[3]
  %P7m$lsts_43 = load i64, i64* %envptr20931, align 8                                ; load; *envptr20931
  %envptr20932 = inttoptr i64 %env10171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20933 = getelementptr inbounds i64, i64* %envptr20932, i64 2                ; &envptr20932[2]
  %F69$acc = load i64, i64* %envptr20933, align 8                                    ; load; *envptr20933
  %envptr20934 = inttoptr i64 %env10171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20935 = getelementptr inbounds i64, i64* %envptr20934, i64 1                ; &envptr20934[1]
  %lk0$f = load i64, i64* %envptr20935, align 8                                      ; load; *envptr20935
  %_957298 = call i64 @prim_car(i64 %rvp9775)                                        ; call prim_car
  %rvp9774 = call i64 @prim_cdr(i64 %rvp9775)                                        ; call prim_cdr
  %sJj$vs = call i64 @prim_car(i64 %rvp9774)                                         ; call prim_car
  %na9752 = call i64 @prim_cdr(i64 %rvp9774)                                         ; call prim_cdr
  %a6917 = call i64 @prim_cons(i64 %F69$acc, i64 %P7m$lsts_43)                       ; call prim_cons
  %a6918 = call i64 @prim_cons(i64 %lk0$f, i64 %a6917)                               ; call prim_cons
  %cloptr20936 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr20938 = getelementptr inbounds i64, i64* %cloptr20936, i64 1                  ; &eptr20938[1]
  %eptr20939 = getelementptr inbounds i64, i64* %cloptr20936, i64 2                  ; &eptr20939[2]
  %eptr20940 = getelementptr inbounds i64, i64* %cloptr20936, i64 3                  ; &eptr20940[3]
  %eptr20941 = getelementptr inbounds i64, i64* %cloptr20936, i64 4                  ; &eptr20941[4]
  store i64 %lk0$f, i64* %eptr20938                                                  ; *eptr20938 = %lk0$f
  store i64 %sJj$vs, i64* %eptr20939                                                 ; *eptr20939 = %sJj$vs
  store i64 %cont7292, i64* %eptr20940                                               ; *eptr20940 = %cont7292
  store i64 %Hkd$_37foldr1, i64* %eptr20941                                          ; *eptr20941 = %Hkd$_37foldr1
  %eptr20937 = getelementptr inbounds i64, i64* %cloptr20936, i64 0                  ; &cloptr20936[0]
  %f20942 = ptrtoint void(i64,i64)* @lam10168 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20942, i64* %eptr20937                                                 ; store fptr
  %arg8443 = ptrtoint i64* %cloptr20936 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7304 = call i64 @prim_cons(i64 %arg8443, i64 %a6918)                     ; call prim_cons
  %cloptr20943 = inttoptr i64 %zqc$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr20944 = getelementptr inbounds i64, i64* %cloptr20943, i64 0                 ; &cloptr20943[0]
  %f20946 = load i64, i64* %i0ptr20944, align 8                                      ; load; *i0ptr20944
  %fptr20945 = inttoptr i64 %f20946 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20945(i64 %zqc$_37foldr, i64 %cps_45lst7304)        ; tail call
  ret void
}


define void @lam10168(i64 %env10169, i64 %rvp9773) {
  %envptr20947 = inttoptr i64 %env10169 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20948 = getelementptr inbounds i64, i64* %envptr20947, i64 4                ; &envptr20947[4]
  %Hkd$_37foldr1 = load i64, i64* %envptr20948, align 8                              ; load; *envptr20948
  %envptr20949 = inttoptr i64 %env10169 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20950 = getelementptr inbounds i64, i64* %envptr20949, i64 3                ; &envptr20949[3]
  %cont7292 = load i64, i64* %envptr20950, align 8                                   ; load; *envptr20950
  %envptr20951 = inttoptr i64 %env10169 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20952 = getelementptr inbounds i64, i64* %envptr20951, i64 2                ; &envptr20951[2]
  %sJj$vs = load i64, i64* %envptr20952, align 8                                     ; load; *envptr20952
  %envptr20953 = inttoptr i64 %env10169 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20954 = getelementptr inbounds i64, i64* %envptr20953, i64 1                ; &envptr20953[1]
  %lk0$f = load i64, i64* %envptr20954, align 8                                      ; load; *envptr20954
  %_957299 = call i64 @prim_car(i64 %rvp9773)                                        ; call prim_car
  %rvp9772 = call i64 @prim_cdr(i64 %rvp9773)                                        ; call prim_cdr
  %a6919 = call i64 @prim_car(i64 %rvp9772)                                          ; call prim_car
  %na9754 = call i64 @prim_cdr(i64 %rvp9772)                                         ; call prim_cdr
  %arg8444 = add i64 0, 0                                                            ; quoted ()
  %a6920 = call i64 @prim_cons(i64 %a6919, i64 %arg8444)                             ; call prim_cons
  %cloptr20955 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr20957 = getelementptr inbounds i64, i64* %cloptr20955, i64 1                  ; &eptr20957[1]
  %eptr20958 = getelementptr inbounds i64, i64* %cloptr20955, i64 2                  ; &eptr20958[2]
  store i64 %lk0$f, i64* %eptr20957                                                  ; *eptr20957 = %lk0$f
  store i64 %cont7292, i64* %eptr20958                                               ; *eptr20958 = %cont7292
  %eptr20956 = getelementptr inbounds i64, i64* %cloptr20955, i64 0                  ; &cloptr20955[0]
  %f20959 = ptrtoint void(i64,i64)* @lam10165 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20959, i64* %eptr20956                                                 ; store fptr
  %arg8449 = ptrtoint i64* %cloptr20955 to i64                                       ; closure cast; i64* -> i64
  %cloptr20960 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr20961 = getelementptr inbounds i64, i64* %cloptr20960, i64 0                  ; &cloptr20960[0]
  %f20962 = ptrtoint void(i64,i64)* @lam10163 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f20962, i64* %eptr20961                                                 ; store fptr
  %arg8448 = ptrtoint i64* %cloptr20960 to i64                                       ; closure cast; i64* -> i64
  %rva9771 = add i64 0, 0                                                            ; quoted ()
  %rva9770 = call i64 @prim_cons(i64 %sJj$vs, i64 %rva9771)                          ; call prim_cons
  %rva9769 = call i64 @prim_cons(i64 %a6920, i64 %rva9770)                           ; call prim_cons
  %rva9768 = call i64 @prim_cons(i64 %arg8448, i64 %rva9769)                         ; call prim_cons
  %rva9767 = call i64 @prim_cons(i64 %arg8449, i64 %rva9768)                         ; call prim_cons
  %cloptr20963 = inttoptr i64 %Hkd$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr20964 = getelementptr inbounds i64, i64* %cloptr20963, i64 0                 ; &cloptr20963[0]
  %f20966 = load i64, i64* %i0ptr20964, align 8                                      ; load; *i0ptr20964
  %fptr20965 = inttoptr i64 %f20966 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20965(i64 %Hkd$_37foldr1, i64 %rva9767)             ; tail call
  ret void
}


define void @lam10165(i64 %env10166, i64 %rvp9758) {
  %envptr20967 = inttoptr i64 %env10166 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20968 = getelementptr inbounds i64, i64* %envptr20967, i64 2                ; &envptr20967[2]
  %cont7292 = load i64, i64* %envptr20968, align 8                                   ; load; *envptr20968
  %envptr20969 = inttoptr i64 %env10166 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr20970 = getelementptr inbounds i64, i64* %envptr20969, i64 1                ; &envptr20969[1]
  %lk0$f = load i64, i64* %envptr20970, align 8                                      ; load; *envptr20970
  %_957300 = call i64 @prim_car(i64 %rvp9758)                                        ; call prim_car
  %rvp9757 = call i64 @prim_cdr(i64 %rvp9758)                                        ; call prim_cdr
  %a6921 = call i64 @prim_car(i64 %rvp9757)                                          ; call prim_car
  %na9756 = call i64 @prim_cdr(i64 %rvp9757)                                         ; call prim_cdr
  %cps_45lst7301 = call i64 @prim_cons(i64 %cont7292, i64 %a6921)                    ; call prim_cons
  %cloptr20971 = inttoptr i64 %lk0$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr20972 = getelementptr inbounds i64, i64* %cloptr20971, i64 0                 ; &cloptr20971[0]
  %f20974 = load i64, i64* %i0ptr20972, align 8                                      ; load; *i0ptr20972
  %fptr20973 = inttoptr i64 %f20974 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20973(i64 %lk0$f, i64 %cps_45lst7301)               ; tail call
  ret void
}


define void @lam10163(i64 %env10164, i64 %rvp9766) {
  %cont7302 = call i64 @prim_car(i64 %rvp9766)                                       ; call prim_car
  %rvp9765 = call i64 @prim_cdr(i64 %rvp9766)                                        ; call prim_cdr
  %Fc1$a = call i64 @prim_car(i64 %rvp9765)                                          ; call prim_car
  %rvp9764 = call i64 @prim_cdr(i64 %rvp9765)                                        ; call prim_cdr
  %bbe$b = call i64 @prim_car(i64 %rvp9764)                                          ; call prim_car
  %na9760 = call i64 @prim_cdr(i64 %rvp9764)                                         ; call prim_cdr
  %retprim7303 = call i64 @prim_cons(i64 %Fc1$a, i64 %bbe$b)                         ; call prim_cons
  %arg8456 = add i64 0, 0                                                            ; quoted ()
  %rva9763 = add i64 0, 0                                                            ; quoted ()
  %rva9762 = call i64 @prim_cons(i64 %retprim7303, i64 %rva9763)                     ; call prim_cons
  %rva9761 = call i64 @prim_cons(i64 %arg8456, i64 %rva9762)                         ; call prim_cons
  %cloptr20975 = inttoptr i64 %cont7302 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20976 = getelementptr inbounds i64, i64* %cloptr20975, i64 0                 ; &cloptr20975[0]
  %f20978 = load i64, i64* %i0ptr20976, align 8                                      ; load; *i0ptr20976
  %fptr20977 = inttoptr i64 %f20978 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20977(i64 %cont7302, i64 %rva9761)                  ; tail call
  ret void
}


define void @lam10158(i64 %env10159, i64 %rvp9782) {
  %cont7305 = call i64 @prim_car(i64 %rvp9782)                                       ; call prim_car
  %rvp9781 = call i64 @prim_cdr(i64 %rvp9782)                                        ; call prim_cdr
  %p9C$x = call i64 @prim_car(i64 %rvp9781)                                          ; call prim_car
  %na9777 = call i64 @prim_cdr(i64 %rvp9781)                                         ; call prim_cdr
  %retprim7306 = call i64 @prim_car(i64 %p9C$x)                                      ; call prim_car
  %arg8460 = add i64 0, 0                                                            ; quoted ()
  %rva9780 = add i64 0, 0                                                            ; quoted ()
  %rva9779 = call i64 @prim_cons(i64 %retprim7306, i64 %rva9780)                     ; call prim_cons
  %rva9778 = call i64 @prim_cons(i64 %arg8460, i64 %rva9779)                         ; call prim_cons
  %cloptr20979 = inttoptr i64 %cont7305 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20980 = getelementptr inbounds i64, i64* %cloptr20979, i64 0                 ; &cloptr20979[0]
  %f20982 = load i64, i64* %i0ptr20980, align 8                                      ; load; *i0ptr20980
  %fptr20981 = inttoptr i64 %f20982 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20981(i64 %cont7305, i64 %rva9778)                  ; tail call
  ret void
}


define void @lam10153(i64 %env10154, i64 %rvp9795) {
  %cont7307 = call i64 @prim_car(i64 %rvp9795)                                       ; call prim_car
  %rvp9794 = call i64 @prim_cdr(i64 %rvp9795)                                        ; call prim_cdr
  %gmB$x = call i64 @prim_car(i64 %rvp9794)                                          ; call prim_car
  %na9790 = call i64 @prim_cdr(i64 %rvp9794)                                         ; call prim_cdr
  %retprim7308 = call i64 @prim_cdr(i64 %gmB$x)                                      ; call prim_cdr
  %arg8464 = add i64 0, 0                                                            ; quoted ()
  %rva9793 = add i64 0, 0                                                            ; quoted ()
  %rva9792 = call i64 @prim_cons(i64 %retprim7308, i64 %rva9793)                     ; call prim_cons
  %rva9791 = call i64 @prim_cons(i64 %arg8464, i64 %rva9792)                         ; call prim_cons
  %cloptr20983 = inttoptr i64 %cont7307 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20984 = getelementptr inbounds i64, i64* %cloptr20983, i64 0                 ; &cloptr20983[0]
  %f20986 = load i64, i64* %i0ptr20984, align 8                                      ; load; *i0ptr20984
  %fptr20985 = inttoptr i64 %f20986 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20985(i64 %cont7307, i64 %rva9791)                  ; tail call
  ret void
}


define void @lam10146(i64 %env10147, i64 %rvp9812) {
  %cont7309 = call i64 @prim_car(i64 %rvp9812)                                       ; call prim_car
  %rvp9811 = call i64 @prim_cdr(i64 %rvp9812)                                        ; call prim_cdr
  %KJg$lst = call i64 @prim_car(i64 %rvp9811)                                        ; call prim_car
  %rvp9810 = call i64 @prim_cdr(i64 %rvp9811)                                        ; call prim_cdr
  %Fe5$b = call i64 @prim_car(i64 %rvp9810)                                          ; call prim_car
  %na9803 = call i64 @prim_cdr(i64 %rvp9810)                                         ; call prim_cdr
  %cmp20987 = icmp eq i64 %Fe5$b, 15                                                 ; false?
  br i1 %cmp20987, label %else20989, label %then20988                                ; if

then20988:
  %arg8467 = add i64 0, 0                                                            ; quoted ()
  %rva9806 = add i64 0, 0                                                            ; quoted ()
  %rva9805 = call i64 @prim_cons(i64 %Fe5$b, i64 %rva9806)                           ; call prim_cons
  %rva9804 = call i64 @prim_cons(i64 %arg8467, i64 %rva9805)                         ; call prim_cons
  %cloptr20990 = inttoptr i64 %cont7309 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20991 = getelementptr inbounds i64, i64* %cloptr20990, i64 0                 ; &cloptr20990[0]
  %f20993 = load i64, i64* %i0ptr20991, align 8                                      ; load; *i0ptr20991
  %fptr20992 = inttoptr i64 %f20993 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20992(i64 %cont7309, i64 %rva9804)                  ; tail call
  ret void

else20989:
  %retprim7310 = call i64 @prim_null_63(i64 %KJg$lst)                                ; call prim_null_63
  %arg8471 = add i64 0, 0                                                            ; quoted ()
  %rva9809 = add i64 0, 0                                                            ; quoted ()
  %rva9808 = call i64 @prim_cons(i64 %retprim7310, i64 %rva9809)                     ; call prim_cons
  %rva9807 = call i64 @prim_cons(i64 %arg8471, i64 %rva9808)                         ; call prim_cons
  %cloptr20994 = inttoptr i64 %cont7309 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr20995 = getelementptr inbounds i64, i64* %cloptr20994, i64 0                 ; &cloptr20994[0]
  %f20997 = load i64, i64* %i0ptr20995, align 8                                      ; load; *i0ptr20995
  %fptr20996 = inttoptr i64 %f20997 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr20996(i64 %cont7309, i64 %rva9807)                  ; tail call
  ret void
}


define void @lam10132(i64 %env10133, i64 %rvp9866) {
  %cont7313 = call i64 @prim_car(i64 %rvp9866)                                       ; call prim_car
  %rvp9865 = call i64 @prim_cdr(i64 %rvp9866)                                        ; call prim_cdr
  %JzG$_37foldl1 = call i64 @prim_car(i64 %rvp9865)                                  ; call prim_car
  %na9839 = call i64 @prim_cdr(i64 %rvp9865)                                         ; call prim_cdr
  %arg8474 = add i64 0, 0                                                            ; quoted ()
  %cloptr20998 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr21000 = getelementptr inbounds i64, i64* %cloptr20998, i64 1                  ; &eptr21000[1]
  store i64 %JzG$_37foldl1, i64* %eptr21000                                          ; *eptr21000 = %JzG$_37foldl1
  %eptr20999 = getelementptr inbounds i64, i64* %cloptr20998, i64 0                  ; &cloptr20998[0]
  %f21001 = ptrtoint void(i64,i64)* @lam10129 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21001, i64* %eptr20999                                                 ; store fptr
  %arg8473 = ptrtoint i64* %cloptr20998 to i64                                       ; closure cast; i64* -> i64
  %rva9864 = add i64 0, 0                                                            ; quoted ()
  %rva9863 = call i64 @prim_cons(i64 %arg8473, i64 %rva9864)                         ; call prim_cons
  %rva9862 = call i64 @prim_cons(i64 %arg8474, i64 %rva9863)                         ; call prim_cons
  %cloptr21002 = inttoptr i64 %cont7313 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21003 = getelementptr inbounds i64, i64* %cloptr21002, i64 0                 ; &cloptr21002[0]
  %f21005 = load i64, i64* %i0ptr21003, align 8                                      ; load; *i0ptr21003
  %fptr21004 = inttoptr i64 %f21005 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21004(i64 %cont7313, i64 %rva9862)                  ; tail call
  ret void
}


define void @lam10129(i64 %env10130, i64 %rvp9861) {
  %envptr21006 = inttoptr i64 %env10130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21007 = getelementptr inbounds i64, i64* %envptr21006, i64 1                ; &envptr21006[1]
  %JzG$_37foldl1 = load i64, i64* %envptr21007, align 8                              ; load; *envptr21007
  %cont7314 = call i64 @prim_car(i64 %rvp9861)                                       ; call prim_car
  %rvp9860 = call i64 @prim_cdr(i64 %rvp9861)                                        ; call prim_cdr
  %KOU$f = call i64 @prim_car(i64 %rvp9860)                                          ; call prim_car
  %rvp9859 = call i64 @prim_cdr(i64 %rvp9860)                                        ; call prim_cdr
  %GHR$acc = call i64 @prim_car(i64 %rvp9859)                                        ; call prim_car
  %rvp9858 = call i64 @prim_cdr(i64 %rvp9859)                                        ; call prim_cdr
  %BZk$lst = call i64 @prim_car(i64 %rvp9858)                                        ; call prim_car
  %na9841 = call i64 @prim_cdr(i64 %rvp9858)                                         ; call prim_cdr
  %a6908 = call i64 @prim_null_63(i64 %BZk$lst)                                      ; call prim_null_63
  %cmp21008 = icmp eq i64 %a6908, 15                                                 ; false?
  br i1 %cmp21008, label %else21010, label %then21009                                ; if

then21009:
  %arg8478 = add i64 0, 0                                                            ; quoted ()
  %rva9844 = add i64 0, 0                                                            ; quoted ()
  %rva9843 = call i64 @prim_cons(i64 %GHR$acc, i64 %rva9844)                         ; call prim_cons
  %rva9842 = call i64 @prim_cons(i64 %arg8478, i64 %rva9843)                         ; call prim_cons
  %cloptr21011 = inttoptr i64 %cont7314 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21012 = getelementptr inbounds i64, i64* %cloptr21011, i64 0                 ; &cloptr21011[0]
  %f21014 = load i64, i64* %i0ptr21012, align 8                                      ; load; *i0ptr21012
  %fptr21013 = inttoptr i64 %f21014 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21013(i64 %cont7314, i64 %rva9842)                  ; tail call
  ret void

else21010:
  %a6909 = call i64 @prim_car(i64 %BZk$lst)                                          ; call prim_car
  %cloptr21015 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr21017 = getelementptr inbounds i64, i64* %cloptr21015, i64 1                  ; &eptr21017[1]
  %eptr21018 = getelementptr inbounds i64, i64* %cloptr21015, i64 2                  ; &eptr21018[2]
  %eptr21019 = getelementptr inbounds i64, i64* %cloptr21015, i64 3                  ; &eptr21019[3]
  %eptr21020 = getelementptr inbounds i64, i64* %cloptr21015, i64 4                  ; &eptr21020[4]
  store i64 %JzG$_37foldl1, i64* %eptr21017                                          ; *eptr21017 = %JzG$_37foldl1
  store i64 %KOU$f, i64* %eptr21018                                                  ; *eptr21018 = %KOU$f
  store i64 %BZk$lst, i64* %eptr21019                                                ; *eptr21019 = %BZk$lst
  store i64 %cont7314, i64* %eptr21020                                               ; *eptr21020 = %cont7314
  %eptr21016 = getelementptr inbounds i64, i64* %cloptr21015, i64 0                  ; &cloptr21015[0]
  %f21021 = ptrtoint void(i64,i64)* @lam10127 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21021, i64* %eptr21016                                                 ; store fptr
  %arg8483 = ptrtoint i64* %cloptr21015 to i64                                       ; closure cast; i64* -> i64
  %rva9857 = add i64 0, 0                                                            ; quoted ()
  %rva9856 = call i64 @prim_cons(i64 %GHR$acc, i64 %rva9857)                         ; call prim_cons
  %rva9855 = call i64 @prim_cons(i64 %a6909, i64 %rva9856)                           ; call prim_cons
  %rva9854 = call i64 @prim_cons(i64 %arg8483, i64 %rva9855)                         ; call prim_cons
  %cloptr21022 = inttoptr i64 %KOU$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr21023 = getelementptr inbounds i64, i64* %cloptr21022, i64 0                 ; &cloptr21022[0]
  %f21025 = load i64, i64* %i0ptr21023, align 8                                      ; load; *i0ptr21023
  %fptr21024 = inttoptr i64 %f21025 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21024(i64 %KOU$f, i64 %rva9854)                     ; tail call
  ret void
}


define void @lam10127(i64 %env10128, i64 %rvp9853) {
  %envptr21026 = inttoptr i64 %env10128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21027 = getelementptr inbounds i64, i64* %envptr21026, i64 4                ; &envptr21026[4]
  %cont7314 = load i64, i64* %envptr21027, align 8                                   ; load; *envptr21027
  %envptr21028 = inttoptr i64 %env10128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21029 = getelementptr inbounds i64, i64* %envptr21028, i64 3                ; &envptr21028[3]
  %BZk$lst = load i64, i64* %envptr21029, align 8                                    ; load; *envptr21029
  %envptr21030 = inttoptr i64 %env10128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21031 = getelementptr inbounds i64, i64* %envptr21030, i64 2                ; &envptr21030[2]
  %KOU$f = load i64, i64* %envptr21031, align 8                                      ; load; *envptr21031
  %envptr21032 = inttoptr i64 %env10128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21033 = getelementptr inbounds i64, i64* %envptr21032, i64 1                ; &envptr21032[1]
  %JzG$_37foldl1 = load i64, i64* %envptr21033, align 8                              ; load; *envptr21033
  %_957315 = call i64 @prim_car(i64 %rvp9853)                                        ; call prim_car
  %rvp9852 = call i64 @prim_cdr(i64 %rvp9853)                                        ; call prim_cdr
  %a6910 = call i64 @prim_car(i64 %rvp9852)                                          ; call prim_car
  %na9846 = call i64 @prim_cdr(i64 %rvp9852)                                         ; call prim_cdr
  %a6911 = call i64 @prim_cdr(i64 %BZk$lst)                                          ; call prim_cdr
  %rva9851 = add i64 0, 0                                                            ; quoted ()
  %rva9850 = call i64 @prim_cons(i64 %a6911, i64 %rva9851)                           ; call prim_cons
  %rva9849 = call i64 @prim_cons(i64 %a6910, i64 %rva9850)                           ; call prim_cons
  %rva9848 = call i64 @prim_cons(i64 %KOU$f, i64 %rva9849)                           ; call prim_cons
  %rva9847 = call i64 @prim_cons(i64 %cont7314, i64 %rva9848)                        ; call prim_cons
  %cloptr21034 = inttoptr i64 %JzG$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr21035 = getelementptr inbounds i64, i64* %cloptr21034, i64 0                 ; &cloptr21034[0]
  %f21037 = load i64, i64* %i0ptr21035, align 8                                      ; load; *i0ptr21035
  %fptr21036 = inttoptr i64 %f21037 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21036(i64 %JzG$_37foldl1, i64 %rva9847)             ; tail call
  ret void
}


define void @lam10119(i64 %env10120, i64 %rvp9895) {
  %cont7316 = call i64 @prim_car(i64 %rvp9895)                                       ; call prim_car
  %rvp9894 = call i64 @prim_cdr(i64 %rvp9895)                                        ; call prim_cdr
  %bYW$_37length = call i64 @prim_car(i64 %rvp9894)                                  ; call prim_car
  %na9873 = call i64 @prim_cdr(i64 %rvp9894)                                         ; call prim_cdr
  %arg8492 = add i64 0, 0                                                            ; quoted ()
  %cloptr21038 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr21040 = getelementptr inbounds i64, i64* %cloptr21038, i64 1                  ; &eptr21040[1]
  store i64 %bYW$_37length, i64* %eptr21040                                          ; *eptr21040 = %bYW$_37length
  %eptr21039 = getelementptr inbounds i64, i64* %cloptr21038, i64 0                  ; &cloptr21038[0]
  %f21041 = ptrtoint void(i64,i64)* @lam10116 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21041, i64* %eptr21039                                                 ; store fptr
  %arg8491 = ptrtoint i64* %cloptr21038 to i64                                       ; closure cast; i64* -> i64
  %rva9893 = add i64 0, 0                                                            ; quoted ()
  %rva9892 = call i64 @prim_cons(i64 %arg8491, i64 %rva9893)                         ; call prim_cons
  %rva9891 = call i64 @prim_cons(i64 %arg8492, i64 %rva9892)                         ; call prim_cons
  %cloptr21042 = inttoptr i64 %cont7316 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21043 = getelementptr inbounds i64, i64* %cloptr21042, i64 0                 ; &cloptr21042[0]
  %f21045 = load i64, i64* %i0ptr21043, align 8                                      ; load; *i0ptr21043
  %fptr21044 = inttoptr i64 %f21045 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21044(i64 %cont7316, i64 %rva9891)                  ; tail call
  ret void
}


define void @lam10116(i64 %env10117, i64 %rvp9890) {
  %envptr21046 = inttoptr i64 %env10117 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21047 = getelementptr inbounds i64, i64* %envptr21046, i64 1                ; &envptr21046[1]
  %bYW$_37length = load i64, i64* %envptr21047, align 8                              ; load; *envptr21047
  %cont7317 = call i64 @prim_car(i64 %rvp9890)                                       ; call prim_car
  %rvp9889 = call i64 @prim_cdr(i64 %rvp9890)                                        ; call prim_cdr
  %U2z$lst = call i64 @prim_car(i64 %rvp9889)                                        ; call prim_car
  %na9875 = call i64 @prim_cdr(i64 %rvp9889)                                         ; call prim_cdr
  %a6905 = call i64 @prim_null_63(i64 %U2z$lst)                                      ; call prim_null_63
  %cmp21048 = icmp eq i64 %a6905, 15                                                 ; false?
  br i1 %cmp21048, label %else21050, label %then21049                                ; if

then21049:
  %arg8496 = add i64 0, 0                                                            ; quoted ()
  %arg8495 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %rva9878 = add i64 0, 0                                                            ; quoted ()
  %rva9877 = call i64 @prim_cons(i64 %arg8495, i64 %rva9878)                         ; call prim_cons
  %rva9876 = call i64 @prim_cons(i64 %arg8496, i64 %rva9877)                         ; call prim_cons
  %cloptr21051 = inttoptr i64 %cont7317 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21052 = getelementptr inbounds i64, i64* %cloptr21051, i64 0                 ; &cloptr21051[0]
  %f21054 = load i64, i64* %i0ptr21052, align 8                                      ; load; *i0ptr21052
  %fptr21053 = inttoptr i64 %f21054 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21053(i64 %cont7317, i64 %rva9876)                  ; tail call
  ret void

else21050:
  %a6906 = call i64 @prim_cdr(i64 %U2z$lst)                                          ; call prim_cdr
  %cloptr21055 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr21057 = getelementptr inbounds i64, i64* %cloptr21055, i64 1                  ; &eptr21057[1]
  store i64 %cont7317, i64* %eptr21057                                               ; *eptr21057 = %cont7317
  %eptr21056 = getelementptr inbounds i64, i64* %cloptr21055, i64 0                  ; &cloptr21055[0]
  %f21058 = ptrtoint void(i64,i64)* @lam10114 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21058, i64* %eptr21056                                                 ; store fptr
  %arg8500 = ptrtoint i64* %cloptr21055 to i64                                       ; closure cast; i64* -> i64
  %rva9888 = add i64 0, 0                                                            ; quoted ()
  %rva9887 = call i64 @prim_cons(i64 %a6906, i64 %rva9888)                           ; call prim_cons
  %rva9886 = call i64 @prim_cons(i64 %arg8500, i64 %rva9887)                         ; call prim_cons
  %cloptr21059 = inttoptr i64 %bYW$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr21060 = getelementptr inbounds i64, i64* %cloptr21059, i64 0                 ; &cloptr21059[0]
  %f21062 = load i64, i64* %i0ptr21060, align 8                                      ; load; *i0ptr21060
  %fptr21061 = inttoptr i64 %f21062 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21061(i64 %bYW$_37length, i64 %rva9886)             ; tail call
  ret void
}


define void @lam10114(i64 %env10115, i64 %rvp9885) {
  %envptr21063 = inttoptr i64 %env10115 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21064 = getelementptr inbounds i64, i64* %envptr21063, i64 1                ; &envptr21063[1]
  %cont7317 = load i64, i64* %envptr21064, align 8                                   ; load; *envptr21064
  %_957318 = call i64 @prim_car(i64 %rvp9885)                                        ; call prim_car
  %rvp9884 = call i64 @prim_cdr(i64 %rvp9885)                                        ; call prim_cdr
  %a6907 = call i64 @prim_car(i64 %rvp9884)                                          ; call prim_car
  %na9880 = call i64 @prim_cdr(i64 %rvp9884)                                         ; call prim_cdr
  %arg8503 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7319 = call i64 @prim__43(i64 %arg8503, i64 %a6907)                        ; call prim__43
  %arg8505 = add i64 0, 0                                                            ; quoted ()
  %rva9883 = add i64 0, 0                                                            ; quoted ()
  %rva9882 = call i64 @prim_cons(i64 %retprim7319, i64 %rva9883)                     ; call prim_cons
  %rva9881 = call i64 @prim_cons(i64 %arg8505, i64 %rva9882)                         ; call prim_cons
  %cloptr21065 = inttoptr i64 %cont7317 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21066 = getelementptr inbounds i64, i64* %cloptr21065, i64 0                 ; &cloptr21065[0]
  %f21068 = load i64, i64* %i0ptr21066, align 8                                      ; load; *i0ptr21066
  %fptr21067 = inttoptr i64 %f21068 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21067(i64 %cont7317, i64 %rva9881)                  ; tail call
  ret void
}


define void @lam10103(i64 %env10104, i64 %rvp9929) {
  %cont7320 = call i64 @prim_car(i64 %rvp9929)                                       ; call prim_car
  %rvp9928 = call i64 @prim_cdr(i64 %rvp9929)                                        ; call prim_cdr
  %SFi$_37take = call i64 @prim_car(i64 %rvp9928)                                    ; call prim_car
  %na9902 = call i64 @prim_cdr(i64 %rvp9928)                                         ; call prim_cdr
  %arg8508 = add i64 0, 0                                                            ; quoted ()
  %cloptr21069 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr21071 = getelementptr inbounds i64, i64* %cloptr21069, i64 1                  ; &eptr21071[1]
  store i64 %SFi$_37take, i64* %eptr21071                                            ; *eptr21071 = %SFi$_37take
  %eptr21070 = getelementptr inbounds i64, i64* %cloptr21069, i64 0                  ; &cloptr21069[0]
  %f21072 = ptrtoint void(i64,i64)* @lam10100 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21072, i64* %eptr21070                                                 ; store fptr
  %arg8507 = ptrtoint i64* %cloptr21069 to i64                                       ; closure cast; i64* -> i64
  %rva9927 = add i64 0, 0                                                            ; quoted ()
  %rva9926 = call i64 @prim_cons(i64 %arg8507, i64 %rva9927)                         ; call prim_cons
  %rva9925 = call i64 @prim_cons(i64 %arg8508, i64 %rva9926)                         ; call prim_cons
  %cloptr21073 = inttoptr i64 %cont7320 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21074 = getelementptr inbounds i64, i64* %cloptr21073, i64 0                 ; &cloptr21073[0]
  %f21076 = load i64, i64* %i0ptr21074, align 8                                      ; load; *i0ptr21074
  %fptr21075 = inttoptr i64 %f21076 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21075(i64 %cont7320, i64 %rva9925)                  ; tail call
  ret void
}


define void @lam10100(i64 %env10101, i64 %rvp9924) {
  %envptr21077 = inttoptr i64 %env10101 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21078 = getelementptr inbounds i64, i64* %envptr21077, i64 1                ; &envptr21077[1]
  %SFi$_37take = load i64, i64* %envptr21078, align 8                                ; load; *envptr21078
  %cont7321 = call i64 @prim_car(i64 %rvp9924)                                       ; call prim_car
  %rvp9923 = call i64 @prim_cdr(i64 %rvp9924)                                        ; call prim_cdr
  %pOr$lst = call i64 @prim_car(i64 %rvp9923)                                        ; call prim_car
  %rvp9922 = call i64 @prim_cdr(i64 %rvp9923)                                        ; call prim_cdr
  %j3H$n = call i64 @prim_car(i64 %rvp9922)                                          ; call prim_car
  %na9904 = call i64 @prim_cdr(i64 %rvp9922)                                         ; call prim_cdr
  %arg8510 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6899 = call i64 @prim__61(i64 %j3H$n, i64 %arg8510)                              ; call prim__61
  %cmp21079 = icmp eq i64 %a6899, 15                                                 ; false?
  br i1 %cmp21079, label %else21081, label %then21080                                ; if

then21080:
  %arg8513 = add i64 0, 0                                                            ; quoted ()
  %arg8512 = add i64 0, 0                                                            ; quoted ()
  %rva9907 = add i64 0, 0                                                            ; quoted ()
  %rva9906 = call i64 @prim_cons(i64 %arg8512, i64 %rva9907)                         ; call prim_cons
  %rva9905 = call i64 @prim_cons(i64 %arg8513, i64 %rva9906)                         ; call prim_cons
  %cloptr21082 = inttoptr i64 %cont7321 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21083 = getelementptr inbounds i64, i64* %cloptr21082, i64 0                 ; &cloptr21082[0]
  %f21085 = load i64, i64* %i0ptr21083, align 8                                      ; load; *i0ptr21083
  %fptr21084 = inttoptr i64 %f21085 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21084(i64 %cont7321, i64 %rva9905)                  ; tail call
  ret void

else21081:
  %a6900 = call i64 @prim_null_63(i64 %pOr$lst)                                      ; call prim_null_63
  %cmp21086 = icmp eq i64 %a6900, 15                                                 ; false?
  br i1 %cmp21086, label %else21088, label %then21087                                ; if

then21087:
  %arg8517 = add i64 0, 0                                                            ; quoted ()
  %arg8516 = add i64 0, 0                                                            ; quoted ()
  %rva9910 = add i64 0, 0                                                            ; quoted ()
  %rva9909 = call i64 @prim_cons(i64 %arg8516, i64 %rva9910)                         ; call prim_cons
  %rva9908 = call i64 @prim_cons(i64 %arg8517, i64 %rva9909)                         ; call prim_cons
  %cloptr21089 = inttoptr i64 %cont7321 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21090 = getelementptr inbounds i64, i64* %cloptr21089, i64 0                 ; &cloptr21089[0]
  %f21092 = load i64, i64* %i0ptr21090, align 8                                      ; load; *i0ptr21090
  %fptr21091 = inttoptr i64 %f21092 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21091(i64 %cont7321, i64 %rva9908)                  ; tail call
  ret void

else21088:
  %a6901 = call i64 @prim_car(i64 %pOr$lst)                                          ; call prim_car
  %a6902 = call i64 @prim_cdr(i64 %pOr$lst)                                          ; call prim_cdr
  %arg8521 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6903 = call i64 @prim__45(i64 %j3H$n, i64 %arg8521)                              ; call prim__45
  %cloptr21093 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr21095 = getelementptr inbounds i64, i64* %cloptr21093, i64 1                  ; &eptr21095[1]
  %eptr21096 = getelementptr inbounds i64, i64* %cloptr21093, i64 2                  ; &eptr21096[2]
  store i64 %a6901, i64* %eptr21095                                                  ; *eptr21095 = %a6901
  store i64 %cont7321, i64* %eptr21096                                               ; *eptr21096 = %cont7321
  %eptr21094 = getelementptr inbounds i64, i64* %cloptr21093, i64 0                  ; &cloptr21093[0]
  %f21097 = ptrtoint void(i64,i64)* @lam10096 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21097, i64* %eptr21094                                                 ; store fptr
  %arg8525 = ptrtoint i64* %cloptr21093 to i64                                       ; closure cast; i64* -> i64
  %rva9921 = add i64 0, 0                                                            ; quoted ()
  %rva9920 = call i64 @prim_cons(i64 %a6903, i64 %rva9921)                           ; call prim_cons
  %rva9919 = call i64 @prim_cons(i64 %a6902, i64 %rva9920)                           ; call prim_cons
  %rva9918 = call i64 @prim_cons(i64 %arg8525, i64 %rva9919)                         ; call prim_cons
  %cloptr21098 = inttoptr i64 %SFi$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr21099 = getelementptr inbounds i64, i64* %cloptr21098, i64 0                 ; &cloptr21098[0]
  %f21101 = load i64, i64* %i0ptr21099, align 8                                      ; load; *i0ptr21099
  %fptr21100 = inttoptr i64 %f21101 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21100(i64 %SFi$_37take, i64 %rva9918)               ; tail call
  ret void
}


define void @lam10096(i64 %env10097, i64 %rvp9917) {
  %envptr21102 = inttoptr i64 %env10097 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21103 = getelementptr inbounds i64, i64* %envptr21102, i64 2                ; &envptr21102[2]
  %cont7321 = load i64, i64* %envptr21103, align 8                                   ; load; *envptr21103
  %envptr21104 = inttoptr i64 %env10097 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21105 = getelementptr inbounds i64, i64* %envptr21104, i64 1                ; &envptr21104[1]
  %a6901 = load i64, i64* %envptr21105, align 8                                      ; load; *envptr21105
  %_957322 = call i64 @prim_car(i64 %rvp9917)                                        ; call prim_car
  %rvp9916 = call i64 @prim_cdr(i64 %rvp9917)                                        ; call prim_cdr
  %a6904 = call i64 @prim_car(i64 %rvp9916)                                          ; call prim_car
  %na9912 = call i64 @prim_cdr(i64 %rvp9916)                                         ; call prim_cdr
  %retprim7323 = call i64 @prim_cons(i64 %a6901, i64 %a6904)                         ; call prim_cons
  %arg8530 = add i64 0, 0                                                            ; quoted ()
  %rva9915 = add i64 0, 0                                                            ; quoted ()
  %rva9914 = call i64 @prim_cons(i64 %retprim7323, i64 %rva9915)                     ; call prim_cons
  %rva9913 = call i64 @prim_cons(i64 %arg8530, i64 %rva9914)                         ; call prim_cons
  %cloptr21106 = inttoptr i64 %cont7321 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21107 = getelementptr inbounds i64, i64* %cloptr21106, i64 0                 ; &cloptr21106[0]
  %f21109 = load i64, i64* %i0ptr21107, align 8                                      ; load; *i0ptr21107
  %fptr21108 = inttoptr i64 %f21109 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21108(i64 %cont7321, i64 %rva9913)                  ; tail call
  ret void
}


define void @lam10083(i64 %env10084, i64 %rvp9967) {
  %cont7324 = call i64 @prim_car(i64 %rvp9967)                                       ; call prim_car
  %rvp9966 = call i64 @prim_cdr(i64 %rvp9967)                                        ; call prim_cdr
  %h78$_37map = call i64 @prim_car(i64 %rvp9966)                                     ; call prim_car
  %na9936 = call i64 @prim_cdr(i64 %rvp9966)                                         ; call prim_cdr
  %arg8533 = add i64 0, 0                                                            ; quoted ()
  %cloptr21110 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr21112 = getelementptr inbounds i64, i64* %cloptr21110, i64 1                  ; &eptr21112[1]
  store i64 %h78$_37map, i64* %eptr21112                                             ; *eptr21112 = %h78$_37map
  %eptr21111 = getelementptr inbounds i64, i64* %cloptr21110, i64 0                  ; &cloptr21110[0]
  %f21113 = ptrtoint void(i64,i64)* @lam10080 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21113, i64* %eptr21111                                                 ; store fptr
  %arg8532 = ptrtoint i64* %cloptr21110 to i64                                       ; closure cast; i64* -> i64
  %rva9965 = add i64 0, 0                                                            ; quoted ()
  %rva9964 = call i64 @prim_cons(i64 %arg8532, i64 %rva9965)                         ; call prim_cons
  %rva9963 = call i64 @prim_cons(i64 %arg8533, i64 %rva9964)                         ; call prim_cons
  %cloptr21114 = inttoptr i64 %cont7324 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21115 = getelementptr inbounds i64, i64* %cloptr21114, i64 0                 ; &cloptr21114[0]
  %f21117 = load i64, i64* %i0ptr21115, align 8                                      ; load; *i0ptr21115
  %fptr21116 = inttoptr i64 %f21117 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21116(i64 %cont7324, i64 %rva9963)                  ; tail call
  ret void
}


define void @lam10080(i64 %env10081, i64 %rvp9962) {
  %envptr21118 = inttoptr i64 %env10081 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21119 = getelementptr inbounds i64, i64* %envptr21118, i64 1                ; &envptr21118[1]
  %h78$_37map = load i64, i64* %envptr21119, align 8                                 ; load; *envptr21119
  %cont7325 = call i64 @prim_car(i64 %rvp9962)                                       ; call prim_car
  %rvp9961 = call i64 @prim_cdr(i64 %rvp9962)                                        ; call prim_cdr
  %na5$f = call i64 @prim_car(i64 %rvp9961)                                          ; call prim_car
  %rvp9960 = call i64 @prim_cdr(i64 %rvp9961)                                        ; call prim_cdr
  %mWM$lst = call i64 @prim_car(i64 %rvp9960)                                        ; call prim_car
  %na9938 = call i64 @prim_cdr(i64 %rvp9960)                                         ; call prim_cdr
  %a6894 = call i64 @prim_null_63(i64 %mWM$lst)                                      ; call prim_null_63
  %cmp21120 = icmp eq i64 %a6894, 15                                                 ; false?
  br i1 %cmp21120, label %else21122, label %then21121                                ; if

then21121:
  %arg8537 = add i64 0, 0                                                            ; quoted ()
  %arg8536 = add i64 0, 0                                                            ; quoted ()
  %rva9941 = add i64 0, 0                                                            ; quoted ()
  %rva9940 = call i64 @prim_cons(i64 %arg8536, i64 %rva9941)                         ; call prim_cons
  %rva9939 = call i64 @prim_cons(i64 %arg8537, i64 %rva9940)                         ; call prim_cons
  %cloptr21123 = inttoptr i64 %cont7325 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21124 = getelementptr inbounds i64, i64* %cloptr21123, i64 0                 ; &cloptr21123[0]
  %f21126 = load i64, i64* %i0ptr21124, align 8                                      ; load; *i0ptr21124
  %fptr21125 = inttoptr i64 %f21126 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21125(i64 %cont7325, i64 %rva9939)                  ; tail call
  ret void

else21122:
  %a6895 = call i64 @prim_car(i64 %mWM$lst)                                          ; call prim_car
  %cloptr21127 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr21129 = getelementptr inbounds i64, i64* %cloptr21127, i64 1                  ; &eptr21129[1]
  %eptr21130 = getelementptr inbounds i64, i64* %cloptr21127, i64 2                  ; &eptr21130[2]
  %eptr21131 = getelementptr inbounds i64, i64* %cloptr21127, i64 3                  ; &eptr21131[3]
  %eptr21132 = getelementptr inbounds i64, i64* %cloptr21127, i64 4                  ; &eptr21132[4]
  store i64 %mWM$lst, i64* %eptr21129                                                ; *eptr21129 = %mWM$lst
  store i64 %h78$_37map, i64* %eptr21130                                             ; *eptr21130 = %h78$_37map
  store i64 %na5$f, i64* %eptr21131                                                  ; *eptr21131 = %na5$f
  store i64 %cont7325, i64* %eptr21132                                               ; *eptr21132 = %cont7325
  %eptr21128 = getelementptr inbounds i64, i64* %cloptr21127, i64 0                  ; &cloptr21127[0]
  %f21133 = ptrtoint void(i64,i64)* @lam10078 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21133, i64* %eptr21128                                                 ; store fptr
  %arg8541 = ptrtoint i64* %cloptr21127 to i64                                       ; closure cast; i64* -> i64
  %rva9959 = add i64 0, 0                                                            ; quoted ()
  %rva9958 = call i64 @prim_cons(i64 %a6895, i64 %rva9959)                           ; call prim_cons
  %rva9957 = call i64 @prim_cons(i64 %arg8541, i64 %rva9958)                         ; call prim_cons
  %cloptr21134 = inttoptr i64 %na5$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr21135 = getelementptr inbounds i64, i64* %cloptr21134, i64 0                 ; &cloptr21134[0]
  %f21137 = load i64, i64* %i0ptr21135, align 8                                      ; load; *i0ptr21135
  %fptr21136 = inttoptr i64 %f21137 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21136(i64 %na5$f, i64 %rva9957)                     ; tail call
  ret void
}


define void @lam10078(i64 %env10079, i64 %rvp9956) {
  %envptr21138 = inttoptr i64 %env10079 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21139 = getelementptr inbounds i64, i64* %envptr21138, i64 4                ; &envptr21138[4]
  %cont7325 = load i64, i64* %envptr21139, align 8                                   ; load; *envptr21139
  %envptr21140 = inttoptr i64 %env10079 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21141 = getelementptr inbounds i64, i64* %envptr21140, i64 3                ; &envptr21140[3]
  %na5$f = load i64, i64* %envptr21141, align 8                                      ; load; *envptr21141
  %envptr21142 = inttoptr i64 %env10079 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21143 = getelementptr inbounds i64, i64* %envptr21142, i64 2                ; &envptr21142[2]
  %h78$_37map = load i64, i64* %envptr21143, align 8                                 ; load; *envptr21143
  %envptr21144 = inttoptr i64 %env10079 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21145 = getelementptr inbounds i64, i64* %envptr21144, i64 1                ; &envptr21144[1]
  %mWM$lst = load i64, i64* %envptr21145, align 8                                    ; load; *envptr21145
  %_957326 = call i64 @prim_car(i64 %rvp9956)                                        ; call prim_car
  %rvp9955 = call i64 @prim_cdr(i64 %rvp9956)                                        ; call prim_cdr
  %a6896 = call i64 @prim_car(i64 %rvp9955)                                          ; call prim_car
  %na9943 = call i64 @prim_cdr(i64 %rvp9955)                                         ; call prim_cdr
  %a6897 = call i64 @prim_cdr(i64 %mWM$lst)                                          ; call prim_cdr
  %cloptr21146 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr21148 = getelementptr inbounds i64, i64* %cloptr21146, i64 1                  ; &eptr21148[1]
  %eptr21149 = getelementptr inbounds i64, i64* %cloptr21146, i64 2                  ; &eptr21149[2]
  store i64 %cont7325, i64* %eptr21148                                               ; *eptr21148 = %cont7325
  store i64 %a6896, i64* %eptr21149                                                  ; *eptr21149 = %a6896
  %eptr21147 = getelementptr inbounds i64, i64* %cloptr21146, i64 0                  ; &cloptr21146[0]
  %f21150 = ptrtoint void(i64,i64)* @lam10076 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21150, i64* %eptr21147                                                 ; store fptr
  %arg8546 = ptrtoint i64* %cloptr21146 to i64                                       ; closure cast; i64* -> i64
  %rva9954 = add i64 0, 0                                                            ; quoted ()
  %rva9953 = call i64 @prim_cons(i64 %a6897, i64 %rva9954)                           ; call prim_cons
  %rva9952 = call i64 @prim_cons(i64 %na5$f, i64 %rva9953)                           ; call prim_cons
  %rva9951 = call i64 @prim_cons(i64 %arg8546, i64 %rva9952)                         ; call prim_cons
  %cloptr21151 = inttoptr i64 %h78$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr21152 = getelementptr inbounds i64, i64* %cloptr21151, i64 0                 ; &cloptr21151[0]
  %f21154 = load i64, i64* %i0ptr21152, align 8                                      ; load; *i0ptr21152
  %fptr21153 = inttoptr i64 %f21154 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21153(i64 %h78$_37map, i64 %rva9951)                ; tail call
  ret void
}


define void @lam10076(i64 %env10077, i64 %rvp9950) {
  %envptr21155 = inttoptr i64 %env10077 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21156 = getelementptr inbounds i64, i64* %envptr21155, i64 2                ; &envptr21155[2]
  %a6896 = load i64, i64* %envptr21156, align 8                                      ; load; *envptr21156
  %envptr21157 = inttoptr i64 %env10077 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21158 = getelementptr inbounds i64, i64* %envptr21157, i64 1                ; &envptr21157[1]
  %cont7325 = load i64, i64* %envptr21158, align 8                                   ; load; *envptr21158
  %_957327 = call i64 @prim_car(i64 %rvp9950)                                        ; call prim_car
  %rvp9949 = call i64 @prim_cdr(i64 %rvp9950)                                        ; call prim_cdr
  %a6898 = call i64 @prim_car(i64 %rvp9949)                                          ; call prim_car
  %na9945 = call i64 @prim_cdr(i64 %rvp9949)                                         ; call prim_cdr
  %retprim7328 = call i64 @prim_cons(i64 %a6896, i64 %a6898)                         ; call prim_cons
  %arg8551 = add i64 0, 0                                                            ; quoted ()
  %rva9948 = add i64 0, 0                                                            ; quoted ()
  %rva9947 = call i64 @prim_cons(i64 %retprim7328, i64 %rva9948)                     ; call prim_cons
  %rva9946 = call i64 @prim_cons(i64 %arg8551, i64 %rva9947)                         ; call prim_cons
  %cloptr21159 = inttoptr i64 %cont7325 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21160 = getelementptr inbounds i64, i64* %cloptr21159, i64 0                 ; &cloptr21159[0]
  %f21162 = load i64, i64* %i0ptr21160, align 8                                      ; load; *i0ptr21160
  %fptr21161 = inttoptr i64 %f21162 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21161(i64 %cont7325, i64 %rva9946)                  ; tail call
  ret void
}


define void @lam10065(i64 %env10066, i64 %rvp10001) {
  %cont7329 = call i64 @prim_car(i64 %rvp10001)                                      ; call prim_car
  %rvp10000 = call i64 @prim_cdr(i64 %rvp10001)                                      ; call prim_cdr
  %CHO$_37foldr1 = call i64 @prim_car(i64 %rvp10000)                                 ; call prim_car
  %na9974 = call i64 @prim_cdr(i64 %rvp10000)                                        ; call prim_cdr
  %arg8554 = add i64 0, 0                                                            ; quoted ()
  %cloptr21163 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr21165 = getelementptr inbounds i64, i64* %cloptr21163, i64 1                  ; &eptr21165[1]
  store i64 %CHO$_37foldr1, i64* %eptr21165                                          ; *eptr21165 = %CHO$_37foldr1
  %eptr21164 = getelementptr inbounds i64, i64* %cloptr21163, i64 0                  ; &cloptr21163[0]
  %f21166 = ptrtoint void(i64,i64)* @lam10062 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21166, i64* %eptr21164                                                 ; store fptr
  %arg8553 = ptrtoint i64* %cloptr21163 to i64                                       ; closure cast; i64* -> i64
  %rva9999 = add i64 0, 0                                                            ; quoted ()
  %rva9998 = call i64 @prim_cons(i64 %arg8553, i64 %rva9999)                         ; call prim_cons
  %rva9997 = call i64 @prim_cons(i64 %arg8554, i64 %rva9998)                         ; call prim_cons
  %cloptr21167 = inttoptr i64 %cont7329 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21168 = getelementptr inbounds i64, i64* %cloptr21167, i64 0                 ; &cloptr21167[0]
  %f21170 = load i64, i64* %i0ptr21168, align 8                                      ; load; *i0ptr21168
  %fptr21169 = inttoptr i64 %f21170 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21169(i64 %cont7329, i64 %rva9997)                  ; tail call
  ret void
}


define void @lam10062(i64 %env10063, i64 %rvp9996) {
  %envptr21171 = inttoptr i64 %env10063 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21172 = getelementptr inbounds i64, i64* %envptr21171, i64 1                ; &envptr21171[1]
  %CHO$_37foldr1 = load i64, i64* %envptr21172, align 8                              ; load; *envptr21172
  %cont7330 = call i64 @prim_car(i64 %rvp9996)                                       ; call prim_car
  %rvp9995 = call i64 @prim_cdr(i64 %rvp9996)                                        ; call prim_cdr
  %Gho$f = call i64 @prim_car(i64 %rvp9995)                                          ; call prim_car
  %rvp9994 = call i64 @prim_cdr(i64 %rvp9995)                                        ; call prim_cdr
  %Jbb$acc = call i64 @prim_car(i64 %rvp9994)                                        ; call prim_car
  %rvp9993 = call i64 @prim_cdr(i64 %rvp9994)                                        ; call prim_cdr
  %Dki$lst = call i64 @prim_car(i64 %rvp9993)                                        ; call prim_car
  %na9976 = call i64 @prim_cdr(i64 %rvp9993)                                         ; call prim_cdr
  %a6890 = call i64 @prim_null_63(i64 %Dki$lst)                                      ; call prim_null_63
  %cmp21173 = icmp eq i64 %a6890, 15                                                 ; false?
  br i1 %cmp21173, label %else21175, label %then21174                                ; if

then21174:
  %arg8558 = add i64 0, 0                                                            ; quoted ()
  %rva9979 = add i64 0, 0                                                            ; quoted ()
  %rva9978 = call i64 @prim_cons(i64 %Jbb$acc, i64 %rva9979)                         ; call prim_cons
  %rva9977 = call i64 @prim_cons(i64 %arg8558, i64 %rva9978)                         ; call prim_cons
  %cloptr21176 = inttoptr i64 %cont7330 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21177 = getelementptr inbounds i64, i64* %cloptr21176, i64 0                 ; &cloptr21176[0]
  %f21179 = load i64, i64* %i0ptr21177, align 8                                      ; load; *i0ptr21177
  %fptr21178 = inttoptr i64 %f21179 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21178(i64 %cont7330, i64 %rva9977)                  ; tail call
  ret void

else21175:
  %a6891 = call i64 @prim_car(i64 %Dki$lst)                                          ; call prim_car
  %a6892 = call i64 @prim_cdr(i64 %Dki$lst)                                          ; call prim_cdr
  %cloptr21180 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr21182 = getelementptr inbounds i64, i64* %cloptr21180, i64 1                  ; &eptr21182[1]
  %eptr21183 = getelementptr inbounds i64, i64* %cloptr21180, i64 2                  ; &eptr21183[2]
  %eptr21184 = getelementptr inbounds i64, i64* %cloptr21180, i64 3                  ; &eptr21184[3]
  store i64 %Gho$f, i64* %eptr21182                                                  ; *eptr21182 = %Gho$f
  store i64 %a6891, i64* %eptr21183                                                  ; *eptr21183 = %a6891
  store i64 %cont7330, i64* %eptr21184                                               ; *eptr21184 = %cont7330
  %eptr21181 = getelementptr inbounds i64, i64* %cloptr21180, i64 0                  ; &cloptr21180[0]
  %f21185 = ptrtoint void(i64,i64)* @lam10060 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21185, i64* %eptr21181                                                 ; store fptr
  %arg8565 = ptrtoint i64* %cloptr21180 to i64                                       ; closure cast; i64* -> i64
  %rva9992 = add i64 0, 0                                                            ; quoted ()
  %rva9991 = call i64 @prim_cons(i64 %a6892, i64 %rva9992)                           ; call prim_cons
  %rva9990 = call i64 @prim_cons(i64 %Jbb$acc, i64 %rva9991)                         ; call prim_cons
  %rva9989 = call i64 @prim_cons(i64 %Gho$f, i64 %rva9990)                           ; call prim_cons
  %rva9988 = call i64 @prim_cons(i64 %arg8565, i64 %rva9989)                         ; call prim_cons
  %cloptr21186 = inttoptr i64 %CHO$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr21187 = getelementptr inbounds i64, i64* %cloptr21186, i64 0                 ; &cloptr21186[0]
  %f21189 = load i64, i64* %i0ptr21187, align 8                                      ; load; *i0ptr21187
  %fptr21188 = inttoptr i64 %f21189 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21188(i64 %CHO$_37foldr1, i64 %rva9988)             ; tail call
  ret void
}


define void @lam10060(i64 %env10061, i64 %rvp9987) {
  %envptr21190 = inttoptr i64 %env10061 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21191 = getelementptr inbounds i64, i64* %envptr21190, i64 3                ; &envptr21190[3]
  %cont7330 = load i64, i64* %envptr21191, align 8                                   ; load; *envptr21191
  %envptr21192 = inttoptr i64 %env10061 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21193 = getelementptr inbounds i64, i64* %envptr21192, i64 2                ; &envptr21192[2]
  %a6891 = load i64, i64* %envptr21193, align 8                                      ; load; *envptr21193
  %envptr21194 = inttoptr i64 %env10061 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21195 = getelementptr inbounds i64, i64* %envptr21194, i64 1                ; &envptr21194[1]
  %Gho$f = load i64, i64* %envptr21195, align 8                                      ; load; *envptr21195
  %_957331 = call i64 @prim_car(i64 %rvp9987)                                        ; call prim_car
  %rvp9986 = call i64 @prim_cdr(i64 %rvp9987)                                        ; call prim_cdr
  %a6893 = call i64 @prim_car(i64 %rvp9986)                                          ; call prim_car
  %na9981 = call i64 @prim_cdr(i64 %rvp9986)                                         ; call prim_cdr
  %rva9985 = add i64 0, 0                                                            ; quoted ()
  %rva9984 = call i64 @prim_cons(i64 %a6893, i64 %rva9985)                           ; call prim_cons
  %rva9983 = call i64 @prim_cons(i64 %a6891, i64 %rva9984)                           ; call prim_cons
  %rva9982 = call i64 @prim_cons(i64 %cont7330, i64 %rva9983)                        ; call prim_cons
  %cloptr21196 = inttoptr i64 %Gho$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr21197 = getelementptr inbounds i64, i64* %cloptr21196, i64 0                 ; &cloptr21196[0]
  %f21199 = load i64, i64* %i0ptr21197, align 8                                      ; load; *i0ptr21197
  %fptr21198 = inttoptr i64 %f21199 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21198(i64 %Gho$f, i64 %rva9982)                     ; tail call
  ret void
}


define void @lam10052(i64 %env10053, i64 %rvp10034) {
  %cont7333 = call i64 @prim_car(i64 %rvp10034)                                      ; call prim_car
  %rvp10033 = call i64 @prim_cdr(i64 %rvp10034)                                      ; call prim_cdr
  %pMA$y = call i64 @prim_car(i64 %rvp10033)                                         ; call prim_car
  %na10008 = call i64 @prim_cdr(i64 %rvp10033)                                       ; call prim_cdr
  %arg8572 = add i64 0, 0                                                            ; quoted ()
  %cloptr21200 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr21202 = getelementptr inbounds i64, i64* %cloptr21200, i64 1                  ; &eptr21202[1]
  store i64 %pMA$y, i64* %eptr21202                                                  ; *eptr21202 = %pMA$y
  %eptr21201 = getelementptr inbounds i64, i64* %cloptr21200, i64 0                  ; &cloptr21200[0]
  %f21203 = ptrtoint void(i64,i64)* @lam10049 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21203, i64* %eptr21201                                                 ; store fptr
  %arg8571 = ptrtoint i64* %cloptr21200 to i64                                       ; closure cast; i64* -> i64
  %rva10032 = add i64 0, 0                                                           ; quoted ()
  %rva10031 = call i64 @prim_cons(i64 %arg8571, i64 %rva10032)                       ; call prim_cons
  %rva10030 = call i64 @prim_cons(i64 %arg8572, i64 %rva10031)                       ; call prim_cons
  %cloptr21204 = inttoptr i64 %cont7333 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr21205 = getelementptr inbounds i64, i64* %cloptr21204, i64 0                 ; &cloptr21204[0]
  %f21207 = load i64, i64* %i0ptr21205, align 8                                      ; load; *i0ptr21205
  %fptr21206 = inttoptr i64 %f21207 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21206(i64 %cont7333, i64 %rva10030)                 ; tail call
  ret void
}


define void @lam10049(i64 %env10050, i64 %rvp10029) {
  %envptr21208 = inttoptr i64 %env10050 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21209 = getelementptr inbounds i64, i64* %envptr21208, i64 1                ; &envptr21208[1]
  %pMA$y = load i64, i64* %envptr21209, align 8                                      ; load; *envptr21209
  %cont7334 = call i64 @prim_car(i64 %rvp10029)                                      ; call prim_car
  %rvp10028 = call i64 @prim_cdr(i64 %rvp10029)                                      ; call prim_cdr
  %Ns9$f = call i64 @prim_car(i64 %rvp10028)                                         ; call prim_car
  %na10010 = call i64 @prim_cdr(i64 %rvp10028)                                       ; call prim_cdr
  %cloptr21210 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr21212 = getelementptr inbounds i64, i64* %cloptr21210, i64 1                  ; &eptr21212[1]
  %eptr21213 = getelementptr inbounds i64, i64* %cloptr21210, i64 2                  ; &eptr21213[2]
  store i64 %Ns9$f, i64* %eptr21212                                                  ; *eptr21212 = %Ns9$f
  store i64 %pMA$y, i64* %eptr21213                                                  ; *eptr21213 = %pMA$y
  %eptr21211 = getelementptr inbounds i64, i64* %cloptr21210, i64 0                  ; &cloptr21210[0]
  %f21214 = ptrtoint void(i64,i64)* @lam10047 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21214, i64* %eptr21211                                                 ; store fptr
  %arg8574 = ptrtoint i64* %cloptr21210 to i64                                       ; closure cast; i64* -> i64
  %rva10027 = add i64 0, 0                                                           ; quoted ()
  %rva10026 = call i64 @prim_cons(i64 %arg8574, i64 %rva10027)                       ; call prim_cons
  %rva10025 = call i64 @prim_cons(i64 %cont7334, i64 %rva10026)                      ; call prim_cons
  %cloptr21215 = inttoptr i64 %Ns9$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr21216 = getelementptr inbounds i64, i64* %cloptr21215, i64 0                 ; &cloptr21215[0]
  %f21218 = load i64, i64* %i0ptr21216, align 8                                      ; load; *i0ptr21216
  %fptr21217 = inttoptr i64 %f21218 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21217(i64 %Ns9$f, i64 %rva10025)                    ; tail call
  ret void
}


define void @lam10047(i64 %env10048, i64 %Ht2$args7336) {
  %envptr21219 = inttoptr i64 %env10048 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21220 = getelementptr inbounds i64, i64* %envptr21219, i64 2                ; &envptr21219[2]
  %pMA$y = load i64, i64* %envptr21220, align 8                                      ; load; *envptr21220
  %envptr21221 = inttoptr i64 %env10048 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21222 = getelementptr inbounds i64, i64* %envptr21221, i64 1                ; &envptr21221[1]
  %Ns9$f = load i64, i64* %envptr21222, align 8                                      ; load; *envptr21222
  %cont7335 = call i64 @prim_car(i64 %Ht2$args7336)                                  ; call prim_car
  %Ht2$args = call i64 @prim_cdr(i64 %Ht2$args7336)                                  ; call prim_cdr
  %cloptr21223 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr21225 = getelementptr inbounds i64, i64* %cloptr21223, i64 1                  ; &eptr21225[1]
  %eptr21226 = getelementptr inbounds i64, i64* %cloptr21223, i64 2                  ; &eptr21226[2]
  %eptr21227 = getelementptr inbounds i64, i64* %cloptr21223, i64 3                  ; &eptr21227[3]
  store i64 %Ht2$args, i64* %eptr21225                                               ; *eptr21225 = %Ht2$args
  store i64 %Ns9$f, i64* %eptr21226                                                  ; *eptr21226 = %Ns9$f
  store i64 %cont7335, i64* %eptr21227                                               ; *eptr21227 = %cont7335
  %eptr21224 = getelementptr inbounds i64, i64* %cloptr21223, i64 0                  ; &cloptr21223[0]
  %f21228 = ptrtoint void(i64,i64)* @lam10045 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21228, i64* %eptr21224                                                 ; store fptr
  %arg8580 = ptrtoint i64* %cloptr21223 to i64                                       ; closure cast; i64* -> i64
  %rva10024 = add i64 0, 0                                                           ; quoted ()
  %rva10023 = call i64 @prim_cons(i64 %pMA$y, i64 %rva10024)                         ; call prim_cons
  %rva10022 = call i64 @prim_cons(i64 %arg8580, i64 %rva10023)                       ; call prim_cons
  %cloptr21229 = inttoptr i64 %pMA$y to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr21230 = getelementptr inbounds i64, i64* %cloptr21229, i64 0                 ; &cloptr21229[0]
  %f21232 = load i64, i64* %i0ptr21230, align 8                                      ; load; *i0ptr21230
  %fptr21231 = inttoptr i64 %f21232 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21231(i64 %pMA$y, i64 %rva10022)                    ; tail call
  ret void
}


define void @lam10045(i64 %env10046, i64 %rvp10021) {
  %envptr21233 = inttoptr i64 %env10046 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21234 = getelementptr inbounds i64, i64* %envptr21233, i64 3                ; &envptr21233[3]
  %cont7335 = load i64, i64* %envptr21234, align 8                                   ; load; *envptr21234
  %envptr21235 = inttoptr i64 %env10046 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21236 = getelementptr inbounds i64, i64* %envptr21235, i64 2                ; &envptr21235[2]
  %Ns9$f = load i64, i64* %envptr21236, align 8                                      ; load; *envptr21236
  %envptr21237 = inttoptr i64 %env10046 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21238 = getelementptr inbounds i64, i64* %envptr21237, i64 1                ; &envptr21237[1]
  %Ht2$args = load i64, i64* %envptr21238, align 8                                   ; load; *envptr21238
  %_957337 = call i64 @prim_car(i64 %rvp10021)                                       ; call prim_car
  %rvp10020 = call i64 @prim_cdr(i64 %rvp10021)                                      ; call prim_cdr
  %a6888 = call i64 @prim_car(i64 %rvp10020)                                         ; call prim_car
  %na10012 = call i64 @prim_cdr(i64 %rvp10020)                                       ; call prim_cdr
  %cloptr21239 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr21241 = getelementptr inbounds i64, i64* %cloptr21239, i64 1                  ; &eptr21241[1]
  %eptr21242 = getelementptr inbounds i64, i64* %cloptr21239, i64 2                  ; &eptr21242[2]
  store i64 %Ht2$args, i64* %eptr21241                                               ; *eptr21241 = %Ht2$args
  store i64 %cont7335, i64* %eptr21242                                               ; *eptr21242 = %cont7335
  %eptr21240 = getelementptr inbounds i64, i64* %cloptr21239, i64 0                  ; &cloptr21239[0]
  %f21243 = ptrtoint void(i64,i64)* @lam10043 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f21243, i64* %eptr21240                                                 ; store fptr
  %arg8583 = ptrtoint i64* %cloptr21239 to i64                                       ; closure cast; i64* -> i64
  %rva10019 = add i64 0, 0                                                           ; quoted ()
  %rva10018 = call i64 @prim_cons(i64 %Ns9$f, i64 %rva10019)                         ; call prim_cons
  %rva10017 = call i64 @prim_cons(i64 %arg8583, i64 %rva10018)                       ; call prim_cons
  %cloptr21244 = inttoptr i64 %a6888 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr21245 = getelementptr inbounds i64, i64* %cloptr21244, i64 0                 ; &cloptr21244[0]
  %f21247 = load i64, i64* %i0ptr21245, align 8                                      ; load; *i0ptr21245
  %fptr21246 = inttoptr i64 %f21247 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21246(i64 %a6888, i64 %rva10017)                    ; tail call
  ret void
}


define void @lam10043(i64 %env10044, i64 %rvp10016) {
  %envptr21248 = inttoptr i64 %env10044 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21249 = getelementptr inbounds i64, i64* %envptr21248, i64 2                ; &envptr21248[2]
  %cont7335 = load i64, i64* %envptr21249, align 8                                   ; load; *envptr21249
  %envptr21250 = inttoptr i64 %env10044 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr21251 = getelementptr inbounds i64, i64* %envptr21250, i64 1                ; &envptr21250[1]
  %Ht2$args = load i64, i64* %envptr21251, align 8                                   ; load; *envptr21251
  %_957338 = call i64 @prim_car(i64 %rvp10016)                                       ; call prim_car
  %rvp10015 = call i64 @prim_cdr(i64 %rvp10016)                                      ; call prim_cdr
  %a6889 = call i64 @prim_car(i64 %rvp10015)                                         ; call prim_car
  %na10014 = call i64 @prim_cdr(i64 %rvp10015)                                       ; call prim_cdr
  %cps_45lst7339 = call i64 @prim_cons(i64 %cont7335, i64 %Ht2$args)                 ; call prim_cons
  %cloptr21252 = inttoptr i64 %a6889 to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr21253 = getelementptr inbounds i64, i64* %cloptr21252, i64 0                 ; &cloptr21252[0]
  %f21255 = load i64, i64* %i0ptr21253, align 8                                      ; load; *i0ptr21253
  %fptr21254 = inttoptr i64 %f21255 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr21254(i64 %a6889, i64 %cps_45lst7339)               ; tail call
  ret void
}





@sym18789 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
@sym19738 = private unnamed_addr constant [12 x i8] c"no-solution\00", align 8
@sym20511 = private unnamed_addr constant [9 x i8] c"solution\00", align 8
