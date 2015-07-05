.class public Lorg/apache/commons/lang3/CharSetUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static varargs containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v2

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-char v5, v3, v1

    .line 113
    invoke-virtual {v2, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static varargs count(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    return v0

    .line 144
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v2

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-char v5, v3, v1

    .line 147
    invoke-virtual {v2, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 146
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static deepEmpty([Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 242
    if-eqz p0, :cond_1

    .line 243
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 244
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    :goto_1
    return v0

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static varargs delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 182
    :cond_2
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 222
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v1

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 225
    array-length v4, v3

    .line 226
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    .line 227
    aget-char v5, v3, v0

    invoke-virtual {v1, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v5

    if-ne v5, p2, :cond_0

    .line 228
    aget-char v5, v3, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 65
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object p0

    .line 68
    :cond_1
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 71
    array-length v6, v5

    .line 72
    const/16 v1, 0x20

    .line 73
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v2, v6, :cond_4

    .line 75
    aget-char v1, v5, v2

    .line 77
    if-ne v1, v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v7

    if-nez v7, :cond_3

    .line 78
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 74
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 83
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
