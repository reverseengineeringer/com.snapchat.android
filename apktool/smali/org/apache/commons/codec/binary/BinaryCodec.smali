.class public Lorg/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field private static final BITS:[I

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 44
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 210
    :goto_0
    return-object v0

    .line 198
    :cond_0
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v4, v0, [B

    .line 203
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_1
    array-length v3, v4

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 204
    :goto_2
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 205
    sub-int v5, v0, v3

    aget-byte v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    .line 206
    aget-byte v5, v4, v1

    sget-object v6, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 204
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 203
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 210
    goto :goto_0
.end method

.method public static fromAscii([C)[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 167
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 183
    :goto_0
    return-object v0

    .line 171
    :cond_1
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v4, v0, [B

    .line 176
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_1
    array-length v3, v4

    if-ge v1, v3, :cond_4

    move v3, v2

    .line 177
    :goto_2
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 178
    sub-int v5, v0, v3

    aget-char v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_2

    .line 179
    aget-byte v5, v4, v1

    sget-object v6, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 177
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 176
    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 183
    goto :goto_0
.end method

.method private static isEmpty([B)Z
    .locals 1

    .prologue
    .line 221
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

.method public static toAsciiBytes([B)[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 252
    :goto_0
    return-object v0

    .line 238
    :cond_0
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v4, v0, [B

    .line 243
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 244
    :goto_2
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 245
    aget-byte v5, p0, v1

    sget-object v6, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v3

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 246
    sub-int v5, v0, v3

    const/16 v6, 0x30

    aput-byte v6, v4, v5

    .line 244
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 248
    :cond_1
    sub-int v5, v0, v3

    const/16 v6, 0x31

    aput-byte v6, v4, v5

    goto :goto_3

    .line 243
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 252
    goto :goto_0
.end method

.method public static toAsciiChars([B)[C
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 282
    :goto_0
    return-object v0

    .line 268
    :cond_0
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v4, v0, [C

    .line 273
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 274
    :goto_2
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 275
    aget-byte v5, p0, v1

    sget-object v6, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v3

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 276
    sub-int v5, v0, v3

    const/16 v6, 0x30

    aput-char v6, v4, v5

    .line 274
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 278
    :cond_1
    sub-int v5, v0, v3

    const/16 v6, 0x31

    aput-char v6, v4, v5

    goto :goto_3

    .line 273
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 282
    goto :goto_0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 122
    :goto_0
    return-object v0

    .line 115
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    instance-of v0, p1, [C

    if-eqz v0, :cond_2

    .line 119
    check-cast p1, [C

    check-cast p1, [C

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 122
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_3
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .locals 1

    .prologue
    .line 136
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 95
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 1

    .prologue
    .line 81
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 149
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0
.end method
