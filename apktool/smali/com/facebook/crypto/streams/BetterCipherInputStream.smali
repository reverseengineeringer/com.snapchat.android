.class public Lcom/facebook/crypto/streams/BetterCipherInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final UPDATE_BUFFER_SIZE:I = 0x100


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mUpdateBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    iput-object p2, p0, Lcom/facebook/crypto/streams/BetterCipherInputStream;->mCipher:Ljavax/crypto/Cipher;

    .line 38
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/crypto/streams/BetterCipherInputStream;->mUpdateBuffer:[B

    .line 39
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 8

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 43
    iget-object v2, p0, Lcom/facebook/crypto/streams/BetterCipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 44
    if-ne v2, v0, :cond_0

    .line 71
    :goto_0
    return v0

    .line 48
    :cond_0
    div-int/lit16 v4, v2, 0x100

    .line 49
    rem-int/lit16 v5, v2, 0x100

    move v0, p2

    move v3, p2

    .line 55
    :goto_1
    if-ge v1, v4, :cond_1

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/facebook/crypto/streams/BetterCipherInputStream;->mCipher:Ljavax/crypto/Cipher;

    const/16 v6, 0x100

    iget-object v7, p0, Lcom/facebook/crypto/streams/BetterCipherInputStream;->mUpdateBuffer:[B

    invoke-virtual {v2, p1, v3, v6, v7}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v2

    .line 57
    iget-object v6, p0, Lcom/facebook/crypto/streams/BetterCipherInputStream;->mUpdateBuffer:[B

    const/4 v7, 0x0

    invoke-static {v6, v7, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    add-int/2addr v2, v0

    .line 59
    add-int/lit16 v3, v3, 0x100

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 62
    :cond_1
    if-lez v5, :cond_2

    .line 63
    iget-object v1, p0, Lcom/facebook/crypto/streams/BetterCipherInputStream;->mCipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/facebook/crypto/streams/BetterCipherInputStream;->mUpdateBuffer:[B

    invoke-virtual {v1, p1, v3, v5, v2}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v1

    .line 64
    iget-object v2, p0, Lcom/facebook/crypto/streams/BetterCipherInputStream;->mUpdateBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    add-int/2addr v0, v1

    .line 71
    :cond_2
    :goto_2
    sub-int/2addr v0, p2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2
.end method
