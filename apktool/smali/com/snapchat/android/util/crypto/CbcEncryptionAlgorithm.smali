.class public final Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CbcEncryptionAlgorithm"


# instance fields
.field private final mIv:[B

.field private final mKey:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->e()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>([B[B)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>([B[B)V

    .line 42
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0
    .param p1    # [B
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mKey:[B

    .line 50
    iput-object p2, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mIv:[B

    .line 51
    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;)Ljava/io/InputStream;
    .locals 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-static {}, Lcom/facebook/crypto/CBCCrypto;->getInstance()Lcom/facebook/crypto/CBCCrypto;

    move-result-object v0

    .line 74
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0}, Lcom/facebook/crypto/CBCCrypto;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    :try_start_0
    sget-object v2, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->ENCRYPT:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    invoke-virtual {v2, p2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mKey:[B

    iget-object v3, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mIv:[B

    invoke-virtual {v0, p1, v2, v3}, Lcom/facebook/crypto/CBCCrypto;->getCipherInputStream(Ljava/io/InputStream;[B[B)Ljava/io/InputStream;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mKey:[B

    iget-object v3, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mIv:[B

    invoke-virtual {v0, p1, v2, v3}, Lcom/facebook/crypto/CBCCrypto;->getDecipherInputStream(Ljava/io/InputStream;[B[B)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/facebook/crypto/exception/CryptoInitializationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/facebook/crypto/exception/KeyChainException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception during native encryption/decryption "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static c()Ljavax/crypto/Cipher;
    .locals 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 59
    const-string v0, "AES/CBC/PKCS5Padding"

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    goto :goto_0
.end method

.method private static d()Z
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()[B
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 216
    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v0, v1, [B

    .line 218
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 219
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([B)[B
    .locals 1
    .param p1    # [B
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 104
    const-string v0, "no dataId provided"

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 7
    .param p1    # [B
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 111
    const/4 v1, 0x0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->ENCRYPT:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a(Ljava/io/InputStream;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 116
    if-eqz v2, :cond_1

    .line 117
    :try_start_1
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 122
    :goto_0
    :try_start_2
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 126
    :goto_1
    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->c()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 128
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mKey:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 129
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mIv:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 130
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 138
    :cond_0
    :goto_2
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during native encryption"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    :try_start_4
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 123
    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 133
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    invoke-static {}, Lej;->a()Lej;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mKey:[B

    invoke-virtual {v3, v4}, Lej;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lej;->a()Lej;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mIv:[B

    invoke-virtual {v3, v4}, Lej;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mIv:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b([B)[B
    .locals 1
    .param p1    # [B
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 144
    const-string v0, "no dataId provided"

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final b([BLjava/lang/String;)[B
    .locals 7
    .param p1    # [B
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 151
    const/4 v1, 0x0

    .line 153
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v2, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;->DECRYPT:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;

    invoke-direct {p0, v0, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a(Ljava/io/InputStream;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm$MODE;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 156
    if-eqz v2, :cond_1

    .line 157
    :try_start_1
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 162
    :goto_0
    :try_start_2
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 166
    :goto_1
    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->c()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 168
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mKey:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 169
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mIv:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 170
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 177
    :cond_0
    :goto_2
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during native decryption"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    :try_start_4
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 163
    goto :goto_1

    .line 162
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 173
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lej;->a()Lej;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mKey:[B

    invoke-virtual {v2, v3}, Lej;->a([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    invoke-static {}, Lej;->a()Lej;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->mIv:[B

    invoke-virtual {v3, v4}, Lej;->a([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
