.class public Lorg/apache/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 53
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 57
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 61
    new-array v0, v1, [J

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 65
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 69
    new-array v0, v1, [I

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 73
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 77
    new-array v0, v1, [S

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 81
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 85
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 89
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 93
    new-array v0, v1, [D

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 97
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 101
    new-array v0, v1, [F

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 105
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 109
    new-array v0, v1, [Z

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 113
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 117
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 121
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4560
    if-nez p0, :cond_2

    .line 4561
    if-eqz p1, :cond_0

    .line 4562
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4564
    :cond_0
    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4565
    invoke-static {v0, v2, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4578
    :cond_1
    :goto_0
    return-object v0

    .line 4568
    :cond_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 4569
    if-gt p1, v1, :cond_3

    if-gez p1, :cond_4

    .line 4570
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4572
    :cond_4
    add-int/lit8 v0, v1, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4573
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4574
    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4575
    if-ge p1, v1, :cond_1

    .line 4576
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static add([BB)[B
    .locals 2

    .prologue
    .line 4071
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 4072
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 4073
    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2

    .prologue
    .line 4390
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2

    .prologue
    .line 4098
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    .line 4099
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 4100
    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2

    .prologue
    .line 4359
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 3

    .prologue
    .line 4125
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    .line 4126
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 4127
    return-object v0
.end method

.method public static add([DID)[D
    .locals 2

    .prologue
    .line 4545
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2

    .prologue
    .line 4152
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    .line 4153
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 4154
    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2

    .prologue
    .line 4514
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2

    .prologue
    .line 4179
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 4180
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 4181
    return-object v0
.end method

.method public static add([III)[I
    .locals 2

    .prologue
    .line 4452
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2

    .prologue
    .line 4483
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 3

    .prologue
    .line 4206
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    .line 4207
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 4208
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .line 4287
    if-eqz p0, :cond_0

    .line 4289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4296
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 4297
    return-object v0

    .line 4290
    :cond_0
    if-eqz p2, :cond_1

    .line 4291
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 4293
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array and element cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 4008
    if-eqz p0, :cond_0

    .line 4009
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4017
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 4018
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 4019
    return-object v0

    .line 4010
    :cond_0
    if-eqz p1, :cond_1

    .line 4011
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 4013
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([SIS)[S
    .locals 2

    .prologue
    .line 4421
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2

    .prologue
    .line 4233
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    .line 4234
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 4235
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2

    .prologue
    .line 4327
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2

    .prologue
    .line 4044
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    .line 4045
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 4046
    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3821
    if-nez p0, :cond_0

    .line 3822
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 3829
    :goto_0
    return-object v0

    .line 3823
    :cond_0
    if-nez p1, :cond_1

    .line 3824
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 3826
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 3827
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3828
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([C[C)[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3792
    if-nez p0, :cond_0

    .line 3793
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 3800
    :goto_0
    return-object v0

    .line 3794
    :cond_0
    if-nez p1, :cond_1

    .line 3795
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_0

    .line 3797
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 3798
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3799
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([D[D)[D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3966
    if-nez p0, :cond_0

    .line 3967
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 3974
    :goto_0
    return-object v0

    .line 3968
    :cond_0
    if-nez p1, :cond_1

    .line 3969
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_0

    .line 3971
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 3972
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3973
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([F[F)[F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3937
    if-nez p0, :cond_0

    .line 3938
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 3945
    :goto_0
    return-object v0

    .line 3939
    :cond_0
    if-nez p1, :cond_1

    .line 3940
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_0

    .line 3942
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 3943
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3944
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([I[I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3879
    if-nez p0, :cond_0

    .line 3880
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 3887
    :goto_0
    return-object v0

    .line 3881
    :cond_0
    if-nez p1, :cond_1

    .line 3882
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_0

    .line 3884
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 3885
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3886
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([J[J)[J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3908
    if-nez p0, :cond_0

    .line 3909
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 3916
    :goto_0
    return-object v0

    .line 3910
    :cond_0
    if-nez p1, :cond_1

    .line 3911
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_0

    .line 3913
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 3914
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3915
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3716
    if-nez p0, :cond_0

    .line 3717
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 3742
    :goto_0
    return-object v0

    .line 3718
    :cond_0
    if-nez p1, :cond_1

    .line 3719
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3721
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 3724
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 3725
    array-length v2, p0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3727
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    array-length v4, p1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3728
    :catch_0
    move-exception v0

    .line 3735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 3736
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3737
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot store "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in an array of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3740
    :cond_2
    throw v0
.end method

.method public static varargs addAll([S[S)[S
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3850
    if-nez p0, :cond_0

    .line 3851
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 3858
    :goto_0
    return-object v0

    .line 3852
    :cond_0
    if-nez p1, :cond_1

    .line 3853
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_0

    .line 3855
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 3856
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3857
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static varargs addAll([Z[Z)[Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3763
    if-nez p0, :cond_0

    .line 3764
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 3771
    :goto_0
    return-object v0

    .line 3765
    :cond_0
    if-nez p1, :cond_1

    .line 3766
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_0

    .line 3768
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 3769
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3770
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static clone([B)[B
    .locals 1

    .prologue
    .line 403
    if-nez p0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public static clone([C)[C
    .locals 1

    .prologue
    .line 387
    if-nez p0, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public static clone([D)[D
    .locals 1

    .prologue
    .line 419
    if-nez p0, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0
.end method

.method public static clone([F)[F
    .locals 1

    .prologue
    .line 435
    if-nez p0, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0
.end method

.method public static clone([I)[I
    .locals 1

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public static clone([J)[J
    .locals 1

    .prologue
    .line 339
    if-nez p0, :cond_0

    .line 340
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 323
    if-nez p0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clone([S)[S
    .locals 1

    .prologue
    .line 371
    if-nez p0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0
.end method

.method public static clone([Z)[Z
    .locals 1

    .prologue
    .line 451
    if-nez p0, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 454
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static contains([BB)Z
    .locals 2

    .prologue
    .line 2508
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([CC)Z
    .locals 2

    .prologue
    .line 2405
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .locals 3

    .prologue
    .line 2715
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DDD)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2732
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static contains([FF)Z
    .locals 2

    .prologue
    .line 2835
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([II)Z
    .locals 2

    .prologue
    .line 2194
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 3

    .prologue
    .line 2091
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1988
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([SS)Z
    .locals 2

    .prologue
    .line 2297
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([ZZ)Z
    .locals 2

    .prologue
    .line 2940
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4248
    if-eqz p0, :cond_0

    .line 4249
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 4250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4251
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1402
    if-nez p0, :cond_0

    .line 1403
    const/4 v0, 0x0

    .line 1405
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1

    .prologue
    .line 2421
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2439
    if-nez p0, :cond_1

    move p2, v0

    .line 2450
    :cond_0
    :goto_0
    return p2

    .line 2442
    :cond_1
    if-gez p2, :cond_2

    .line 2443
    const/4 p2, 0x0

    .line 2445
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2446
    aget-byte v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2445
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2450
    goto :goto_0
.end method

.method public static indexOf([CC)I
    .locals 1

    .prologue
    .line 2314
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2333
    if-nez p0, :cond_1

    move p2, v0

    .line 2344
    :cond_0
    :goto_0
    return p2

    .line 2336
    :cond_1
    if-gez p2, :cond_2

    .line 2337
    const/4 p2, 0x0

    .line 2339
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2340
    aget-char v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2339
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2344
    goto :goto_0
.end method

.method public static indexOf([DD)I
    .locals 1

    .prologue
    .line 2524
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 7

    .prologue
    .line 2541
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 2559
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    move p3, v0

    .line 2570
    :cond_0
    :goto_0
    return p3

    .line 2562
    :cond_1
    if-gez p3, :cond_2

    .line 2563
    const/4 p3, 0x0

    .line 2565
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p3, v1, :cond_3

    .line 2566
    aget-wide v2, p0, p3

    cmpl-double v1, p1, v2

    if-eqz v1, :cond_0

    .line 2565
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    move p3, v0

    .line 2570
    goto :goto_0
.end method

.method public static indexOf([DDID)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 2591
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    move p3, v0

    .line 2604
    :cond_0
    :goto_0
    return p3

    .line 2594
    :cond_1
    if-gez p3, :cond_2

    .line 2595
    const/4 p3, 0x0

    .line 2597
    :cond_2
    sub-double v2, p1, p4

    .line 2598
    add-double v4, p1, p4

    .line 2599
    :goto_1
    array-length v1, p0

    if-ge p3, v1, :cond_4

    .line 2600
    aget-wide v6, p0, p3

    cmpl-double v1, v6, v2

    if-ltz v1, :cond_3

    aget-wide v6, p0, p3

    cmpg-double v1, v6, v4

    if-lez v1, :cond_0

    .line 2599
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    move p3, v0

    .line 2604
    goto :goto_0
.end method

.method public static indexOf([FF)I
    .locals 1

    .prologue
    .line 2748
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2766
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    .line 2777
    :cond_0
    :goto_0
    return p2

    .line 2769
    :cond_1
    if-gez p2, :cond_2

    .line 2770
    const/4 p2, 0x0

    .line 2772
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2773
    aget v1, p0, p2

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 2772
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2777
    goto :goto_0
.end method

.method public static indexOf([II)I
    .locals 1

    .prologue
    .line 2107
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2125
    if-nez p0, :cond_1

    move p2, v0

    .line 2136
    :cond_0
    :goto_0
    return p2

    .line 2128
    :cond_1
    if-gez p2, :cond_2

    .line 2129
    const/4 p2, 0x0

    .line 2131
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2132
    aget v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2131
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2136
    goto :goto_0
.end method

.method public static indexOf([JJ)I
    .locals 1

    .prologue
    .line 2004
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 2022
    if-nez p0, :cond_1

    move p3, v0

    .line 2033
    :cond_0
    :goto_0
    return p3

    .line 2025
    :cond_1
    if-gez p3, :cond_2

    .line 2026
    const/4 p3, 0x0

    .line 2028
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p3, v1, :cond_3

    .line 2029
    aget-wide v2, p0, p3

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 2028
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    move p3, v0

    .line 2033
    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1885
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1903
    if-nez p0, :cond_1

    move v0, v1

    .line 1922
    :cond_0
    :goto_0
    return v0

    .line 1906
    :cond_1
    if-gez p2, :cond_4

    .line 1907
    const/4 v0, 0x0

    .line 1909
    :goto_1
    if-nez p1, :cond_2

    .line 1910
    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1911
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 1910
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1915
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1916
    :goto_3
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 1917
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1916
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    .line 1922
    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1
.end method

.method public static indexOf([SS)I
    .locals 1

    .prologue
    .line 2210
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2228
    if-nez p0, :cond_1

    move p2, v0

    .line 2239
    :cond_0
    :goto_0
    return p2

    .line 2231
    :cond_1
    if-gez p2, :cond_2

    .line 2232
    const/4 p2, 0x0

    .line 2234
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2235
    aget-short v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2234
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2239
    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .locals 1

    .prologue
    .line 2851
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 2870
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    .line 2881
    :cond_0
    :goto_0
    return p2

    .line 2873
    :cond_1
    if-gez p2, :cond_2

    .line 2874
    const/4 p2, 0x0

    .line 2876
    :cond_2
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_3

    .line 2877
    aget-boolean v1, p0, p2

    if-eq p1, v1, :cond_0

    .line 2876
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v0

    .line 2881
    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 1

    .prologue
    .line 3554
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([C)Z
    .locals 1

    .prologue
    .line 3543
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([D)Z
    .locals 1

    .prologue
    .line 3565
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([F)Z
    .locals 1

    .prologue
    .line 3576
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([I)Z
    .locals 1

    .prologue
    .line 3521
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([J)Z
    .locals 1

    .prologue
    .line 3510
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3499
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([S)Z
    .locals 1

    .prologue
    .line 3532
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Z)Z
    .locals 1

    .prologue
    .line 3587
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .locals 1

    .prologue
    .line 3655
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([C)Z
    .locals 1

    .prologue
    .line 3644
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([D)Z
    .locals 1

    .prologue
    .line 3666
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([F)Z
    .locals 1

    .prologue
    .line 3677
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([I)Z
    .locals 1

    .prologue
    .line 3622
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([J)Z
    .locals 1

    .prologue
    .line 3611
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 3600
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([S)Z
    .locals 1

    .prologue
    .line 3633
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Z)Z
    .locals 1

    .prologue
    .line 3688
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameLength([B[B)Z
    .locals 2

    .prologue
    .line 1318
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1321
    :cond_2
    const/4 v0, 0x0

    .line 1323
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([C[C)Z
    .locals 2

    .prologue
    .line 1300
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1303
    :cond_2
    const/4 v0, 0x0

    .line 1305
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([D[D)Z
    .locals 2

    .prologue
    .line 1336
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1339
    :cond_2
    const/4 v0, 0x0

    .line 1341
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([F[F)Z
    .locals 2

    .prologue
    .line 1354
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1357
    :cond_2
    const/4 v0, 0x0

    .line 1359
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([I[I)Z
    .locals 2

    .prologue
    .line 1264
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1267
    :cond_2
    const/4 v0, 0x0

    .line 1269
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([J[J)Z
    .locals 2

    .prologue
    .line 1246
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1249
    :cond_2
    const/4 v0, 0x0

    .line 1251
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1228
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1231
    :cond_2
    const/4 v0, 0x0

    .line 1233
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([S[S)Z
    .locals 2

    .prologue
    .line 1282
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1285
    :cond_2
    const/4 v0, 0x0

    .line 1287
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 2

    .prologue
    .line 1372
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_3

    .line 1375
    :cond_2
    const/4 v0, 0x0

    .line 1377
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1418
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1419
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1421
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BB)I
    .locals 1

    .prologue
    .line 2464
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2482
    if-nez p0, :cond_1

    .line 2495
    :cond_0
    :goto_0
    return v0

    .line 2485
    :cond_1
    if-ltz p2, :cond_0

    .line 2487
    array-length v1, p0

    if-lt p2, v1, :cond_3

    .line 2488
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 2490
    :goto_1
    if-ltz v1, :cond_0

    .line 2491
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 2492
    goto :goto_0

    .line 2490
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([CC)I
    .locals 1

    .prologue
    .line 2359
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2378
    if-nez p0, :cond_1

    .line 2391
    :cond_0
    :goto_0
    return v0

    .line 2381
    :cond_1
    if-ltz p2, :cond_0

    .line 2383
    array-length v1, p0

    if-lt p2, v1, :cond_3

    .line 2384
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 2386
    :goto_1
    if-ltz v1, :cond_0

    .line 2387
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 2388
    goto :goto_0

    .line 2386
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([DD)I
    .locals 1

    .prologue
    .line 2618
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 7

    .prologue
    .line 2635
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 2653
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2666
    :cond_0
    :goto_0
    return v0

    .line 2656
    :cond_1
    if-ltz p3, :cond_0

    .line 2658
    array-length v1, p0

    if-lt p3, v1, :cond_3

    .line 2659
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 2661
    :goto_1
    if-ltz v1, :cond_0

    .line 2662
    aget-wide v2, p0, v1

    cmpl-double v2, p1, v2

    if-nez v2, :cond_2

    move v0, v1

    .line 2663
    goto :goto_0

    .line 2661
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p3

    goto :goto_1
.end method

.method public static lastIndexOf([DDID)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 2687
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2702
    :cond_0
    :goto_0
    return v0

    .line 2690
    :cond_1
    if-ltz p3, :cond_0

    .line 2692
    array-length v1, p0

    if-lt p3, v1, :cond_2

    .line 2693
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    .line 2695
    :cond_2
    sub-double v2, p1, p4

    .line 2696
    add-double v4, p1, p4

    move v1, p3

    .line 2697
    :goto_1
    if-ltz v1, :cond_0

    .line 2698
    aget-wide v6, p0, v1

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_3

    aget-wide v6, p0, v1

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_3

    move v0, v1

    .line 2699
    goto :goto_0

    .line 2697
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static lastIndexOf([FF)I
    .locals 1

    .prologue
    .line 2791
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2809
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2822
    :cond_0
    :goto_0
    return v0

    .line 2812
    :cond_1
    if-ltz p2, :cond_0

    .line 2814
    array-length v1, p0

    if-lt p2, v1, :cond_3

    .line 2815
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 2817
    :goto_1
    if-ltz v1, :cond_0

    .line 2818
    aget v2, p0, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    move v0, v1

    .line 2819
    goto :goto_0

    .line 2817
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([II)I
    .locals 1

    .prologue
    .line 2150
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2168
    if-nez p0, :cond_1

    .line 2181
    :cond_0
    :goto_0
    return v0

    .line 2171
    :cond_1
    if-ltz p2, :cond_0

    .line 2173
    array-length v1, p0

    if-lt p2, v1, :cond_3

    .line 2174
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 2176
    :goto_1
    if-ltz v1, :cond_0

    .line 2177
    aget v2, p0, v1

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 2178
    goto :goto_0

    .line 2176
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([JJ)I
    .locals 1

    .prologue
    .line 2047
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 2065
    if-nez p0, :cond_1

    .line 2078
    :cond_0
    :goto_0
    return v0

    .line 2068
    :cond_1
    if-ltz p3, :cond_0

    .line 2070
    array-length v1, p0

    if-lt p3, v1, :cond_3

    .line 2071
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 2073
    :goto_1
    if-ltz v1, :cond_0

    .line 2074
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    move v0, v1

    .line 2075
    goto :goto_0

    .line 2073
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p3

    goto :goto_1
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1936
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1954
    if-nez p0, :cond_1

    .line 1975
    :cond_0
    :goto_0
    return v0

    .line 1957
    :cond_1
    if-ltz p2, :cond_0

    .line 1959
    array-length v1, p0

    if-lt p2, v1, :cond_5

    .line 1960
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1962
    :goto_1
    if-nez p1, :cond_3

    .line 1963
    :goto_2
    if-ltz v1, :cond_0

    .line 1964
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    move v0, v1

    .line 1965
    goto :goto_0

    .line 1963
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1968
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1969
    :goto_3
    if-ltz v1, :cond_0

    .line 1970
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 1971
    goto :goto_0

    .line 1969
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([SS)I
    .locals 1

    .prologue
    .line 2253
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2271
    if-nez p0, :cond_1

    .line 2284
    :cond_0
    :goto_0
    return v0

    .line 2274
    :cond_1
    if-ltz p2, :cond_0

    .line 2276
    array-length v1, p0

    if-lt p2, v1, :cond_3

    .line 2277
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 2279
    :goto_1
    if-ltz v1, :cond_0

    .line 2280
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 2281
    goto :goto_0

    .line 2279
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1

    .prologue
    .line 2896
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 2914
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2927
    :cond_0
    :goto_0
    return v0

    .line 2917
    :cond_1
    if-ltz p2, :cond_0

    .line 2919
    array-length v1, p0

    if-lt p2, v1, :cond_3

    .line 2920
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 2922
    :goto_1
    if-ltz v1, :cond_0

    .line 2923
    aget-boolean v2, p0, v1

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 2924
    goto :goto_0

    .line 2922
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public static nullToEmpty([B)[B
    .locals 1

    .prologue
    .line 613
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 614
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 616
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .locals 1

    .prologue
    .line 593
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 594
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 596
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .locals 1

    .prologue
    .line 633
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 634
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 636
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .locals 1

    .prologue
    .line 653
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 654
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 656
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .locals 1

    .prologue
    .line 553
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 554
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 556
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .locals 1

    .prologue
    .line 533
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 534
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 536
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 833
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 834
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 836
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 773
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 774
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 776
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1

    .prologue
    .line 753
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 754
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 756
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 493
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 494
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 496
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1

    .prologue
    .line 793
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 794
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 796
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1

    .prologue
    .line 813
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 814
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 816
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 713
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 714
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 716
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1

    .prologue
    .line 693
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 694
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 696
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 473
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 474
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 476
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1

    .prologue
    .line 733
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 734
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 736
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 514
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 516
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .locals 1

    .prologue
    .line 573
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 574
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 576
    :cond_1
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1

    .prologue
    .line 673
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 674
    :cond_0
    sget-object p0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 676
    :cond_1
    return-object p0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5191
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 5192
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 5193
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5196
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 5197
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5198
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    .line 5199
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5202
    :cond_2
    return-object v1
.end method

.method public static remove([BI)[B
    .locals 1

    .prologue
    .line 4743
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1

    .prologue
    .line 4808
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1

    .prologue
    .line 4873
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1

    .prologue
    .line 4938
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1

    .prologue
    .line 5003
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1

    .prologue
    .line 5068
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 4612
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1

    .prologue
    .line 5133
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1

    .prologue
    .line 4678
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method static removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 6063
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 6070
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    .line 6071
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    move v1, v0

    .line 6076
    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 6077
    sub-int v5, v4, v1

    .line 6078
    if-lez v5, :cond_0

    .line 6079
    invoke-static {p0, v1, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6080
    add-int/2addr v0, v5

    .line 6082
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v1

    goto :goto_0

    .line 6084
    :cond_1
    sub-int/2addr v2, v1

    .line 6085
    if-lez v2, :cond_2

    .line 6086
    invoke-static {p0, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6088
    :cond_2
    return-object v3
.end method

.method static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 6012
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 6015
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6016
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 6018
    array-length v0, p1

    move v3, v2

    move v4, v0

    move v0, v1

    .line 6020
    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-ltz v5, :cond_3

    .line 6021
    aget v4, p1, v5

    .line 6022
    if-ltz v4, :cond_0

    if-lt v4, v2, :cond_1

    .line 6023
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Index: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6025
    :cond_1
    if-ge v4, v3, :cond_7

    .line 6026
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    move v4, v5

    .line 6030
    goto :goto_0

    :cond_2
    move v0, v1

    .line 6032
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    sub-int v4, v2, v0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 6033
    if-ge v0, v2, :cond_6

    .line 6035
    sub-int v0, v2, v0

    .line 6036
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_1
    if-ltz v4, :cond_5

    .line 6037
    aget v3, p1, v4

    .line 6038
    sub-int v6, v2, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 6039
    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 6040
    sub-int/2addr v0, v2

    .line 6041
    add-int/lit8 v6, v3, 0x1

    invoke-static {p0, v6, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6036
    :cond_4
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move v2, v3

    goto :goto_1

    .line 6046
    :cond_5
    if-lez v2, :cond_6

    .line 6047
    invoke-static {p0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6050
    :cond_6
    return-object v5

    :cond_7
    move v4, v5

    goto :goto_0
.end method

.method public static varargs removeAll([B[I)[B
    .locals 1

    .prologue
    .line 5325
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .locals 1

    .prologue
    .line 5592
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .locals 1

    .prologue
    .line 5859
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .locals 1

    .prologue
    .line 5770
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .locals 1

    .prologue
    .line 5503
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .locals 1

    .prologue
    .line 5681
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .prologue
    .line 5233
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .locals 1

    .prologue
    .line 5414
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .locals 1

    .prologue
    .line 5944
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .locals 2

    .prologue
    .line 4772
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 4773
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4774
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 4776
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([CC)[C
    .locals 2

    .prologue
    .line 4837
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 4838
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4839
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 4841
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([DD)[D
    .locals 3

    .prologue
    .line 4902
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 4903
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4904
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 4906
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([FF)[F
    .locals 2

    .prologue
    .line 4967
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 4968
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4969
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 4971
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([II)[I
    .locals 2

    .prologue
    .line 5032
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 5033
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5034
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 5036
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([JJ)[J
    .locals 3

    .prologue
    .line 5097
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 5098
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5099
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 5101
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 4642
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4643
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4644
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 4646
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([SS)[S
    .locals 2

    .prologue
    .line 5162
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 5163
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5164
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 5166
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v0

    goto :goto_0
.end method

.method public static removeElement([ZZ)[Z
    .locals 2

    .prologue
    .line 4707
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 4708
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4709
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 4711
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs removeElements([B[B)[B
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5356
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5357
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 5381
    :goto_0
    return-object v0

    .line 5359
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5360
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-byte v0, p1, v1

    .line 5361
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 5362
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5363
    if-nez v0, :cond_2

    .line 5364
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5360
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5366
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5369
    :cond_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 5370
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 5373
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    move v0, v2

    move v3, v2

    :goto_3
    if-ge v0, v6, :cond_4

    .line 5374
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v7

    invoke-static {p0, v7, v3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v7

    .line 5375
    if-ltz v7, :cond_4

    .line 5376
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 5373
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5381
    :cond_5
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    goto :goto_0
.end method

.method public static varargs removeElements([C[C)[C
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5623
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5624
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 5648
    :goto_0
    return-object v0

    .line 5626
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5627
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-char v0, p1, v1

    .line 5628
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 5629
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5630
    if-nez v0, :cond_2

    .line 5631
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5627
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5633
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5636
    :cond_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 5637
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5638
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 5640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    move v0, v2

    move v3, v2

    :goto_3
    if-ge v0, v6, :cond_4

    .line 5641
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {p0, v7, v3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v7

    .line 5642
    if-ltz v7, :cond_4

    .line 5643
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 5640
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5648
    :cond_5
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    goto :goto_0
.end method

.method public static varargs removeElements([D[D)[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 5890
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5891
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 5915
    :goto_0
    return-object v0

    .line 5893
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5894
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-wide v6, p1, v1

    .line 5895
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 5896
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5897
    if-nez v0, :cond_2

    .line 5898
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5894
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5900
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5903
    :cond_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 5904
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5905
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 5907
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    move v0, v2

    move v3, v2

    :goto_3
    if-ge v3, v6, :cond_4

    .line 5908
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {p0, v8, v9, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v7

    .line 5909
    if-ltz v7, :cond_4

    .line 5910
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 5907
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5915
    :cond_5
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    goto :goto_0
.end method

.method public static varargs removeElements([F[F)[F
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5801
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5802
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 5826
    :goto_0
    return-object v0

    .line 5804
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5805
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget v0, p1, v1

    .line 5806
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 5807
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5808
    if-nez v0, :cond_2

    .line 5809
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5805
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5811
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5814
    :cond_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 5815
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5816
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 5818
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    move v0, v2

    move v3, v2

    :goto_3
    if-ge v0, v6, :cond_4

    .line 5819
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {p0, v7, v3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v7

    .line 5820
    if-ltz v7, :cond_4

    .line 5821
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 5818
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5826
    :cond_5
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    goto :goto_0
.end method

.method public static varargs removeElements([I[I)[I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5534
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5535
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 5559
    :goto_0
    return-object v0

    .line 5537
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5538
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget v0, p1, v1

    .line 5539
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5540
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5541
    if-nez v0, :cond_2

    .line 5542
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5538
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5544
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5547
    :cond_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 5548
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5551
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    move v0, v2

    move v3, v2

    :goto_3
    if-ge v0, v6, :cond_4

    .line 5552
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7, v3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v7

    .line 5553
    if-ltz v7, :cond_4

    .line 5554
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 5551
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5559
    :cond_5
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    goto :goto_0
.end method

.method public static varargs removeElements([J[J)[J
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 5712
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5713
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 5737
    :goto_0
    return-object v0

    .line 5715
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5716
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-wide v6, p1, v1

    .line 5717
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 5718
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5719
    if-nez v0, :cond_2

    .line 5720
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5716
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5722
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5725
    :cond_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 5726
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5727
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 5729
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    move v0, v2

    move v3, v2

    :goto_3
    if-ge v3, v6, :cond_4

    .line 5730
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v7

    .line 5731
    if-ltz v7, :cond_4

    .line 5732
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 5729
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5737
    :cond_5
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    goto :goto_0
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5265
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5266
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 5292
    :goto_0
    return-object v0

    .line 5268
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5269
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p1, v2

    .line 5270
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5271
    if-nez v0, :cond_2

    .line 5272
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5269
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5274
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5277
    :cond_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 5278
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 5281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    move v0, v1

    move v2, v1

    :goto_3
    if-ge v2, v6, :cond_4

    .line 5282
    invoke-static {p0, v5, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v7

    .line 5283
    if-ltz v7, :cond_4

    .line 5284
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 5281
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5291
    :cond_5
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static varargs removeElements([S[S)[S
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5445
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5446
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 5470
    :goto_0
    return-object v0

    .line 5448
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5449
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-short v0, p1, v1

    .line 5450
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 5451
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5452
    if-nez v0, :cond_2

    .line 5453
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5449
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5455
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5458
    :cond_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 5459
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5460
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    .line 5462
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    move v0, v2

    move v3, v2

    :goto_3
    if-ge v0, v6, :cond_4

    .line 5463
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v7

    invoke-static {p0, v7, v3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v7

    .line 5464
    if-ltz v7, :cond_4

    .line 5465
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 5462
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5470
    :cond_5
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    goto :goto_0
.end method

.method public static varargs removeElements([Z[Z)[Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5975
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5976
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 6000
    :goto_0
    return-object v0

    .line 5978
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 5979
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-boolean v0, p1, v1

    .line 5980
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5981
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 5982
    if-nez v0, :cond_2

    .line 5983
    new-instance v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5979
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5985
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_2

    .line 5988
    :cond_3
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 5989
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5990
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 5992
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v6

    move v0, v2

    move v3, v2

    :goto_3
    if-ge v0, v6, :cond_4

    .line 5993
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {p0, v7, v3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v7

    .line 5994
    if-ltz v7, :cond_4

    .line 5995
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 5992
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6000
    :cond_5
    invoke-static {p0, v4}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    goto :goto_0
.end method

.method public static reverse([B)V
    .locals 2

    .prologue
    .line 1506
    if-nez p0, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1509
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([BII)V

    goto :goto_0
.end method

.method public static reverse([BII)V
    .locals 3

    .prologue
    .line 1609
    if-nez p0, :cond_1

    .line 1622
    :cond_0
    return-void

    .line 1612
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1613
    :cond_2
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1615
    :goto_0
    if-le v0, p1, :cond_0

    .line 1616
    aget-byte v1, p0, v0

    .line 1617
    aget-byte v2, p0, p1

    aput-byte v2, p0, v0

    .line 1618
    aput-byte v1, p0, p1

    .line 1619
    add-int/lit8 v0, v0, -0x1

    .line 1620
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static reverse([C)V
    .locals 2

    .prologue
    .line 1492
    if-nez p0, :cond_0

    .line 1496
    :goto_0
    return-void

    .line 1495
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([CII)V

    goto :goto_0
.end method

.method public static reverse([CII)V
    .locals 3

    .prologue
    .line 1644
    if-nez p0, :cond_1

    .line 1657
    :cond_0
    return-void

    .line 1647
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1648
    :cond_2
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1650
    :goto_0
    if-le v0, p1, :cond_0

    .line 1651
    aget-char v1, p0, v0

    .line 1652
    aget-char v2, p0, p1

    aput-char v2, p0, v0

    .line 1653
    aput-char v1, p0, p1

    .line 1654
    add-int/lit8 v0, v0, -0x1

    .line 1655
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static reverse([D)V
    .locals 2

    .prologue
    .line 1520
    if-nez p0, :cond_0

    .line 1524
    :goto_0
    return-void

    .line 1523
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([DII)V

    goto :goto_0
.end method

.method public static reverse([DII)V
    .locals 6

    .prologue
    .line 1679
    if-nez p0, :cond_1

    .line 1692
    :cond_0
    return-void

    .line 1682
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1683
    :cond_2
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1685
    :goto_0
    if-le v0, p1, :cond_0

    .line 1686
    aget-wide v2, p0, v0

    .line 1687
    aget-wide v4, p0, p1

    aput-wide v4, p0, v0

    .line 1688
    aput-wide v2, p0, p1

    .line 1689
    add-int/lit8 v0, v0, -0x1

    .line 1690
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static reverse([F)V
    .locals 2

    .prologue
    .line 1534
    if-nez p0, :cond_0

    .line 1538
    :goto_0
    return-void

    .line 1537
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([FII)V

    goto :goto_0
.end method

.method public static reverse([FII)V
    .locals 3

    .prologue
    .line 1714
    if-nez p0, :cond_1

    .line 1727
    :cond_0
    return-void

    .line 1717
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1718
    :cond_2
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1720
    :goto_0
    if-le v0, p1, :cond_0

    .line 1721
    aget v1, p0, v0

    .line 1722
    aget v2, p0, p1

    aput v2, p0, v0

    .line 1723
    aput v1, p0, p1

    .line 1724
    add-int/lit8 v0, v0, -0x1

    .line 1725
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static reverse([I)V
    .locals 2

    .prologue
    .line 1464
    if-nez p0, :cond_0

    .line 1468
    :goto_0
    return-void

    .line 1467
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([III)V

    goto :goto_0
.end method

.method public static reverse([III)V
    .locals 3

    .prologue
    .line 1749
    if-nez p0, :cond_1

    .line 1762
    :cond_0
    return-void

    .line 1752
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1753
    :cond_2
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1755
    :goto_0
    if-le v0, p1, :cond_0

    .line 1756
    aget v1, p0, v0

    .line 1757
    aget v2, p0, p1

    aput v2, p0, v0

    .line 1758
    aput v1, p0, p1

    .line 1759
    add-int/lit8 v0, v0, -0x1

    .line 1760
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static reverse([J)V
    .locals 2

    .prologue
    .line 1450
    if-nez p0, :cond_0

    .line 1454
    :goto_0
    return-void

    .line 1453
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([JII)V

    goto :goto_0
.end method

.method public static reverse([JII)V
    .locals 6

    .prologue
    .line 1784
    if-nez p0, :cond_1

    .line 1797
    :cond_0
    return-void

    .line 1787
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1788
    :cond_2
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1790
    :goto_0
    if-le v0, p1, :cond_0

    .line 1791
    aget-wide v2, p0, v0

    .line 1792
    aget-wide v4, p0, p1

    aput-wide v4, p0, v0

    .line 1793
    aput-wide v2, p0, p1

    .line 1794
    add-int/lit8 v0, v0, -0x1

    .line 1795
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1436
    if-nez p0, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1439
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;II)V
    .locals 3

    .prologue
    .line 1819
    if-nez p0, :cond_1

    .line 1832
    :cond_0
    return-void

    .line 1822
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1823
    :cond_2
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1825
    :goto_0
    if-le v0, p1, :cond_0

    .line 1826
    aget-object v1, p0, v0

    .line 1827
    aget-object v2, p0, p1

    aput-object v2, p0, v0

    .line 1828
    aput-object v1, p0, p1

    .line 1829
    add-int/lit8 v0, v0, -0x1

    .line 1830
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static reverse([S)V
    .locals 2

    .prologue
    .line 1478
    if-nez p0, :cond_0

    .line 1482
    :goto_0
    return-void

    .line 1481
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([SII)V

    goto :goto_0
.end method

.method public static reverse([SII)V
    .locals 3

    .prologue
    .line 1854
    if-nez p0, :cond_1

    .line 1867
    :cond_0
    return-void

    .line 1857
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1858
    :cond_2
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1860
    :goto_0
    if-le v0, p1, :cond_0

    .line 1861
    aget-short v1, p0, v0

    .line 1862
    aget-short v2, p0, p1

    aput-short v2, p0, v0

    .line 1863
    aput-short v1, p0, p1

    .line 1864
    add-int/lit8 v0, v0, -0x1

    .line 1865
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static reverse([Z)V
    .locals 2

    .prologue
    .line 1548
    if-nez p0, :cond_0

    .line 1552
    :goto_0
    return-void

    .line 1551
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([ZII)V

    goto :goto_0
.end method

.method public static reverse([ZII)V
    .locals 3

    .prologue
    .line 1574
    if-nez p0, :cond_1

    .line 1587
    :cond_0
    return-void

    .line 1577
    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1578
    :cond_2
    array-length v0, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1580
    :goto_0
    if-le v0, p1, :cond_0

    .line 1581
    aget-boolean v1, p0, v0

    .line 1582
    aget-boolean v2, p0, p1

    aput-boolean v2, p0, v0

    .line 1583
    aput-boolean v1, p0, p1

    .line 1584
    add-int/lit8 v0, v0, -0x1

    .line 1585
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static subarray([BII)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1075
    if-nez p0, :cond_0

    .line 1076
    const/4 v0, 0x0

    .line 1091
    :goto_0
    return-object v0

    .line 1078
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1081
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1082
    array-length p2, p0

    .line 1084
    :cond_2
    sub-int v2, p2, p1

    .line 1085
    if-gtz v2, :cond_3

    .line 1086
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 1089
    :cond_3
    new-array v1, v2, [B

    .line 1090
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1091
    goto :goto_0
.end method

.method public static subarray([CII)[C
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1035
    if-nez p0, :cond_0

    .line 1036
    const/4 v0, 0x0

    .line 1051
    :goto_0
    return-object v0

    .line 1038
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1041
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1042
    array-length p2, p0

    .line 1044
    :cond_2
    sub-int v2, p2, p1

    .line 1045
    if-gtz v2, :cond_3

    .line 1046
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 1049
    :cond_3
    new-array v1, v2, [C

    .line 1050
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1051
    goto :goto_0
.end method

.method public static subarray([DII)[D
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1115
    if-nez p0, :cond_0

    .line 1116
    const/4 v0, 0x0

    .line 1131
    :goto_0
    return-object v0

    .line 1118
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1121
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1122
    array-length p2, p0

    .line 1124
    :cond_2
    sub-int v2, p2, p1

    .line 1125
    if-gtz v2, :cond_3

    .line 1126
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 1129
    :cond_3
    new-array v1, v2, [D

    .line 1130
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1131
    goto :goto_0
.end method

.method public static subarray([FII)[F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1155
    if-nez p0, :cond_0

    .line 1156
    const/4 v0, 0x0

    .line 1171
    :goto_0
    return-object v0

    .line 1158
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1161
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1162
    array-length p2, p0

    .line 1164
    :cond_2
    sub-int v2, p2, p1

    .line 1165
    if-gtz v2, :cond_3

    .line 1166
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 1169
    :cond_3
    new-array v1, v2, [F

    .line 1170
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1171
    goto :goto_0
.end method

.method public static subarray([III)[I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 955
    if-nez p0, :cond_0

    .line 956
    const/4 v0, 0x0

    .line 971
    :goto_0
    return-object v0

    .line 958
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 961
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 962
    array-length p2, p0

    .line 964
    :cond_2
    sub-int v2, p2, p1

    .line 965
    if-gtz v2, :cond_3

    .line 966
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 969
    :cond_3
    new-array v1, v2, [I

    .line 970
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 971
    goto :goto_0
.end method

.method public static subarray([JII)[J
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 915
    if-nez p0, :cond_0

    .line 916
    const/4 v0, 0x0

    .line 931
    :goto_0
    return-object v0

    .line 918
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 921
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 922
    array-length p2, p0

    .line 924
    :cond_2
    sub-int v2, p2, p1

    .line 925
    if-gtz v2, :cond_3

    .line 926
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 929
    :cond_3
    new-array v1, v2, [J

    .line 930
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 931
    goto :goto_0
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 871
    if-nez p0, :cond_0

    .line 872
    const/4 v0, 0x0

    .line 891
    :goto_0
    return-object v0

    .line 874
    :cond_0
    if-gez p1, :cond_1

    move p1, v1

    .line 877
    :cond_1
    array-length v0, p0

    if-le p2, v0, :cond_2

    .line 878
    array-length p2, p0

    .line 880
    :cond_2
    sub-int v2, p2, p1

    .line 881
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 882
    if-gtz v2, :cond_3

    .line 884
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    .line 889
    :cond_3
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 890
    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static subarray([SII)[S
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 995
    if-nez p0, :cond_0

    .line 996
    const/4 v0, 0x0

    .line 1011
    :goto_0
    return-object v0

    .line 998
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1001
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1002
    array-length p2, p0

    .line 1004
    :cond_2
    sub-int v2, p2, p1

    .line 1005
    if-gtz v2, :cond_3

    .line 1006
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 1009
    :cond_3
    new-array v1, v2, [S

    .line 1010
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1011
    goto :goto_0
.end method

.method public static subarray([ZII)[Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1195
    if-nez p0, :cond_0

    .line 1196
    const/4 v0, 0x0

    .line 1211
    :goto_0
    return-object v0

    .line 1198
    :cond_0
    if-gez p1, :cond_1

    move p1, v0

    .line 1201
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1202
    array-length p2, p0

    .line 1204
    :cond_2
    sub-int v2, p2, p1

    .line 1205
    if-gtz v2, :cond_3

    .line 1206
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 1209
    :cond_3
    new-array v1, v2, [Z

    .line 1210
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1211
    goto :goto_0
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 304
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 238
    if-nez p0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 261
    :goto_0
    return-object v0

    .line 241
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    array-length v0, p0

    int-to-double v0, v0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    move v2, v3

    .line 242
    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_4

    .line 243
    aget-object v0, p0, v2

    .line 244
    instance-of v1, v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    .line 245
    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 247
    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 248
    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 249
    array-length v5, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Array element "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', has a length less than 2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_2
    aget-object v0, v1, v3

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 256
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Array element "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, v4

    .line 261
    goto/16 :goto_0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 3478
    if-nez p0, :cond_0

    .line 3479
    const/4 v0, 0x0

    .line 3487
    :goto_0
    return-object v0

    .line 3480
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3481
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    goto :goto_0

    .line 3483
    :cond_1
    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Boolean;

    .line 3484
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 3485
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v1, v2, v0

    .line 3484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3485
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 3487
    goto :goto_0
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 3

    .prologue
    .line 3274
    if-nez p0, :cond_0

    .line 3275
    const/4 v0, 0x0

    .line 3283
    :goto_0
    return-object v0

    .line 3276
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3277
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    goto :goto_0

    .line 3279
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Byte;

    .line 3280
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3281
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3283
    goto :goto_0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 3

    .prologue
    .line 3002
    if-nez p0, :cond_0

    .line 3003
    const/4 v0, 0x0

    .line 3011
    :goto_0
    return-object v0

    .line 3004
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3005
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    goto :goto_0

    .line 3007
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Character;

    .line 3008
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3009
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3008
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3011
    goto :goto_0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 4

    .prologue
    .line 3342
    if-nez p0, :cond_0

    .line 3343
    const/4 v0, 0x0

    .line 3351
    :goto_0
    return-object v0

    .line 3344
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3345
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    goto :goto_0

    .line 3347
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Double;

    .line 3348
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3349
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3348
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3351
    goto :goto_0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 3

    .prologue
    .line 3410
    if-nez p0, :cond_0

    .line 3411
    const/4 v0, 0x0

    .line 3419
    :goto_0
    return-object v0

    .line 3412
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3413
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    goto :goto_0

    .line 3415
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Float;

    .line 3416
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3417
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3419
    goto :goto_0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 3138
    if-nez p0, :cond_0

    .line 3139
    const/4 v0, 0x0

    .line 3147
    :goto_0
    return-object v0

    .line 3140
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3141
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    goto :goto_0

    .line 3143
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 3144
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3145
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3147
    goto :goto_0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 4

    .prologue
    .line 3070
    if-nez p0, :cond_0

    .line 3071
    const/4 v0, 0x0

    .line 3079
    :goto_0
    return-object v0

    .line 3072
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3073
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    goto :goto_0

    .line 3075
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Long;

    .line 3076
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3077
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3076
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3079
    goto :goto_0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 3

    .prologue
    .line 3206
    if-nez p0, :cond_0

    .line 3207
    const/4 v0, 0x0

    .line 3215
    :goto_0
    return-object v0

    .line 3208
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3209
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    goto :goto_0

    .line 3211
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Short;

    .line 3212
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3213
    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3215
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3

    .prologue
    .line 3230
    if-nez p0, :cond_0

    .line 3231
    const/4 v0, 0x0

    .line 3239
    :goto_0
    return-object v0

    .line 3232
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3233
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 3235
    :cond_1
    array-length v0, p0

    new-array v1, v0, [B

    .line 3236
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3237
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 3236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3239
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 3

    .prologue
    .line 3252
    if-nez p0, :cond_0

    .line 3253
    const/4 v0, 0x0

    .line 3262
    :goto_0
    return-object v0

    .line 3254
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3255
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    .line 3257
    :cond_1
    array-length v0, p0

    new-array v2, v0, [B

    .line 3258
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 3259
    aget-object v1, p0, v0

    .line 3260
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-byte v1, v2, v0

    .line 3258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3260
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 3262
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3

    .prologue
    .line 2958
    if-nez p0, :cond_0

    .line 2959
    const/4 v0, 0x0

    .line 2967
    :goto_0
    return-object v0

    .line 2960
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2961
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 2963
    :cond_1
    array-length v0, p0

    new-array v1, v0, [C

    .line 2964
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2965
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 2964
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2967
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 3

    .prologue
    .line 2980
    if-nez p0, :cond_0

    .line 2981
    const/4 v0, 0x0

    .line 2990
    :goto_0
    return-object v0

    .line 2982
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 2983
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    .line 2985
    :cond_1
    array-length v0, p0

    new-array v2, v0, [C

    .line 2986
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 2987
    aget-object v1, p0, v0

    .line 2988
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-char v1, v2, v0

    .line 2986
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2988
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 2990
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4

    .prologue
    .line 3298
    if-nez p0, :cond_0

    .line 3299
    const/4 v0, 0x0

    .line 3307
    :goto_0
    return-object v0

    .line 3300
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3301
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 3303
    :cond_1
    array-length v0, p0

    new-array v1, v0, [D

    .line 3304
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3305
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 3304
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3307
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 5

    .prologue
    .line 3320
    if-nez p0, :cond_0

    .line 3321
    const/4 v0, 0x0

    .line 3330
    :goto_0
    return-object v0

    .line 3322
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3323
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    .line 3325
    :cond_1
    array-length v0, p0

    new-array v1, v0, [D

    .line 3326
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3327
    aget-object v2, p0, v0

    .line 3328
    if-nez v2, :cond_2

    move-wide v2, p1

    :goto_2
    aput-wide v2, v1, v0

    .line 3326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3328
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 3330
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3

    .prologue
    .line 3366
    if-nez p0, :cond_0

    .line 3367
    const/4 v0, 0x0

    .line 3375
    :goto_0
    return-object v0

    .line 3368
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3369
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 3371
    :cond_1
    array-length v0, p0

    new-array v1, v0, [F

    .line 3372
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3373
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 3372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3375
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 3

    .prologue
    .line 3388
    if-nez p0, :cond_0

    .line 3389
    const/4 v0, 0x0

    .line 3398
    :goto_0
    return-object v0

    .line 3390
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3391
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    .line 3393
    :cond_1
    array-length v0, p0

    new-array v2, v0, [F

    .line 3394
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 3395
    aget-object v1, p0, v0

    .line 3396
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput v1, v2, v0

    .line 3394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3396
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 3398
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3

    .prologue
    .line 3094
    if-nez p0, :cond_0

    .line 3095
    const/4 v0, 0x0

    .line 3103
    :goto_0
    return-object v0

    .line 3096
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3097
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 3099
    :cond_1
    array-length v0, p0

    new-array v1, v0, [I

    .line 3100
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3101
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 3100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3103
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 3

    .prologue
    .line 3116
    if-nez p0, :cond_0

    .line 3117
    const/4 v0, 0x0

    .line 3126
    :goto_0
    return-object v0

    .line 3118
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3119
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    .line 3121
    :cond_1
    array-length v0, p0

    new-array v2, v0, [I

    .line 3122
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 3123
    aget-object v1, p0, v0

    .line 3124
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput v1, v2, v0

    .line 3122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3124
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 3126
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4

    .prologue
    .line 3026
    if-nez p0, :cond_0

    .line 3027
    const/4 v0, 0x0

    .line 3035
    :goto_0
    return-object v0

    .line 3028
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3029
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 3031
    :cond_1
    array-length v0, p0

    new-array v1, v0, [J

    .line 3032
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3033
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 3032
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3035
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 5

    .prologue
    .line 3048
    if-nez p0, :cond_0

    .line 3049
    const/4 v0, 0x0

    .line 3058
    :goto_0
    return-object v0

    .line 3050
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3051
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    .line 3053
    :cond_1
    array-length v0, p0

    new-array v1, v0, [J

    .line 3054
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 3055
    aget-object v2, p0, v0

    .line 3056
    if-nez v2, :cond_2

    move-wide v2, p1

    :goto_2
    aput-wide v2, v1, v0

    .line 3054
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3056
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 3058
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3

    .prologue
    .line 3162
    if-nez p0, :cond_0

    .line 3163
    const/4 v0, 0x0

    .line 3171
    :goto_0
    return-object v0

    .line 3164
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3165
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 3167
    :cond_1
    array-length v0, p0

    new-array v1, v0, [S

    .line 3168
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3169
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 3168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3171
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 3

    .prologue
    .line 3184
    if-nez p0, :cond_0

    .line 3185
    const/4 v0, 0x0

    .line 3194
    :goto_0
    return-object v0

    .line 3186
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3187
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    .line 3189
    :cond_1
    array-length v0, p0

    new-array v2, v0, [S

    .line 3190
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 3191
    aget-object v1, p0, v0

    .line 3192
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-short v1, v2, v0

    .line 3190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3192
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 3194
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 3

    .prologue
    .line 3434
    if-nez p0, :cond_0

    .line 3435
    const/4 v0, 0x0

    .line 3443
    :goto_0
    return-object v0

    .line 3436
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3437
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 3439
    :cond_1
    array-length v0, p0

    new-array v1, v0, [Z

    .line 3440
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3441
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 3440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 3443
    goto :goto_0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 3

    .prologue
    .line 3456
    if-nez p0, :cond_0

    .line 3457
    const/4 v0, 0x0

    .line 3466
    :goto_0
    return-object v0

    .line 3458
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 3459
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    .line 3461
    :cond_1
    array-length v0, p0

    new-array v2, v0, [Z

    .line 3462
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 3463
    aget-object v1, p0, v0

    .line 3464
    if-nez v1, :cond_2

    move v1, p1

    :goto_2
    aput-boolean v1, v2, v0

    .line 3462
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3464
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 3466
    goto :goto_0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 178
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
