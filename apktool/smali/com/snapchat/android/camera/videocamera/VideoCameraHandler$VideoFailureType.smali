.class public final enum Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoFailureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum CAMERA_UNLOCK_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum EXCEPTION_ON_START:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum EXCEPTION_ON_STOP:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum INITIALIZATION_ERROR:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum NO_SURFACE_PROVIDED:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum RECORDING_TOO_SHORT:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum VIDEO_STORAGE_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "VIDEO_STORAGE_EXCEPTION"

    invoke-direct {v0, v1, v4, v4}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->VIDEO_STORAGE_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 104
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "CAMERA_UNLOCK_EXCEPTION"

    invoke-direct {v0, v1, v5, v5}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->CAMERA_UNLOCK_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 105
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "EXCEPTION_ON_START"

    invoke-direct {v0, v1, v6, v6}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->EXCEPTION_ON_START:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 106
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "EXCEPTION_ON_STOP"

    invoke-direct {v0, v1, v7, v7}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->EXCEPTION_ON_STOP:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 107
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "INITIALIZATION_ERROR"

    invoke-direct {v0, v1, v8, v8}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->INITIALIZATION_ERROR:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 108
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "NO_SURFACE_PROVIDED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->NO_SURFACE_PROVIDED:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 109
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "RECORDING_TOO_SHORT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->RECORDING_TOO_SHORT:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 102
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->VIDEO_STORAGE_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->CAMERA_UNLOCK_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->EXCEPTION_ON_START:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->EXCEPTION_ON_STOP:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->INITIALIZATION_ERROR:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->NO_SURFACE_PROVIDED:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->RECORDING_TOO_SHORT:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->$VALUES:[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput p3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->a:I

    .line 114
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->$VALUES:[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {v0}, [Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->a:I

    return v0
.end method
