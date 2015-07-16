.class public final enum Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyticsParent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

.field public static final enum ADD_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

.field public static final enum REGISTER_ADD_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

.field public static final enum SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    const-string v1, "REGISTER_ADD_FRIENDS"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->REGISTER_ADD_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    const-string v1, "ADD_FRIENDS"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->ADD_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    const-string v1, "SEND"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->REGISTER_ADD_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->ADD_FRIENDS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    return-object v0
.end method
