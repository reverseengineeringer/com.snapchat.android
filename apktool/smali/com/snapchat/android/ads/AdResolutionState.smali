.class public final enum Lcom/snapchat/android/ads/AdResolutionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ads/AdResolutionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ads/AdResolutionState;

.field public static final enum AD_CONSUMED:Lcom/snapchat/android/ads/AdResolutionState;

.field public static final enum ERROR:Lcom/snapchat/android/ads/AdResolutionState;

.field public static final enum NOT_NEEDED:Lcom/snapchat/android/ads/AdResolutionState;

.field public static final enum NO_FILL:Lcom/snapchat/android/ads/AdResolutionState;

.field public static final enum RESOLVING:Lcom/snapchat/android/ads/AdResolutionState;

.field public static final enum SUCCESS:Lcom/snapchat/android/ads/AdResolutionState;

.field public static final enum TIMEOUT:Lcom/snapchat/android/ads/AdResolutionState;

.field public static final enum UNRESOLVED:Lcom/snapchat/android/ads/AdResolutionState;


# instance fields
.field private final mIsError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/snapchat/android/ads/AdResolutionState;

    const-string v1, "UNRESOLVED"

    invoke-direct {v0, v1, v3, v3}, Lcom/snapchat/android/ads/AdResolutionState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/snapchat/android/ads/AdResolutionState;->UNRESOLVED:Lcom/snapchat/android/ads/AdResolutionState;

    .line 14
    new-instance v0, Lcom/snapchat/android/ads/AdResolutionState;

    const-string v1, "AD_CONSUMED"

    invoke-direct {v0, v1, v4, v3}, Lcom/snapchat/android/ads/AdResolutionState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/snapchat/android/ads/AdResolutionState;->AD_CONSUMED:Lcom/snapchat/android/ads/AdResolutionState;

    .line 18
    new-instance v0, Lcom/snapchat/android/ads/AdResolutionState;

    const-string v1, "RESOLVING"

    invoke-direct {v0, v1, v5, v3}, Lcom/snapchat/android/ads/AdResolutionState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/snapchat/android/ads/AdResolutionState;->RESOLVING:Lcom/snapchat/android/ads/AdResolutionState;

    .line 22
    new-instance v0, Lcom/snapchat/android/ads/AdResolutionState;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v6, v4}, Lcom/snapchat/android/ads/AdResolutionState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/snapchat/android/ads/AdResolutionState;->NO_FILL:Lcom/snapchat/android/ads/AdResolutionState;

    .line 26
    new-instance v0, Lcom/snapchat/android/ads/AdResolutionState;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v7, v4}, Lcom/snapchat/android/ads/AdResolutionState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/snapchat/android/ads/AdResolutionState;->TIMEOUT:Lcom/snapchat/android/ads/AdResolutionState;

    .line 30
    new-instance v0, Lcom/snapchat/android/ads/AdResolutionState;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/snapchat/android/ads/AdResolutionState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/snapchat/android/ads/AdResolutionState;->ERROR:Lcom/snapchat/android/ads/AdResolutionState;

    .line 34
    new-instance v0, Lcom/snapchat/android/ads/AdResolutionState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ads/AdResolutionState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/snapchat/android/ads/AdResolutionState;->SUCCESS:Lcom/snapchat/android/ads/AdResolutionState;

    .line 38
    new-instance v0, Lcom/snapchat/android/ads/AdResolutionState;

    const-string v1, "NOT_NEEDED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ads/AdResolutionState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/snapchat/android/ads/AdResolutionState;->NOT_NEEDED:Lcom/snapchat/android/ads/AdResolutionState;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snapchat/android/ads/AdResolutionState;

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->UNRESOLVED:Lcom/snapchat/android/ads/AdResolutionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->AD_CONSUMED:Lcom/snapchat/android/ads/AdResolutionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->RESOLVING:Lcom/snapchat/android/ads/AdResolutionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->NO_FILL:Lcom/snapchat/android/ads/AdResolutionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->TIMEOUT:Lcom/snapchat/android/ads/AdResolutionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/ads/AdResolutionState;->ERROR:Lcom/snapchat/android/ads/AdResolutionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/ads/AdResolutionState;->SUCCESS:Lcom/snapchat/android/ads/AdResolutionState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/ads/AdResolutionState;->NOT_NEEDED:Lcom/snapchat/android/ads/AdResolutionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/ads/AdResolutionState;->$VALUES:[Lcom/snapchat/android/ads/AdResolutionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-boolean p3, p0, Lcom/snapchat/android/ads/AdResolutionState;->mIsError:Z

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ads/AdResolutionState;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/ads/AdResolutionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ads/AdResolutionState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ads/AdResolutionState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/ads/AdResolutionState;->$VALUES:[Lcom/snapchat/android/ads/AdResolutionState;

    invoke-virtual {v0}, [Lcom/snapchat/android/ads/AdResolutionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ads/AdResolutionState;

    return-object v0
.end method


# virtual methods
.method public final isError()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/snapchat/android/ads/AdResolutionState;->mIsError:Z

    return v0
.end method
