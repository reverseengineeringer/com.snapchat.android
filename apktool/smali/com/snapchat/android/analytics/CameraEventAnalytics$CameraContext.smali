.class public final enum Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/CameraEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

.field public static final enum BACKGROUND:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

.field public static final enum BACK_PRESSED:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

.field public static final enum CAMERA_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

.field public static final enum CANCEL_PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

.field public static final enum DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

.field public static final enum KILLED_STATE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

.field public static final enum SNAP_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

.field public static final enum SWIPE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    const-string v1, "SWIPE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->SWIPE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    .line 90
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    const-string v1, "BACK_PRESSED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->BACK_PRESSED:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    .line 91
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    const-string v1, "SNAP_BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->SNAP_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    .line 92
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    const-string v1, "DOUBLE_TAP"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    .line 93
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    const-string v1, "CAMERA_BUTTON"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->CAMERA_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    .line 94
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    const-string v1, "CANCEL_PREVIEW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->CANCEL_PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    .line 95
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    const-string v1, "KILLED_STATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->KILLED_STATE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    .line 96
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->BACKGROUND:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    .line 88
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->SWIPE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->BACK_PRESSED:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->SNAP_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->CAMERA_BUTTON:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->CANCEL_PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->KILLED_STATE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->BACKGROUND:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->$VALUES:[Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->$VALUES:[Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    return-object v0
.end method
