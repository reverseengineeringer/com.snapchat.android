.class public Lorg/apache/commons/lang3/EnumUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CANNOT_STORE_S_S_VALUES_IN_S_BITS:Ljava/lang/String; = "Cannot store %s %s values in %s bits"

.field private static final ENUM_CLASS_MUST_BE_DEFINED:Ljava/lang/String; = "EnumClass must be defined."

.field private static final NULL_ELEMENTS_NOT_PERMITTED:Ljava/lang/String; = "null elements not permitted"

.field private static final S_DOES_NOT_SEEM_TO_BE_AN_ENUM_TYPE:Ljava/lang/String; = "%s does not seem to be an Enum type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static asEnum(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 307
    const-string v0, "EnumClass must be defined."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    const-string v1, "%s does not seem to be an Enum type"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 309
    return-object p0
.end method

.method private static checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 290
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 291
    array-length v1, v0

    if-gt v1, v6, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Cannot store %s %s values in %s bits"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v1, v4, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 294
    return-object p0

    :cond_0
    move v1, v3

    .line 291
    goto :goto_0
.end method

.method public static generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)J"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    .line 144
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-wide/16 v0, 0x0

    .line 146
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v4, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 147
    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    const-string v7, "null elements not permitted"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int v0, v2, v0

    int-to-long v0, v0

    or-long/2addr v0, v4

    move-wide v4, v0

    .line 149
    goto :goto_0

    :cond_0
    move v1, v3

    .line 147
    goto :goto_1

    .line 150
    :cond_1
    return-wide v4
.end method

.method public static varargs generateBitVector(Ljava/lang/Class;[Ljava/lang/Enum;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)J"
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static generateBitVectors(Ljava/lang/Class;Ljava/lang/Iterable;)[J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)[J"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 171
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 173
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 174
    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    const-string v6, "null elements not permitted"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v1, v3

    .line 174
    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [J

    .line 178
    invoke-virtual {v4}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    div-int/lit8 v4, v4, 0x40

    aget-wide v6, v1, v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    shl-int v0, v2, v0

    int-to-long v8, v0

    or-long/2addr v6, v8

    aput-wide v6, v1, v4

    goto :goto_2

    .line 181
    :cond_2
    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 182
    return-object v1
.end method

.method public static varargs generateBitVectors(Ljava/lang/Class;[Ljava/lang/Enum;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)[J"
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 225
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 226
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 227
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x40

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [J

    .line 229
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 230
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    div-int/lit8 v3, v3, 0x40

    aget-wide v4, v2, v3

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    shl-int v0, v6, v0

    int-to-long v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 233
    return-object v2
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 114
    if-nez p1, :cond_0

    .line 120
    :goto_0
    return-object v0

    .line 118
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 61
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-object v2
.end method

.method public static isValidEnum(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return v0

    .line 95
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static processBitVector(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;J)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 251
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;[J)",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 269
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v3

    .line 270
    invoke-static {v3}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 271
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 272
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    div-int/lit8 v6, v6, 0x40

    .line 273
    array-length v7, v3

    if-ge v6, v7, :cond_0

    aget-wide v6, v3, v6

    const/4 v8, 0x1

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    rem-int/lit8 v9, v9, 0x40

    shl-int/2addr v8, v9

    int-to-long v8, v8

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 274
    invoke-virtual {v2, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    return-object v2
.end method
