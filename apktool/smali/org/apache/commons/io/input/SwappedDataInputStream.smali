.class public Lorg/apache/commons/io/input/SwappedDataInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/io/input/SwappedDataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public readChar()C
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/io/input/SwappedDataInputStream;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedDouble(Ljava/io/InputStream;)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedFloat(Ljava/io/InputStream;)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/SwappedDataInputStream;->readFully([BII)V

    .line 120
    return-void
.end method

.method public readFully([BII)V
    .locals 3

    .prologue
    .line 135
    move v0, p3

    .line 137
    :goto_0
    if-lez v0, :cond_1

    .line 139
    add-int v1, p2, p3

    sub-int/2addr v1, v0

    .line 140
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/SwappedDataInputStream;->read([BII)I

    move-result v1

    .line 142
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 144
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 147
    :cond_0
    sub-int/2addr v0, v1

    .line 148
    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported: readLine()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLong()J
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedShort(Ljava/io/InputStream;)S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported: readUTF()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedUnsignedShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public skipBytes(I)I
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/commons/io/input/SwappedDataInputStream;->in:Ljava/io/InputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
