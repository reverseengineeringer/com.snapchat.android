.class public final Lbap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cameraToResume:Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final displayState:Lcom/snapchat/android/util/eventbus/CameraDisplayState;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/util/eventbus/CameraDisplayState;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/util/eventbus/CameraDisplayState;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/camera/model/CameraModel$CameraType;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    iput-object v0, p0, Lbap;->displayState:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    .line 32
    iput-object p2, p0, Lbap;->cameraToResume:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lbap;->displayState:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    sget-object v1, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->CLOSE:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
