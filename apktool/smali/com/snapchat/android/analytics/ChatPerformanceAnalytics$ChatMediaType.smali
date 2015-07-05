.class public final enum Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/ChatPerformanceAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatMediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

.field public static final enum CHAT_MEDIA:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

.field public static final enum DISCOVER_SHARE_IMAGE:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

.field public static final enum DISCOVER_SHARE_VIDEO:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    const-string v1, "CHAT_MEDIA"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->CHAT_MEDIA:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    .line 26
    new-instance v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    const-string v1, "DISCOVER_SHARE_IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->DISCOVER_SHARE_IMAGE:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    .line 27
    new-instance v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    const-string v1, "DISCOVER_SHARE_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->DISCOVER_SHARE_VIDEO:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    sget-object v1, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->CHAT_MEDIA:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->DISCOVER_SHARE_IMAGE:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->DISCOVER_SHARE_VIDEO:Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->$VALUES:[Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->$VALUES:[Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/ChatPerformanceAnalytics$ChatMediaType;

    return-object v0
.end method
