.class Lcom/facebook/crypto/GCMCipherHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

.field private final mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/keychain/KeyChain;Lcom/facebook/crypto/util/NativeCryptoLibrary;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/crypto/GCMCipherHelper;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    .line 27
    iput-object p2, p0, Lcom/facebook/crypto/GCMCipherHelper;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    .line 28
    return-void
.end method


# virtual methods
.method public computeCipherAad(Lcom/facebook/crypto/cipher/NativeGCMCipher;BB[B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    new-array v0, v2, [B

    aput-byte p2, v0, v3

    .line 88
    new-array v1, v2, [B

    aput-byte p3, v1, v3

    .line 89
    invoke-virtual {p1, v0, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->updateAad([BI)V

    .line 90
    invoke-virtual {p1, v1, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->updateAad([BI)V

    .line 91
    array-length v0, p4

    invoke-virtual {p1, p4, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->updateAad([BI)V

    .line 92
    return-void
.end method

.method public getCipherInputStream(Ljava/io/InputStream;Lcom/facebook/crypto/Entity;BB)Ljava/io/InputStream;
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    if-ne p3, v1, :cond_0

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected crypto version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/crypto/util/Assertions;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 55
    if-ne p4, v1, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected cipher ID "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/crypto/util/Assertions;->checkArgumentForIO(ZLjava/lang/String;)V

    .line 58
    new-array v0, v5, [B

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 60
    if-eq v1, v5, :cond_2

    .line 61
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not enough bytes for iv: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v1, v2

    .line 55
    goto :goto_1

    .line 64
    :cond_2
    new-instance v1, Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v2, p0, Lcom/facebook/crypto/GCMCipherHelper;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-direct {v1, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;-><init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V

    .line 65
    iget-object v2, p0, Lcom/facebook/crypto/GCMCipherHelper;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v2}, Lcom/facebook/crypto/keychain/KeyChain;->getCipherKey()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->decryptInit([B[B)V

    .line 67
    invoke-virtual {p2}, Lcom/facebook/crypto/Entity;->getBytes()[B

    move-result-object v0

    .line 68
    invoke-virtual {p0, v1, p3, p4, v0}, Lcom/facebook/crypto/GCMCipherHelper;->computeCipherAad(Lcom/facebook/crypto/cipher/NativeGCMCipher;BB[B)V

    .line 69
    new-instance v0, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;

    invoke-direct {v0, p1, v1}, Lcom/facebook/crypto/streams/NativeGCMCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;)V

    return-object v0
.end method

.method public getCipherMetaDataLength()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x1e

    return v0
.end method

.method public getCipherOutputStream(Ljava/io/OutputStream;Lcom/facebook/crypto/Entity;)Ljava/io/OutputStream;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 34
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 36
    iget-object v0, p0, Lcom/facebook/crypto/GCMCipherHelper;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v0}, Lcom/facebook/crypto/keychain/KeyChain;->getNewIV()[B

    move-result-object v0

    .line 37
    new-instance v1, Lcom/facebook/crypto/cipher/NativeGCMCipher;

    iget-object v2, p0, Lcom/facebook/crypto/GCMCipherHelper;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-direct {v1, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;-><init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V

    .line 38
    iget-object v2, p0, Lcom/facebook/crypto/GCMCipherHelper;->mKeyChain:Lcom/facebook/crypto/keychain/KeyChain;

    invoke-interface {v2}, Lcom/facebook/crypto/keychain/KeyChain;->getCipherKey()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->encryptInit([B[B)V

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 41
    invoke-virtual {p2}, Lcom/facebook/crypto/Entity;->getBytes()[B

    move-result-object v0

    .line 42
    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/facebook/crypto/GCMCipherHelper;->computeCipherAad(Lcom/facebook/crypto/cipher/NativeGCMCipher;BB[B)V

    .line 43
    new-instance v0, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;

    invoke-direct {v0, p1, v1}, Lcom/facebook/crypto/streams/NativeGCMCipherOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/crypto/cipher/NativeGCMCipher;)V

    return-object v0
.end method
