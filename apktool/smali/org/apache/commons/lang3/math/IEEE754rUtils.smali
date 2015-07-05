.class public Lorg/apache/commons/lang3/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .locals 2

    .prologue
    .line 221
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    return-wide p2

    .line 224
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide p2, p0

    .line 225
    goto :goto_0

    .line 227
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    goto :goto_0
.end method

.method public static max(DDD)D
    .locals 2

    .prologue
    .line 208
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .locals 6

    .prologue
    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 165
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 166
    aget-wide v4, p0, v0

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v2

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_2
    return-wide v2
.end method

.method public static max(FF)F
    .locals 1

    .prologue
    .line 255
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return p1

    .line 258
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, p0

    .line 259
    goto :goto_0

    .line 261
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1

    .prologue
    .line 242
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .locals 3

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 190
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 191
    aget v2, p0, v0

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v1

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    return v1
.end method

.method public static min(DD)D
    .locals 2

    .prologue
    .line 103
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-wide p2

    .line 106
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide p2, p0

    .line 107
    goto :goto_0

    .line 109
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    goto :goto_0
.end method

.method public static min(DDD)D
    .locals 2

    .prologue
    .line 90
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .locals 6

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 47
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 48
    aget-wide v4, p0, v0

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v2

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_2
    return-wide v2
.end method

.method public static min(FF)F
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return p1

    .line 140
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, p0

    .line 141
    goto :goto_0

    .line 143
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1

    .prologue
    .line 124
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .locals 3

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 72
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 73
    aget v2, p0, v0

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v1

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    return v1
.end method
