.class public Lcom/facebook/crypto/cipher/NativeGCMCipher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lbb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;
    }
.end annotation


# static fields
.field private static final CIPHER_ALREADY_INIT:Ljava/lang/String; = "Cipher has already been initialized"

.field private static final CIPHER_NOT_FINALIZED:Ljava/lang/String; = "Cipher has not been finalized"

.field private static final CIPHER_NOT_INIT:Ljava/lang/String; = "Cipher has not been initialized"

.field public static final FAILURE:Ljava/lang/String; = "Failure"

.field public static final IV_LENGTH:I = 0xc

.field public static final KEY_LENGTH:I = 0x10

.field public static final TAG_LENGTH:I = 0x10


# instance fields
.field private mCtxPtr:I
    .annotation build Lbb;
    .end annotation
.end field

.field private mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

.field private final mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 48
    iput-object p1, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    .line 49
    return-void
.end method

.method private ensureInFinalizedState()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 138
    :goto_0
    const-string v1, "Cipher has not been finalized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 139
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureInInitalizedState()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 131
    :goto_0
    const-string v1, "Cipher has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 132
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeDecryptFinal([BI)I
.end method

.method private native nativeDecryptInit([B[B)I
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeEncryptFinal([BI)I
.end method

.method private native nativeEncryptInit([B[B)I
.end method

.method private static native nativeFailure()I
.end method

.method private native nativeGetCipherBlockSize()I
.end method

.method private native nativeUpdate([BII[B)I
.end method

.method private native nativeUpdateAad([BI)I
.end method


# virtual methods
.method public decryptFinal([BI)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cipher has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 106
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDecryptFinal([BI)I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 108
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string v1, "The message could not be decrypted successfully.It has either been tampered with or the wrong resource is being decrypted."

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method

.method public decryptInit([B[B)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cipher has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-interface {v0}, Lcom/facebook/crypto/util/NativeCryptoLibrary;->ensureCryptoLoaded()V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDecryptInit([B[B)I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 65
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string v1, "decryptInit"

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_1
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->DECRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 68
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->ensureInFinalizedState()V

    .line 116
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeDestroy()I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 117
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string v1, "destroy"

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 120
    return-void
.end method

.method public encryptFinal([BI)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v3, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cipher has not been initialized"

    invoke-static {v0, v3}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 97
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_FINALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeEncryptFinal([BI)I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 99
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string v3, "encryptFinal: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-direct {p0, v3, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 96
    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method public encryptInit([B[B)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cipher has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-interface {v0}, Lcom/facebook/crypto/util/NativeCryptoLibrary;->ensureCryptoLoaded()V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeEncryptInit([B[B)I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 56
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string v1, "encryptInit"

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    sget-object v0, Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;->ENCRYPT_INITIALIZED:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeGCMCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeGCMCipher$STATE;

    .line 59
    return-void
.end method

.method public getCipherBlockSize()I
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->ensureInInitalizedState()V

    .line 124
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeGetCipherBlockSize()I

    move-result v0

    return v0
.end method

.method public update([BII[B)I
    .locals 6

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->ensureInInitalizedState()V

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeUpdate([BII[B)I

    move-result v0

    .line 74
    if-gez v0, :cond_0

    .line 75
    new-instance v1, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string v2, "update: Offset = %d; DataLen = %d; Result = %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    return v0
.end method

.method public updateAad([BI)V
    .locals 5

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->ensureInInitalizedState()V

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->nativeUpdateAad([BI)I

    move-result v0

    if-gez v0, :cond_0

    .line 89
    new-instance v0, Lcom/facebook/crypto/cipher/NativeGCMCipherException;

    const-string v1, "updateAAd: DataLen = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/facebook/crypto/cipher/NativeGCMCipher;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeGCMCipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    return-void
.end method
