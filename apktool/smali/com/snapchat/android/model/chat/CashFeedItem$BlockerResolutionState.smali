.class public final enum Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/CashFeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockerResolutionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

.field public static final enum INITIATED:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

.field public static final enum INITIATING:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

.field public static final enum PRE_CONFIRMATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

.field public static final enum PRE_INITIATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    const-string v1, "PRE_CONFIRMATION"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->PRE_CONFIRMATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 42
    new-instance v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    const-string v1, "PRE_INITIATION"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->PRE_INITIATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 43
    new-instance v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    const-string v1, "INITIATING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATING:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 44
    new-instance v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    const-string v1, "INITIATED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATED:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->PRE_CONFIRMATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->PRE_INITIATION:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATING:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->INITIATED:Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->$VALUES:[Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->$VALUES:[Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/chat/CashFeedItem$BlockerResolutionState;

    return-object v0
.end method
