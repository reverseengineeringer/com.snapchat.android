.class public Lcom/facebook/crypto/cipher/NativeCBCCipher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lbb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;
    }
.end annotation


# static fields
.field private static final CIPHER_ALREADY_INIT:Ljava/lang/String; = "Cipher has already been initialized"

.field private static final CIPHER_NOT_FINALIZED:Ljava/lang/String; = "Cipher has not been finalized"

.field private static final CIPHER_NOT_INIT:Ljava/lang/String; = "Cipher has not been initialized"

.field public static final FAILURE:Ljava/lang/String; = "Failure"


# instance fields
.field private mCtxPtr:I
    .annotation build Lbb;
    .end annotation
.end field

.field private mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

.field private final mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    .line 33
    iput-object p1, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    .line 34
    return-void
.end method

.method private ensureInFinalizedState()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->FINALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 105
    :goto_0
    const-string v1, "Cipher has not been finalized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 106
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureInInitalizedState()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->INITIALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 99
    :goto_0
    const-string v1, "Cipher has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 100
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeDecryptInit([B[B)I
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeEncryptInit([B[B)I
.end method

.method private static native nativeFailure()I
.end method

.method private native nativeFinal([B)I
.end method

.method private native nativeGetCipherBlockSize()I
.end method

.method private native nativeUpdate([BII[B)I
.end method


# virtual methods
.method public decryptInit([B[B)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cipher has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-interface {v0}, Lcom/facebook/crypto/util/NativeCryptoLibrary;->ensureCryptoLoaded()V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->nativeDecryptInit([B[B)I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 50
    new-instance v0, Lcom/facebook/crypto/cipher/NativeCBCCipherException;

    const-string v1, "decryptInit"

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeCBCCipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->INITIALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    .line 53
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->ensureInFinalizedState()V

    .line 85
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->nativeDestroy()I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 86
    new-instance v0, Lcom/facebook/crypto/cipher/NativeCBCCipherException;

    const-string v1, "destroy"

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeCBCCipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    sget-object v0, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    .line 89
    return-void
.end method

.method public doFinal([B)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    sget-object v3, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->INITIALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cipher has not been initialized"

    invoke-static {v0, v3}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 72
    sget-object v0, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->FINALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    .line 73
    invoke-direct {p0, p1}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->nativeFinal([B)I

    move-result v0

    .line 74
    if-gez v0, :cond_1

    .line 75
    new-instance v3, Lcom/facebook/crypto/cipher/NativeCBCCipherException;

    const-string v4, "doFinal read %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-direct {p0, v4, v1}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/crypto/cipher/NativeCBCCipherException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move v0, v2

    .line 71
    goto :goto_0

    .line 80
    :cond_1
    return v0
.end method

.method public encryptInit([B[B)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    sget-object v1, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->UNINITIALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cipher has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-interface {v0}, Lcom/facebook/crypto/util/NativeCryptoLibrary;->ensureCryptoLoaded()V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->nativeEncryptInit([B[B)I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 41
    new-instance v0, Lcom/facebook/crypto/cipher/NativeCBCCipherException;

    const-string v1, "encryptInit"

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeCBCCipherException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_1
    sget-object v0, Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;->INITIALIZED:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/cipher/NativeCBCCipher;->mCurrentState:Lcom/facebook/crypto/cipher/NativeCBCCipher$STATE;

    .line 44
    return-void
.end method

.method public getCipherBlockSize()I
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->ensureInInitalizedState()V

    .line 93
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->nativeGetCipherBlockSize()I

    move-result v0

    return v0
.end method

.method public update([BII[B)I
    .locals 6

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->ensureInInitalizedState()V

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->nativeUpdate([BII[B)I

    move-result v0

    .line 59
    if-gez v0, :cond_0

    .line 60
    new-instance v1, Lcom/facebook/crypto/cipher/NativeCBCCipherException;

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

    invoke-direct {p0, v2, v3}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/crypto/cipher/NativeCBCCipherException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    return v0
.end method
