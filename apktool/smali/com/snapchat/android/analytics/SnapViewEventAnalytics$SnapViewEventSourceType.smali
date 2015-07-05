.class public final enum Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapViewEventSourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

.field public static final enum CHAT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

.field public static final enum FEED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

.field public static final enum STORY:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    const-string v1, "STORY"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->STORY:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    .line 16
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->FEED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    .line 17
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->CHAT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->STORY:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->FEED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->CHAT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->$VALUES:[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->$VALUES:[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    return-object v0
.end method
