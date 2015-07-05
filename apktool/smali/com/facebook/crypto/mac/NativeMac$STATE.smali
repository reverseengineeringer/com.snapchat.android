.class final enum Lcom/facebook/crypto/mac/NativeMac$STATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crypto/mac/NativeMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/crypto/mac/NativeMac$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/crypto/mac/NativeMac$STATE;

.field public static final enum FINALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

.field public static final enum INITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

.field public static final enum UNINITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/facebook/crypto/mac/NativeMac$STATE;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/crypto/mac/NativeMac$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crypto/mac/NativeMac$STATE;->UNINITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    .line 36
    new-instance v0, Lcom/facebook/crypto/mac/NativeMac$STATE;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/crypto/mac/NativeMac$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crypto/mac/NativeMac$STATE;->INITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    .line 37
    new-instance v0, Lcom/facebook/crypto/mac/NativeMac$STATE;

    const-string v1, "FINALIZED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/crypto/mac/NativeMac$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/crypto/mac/NativeMac$STATE;->FINALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/crypto/mac/NativeMac$STATE;

    sget-object v1, Lcom/facebook/crypto/mac/NativeMac$STATE;->UNINITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/crypto/mac/NativeMac$STATE;->INITIALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/crypto/mac/NativeMac$STATE;->FINALIZED:Lcom/facebook/crypto/mac/NativeMac$STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/crypto/mac/NativeMac$STATE;->$VALUES:[Lcom/facebook/crypto/mac/NativeMac$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/crypto/mac/NativeMac$STATE;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/crypto/mac/NativeMac$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/crypto/mac/NativeMac$STATE;

    return-object v0
.end method

.method public static values()[Lcom/facebook/crypto/mac/NativeMac$STATE;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/facebook/crypto/mac/NativeMac$STATE;->$VALUES:[Lcom/facebook/crypto/mac/NativeMac$STATE;

    invoke-virtual {v0}, [Lcom/facebook/crypto/mac/NativeMac$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/crypto/mac/NativeMac$STATE;

    return-object v0
.end method
