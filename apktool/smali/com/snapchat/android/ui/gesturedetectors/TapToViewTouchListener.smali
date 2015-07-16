.class public final Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;,
        Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;
    }
.end annotation


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

.field private final e:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;

.field private final f:Landroid/content/Context;

.field private g:F

.field private h:I

.field private i:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->a:F

    .line 30
    iput v1, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->g:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->h:I

    .line 33
    iput v1, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->b:F

    .line 34
    iput v1, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->c:F

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    .line 52
    iput-object p1, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->f:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->e:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->f:Landroid/content/Context;

    invoke-static {v0}, Lawf;->b(Landroid/content/Context;)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->a:F

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->g:F

    const/high16 v0, 0x43480000    # 200.0f

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->h:I

    .line 55
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 135
    iput-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    .line 136
    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->b:F

    .line 137
    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->c:F

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 140
    iput-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->i:Landroid/view/VelocityTracker;

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    sget-object v3, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;->DOWN:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    if-ne v0, v3, :cond_1

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->i:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->h:I

    if-le v0, v3, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_2

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->e:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;->b()V

    .line 78
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->a()V

    move v0, v1

    .line 112
    :goto_1
    return v0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->e:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;->c()V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->e:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;->a()V

    goto :goto_0

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->i:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    .line 84
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->i:Landroid/view/VelocityTracker;

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    if-nez v0, :cond_7

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->b:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->c:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_9

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    sget-object v3, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;->DOWN:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    if-ne v0, v3, :cond_8

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->c:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->g:F

    div-float/2addr v0, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 97
    iget-object v3, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->e:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;

    invoke-interface {v3, v0}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;->a(F)V

    .line 98
    cmpl-float v0, v0, v7

    if-nez v0, :cond_8

    .line 99
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->a()V

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->e:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$a;->b()V

    .line 108
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->d:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    if-eqz v0, :cond_f

    move v0, v1

    .line 109
    goto :goto_1

    .line 92
    :cond_9
    iget v4, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->b:F

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->c:F

    sub-float/2addr v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->a:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    cmpl-float v0, v0, v6

    if-lez v0, :cond_a

    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;->RIGHT:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;->LEFT:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    goto :goto_2

    :cond_b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_d

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->a:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_d

    cmpl-float v0, v3, v6

    if-lez v0, :cond_c

    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;->DOWN:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    goto :goto_2

    :cond_c
    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;->UP:Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener$SwipeDirection;

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    .line 103
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->b:F

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/TapToViewTouchListener;->c:F

    goto :goto_3

    :cond_f
    move v0, v2

    .line 112
    goto/16 :goto_1
.end method
