.class public final Laqf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqf$a;
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:F

.field private final c:Laqf$a;

.field private final d:Landroid/content/Context;

.field private e:F

.field private f:F

.field private g:I

.field private h:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laqf$a;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laqf$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Laqf;->e:F

    .line 30
    iput v1, p0, Laqf;->f:F

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Laqf;->g:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Laqf;->a:Z

    .line 34
    iput v1, p0, Laqf;->b:F

    .line 47
    iput-object p1, p0, Laqf;->d:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Laqf;->c:Laqf$a;

    .line 49
    iget-object v0, p0, Laqf;->d:Landroid/content/Context;

    invoke-static {v0}, Lavh;->b(Landroid/content/Context;)I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v1, v2

    iput v1, p0, Laqf;->e:F

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iput v0, p0, Laqf;->f:F

    const/high16 v0, 0x43480000    # 200.0f

    iget-object v1, p0, Laqf;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Laqf;->g:I

    .line 50
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Laqf;->a:Z

    .line 127
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Laqf;->b:F

    .line 128
    iget-object v0, p0, Laqf;->h:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Laqf;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Laqf;->h:Landroid/view/VelocityTracker;

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 61
    iget-boolean v2, p0, Laqf;->a:Z

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, p0, Laqf;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iget-object v3, p0, Laqf;->h:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Laqf;->g:I

    if-le v2, v3, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Laqf;->c:Laqf$a;

    invoke-interface {v1}, Laqf$a;->b()V

    .line 70
    :goto_0
    invoke-direct {p0}, Laqf;->a()V

    .line 103
    :cond_1
    :goto_1
    return v0

    .line 65
    :cond_2
    iget-object v1, p0, Laqf;->c:Laqf$a;

    invoke-interface {v1}, Laqf$a;->c()V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v1, p0, Laqf;->c:Laqf$a;

    invoke-interface {v1}, Laqf$a;->a()V

    goto :goto_0

    .line 75
    :cond_4
    iget-object v2, p0, Laqf;->h:Landroid/view/VelocityTracker;

    if-nez v2, :cond_5

    .line 76
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Laqf;->h:Landroid/view/VelocityTracker;

    .line 78
    :cond_5
    iget-object v2, p0, Laqf;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 83
    iget-boolean v2, p0, Laqf;->a:Z

    if-nez v2, :cond_6

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Laqf;->b:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    iget v3, p0, Laqf;->b:F

    sub-float/2addr v2, v3

    iget v3, p0, Laqf;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iput-boolean v0, p0, Laqf;->a:Z

    .line 87
    :cond_6
    iget-boolean v2, p0, Laqf;->a:Z

    if-eqz v2, :cond_7

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Laqf;->b:F

    sub-float/2addr v2, v4

    iget v4, p0, Laqf;->f:F

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 89
    iget-object v3, p0, Laqf;->c:Laqf$a;

    invoke-interface {v3, v2}, Laqf$a;->a(F)V

    .line 90
    cmpl-float v2, v2, v5

    if-nez v2, :cond_7

    .line 91
    invoke-direct {p0}, Laqf;->a()V

    .line 92
    iget-object v2, p0, Laqf;->c:Laqf$a;

    invoke-interface {v2}, Laqf$a;->b()V

    .line 99
    :cond_7
    :goto_2
    iget-boolean v2, p0, Laqf;->a:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 103
    goto :goto_1

    .line 95
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Laqf;->b:F

    goto :goto_2
.end method
