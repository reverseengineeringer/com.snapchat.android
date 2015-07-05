.class public Lorg/apache/commons/lang3/text/WordUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 285
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 286
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    .line 300
    :cond_0
    :goto_1
    return-object p0

    .line 285
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v3

    .line 291
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 292
    aget-char v5, v4, v0

    .line 293
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    .line 291
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 295
    :cond_4
    if-eqz v2, :cond_3

    .line 296
    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    aput-char v2, v4, v0

    move v2, v1

    .line 297
    goto :goto_3

    .line 300
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_1
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 355
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 359
    :cond_0
    :goto_1
    return-object p0

    .line 354
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 536
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    :goto_0
    return-object p0

    .line 539
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_1

    .line 540
    const-string p0, ""

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 543
    div-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [C

    move v4, v2

    move v0, v1

    move v3, v2

    .line 546
    :goto_1
    if-ge v4, v5, :cond_4

    .line 547
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 549
    invoke-static {v7, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v8

    if-eqz v8, :cond_3

    move v0, v1

    .line 546
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 551
    :cond_3
    if-eqz v0, :cond_2

    .line 552
    add-int/lit8 v0, v3, 0x1

    aput-char v7, v6, v3

    move v3, v0

    move v0, v2

    .line 553
    goto :goto_2

    .line 558
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v6, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method private static isDelimiter(C[C)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 570
    if-nez p1, :cond_1

    .line 571
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    .line 578
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-char v3, p1, v1

    .line 574
    if-ne p0, v3, :cond_2

    .line 575
    const/4 v0, 0x1

    goto :goto_0

    .line 573
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 452
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    :goto_0
    return-object p0

    .line 455
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 457
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 459
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 460
    aget-char v4, v3, v0

    .line 461
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 462
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v3, v0

    move v2, v1

    .line 459
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 465
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v3, v0

    move v2, v1

    .line 466
    goto :goto_2

    .line 467
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 468
    if-eqz v2, :cond_3

    .line 469
    invoke-static {v4}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    aput-char v2, v3, v0

    move v2, v1

    .line 470
    goto :goto_2

    .line 472
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v3, v0

    goto :goto_2

    .line 475
    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    goto :goto_2

    .line 478
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 410
    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 411
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    .line 425
    :cond_0
    :goto_1
    return-object p0

    .line 410
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v3

    .line 416
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 417
    aget-char v5, v4, v0

    .line 418
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    .line 416
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 420
    :cond_4
    if-eqz v2, :cond_3

    .line 421
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v4, v0

    move v2, v1

    .line 422
    goto :goto_3

    .line 425
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_1
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 173
    if-nez p0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    .line 176
    :cond_0
    if-nez p2, :cond_1

    .line 177
    sget-object p2, Lorg/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 179
    :cond_1
    if-gtz p1, :cond_2

    .line 180
    const/4 p1, 0x1

    .line 182
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 183
    const/4 v0, 0x0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 186
    :goto_1
    sub-int v3, v1, v0

    if-le v3, p1, :cond_7

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 189
    goto :goto_1

    .line 191
    :cond_3
    add-int v3, p1, v0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 193
    if-lt v3, v0, :cond_4

    .line 195
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 201
    :cond_4
    if-eqz p3, :cond_5

    .line 203
    add-int v3, p1, v0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/2addr v0, p1

    goto :goto_1

    .line 208
    :cond_5
    add-int v3, p1, v0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 209
    if-ltz v3, :cond_6

    .line 210
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 214
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 219
    goto :goto_1

    .line 222
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
