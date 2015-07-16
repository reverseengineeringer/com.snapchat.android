.class final enum Lcom/snapchat/android/analytics/AnalyticsEvents$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/AnalyticsEvents$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$b;

.field public static final enum SYNC_ALL:Lcom/snapchat/android/analytics/AnalyticsEvents$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    const-string v1, "SYNC_ALL"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$b;->SYNC_ALL:Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$b;->SYNC_ALL:Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$b;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/AnalyticsEvents$b;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/AnalyticsEvents$b;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$b;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/AnalyticsEvents$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$b;

    return-object v0
.end method
