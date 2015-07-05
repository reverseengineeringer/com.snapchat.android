.class public Lorg/apache/commons/codec/binary/Hex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# instance fields
.field private final charsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 48
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    .line 53
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    return-void

    .line 48
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 53
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/commons/codec/binary/Hex;->charsetName:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lorg/apache/commons/codec/binary/Hex;->charsetName:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public static decodeHex([C)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 68
    array-length v2, p0

    .line 70
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Odd number of characters."

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    shr-int/lit8 v1, v2, 0x1

    new-array v3, v1, [B

    move v1, v0

    .line 77
    :goto_0
    if-ge v0, v2, :cond_1

    .line 78
    aget-char v4, p0, v0

    invoke-static {v4, v0}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    aget-char v5, p0, v0

    invoke-static {v5, v0}, Lorg/apache/commons/codec/binary/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_1
    return-object v3
.end method

.method public static encodeHex([B)[C
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .locals 1

    .prologue
    .line 114
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    goto :goto_0
.end method

.method protected static encodeHex([B[C)[C
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 130
    array-length v2, p0

    .line 131
    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    .line 133
    :goto_0
    if-ge v1, v2, :cond_0

    .line 134
    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v3, v0

    .line 135
    add-int/lit8 v0, v4, 0x1

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v3, v4

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-object v3
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method protected static toDigit(CI)I
    .locals 3

    .prologue
    .line 165
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 166
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal hexadecimal character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 228
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 229
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    check-cast p1, [C

    check-cast p1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decode([B)[B
    .locals 3

    .prologue
    .line 207
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 274
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 275
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    check-cast p1, [B

    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 278
    :catch_1
    move-exception v0

    .line 279
    new-instance v1, Lorg/apache/commons/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode([B)[B
    .locals 2

    .prologue
    .line 253
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/commons/codec/binary/Hex;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/codec/binary/Hex;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
