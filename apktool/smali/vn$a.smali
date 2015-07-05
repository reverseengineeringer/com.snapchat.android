.class final Lvn$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lvn;


# direct methods
.method private constructor <init>(Lvn;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lvn$a;->a:Lvn;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvn;B)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lvn$a;-><init>(Lvn;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvn$a;->a:Lvn;

    iget-object v0, v0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lvn$a;->a:Lvn;

    iget-object v0, v0, Lvn;->j:Lasv;

    iget-object v1, v0, Lasv;->mSpring:Lbj;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {v1, v2, v3}, Lbj;->c(D)Lbj;

    iget-object v1, v0, Lasv;->mSpring:Lbj;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Lbj;->b(D)Lbj;

    iget-object v0, v0, Lasv;->mSpring:Lbj;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    .line 413
    iget-object v0, p0, Lvn$a;->a:Lvn;

    iget-object v0, v0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->s()V

    .line 415
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lvn$a;->a:Lvn;

    invoke-static {v0}, Lvn;->b(Lvn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lvn$a;->a:Lvn;

    iget-object v0, v0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3a378034    # 7.0E-4f

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(F)V

    .line 422
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lvn$a;->a:Lvn;

    iget-object v0, v0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(II)V

    .line 406
    const/4 v0, 0x1

    return v0
.end method
