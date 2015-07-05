.class final synthetic Lcom/snapchat/android/camera/CameraFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/CameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1011
    invoke-static {}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->values()[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->c:[I

    :try_start_0
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->c:[I

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->VIDEO_STORAGE_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->c:[I

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->RECORDING_TOO_SHORT:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    .line 768
    :goto_1
    invoke-static {}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->values()[Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->b:[I

    :try_start_2
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->b:[I

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->FINGER_DOWN:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->b:[I

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->FINGER_UP:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    .line 696
    :goto_3
    invoke-static {}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->values()[Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->a:[I

    :try_start_4
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->a:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->HIGH:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->a:[I

    sget-object v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->LOW:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
