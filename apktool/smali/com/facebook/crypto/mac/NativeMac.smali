.class public Lcom/facebook/crypto/mac/NativeMac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lbb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crypto/mac/NativeMac$STATE;
    }
.end annotation


# static fields
.field public static final FAILURE:Ljava/lang/String; = "Failure"

.field public static final KEY_LENGTH:I = 0x40

.field private static final MAC_ALREADY_INIT:Ljava/lang/String; = "Mac has already been initialized"

.field private static final MAC_NOT_FINALIZED:Ljava/lang/String; = "Mac has not been finalized"

.field private static final MAC_NOT_INIT:Ljava/lang/String; = "Mac has not been initialized"


# instance fields
.field private mCtxPtr:I
    .annotation build Lbb;
    .end annotation
.end field

.field private mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

.field private final mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;


# direct methods
.method public constructor <init>(Lcom/facebook/crypto/util/NativeCryptoLibrary;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/facebook/crypto/mac/NativeMac$STATE;->UNINITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

    .line 41
    iput-object p1, p0, Lcom/facebook/crypto/mac/NativeMac;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    .line 42
    return-void
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeDoFinal()[B
.end method

.method private static native nativeFailure()I
.end method

.method private native nativeGetMacLength()I
.end method

.method private native nativeInit([BI)I
.end method

.method private native nativeUpdate(B)I
.end method

.method private native nativeUpdate([BII)I
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

    sget-object v1, Lcom/facebook/crypto/mac/NativeMac$STATE;->FINALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mac has not been finalized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/facebook/crypto/mac/NativeMac;->nativeDestroy()I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/mac/NativeMac;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lcom/facebook/crypto/mac/NativeMac$STATE;->UNINITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

    .line 84
    return-void
.end method

.method public doFinal()[B
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

    sget-object v1, Lcom/facebook/crypto/mac/NativeMac$STATE;->INITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mac has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 69
    sget-object v0, Lcom/facebook/crypto/mac/NativeMac$STATE;->FINALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

    .line 70
    invoke-direct {p0}, Lcom/facebook/crypto/mac/NativeMac;->nativeDoFinal()[B

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_1
    return-object v0
.end method

.method public getMacLength()I
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/facebook/crypto/mac/NativeMac;->nativeGetMacLength()I

    move-result v0

    return v0
.end method

.method public init([BI)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

    sget-object v1, Lcom/facebook/crypto/mac/NativeMac$STATE;->UNINITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mac has already been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mNativeCryptoLibrary:Lcom/facebook/crypto/util/NativeCryptoLibrary;

    invoke-interface {v0}, Lcom/facebook/crypto/util/NativeCryptoLibrary;->ensureCryptoLoaded()V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/facebook/crypto/mac/NativeMac;->nativeInit([BI)I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/mac/NativeMac;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 48
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_1
    sget-object v0, Lcom/facebook/crypto/mac/NativeMac$STATE;->INITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    iput-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

    .line 51
    return-void
.end method

.method public update(B)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

    sget-object v1, Lcom/facebook/crypto/mac/NativeMac$STATE;->INITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mac has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/crypto/mac/NativeMac;->nativeUpdate(B)I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/mac/NativeMac;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public update([BII)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/crypto/mac/NativeMac;->mCurrentState:Lcom/facebook/crypto/mac/NativeMac$STATE;

    sget-object v1, Lcom/facebook/crypto/mac/NativeMac$STATE;->INITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mac has not been initialized"

    invoke-static {v0, v1}, Lcom/facebook/crypto/util/Assertions;->checkState(ZLjava/lang/String;)V

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/crypto/mac/NativeMac;->nativeUpdate([BII)I

    move-result v0

    invoke-static {}, Lcom/facebook/crypto/mac/NativeMac;->nativeFailure()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method
