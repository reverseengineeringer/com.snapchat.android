.class public Lorg/apache/commons/lang3/RandomUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static nextBytes(I)[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Count cannot be negative."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-array v0, p0, [B

    .line 66
    sget-object v1, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 67
    return-object v0

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0
.end method

.method public static nextDouble(DD)D
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    cmpl-double v0, p2, p0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    const-wide/16 v4, 0x0

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    cmpl-double v0, p0, p2

    if-nez v0, :cond_2

    .line 146
    :goto_2
    return-wide p0

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    :cond_1
    move v1, v2

    .line 140
    goto :goto_1

    .line 146
    :cond_2
    sub-double v0, p2, p0

    sget-object v2, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr p0, v0

    goto :goto_2
.end method

.method public static nextFloat(FF)F
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    cmpl-float v0, p1, p0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 168
    cmpl-float v0, p0, p1

    if-nez v0, :cond_2

    .line 172
    :goto_2
    return p0

    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    :cond_1
    move v1, v2

    .line 166
    goto :goto_1

    .line 172
    :cond_2
    sub-float v0, p1, p0

    sget-object v1, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    goto :goto_2
.end method

.method public static nextInt(II)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-lt p1, p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    if-ltz p0, :cond_1

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    if-ne p0, p1, :cond_2

    .line 93
    :goto_2
    return p0

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v1, v2

    .line 87
    goto :goto_1

    .line 93
    :cond_2
    sget-object v0, Lorg/apache/commons/lang3/RandomUtils;->RANDOM:Ljava/util/Random;

    sub-int v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p0, v0

    goto :goto_2
.end method

.method public static nextLong(JJ)J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    cmp-long v0, p2, p0

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Start value must be smaller or equal to end value."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 113
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "Both range values must be non-negative."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    cmp-long v0, p0, p2

    if-nez v0, :cond_2

    .line 119
    :goto_2
    return-wide p0

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    :cond_1
    move v1, v2

    .line 113
    goto :goto_1

    .line 119
    :cond_2
    long-to-double v0, p0

    long-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/RandomUtils;->nextDouble(DD)D

    move-result-wide v0

    double-to-long p0, v0

    goto :goto_2
.end method
