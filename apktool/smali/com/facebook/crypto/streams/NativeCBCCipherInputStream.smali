.class public Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final UPDATE_BUFFER_SIZE:I = 0x400


# instance fields
.field private final mCipher:Lcom/facebook/crypto/cipher/NativeCBCCipher;

.field private mDidFinal:Z

.field private final mUpdateBuffer:[B

.field private mUpdateRemainder:I

.field private mUpdateRemainderOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeCBCCipher;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    iput-boolean v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mDidFinal:Z

    .line 25
    iput-object p2, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeCBCCipher;

    .line 26
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeCBCCipher;

    invoke-virtual {v0}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->getCipherBlockSize()I

    move-result v0

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateBuffer:[B

    .line 27
    iput v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainder:I

    .line 28
    return-void
.end method


# virtual methods
.method public mark(I)V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 42
    new-array v0, v2, [B

    .line 43
    invoke-virtual {p0, v0, v3, v2}, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->read([BII)I

    move-result v1

    .line 44
    if-ne v1, v2, :cond_0

    .line 45
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 47
    :cond_0
    aget-byte v0, v0, v3

    return v0
.end method

.method public read([B)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 52
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->read([BII)I

    move-result v1

    .line 53
    if-ne v1, v0, :cond_0

    .line 61
    :goto_0
    return v0

    :cond_0
    move v2, v1

    .line 57
    :goto_1
    if-eq v2, v0, :cond_1

    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 58
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->read([BII)I

    move-result v2

    .line 59
    add-int/2addr v1, v2

    goto :goto_1

    .line 61
    :cond_1
    if-eq v2, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 9

    .prologue
    const/16 v8, 0x400

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 66
    iget v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainder:I

    if-lez v1, :cond_1

    .line 67
    iget v0, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainder:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateBuffer:[B

    iget v2, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainderOffset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainder:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainder:I

    .line 71
    iget v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainderOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainderOffset:I

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mDidFinal:Z

    if-nez v1, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->in:Ljava/io/InputStream;

    const/16 v3, 0x400

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 86
    if-ne v1, v0, :cond_2

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeCBCCipher;

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateBuffer:[B

    invoke-virtual {v0, v1}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->doFinal([B)I

    move-result v1

    .line 89
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 90
    iget-object v2, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mDidFinal:Z

    .line 93
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainder:I

    .line 94
    iput v0, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainderOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeCBCCipher;

    invoke-virtual {v1}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeCBCCipher;

    invoke-virtual {v1}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->destroy()V

    throw v0

    .line 101
    :cond_2
    div-int/lit16 v5, v1, 0x400

    .line 102
    rem-int/lit16 v6, v1, 0x400

    move v1, v2

    move v0, p2

    move v4, p2

    .line 104
    :goto_1
    if-ge v1, v5, :cond_3

    .line 105
    iget-object v3, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeCBCCipher;

    iget-object v7, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateBuffer:[B

    invoke-virtual {v3, p1, v4, v8, v7}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->update([BII[B)I

    move-result v3

    .line 107
    iget-object v7, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateBuffer:[B

    invoke-static {v7, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    add-int/2addr v3, v0

    .line 109
    add-int/lit16 v4, v4, 0x400

    .line 104
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    .line 112
    :cond_3
    if-lez v6, :cond_4

    .line 113
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeCBCCipher;

    iget-object v3, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateBuffer:[B

    invoke-virtual {v1, p1, v4, v6, v3}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->update([BII[B)I

    move-result v1

    .line 115
    sub-int v3, v0, p2

    sub-int v3, p3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 116
    iget-object v4, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateBuffer:[B

    invoke-static {v4, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    add-int/2addr v0, v3

    .line 118
    sub-int/2addr v1, v3

    iput v1, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainder:I

    .line 119
    iput v3, p0, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;->mUpdateRemainderOffset:I

    .line 122
    :cond_4
    sub-int/2addr v0, p2

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    goto :goto_0
.end method
