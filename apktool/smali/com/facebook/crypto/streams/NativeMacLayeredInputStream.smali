.class public Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field private static final MAC_DOES_NOT_MATCH:Ljava/lang/String; = "Mac does not match"


# instance fields
.field private final mInputDelegate:Lcom/facebook/crypto/streams/TailInputStream;

.field private final mMac:Lcom/facebook/crypto/mac/NativeMac;

.field private mMacChecked:Z


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/mac/NativeMac;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mMacChecked:Z

    .line 34
    iput-object p1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    .line 35
    new-instance v0, Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {p1}, Lcom/facebook/crypto/mac/NativeMac;->getMacLength()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/facebook/crypto/streams/TailInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mInputDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    .line 36
    return-void
.end method

.method private constantTimeEquals([B[B)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 124
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    move v2, v1

    .line 128
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 129
    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_2
    if-nez v2, :cond_0

    .line 132
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private ensureMacValid()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mMacChecked:Z

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mMacChecked:Z

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0}, Lcom/facebook/crypto/mac/NativeMac;->doFinal()[B

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mInputDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v1}, Lcom/facebook/crypto/streams/TailInputStream;->getTail()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->constantTimeEquals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mac does not match"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v1}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mInputDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v0}, Lcom/facebook/crypto/streams/TailInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->ensureMacValid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mInputDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v0}, Lcom/facebook/crypto/streams/TailInputStream;->close()V

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mInputDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v1}, Lcom/facebook/crypto/streams/TailInputStream;->close()V

    throw v0
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-array v2, v4, [B

    .line 65
    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->read([BII)I

    move-result v1

    .line 66
    :goto_0
    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 70
    :cond_0
    if-ne v1, v0, :cond_1

    .line 73
    :goto_1
    return v0

    :cond_1
    aget-byte v0, v2, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_1
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 84
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mInputDelegate:Lcom/facebook/crypto/streams/TailInputStream;

    invoke-virtual {v1, p1, p2, p3}, Lcom/facebook/crypto/streams/TailInputStream;->read([BII)I

    move-result v1

    .line 85
    if-ne v1, v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->ensureMacValid()V

    .line 94
    :goto_0
    return v0

    .line 90
    :cond_0
    if-lez v1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    :cond_1
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 115
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
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
