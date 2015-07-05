.class public final enum Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyticsSendSnapSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

.field public static final enum CAMERA:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

.field public static final enum DOUBLE_TAP_DISCOVER:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

.field public static final enum DOUBLE_TAP_FEED:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

.field public static final enum DOUBLE_TAP_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

.field public static final enum IN_CHAT:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

.field public static final enum QUICK_SNAP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->CAMERA:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    const-string v1, "DOUBLE_TAP_FEED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_FEED:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    const-string v1, "DOUBLE_TAP_FRIENDS"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    const-string v1, "IN_CHAT"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->IN_CHAT:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    const-string v1, "QUICK_SNAP"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->QUICK_SNAP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    const-string v1, "DOUBLE_TAP_DISCOVER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_DISCOVER:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    .line 133
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->CAMERA:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_FEED:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->IN_CHAT:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->QUICK_SNAP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->DOUBLE_TAP_DISCOVER:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsSendSnapSource;

    return-object v0
.end method
