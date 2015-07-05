.class public final enum Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

.field public static final enum ARCHIVED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkable_archived"
    .end annotation
.end field

.field public static final enum FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

.field public static final enum LIVE:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkable_live"
    .end annotation
.end field

.field public static final enum NOT_AVAILABLE:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "not_linkable"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->LIVE:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    .line 19
    new-instance v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    const-string v1, "ARCHIVED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    .line 22
    new-instance v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->NOT_AVAILABLE:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    .line 25
    new-instance v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    sget-object v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->LIVE:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->ARCHIVED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->NOT_AVAILABLE:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->FAILED:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->$VALUES:[Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->$VALUES:[Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult$LinkStatus;

    return-object v0
.end method
