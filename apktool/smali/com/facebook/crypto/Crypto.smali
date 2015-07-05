.class public Lcom/facebook/crypto/Crypto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mGCMCipherHelper:Lcom/facebook/crypto/GCMCipherHelper;

.field private final mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

.field private final mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/keychain/KeyChain;Lcom/facebook/crypto/util/NativeCryptoLibrary;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/crypto/Crypto;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    .line 36
    iput-object p2, p0, Lcom/facebook/crypto/Crypto;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    .line 37
    new-instance v0, Lcom/facebook/crypto/GCMCipherHelper;

    iget-object v1, p0, Lcom/facebook/crypto/Crypto;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    iget-object v2, p0, Lcom/facebook/crypto/Crypto;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-direct {v0, v1, v2}, Lcom/facebook/crypto/GCMCipherHelper;-><init>(Lcom/facebook/crypto/keychain/KeyChain;Lcom/facebook/crypto/util/NativeCryptoLibrary;)V

    iput-object v0, p0, Lcom/facebook/crypto/Crypto;->mGCMCipherHelper:Lcom/facebook/crypto/GCMCipherHelper;

    .line 38
    return-void
.end method

.method private static computeMacAad(Lcom/facebook/crypto/mac/NativeMac;BB[B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    new-array v0, v3, [B

    aput-byte p1, v0, v2

    .line 202
    new-array v1, v3, [B

    aput-byte p2, v1, v2

    .line 203
    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    .line 204
    invoke-virtual {p0, v1, v2, v3}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    .line 205
    array-length v0, p3

    invoke-virtual {p0, p3, v2, v0}, Lcom/facebook/crypto/mac/NativeMac;->update([BII)V

    .line 206
    return-void
.end method


# virtual methods
.method public decrypt([BLcom/facebook/crypto/Entity;)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 122
    aget-byte v0, p1, v5

    .line 123
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    .line 125
    array-length v2, p1

    .line 126
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 127
    iget-object v4, p0, Lcom/facebook/crypto/Crypto;->mGCMCipherHelper:Lcom/facebook/crypto/GCMCipherHelper;

    invoke-virtual {v4, v3, p2, v0, v1}, Lcom/facebook/crypto/GCMCipherHelper;->getCipherInputStream(Ljava/io/InputStream;Lcom/facebook/crypto/Entity;BB)Ljava/io/InputStream;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/facebook/crypto/Crypto;->mGCMCipherHelper:Lcom/facebook/crypto/GCMCipherHelper;

    invoke-virtual {v1}, Lcom/facebook/crypto/GCMCipherHelper;->getCipherMetaDataLength()I

    move-result v1

    sub-int v1, v2, v1

    .line 130
    new-instance v2, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;

    invoke-direct {v2, v1}, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;-><init>(I)V

    .line 131
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 133
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 134
    invoke-virtual {v2, v1, v5, v3}, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v2}, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BLcom/facebook/crypto/Entity;)[B
    .locals 2

    .prologue
    .line 102
    array-length v0, p1

    iget-object v1, p0, Lcom/facebook/crypto/Crypto;->mGCMCipherHelper:Lcom/facebook/crypto/GCMCipherHelper;

    invoke-virtual {v1}, Lcom/facebook/crypto/GCMCipherHelper;->getCipherMetaDataLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    new-instance v1, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;

    invoke-direct {v1, v0}, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;-><init>(I)V

    .line 104
    iget-object v0, p0, Lcom/facebook/crypto/Crypto;->mGCMCipherHelper:Lcom/facebook/crypto/GCMCipherHelper;

    invoke-virtual {v0, v1, p2}, Lcom/facebook/crypto/GCMCipherHelper;->getCipherOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/Entity;)Ljava/io/OutputStream;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 106
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 107
    invoke-virtual {v1}, Lcom/facebook/crypto/streams/FixedSizeByteArrayOutputStream;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getGCMCipherInputStream(Ljava/io/InputStream;Lcom/facebook/crypto/Entity;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 83
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 85
    iget-object v2, p0, Lcom/facebook/crypto/Crypto;->mGCMCipherHelper:Lcom/facebook/crypto/GCMCipherHelper;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/facebook/crypto/GCMCipherHelper;->getCipherInputStream(Ljava/io/InputStream;Lcom/facebook/crypto/Entity;BB)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getGCMCipherOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/Entity;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/crypto/Crypto;->mGCMCipherHelper:Lcom/facebook/crypto/GCMCipherHelper;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/crypto/GCMCipherHelper;->getCipherOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/Entity;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getMacInputStream(Ljava/io/InputStream;Lcom/facebook/crypto/Entity;)Ljava/io/InputStream;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 180
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v3, v0

    .line 181
    if-ne v3, v1, :cond_1

    move v0, v1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected mac version "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/facebook/crypto/util/Assertions;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 185
    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected mac ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/crypto/util/Assertions;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 188
    new-instance v0, Lcom/facebook/crypto/mac/NativeMac;

    iget-object v2, p0, Lcom/facebook/crypto/Crypto;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-direct {v0, v2}, Lcom/facebook/crypto/mac/NativeMac;-><init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V

    .line 189
    iget-object v2, p0, Lcom/facebook/crypto/Crypto;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v2}, Lcom/facebook/crypto/keychain/KeyChain;->getMacKey()[B

    move-result-object v2

    .line 190
    array-length v4, v2

    invoke-virtual {v0, v2, v4}, Lcom/facebook/crypto/mac/NativeMac;->init([BI)V

    .line 192
    invoke-virtual {p2}, Lcom/facebook/crypto/Entity;->getBytes()[B

    move-result-object v2

    .line 193
    invoke-static {v0, v3, v1, v2}, Lcom/facebook/crypto/Crypto;->computeMacAad(Lcom/facebook/crypto/mac/NativeMac;BB[B)V

    .line 194
    new-instance v1, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;

    invoke-direct {v1, v0, p1}, Lcom/facebook/crypto/streams/NativeMacLayeredInputStream;-><init>(Lcom/facebook/crypto/mac/NativeMac;Ljava/io/InputStream;)V

    return-object v1

    :cond_1
    move v0, v2

    .line 181
    goto :goto_0
.end method

.method public getMacOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/Entity;)Ljava/io/OutputStream;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 154
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 155
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 157
    new-instance v0, Lcom/facebook/crypto/mac/NativeMac;

    iget-object v1, p0, Lcom/facebook/crypto/Crypto;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-direct {v0, v1}, Lcom/facebook/crypto/mac/NativeMac;-><init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V

    .line 158
    iget-object v1, p0, Lcom/facebook/crypto/Crypto;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v1}, Lcom/facebook/crypto/keychain/KeyChain;->getMacKey()[B

    move-result-object v1

    .line 159
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/crypto/mac/NativeMac;->init([BI)V

    .line 160
    invoke-virtual {p2}, Lcom/facebook/crypto/Entity;->getBytes()[B

    move-result-object v1

    .line 161
    invoke-static {v0, v3, v3, v1}, Lcom/facebook/crypto/Crypto;->computeMacAad(Lcom/facebook/crypto/mac/NativeMac;BB[B)V

    .line 162
    new-instance v1, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;

    invoke-direct {v1, v0, p1}, Lcom/facebook/crypto/streams/NativeMacLayeredOutputStream;-><init>(Lcom/facebook/crypto/mac/NativeMac;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/Crypto;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-interface {v0}, Lcom/facebook/crypto/util/NativeCryptoLibrary;->ensureCryptoLoaded()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
