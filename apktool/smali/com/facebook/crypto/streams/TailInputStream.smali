.class public Lcom/facebook/crypto/streams/TailInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private mCount:I

.field private mEOF:Z

.field private final mTail:[B

.field private final mTailTength:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    .line 31
    iput p2, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTailTength:I

    .line 32
    return-void
.end method

.method private extractTail([BIII)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    iget v0, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTailTength:I

    sub-int/2addr v0, p3

    .line 123
    sub-int v1, p2, v0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, p4

    .line 124
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 126
    if-lez v0, :cond_1

    .line 127
    if-lez p3, :cond_0

    .line 128
    iget-object v2, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    iget-object v3, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    invoke-static {v2, v4, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    invoke-static {p1, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    :cond_1
    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/crypto/streams/TailInputStream;->mCount:I

    .line 134
    sub-int v0, v1, p4

    return v0
.end method

.method private readTail([BII)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 72
    iget v1, p0, Lcom/facebook/crypto/streams/TailInputStream;->mCount:I

    if-lt p3, v1, :cond_2

    .line 73
    iget v1, p0, Lcom/facebook/crypto/streams/TailInputStream;->mCount:I

    sub-int v1, p3, v1

    .line 74
    iget-object v3, p0, Lcom/facebook/crypto/streams/TailInputStream;->in:Ljava/io/InputStream;

    iget v4, p0, Lcom/facebook/crypto/streams/TailInputStream;->mCount:I

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 75
    if-ne v1, v2, :cond_0

    .line 76
    iput-boolean v6, p0, Lcom/facebook/crypto/streams/TailInputStream;->mEOF:Z

    move v0, v2

    .line 107
    :goto_0
    return v0

    .line 80
    :cond_0
    iget v3, p0, Lcom/facebook/crypto/streams/TailInputStream;->mCount:I

    if-lez v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    iget v4, p0, Lcom/facebook/crypto/streams/TailInputStream;->mCount:I

    invoke-static {v3, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    :cond_1
    iget v3, p0, Lcom/facebook/crypto/streams/TailInputStream;->mCount:I

    add-int/2addr v3, v1

    .line 85
    iget-object v1, p0, Lcom/facebook/crypto/streams/TailInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    iget v5, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTailTength:I

    invoke-virtual {v1, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 87
    if-ne v1, v2, :cond_4

    .line 88
    iput-boolean v6, p0, Lcom/facebook/crypto/streams/TailInputStream;->mEOF:Z

    .line 91
    :goto_1
    invoke-direct {p0, p1, v3, v0, p2}, Lcom/facebook/crypto/streams/TailInputStream;->extractTail([BIII)I

    move-result v0

    goto :goto_0

    .line 94
    :cond_2
    iget v1, p0, Lcom/facebook/crypto/streams/TailInputStream;->mCount:I

    sub-int/2addr v1, p3

    .line 95
    iget-object v3, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    invoke-static {v3, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v3, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    iget-object v4, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    invoke-static {v3, p3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v3, p0, Lcom/facebook/crypto/streams/TailInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    iget v5, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTailTength:I

    sub-int/2addr v5, v1

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 100
    if-ne v3, v2, :cond_3

    .line 102
    iget-object v3, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    iget-object v4, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    invoke-static {v3, v0, v4, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v1, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iput-boolean v6, p0, Lcom/facebook/crypto/streams/TailInputStream;->mEOF:Z

    move v0, v2

    .line 105
    goto :goto_0

    .line 107
    :cond_3
    add-int v0, v3, v1

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/facebook/crypto/streams/TailInputStream;->extractTail([BIII)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getTail()[B
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/facebook/crypto/streams/TailInputStream;->mCount:I

    iget v1, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTailTength:I

    if-eq v0, v1, :cond_0

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough tail data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/facebook/crypto/streams/TailInputStream;->mTail:[B

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-array v2, v4, [B

    .line 37
    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/crypto/streams/TailInputStream;->read([BII)I

    move-result v1

    .line 39
    :goto_0
    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/crypto/streams/TailInputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 42
    :cond_0
    if-ne v1, v0, :cond_1

    .line 45
    :goto_1
    return v0

    :cond_1
    aget-byte v0, v2, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_1
.end method

.method public read([BII)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-boolean v1, p0, Lcom/facebook/crypto/streams/TailInputStream;->mEOF:Z

    if-eqz v1, :cond_1

    .line 52
    const/4 v0, -0x1

    .line 64
    :cond_0
    return v0

    .line 55
    :cond_1
    if-eqz p3, :cond_0

    .line 60
    :goto_0
    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/crypto/streams/TailInputStream;->readTail([BII)I

    move-result v0

    goto :goto_0
.end method
