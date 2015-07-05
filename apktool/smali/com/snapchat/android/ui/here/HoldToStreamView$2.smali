.class final Lcom/snapchat/android/ui/here/HoldToStreamView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/HoldToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1041
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->k(Lcom/snapchat/android/ui/here/HoldToStreamView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    :goto_0
    return v2

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->l(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->BACK_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-ne v0, v1, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Lcom/snapchat/android/ui/here/HoldToStreamView;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 1049
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->m(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    goto :goto_0

    .line 1047
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$2;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->BACK_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Lcom/snapchat/android/ui/here/HoldToStreamView;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    goto :goto_1
.end method
