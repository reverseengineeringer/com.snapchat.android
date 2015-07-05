.class public Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;->count:I

    if-eq v0, v1, :cond_0

    .line 26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Size supplied is too small"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;->buf:[B

    return-object v0
.end method
