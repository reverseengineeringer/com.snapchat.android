.class public final Lem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lem$1;
    }
.end annotation


# static fields
.field static final a:[B
    .annotation build Lcf;
    .end annotation
.end field

.field static final b:[I
    .annotation build Lcf;
    .end annotation
.end field

.field static final c:[I
    .annotation build Lcf;
    .end annotation
.end field

.field static d:[I
    .annotation build Lcf;
    .end annotation
.end field

.field private static final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 169
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lem;->a:[B

    .line 172
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lem;->b:[I

    .line 176
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lem;->c:[I

    .line 502
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lem;->e:[I

    .line 550
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lem;->d:[I

    return-void

    .line 169
    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 172
    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 176
    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    .line 502
    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    .line 550
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method public static a(IILjava/math/RoundingMode;)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "/ by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    div-int v2, p0, p1

    .line 284
    mul-int v3, p1, v2

    sub-int v3, p0, v3

    .line 286
    if-nez v3, :cond_1

    move v0, v2

    .line 331
    :goto_0
    return v0

    .line 297
    :cond_1
    xor-int v4, p0, p1

    shr-int/lit8 v4, v4, 0x1f

    or-int/lit8 v5, v4, 0x1

    .line 299
    sget-object v4, Lem$1;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 329
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 301
    :pswitch_0
    if-nez v3, :cond_3

    :goto_1
    invoke-static {v0}, Len;->a(Z)V

    :pswitch_1
    move v0, v1

    .line 331
    :cond_2
    :goto_2
    :pswitch_2
    if-eqz v0, :cond_9

    add-int v0, v2, v5

    goto :goto_0

    :cond_3
    move v0, v1

    .line 301
    goto :goto_1

    .line 310
    :pswitch_3
    if-gtz v5, :cond_2

    move v0, v1

    goto :goto_2

    .line 313
    :pswitch_4
    if-ltz v5, :cond_2

    move v0, v1

    goto :goto_2

    .line 318
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 319
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v3, v4

    .line 322
    if-nez v3, :cond_8

    .line 323
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v3, :cond_4

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v3, :cond_6

    move v4, v0

    :goto_3
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_7

    move v3, v0

    :goto_4
    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v4, v1

    goto :goto_3

    :cond_7
    move v3, v1

    goto :goto_4

    .line 325
    :cond_8
    if-gtz v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 331
    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static a(ILjava/math/RoundingMode;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    const-string v2, "x"

    if-gtz p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    sget-object v2, Lem$1;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :pswitch_0
    if-lez p0, :cond_1

    move v2, v0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_2

    :goto_1
    and-int/2addr v0, v2

    invoke-static {v0}, Len;->a(Z)V

    .line 95
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    .line 109
    :goto_2
    return v0

    :cond_1
    move v2, v1

    .line 91
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 99
    :pswitch_2
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    goto :goto_2

    .line 105
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 106
    const v1, -0x4afb0ccd

    ushr-int/2addr v1, v0

    .line 108
    rsub-int/lit8 v0, v0, 0x1f

    .line 109
    sub-int/2addr v1, p0

    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    ushr-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    goto :goto_2

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
