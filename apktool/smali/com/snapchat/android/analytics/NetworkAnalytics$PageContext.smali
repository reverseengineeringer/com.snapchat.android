.class public final enum Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/NetworkAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

.field public static final enum FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

.field public static final enum STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    .line 94
    new-instance v0, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    const-string v1, "STORY"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->$VALUES:[Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->$VALUES:[Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    return-object v0
.end method
