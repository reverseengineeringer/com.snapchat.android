.class public Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final UPDATE_BUFFER_SIZE:I = 0x100


# instance fields
.field private final mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

.field private final mCipherDelegate:Ljava/io/OutputStream;

.field private final mTag:[B

.field private final mUpdateBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTag:[B

    .line 40
    iput-object p1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    .line 41
    iput-object p2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 42
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->getCipherBlockSize()I

    move-result v0

    add-int/lit16 v0, v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTag:[B

    iget-object v2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTag:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->encryptFinal([BI)V

    .line 49
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mTag:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 56
    :catchall_1
    move-exception v0

    .line 52
    :try_start_2
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v1}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 54
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 62
    return-void
.end method

.method public write(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-array v0, v3, [B

    .line 94
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 95
    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->write([BII)V

    .line 96
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->write([BII)V

    .line 67
    return-void
.end method

.method public write([BII)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 72
    array-length v0, p1

    add-int v2, p2, p3

    if-ge v0, v2, :cond_0

    .line 73
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int v1, p2, p3

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 76
    :cond_0
    div-int/lit16 v2, p3, 0x100

    .line 77
    rem-int/lit16 v3, p3, 0x100

    move v0, v1

    .line 79
    :goto_0
    if-ge v0, v2, :cond_1

    .line 80
    iget-object v4, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    const/16 v5, 0x100

    iget-object v6, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    invoke-virtual {v4, p1, p2, v5, v6}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->update([BII[B)I

    move-result v4

    .line 81
    iget-object v5, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    invoke-virtual {v5, v6, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    add-int/lit16 p2, p2, 0x100

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    if-lez v3, :cond_2

    .line 86
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    invoke-virtual {v0, p1, p2, v3, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->update([BII[B)I

    move-result v0

    .line 87
    iget-object v2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mCipherDelegate:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;->mUpdateBuffer:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    :cond_2
    return-void
.end method
