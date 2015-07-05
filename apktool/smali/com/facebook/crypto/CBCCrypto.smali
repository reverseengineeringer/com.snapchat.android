.class public final enum Lcom/facebook/crypto/CBCCrypto;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/crypto/CBCCrypto;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/crypto/CBCCrypto;

.field public static final enum INSTANCE:Lcom/facebook/crypto/CBCCrypto;


# instance fields
.field private final mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/facebook/crypto/CBCCrypto;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/crypto/CBCCrypto;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crypto/CBCCrypto;->INSTANCE:Lcom/facebook/crypto/CBCCrypto;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/crypto/CBCCrypto;

    sget-object v1, Lcom/facebook/crypto/CBCCrypto;->INSTANCE:Lcom/facebook/crypto/CBCCrypto;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/crypto/CBCCrypto;->$VALUES:[Lcom/facebook/crypto/CBCCrypto;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    new-instance v0, Lcom/facebook/crypto/util/SystemNativeCryptoLibrary;

    invoke-direct {v0}, Lcom/facebook/crypto/util/SystemNativeCryptoLibrary;-><init>()V

    iput-object v0, p0, Lcom/facebook/crypto/CBCCrypto;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/facebook/crypto/CBCCrypto;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/crypto/CBCCrypto;->INSTANCE:Lcom/facebook/crypto/CBCCrypto;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/crypto/CBCCrypto;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/facebook/crypto/CBCCrypto;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/crypto/CBCCrypto;

    return-object v0
.end method

.method public static values()[Lcom/facebook/crypto/CBCCrypto;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/facebook/crypto/CBCCrypto;->$VALUES:[Lcom/facebook/crypto/CBCCrypto;

    invoke-virtual {v0}, [Lcom/facebook/crypto/CBCCrypto;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/crypto/CBCCrypto;

    return-object v0
.end method


# virtual methods
.method public final getCipherInputStream(Ljava/io/InputStream;[B[B)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/facebook/crypto/cipher/NativeCBCCipher;

    iget-object v1, p0, Lcom/facebook/crypto/CBCCrypto;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeCBCCipher;-><init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V

    .line 57
    invoke-virtual {v0, p2, p3}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->encryptInit([B[B)V

    .line 59
    new-instance v1, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;

    invoke-direct {v1, p1, v0}, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeCBCCipher;)V

    return-object v1
.end method

.method public final getDecipherInputStream(Ljava/io/InputStream;[B[B)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/crypto/cipher/NativeCBCCipher;

    iget-object v1, p0, Lcom/facebook/crypto/CBCCrypto;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-direct {v0, v1}, Lcom/facebook/crypto/cipher/NativeCBCCipher;-><init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V

    .line 46
    invoke-virtual {v0, p2, p3}, Lcom/facebook/crypto/cipher/NativeCBCCipher;->decryptInit([B[B)V

    .line 48
    new-instance v1, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;

    invoke-direct {v1, p1, v0}, Lcom/facebook/crypto/streams/NativeCBCCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/facebook/crypto/cipher/NativeCBCCipher;)V

    return-object v1
.end method

.method public final isAvailable()Z
    .locals 1

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/facebook/crypto/CBCCrypto;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-interface {v0}, Lcom/facebook/crypto/util/NativeCryptoLibrary;->ensureCryptoLoaded()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
