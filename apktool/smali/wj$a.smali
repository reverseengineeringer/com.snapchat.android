.class final Lwj$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lwj;


# direct methods
.method private constructor <init>(Lwj;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lwj$a;->a:Lwj;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwj;B)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lwj$a;-><init>(Lwj;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwj$a;->a:Lwj;

    iget-object v0, v0, Lwj;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lwj$a;->a:Lwj;

    iget-object v0, v0, Lwj;->j:Latu;

    iget-object v1, v0, Latu;->mSpring:Lbj;

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {v1, v2, v3}, Lbj;->c(D)Lbj;

    iget-object v1, v0, Latu;->mSpring:Lbj;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Lbj;->b(D)Lbj;

    iget-object v0, v0, Latu;->mSpring:Lbj;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lbj;->b(D)Lbj;

    .line 414
    iget-object v0, p0, Lwj$a;->a:Lwj;

    iget-object v0, v0, Lwj;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->s()V

    .line 416
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lwj$a;->a:Lwj;

    invoke-static {v0}, Lwj;->b(Lwj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lwj$a;->a:Lwj;

    iget-object v0, v0, Lwj;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3a378034    # 7.0E-4f

    mul-float/2addr v2, p4

    add-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(F)V

    .line 423
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lwj$a;->a:Lwj;

    iget-object v0, v0, Lwj;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(II)V

    .line 407
    const/4 v0, 0x1

    return v0
.end method
