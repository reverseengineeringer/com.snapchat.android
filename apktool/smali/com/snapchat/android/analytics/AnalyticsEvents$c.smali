.class final enum Lcom/snapchat/android/analytics/AnalyticsEvents$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/AnalyticsEvents$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$c;

.field public static final enum FROM_NOTIFICATION:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

.field public static final enum NEWLY_RECEIVED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

.field public static final enum NEWLY_RECEIVED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

.field public static final enum UNVIEWED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

.field public static final enum UNVIEWED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    const-string v1, "FROM_NOTIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->FROM_NOTIFICATION:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    .line 68
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    const-string v1, "NEWLY_RECEIVED_CHATS_COUNT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->NEWLY_RECEIVED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    .line 69
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    const-string v1, "NEWLY_RECEIVED_SNAPS_COUNT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->NEWLY_RECEIVED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    .line 70
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    const-string v1, "UNVIEWED_CHATS_COUNT"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->UNVIEWED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    .line 71
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    const-string v1, "UNVIEWED_SNAPS_COUNT"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/AnalyticsEvents$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->UNVIEWED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->FROM_NOTIFICATION:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->NEWLY_RECEIVED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->NEWLY_RECEIVED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->UNVIEWED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->UNVIEWED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$c;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/AnalyticsEvents$c;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/AnalyticsEvents$c;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$c;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/AnalyticsEvents$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$c;

    return-object v0
.end method
