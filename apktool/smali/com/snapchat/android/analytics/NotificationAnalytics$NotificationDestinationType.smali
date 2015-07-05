.class public final enum Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/NotificationAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationDestinationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

.field public static final enum ADD_FRIENDS:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

.field public static final enum CHAT:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

.field public static final enum FEED:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

.field public static final enum MY_FRIENDS:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->CHAT:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    .line 18
    new-instance v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->FEED:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    .line 19
    new-instance v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    const-string v1, "MY_FRIENDS"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->MY_FRIENDS:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    .line 20
    new-instance v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    const-string v1, "ADD_FRIENDS"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->ADD_FRIENDS:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->CHAT:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->FEED:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->MY_FRIENDS:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->ADD_FRIENDS:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->$VALUES:[Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->$VALUES:[Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    return-object v0
.end method
