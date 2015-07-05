.class public Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final mMac:Lcom/facebook/crypto/mac/NativeMac;

.field private final mOutputDelegate:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/mac/NativeMac;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    .line 31
    iput-object p2, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mOutputDelegate:Ljava/io/OutputStream;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0}, Lcom/facebook/crypto/mac/NativeMac;->doFinal()[B

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mOutputDelegate:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mOutputDelegate:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v1}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    throw v0

    .line 45
    :catchall_1
    move-exception v0

    .line 41
    :try_start_2
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mOutputDelegate:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v1}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v1}, Lcom/facebook/crypto/mac/NativeMac;->destroy()V

    throw v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mOutputDelegate:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 51
    return-void
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/facebook/crypto/mac/NativeMac;->update(B)V

    .line 67
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mOutputDelegate:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 68
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->write([BII)V

    .line 56
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mMac:Lcom/facebook/crypto/mac/NativeMac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    .line 61
    iget-object v0, p0, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;->mOutputDelegate:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    return-void
.end method
