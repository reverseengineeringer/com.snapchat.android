.class public final Lapm;
.super Lasv;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/ui/camera/TakeSnapButton;

.field private final b:Landroid/view/ScaleGestureDetector;

.field private final c:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

.field private final d:Lasm;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/camera/TakeSnapButton;Landroid/view/ScaleGestureDetector;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lasm;

    invoke-direct {v0}, Lasm;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lapm;-><init>(Lcom/snapchat/android/ui/camera/TakeSnapButton;Landroid/view/ScaleGestureDetector;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lasm;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/ui/camera/TakeSnapButton;Landroid/view/ScaleGestureDetector;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lasm;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lasv;-><init>(Landroid/view/View;B)V

    .line 34
    iput-boolean v0, p0, Lapm;->e:Z

    .line 53
    invoke-virtual {p0}, Lapm;->a()V

    .line 54
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;

    iput-object v0, p0, Lapm;->a:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    .line 55
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lapm;->b:Landroid/view/ScaleGestureDetector;

    .line 56
    invoke-static {p3}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    iput-object v0, p0, Lapm;->c:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    .line 57
    invoke-static {p4}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasm;

    iput-object v0, p0, Lapm;->d:Lasm;

    .line 58
    return-void
.end method

.method static synthetic a(Lapm;)Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapm;->e:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lapm;->g:Z

    .line 107
    iput-boolean v0, p0, Lapm;->f:Z

    .line 108
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    .line 67
    iget-object v0, p0, Lapm;->b:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    if-ne v3, v1, :cond_3

    iget-boolean v0, p0, Lapm;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lapm;->f:Z

    if-eqz v0, :cond_2

    :cond_0
    if-ne v4, v5, :cond_1

    iget-boolean v0, p0, Lapm;->f:Z

    if-nez v0, :cond_2

    :cond_1
    if-eq v4, v5, :cond_6

    iget-boolean v0, p0, Lapm;->g:Z

    if-eqz v0, :cond_6

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    if-ne v3, v0, :cond_7

    .line 70
    :cond_4
    iget-object v0, p0, Lapm;->c:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->FINGER_UP:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V

    .line 71
    invoke-virtual {p0}, Lapm;->a()V

    .line 96
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lasv;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_6
    move v0, v2

    .line 69
    goto :goto_0

    .line 72
    :cond_7
    if-nez v3, :cond_9

    .line 74
    iget-boolean v0, p0, Lapm;->f:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lapm;->g:Z

    if-nez v0, :cond_5

    .line 75
    iget-object v0, p0, Lapm;->a:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->a:J

    iget-object v2, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->e:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d

    invoke-virtual {v0, v2, v6, v7}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->b:Z

    iput-boolean v1, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->c:Z

    .line 76
    iget-object v0, p0, Lapm;->c:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    sget-object v2, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->FINGER_DOWN:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-interface {v0, v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V

    .line 78
    if-ne v4, v5, :cond_8

    .line 79
    iput-boolean v1, p0, Lapm;->f:Z

    goto :goto_1

    .line 81
    :cond_8
    iput-boolean v1, p0, Lapm;->g:Z

    goto :goto_1

    .line 84
    :cond_9
    const/4 v0, 0x5

    if-ne v3, v0, :cond_a

    .line 85
    iput-boolean v1, p0, Lapm;->e:Z

    .line 86
    iget-object v0, p0, Lapm;->a:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    new-instance v1, Lapm$1;

    invoke-direct {v1, p0}, Lapm$1;-><init>(Lapm;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 92
    :cond_a
    const/4 v0, 0x6

    if-ne v3, v0, :cond_5

    iget-boolean v0, p0, Lapm;->e:Z

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Point;

    aget v2, v3, v2

    aget v1, v3, v1

    invoke-direct {v4, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, v4, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    mul-float/2addr v0, v2

    iget v2, v4, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 94
    iget-object v0, p0, Lapm;->c:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(II)V

    goto/16 :goto_1

    .line 93
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
