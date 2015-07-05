.class public Lorg/apache/commons/io/HexDump;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EOL:Ljava/lang/String;

.field private static final _hexcodes:[C

.field private static final _shifts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    .line 122
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/io/HexDump;->_shifts:[I

    return-void

    .line 122
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 127
    :array_1
    .array-data 4
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 155
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 156
    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    add-int/lit8 v3, v0, 0x6

    aget v2, v2, v3

    shr-int v2, p1, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-object p0
.end method

.method private static dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    .line 140
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 141
    sget-object v1, Lorg/apache/commons/io/HexDump;->_hexcodes:[C

    sget-object v2, Lorg/apache/commons/io/HexDump;->_shifts:[I

    aget v2, v2, v0

    shr-long v2, p1, v2

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object p0
.end method

.method public static dump([BJLjava/io/OutputStream;I)V
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/16 v3, 0x10

    const/4 v5, 0x0

    .line 76
    if-ltz p4, :cond_0

    array-length v0, p0

    if-lt p4, v0, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into array of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    if-nez p3, :cond_2

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot write to nullstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    int-to-long v0, p4

    add-long/2addr v0, p1

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v2, 0x4a

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    :goto_0
    array-length v2, p0

    if-ge p4, v2, :cond_8

    .line 88
    array-length v2, p0

    sub-int/2addr v2, p4

    .line 90
    if-le v2, v3, :cond_3

    move v2, v3

    .line 93
    :cond_3
    invoke-static {v6, v0, v1}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    .line 94
    :goto_1
    if-ge v4, v3, :cond_5

    .line 95
    if-ge v4, v2, :cond_4

    .line 96
    add-int v7, v4, p4

    aget-byte v7, p0, v7

    invoke-static {v6, v7}, Lorg/apache/commons/io/HexDump;->dump(Ljava/lang/StringBuilder;B)Ljava/lang/StringBuilder;

    .line 100
    :goto_2
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 98
    :cond_4
    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move v4, v5

    .line 102
    :goto_3
    if-ge v4, v2, :cond_7

    .line 103
    add-int v7, v4, p4

    aget-byte v7, p0, v7

    if-lt v7, v10, :cond_6

    add-int v7, v4, p4

    aget-byte v7, p0, v7

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_6

    .line 104
    add-int v7, v4, p4

    aget-byte v7, p0, v7

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 106
    :cond_6
    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 109
    :cond_7
    sget-object v4, Lorg/apache/commons/io/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 111
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 112
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 113
    int-to-long v8, v2

    add-long/2addr v0, v8

    .line 87
    add-int/lit8 p4, p4, 0x10

    goto :goto_0

    .line 115
    :cond_8
    return-void
.end method
