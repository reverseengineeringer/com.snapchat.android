.class public Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final UPDATE_BUFFER_SIZE:I = 0x100


# instance fields
.field private final mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

.field private final mCipherDelegate:Lcom/facebook/crypto/streams/TailInputStream;

.field private mTagChecked:Z

.field private final mUpdateBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mTagChecked:Z

    .line 40
    new-instance v0, Lcom/facebook/crypto/streams/TailInputStream;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lcom/facebook/crypto/streams/TailInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipherDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    .line 41
    iput-object p2, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    .line 42
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->getCipherBlockSize()I

    move-result v0

    add-int/lit16 v0, v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mUpdateBuffer:[B

    .line 43
    return-void
.end method

.method private ensureTagValid()V
    .locals 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mTagChecked:Z

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mTagChecked:Z

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipherDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v1}, Lcom/facebook/crypto/streams/TailInputStream;->getTail()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->decryptFinal([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    invoke-virtual {v1}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->destroy()V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipherDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v0}, Lcom/facebook/crypto/streams/TailInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->ensureTagValid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipherDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v0}, Lcom/facebook/crypto/streams/TailInputStream;->close()V

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipherDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v1}, Lcom/facebook/crypto/streams/TailInputStream;->close()V

    throw v0
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 82
    array-length v1, p1

    add-int v3, p2, p3

    if-ge v1, v3, :cond_0

    .line 83
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int v1, p2, p3

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipherDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/crypto/streams/TailInputStream;->read([BII)I

    move-result v1

    .line 88
    if-ne v1, v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->ensureTagValid()V

    .line 114
    :goto_0
    return v0

    .line 95
    :cond_1
    div-int/lit16 v5, v1, 0x100

    .line 96
    rem-int/lit16 v6, v1, 0x100

    move v1, v2

    move v0, p2

    move v4, p2

    .line 101
    :goto_1
    if-ge v1, v5, :cond_2

    .line 102
    iget-object v3, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    const/16 v7, 0x100

    iget-object v8, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mUpdateBuffer:[B

    invoke-virtual {v3, p1, v4, v7, v8}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->update([BII[B)I

    move-result v3

    .line 103
    iget-object v7, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mUpdateBuffer:[B

    invoke-static {v7, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    add-int/2addr v3, v0

    .line 105
    add-int/lit16 v4, v4, 0x100

    .line 101
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    .line 108
    :cond_2
    if-lez v6, :cond_3

    .line 109
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mCipher:Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v3, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mUpdateBuffer:[B

    invoke-virtual {v1, p1, v4, v6, v3}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->update([BII[B)I

    move-result v1

    .line 110
    iget-object v3, p0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;->mUpdateBuffer:[B

    invoke-static {v3, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    add-int/2addr v0, v1

    .line 114
    :cond_3
    sub-int/2addr v0, p2

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
