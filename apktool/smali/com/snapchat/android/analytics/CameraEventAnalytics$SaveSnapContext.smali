.class public final enum Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/CameraEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveSnapContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

.field public static final enum PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

.field public static final enum STORY:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    .line 101
    new-instance v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    const-string v1, "STORY"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->STORY:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->STORY:Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->$VALUES:[Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

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
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->$VALUES:[Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/CameraEventAnalytics$SaveSnapContext;

    return-object v0
.end method
