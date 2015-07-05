.class public final enum Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/rendering/SnapMediaRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

.field public static final enum EXTERNAL_STORAGE_REQUIRED:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

.field public static final enum MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

.field public static final enum PLAYBACK_ERROR:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    const-string v1, "EXTERNAL_STORAGE_REQUIRED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->EXTERNAL_STORAGE_REQUIRED:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    .line 25
    new-instance v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    const-string v1, "MEDIA_UNAVAILABLE_LOCALLY"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    .line 29
    new-instance v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    const-string v1, "PLAYBACK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->PLAYBACK_ERROR:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->EXTERNAL_STORAGE_REQUIRED:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->PLAYBACK_ERROR:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->$VALUES:[Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->$VALUES:[Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-virtual {v0}, [Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    return-object v0
.end method
