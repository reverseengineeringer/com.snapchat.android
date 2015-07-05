.class public Lcom/snapchat/android/ui/VerticalFlinger;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/VerticalFlinger$1;,
        Lcom/snapchat/android/ui/VerticalFlinger$b;,
        Lcom/snapchat/android/ui/VerticalFlinger$c;,
        Lcom/snapchat/android/ui/VerticalFlinger$MovementState;,
        Lcom/snapchat/android/ui/VerticalFlinger$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:D

.field private k:D

.field private final l:Lapl;

.field private m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

.field private n:Z

.field private o:Landroid/view/VelocityTracker;
    .annotation build Lcgc;
    .end annotation
.end field

.field private p:Lcom/snapchat/android/ui/VerticalFlinger$a;
    .annotation build Lcgc;
    .end annotation
.end field

.field private q:Lbff;

.field private r:Lbff;

.field private s:Lbff;
    .annotation build Lcgc;
    .end annotation
.end field

.field private t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 139
    new-instance v0, Lapl;

    invoke-direct {v0}, Lapl;-><init>()V

    new-instance v1, Lbl;

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-direct {v1, v2, v3, v4, v5}, Lbl;-><init>(DD)V

    invoke-virtual {v0, v1}, Lapl;->a(Lbl;)Lapl;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/VerticalFlinger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lapl;)V

    .line 141
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lapl;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Lapl;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->a:Z

    .line 83
    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->b:Z

    .line 84
    iput-boolean v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->c:Z

    .line 86
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->d:F

    .line 87
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->e:F

    .line 90
    iput v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->f:F

    .line 91
    iput v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->g:F

    .line 92
    iput v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->h:F

    .line 93
    iput v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->i:F

    .line 94
    iput-wide v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->j:D

    .line 95
    iput-wide v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->k:D

    .line 103
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    .line 104
    iput-boolean v4, p0, Lcom/snapchat/android/ui/VerticalFlinger;->n:Z

    .line 110
    iput-object v5, p0, Lcom/snapchat/android/ui/VerticalFlinger;->p:Lcom/snapchat/android/ui/VerticalFlinger$a;

    .line 114
    invoke-static {}, Lbff;->a()Lbff;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->q:Lbff;

    .line 118
    invoke-static {}, Lbff;->a()Lbff;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->r:Lbff;

    .line 121
    iput-object v5, p0, Lcom/snapchat/android/ui/VerticalFlinger;->s:Lbff;

    .line 131
    sget v0, Lcom/snapchat/android/ui/VerticalFlinger$c;->a:I

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    .line 149
    iput-object p3, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    new-instance v1, Lcom/snapchat/android/ui/VerticalFlinger$b;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/VerticalFlinger$b;-><init>(Lcom/snapchat/android/ui/VerticalFlinger;)V

    invoke-virtual {v0}, Lapl;->f()V

    invoke-static {v1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lapl;->c:Lbh;

    invoke-virtual {v0, v1}, Lbh;->a(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    invoke-virtual {v0, v4}, Lapl;->b(Z)Lapl;

    .line 153
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0, p1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->f:F

    .line 154
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0, p1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->g:F

    .line 155
    const/high16 v0, 0x43fa0000    # 500.0f

    invoke-static {v0, p1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->h:F

    .line 156
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0, p1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->i:F

    .line 157
    const-wide v0, 0x4050e00000000000L    # 67.5

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->j:D

    .line 158
    const-wide v0, 0x405c200000000000L    # 112.5

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->k:D

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/VerticalFlinger;)Lcom/snapchat/android/ui/VerticalFlinger$MovementState;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DEACTIVATED:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-ne v0, v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-ne v0, v1, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->e()V

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    invoke-static {}, Lbff;->a()Lbff;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapl;->a(Lbff;)Lapl;

    .line 225
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lapl;->a(Z)Lapl;

    .line 226
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->RETURN:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setMovementState(Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 356
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->b(Landroid/view/MotionEvent;)V

    .line 358
    new-instance v0, Lbff;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-double v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-double v6, v1

    invoke-direct {v0, v4, v5, v6, v7}, Lbff;-><init>(DD)V

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->q:Lbff;

    new-instance v3, Lbff;

    iget-wide v4, v0, Lbff;->x:D

    iget-wide v6, v1, Lbff;->x:D

    sub-double/2addr v4, v6

    iget-wide v6, v0, Lbff;->y:D

    iget-wide v0, v1, Lbff;->y:D

    sub-double v0, v6, v0

    invoke-direct {v3, v4, v5, v0, v1}, Lbff;-><init>(DD)V

    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->r:Lbff;

    new-instance v4, Lbff;

    iget-wide v6, v3, Lbff;->x:D

    iget-wide v8, v0, Lbff;->x:D

    add-double/2addr v6, v8

    iget-wide v8, v3, Lbff;->y:D

    iget-wide v0, v0, Lbff;->y:D

    add-double/2addr v0, v8

    invoke-direct {v4, v6, v7, v0, v1}, Lbff;-><init>(DD)V

    .line 362
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$1;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :pswitch_0
    iget-wide v0, v4, Lbff;->y:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v3, p0, Lcom/snapchat/android/ui/VerticalFlinger;->i:F

    float-to-double v6, v3

    cmpl-double v0, v0, v6

    if-gtz v0, :cond_0

    iget-wide v0, v4, Lbff;->x:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v3, p0, Lcom/snapchat/android/ui/VerticalFlinger;->i:F

    float-to-double v6, v3

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    :cond_0
    iget-wide v0, v4, Lbff;->y:D

    iget-wide v6, v4, Lbff;->x:D

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpg-double v3, v0, v6

    if-gez v3, :cond_1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v6

    :cond_1
    iget-wide v6, p0, Lcom/snapchat/android/ui/VerticalFlinger;->j:D

    cmpl-double v3, v0, v6

    if-ltz v3, :cond_3

    iget-wide v6, p0, Lcom/snapchat/android/ui/VerticalFlinger;->k:D

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setMovementState(Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    invoke-direct {p0, v4}, Lcom/snapchat/android/ui/VerticalFlinger;->setPosition(Lbff;)V

    .line 384
    :cond_2
    :goto_1
    :pswitch_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->d()V

    .line 385
    return-void

    :cond_3
    move v0, v2

    .line 364
    goto :goto_0

    :cond_4
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DEACTIVATED:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setMovementState(Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    goto :goto_1

    .line 367
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/snapchat/android/ui/VerticalFlinger;->setPosition(Lbff;)V

    goto :goto_1

    .line 370
    :pswitch_3
    const-string v0, "VerticalFlinger"

    const-string v1, "Received touch move event while in FLING state. Weird. Ignoring."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 373
    :pswitch_4
    const-string v0, "VerticalFlinger"

    const-string v1, "Received touch move event while in GONE state. Weird. Ignoring."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 376
    :pswitch_5
    const-string v0, "VerticalFlinger"

    const-string v1, "Received touch move event while in RETURN state. Weird. Ignoring."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lbff;)V
    .locals 10
    .param p1    # Lbff;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 415
    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    iget-wide v0, p1, Lbff;->y:D

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getCurrentPosition()Lbff;

    move-result-object v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget-wide v4, p1, Lbff;->y:D

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    neg-double v0, v0

    :cond_0
    iget-wide v4, v3, Lbff;->x:D

    iget-wide v6, p1, Lbff;->x:D

    iget-wide v8, v3, Lbff;->y:D

    sub-double v8, v0, v8

    mul-double/2addr v6, v8

    iget-wide v8, p1, Lbff;->y:D

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    new-instance v3, Lbff;

    invoke-direct {v3, v4, v5, v0, v1}, Lbff;-><init>(DD)V

    invoke-virtual {v2, v3}, Lapl;->a(Lbff;)Lapl;

    .line 416
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lapl;->a(Z)Lapl;

    .line 417
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->FLING:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setMovementState(Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    .line 418
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/VerticalFlinger;Lbff;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->setViewPosition(Lbff;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/VerticalFlinger;Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->setMovementState(Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    return-void
.end method

.method private b()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$1;->a:[I

    iget-object v3, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :pswitch_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getTouchVelocity()Lbff;

    move-result-object v7

    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    new-instance v3, Lbff;

    iget-wide v4, v7, Lbff;->x:D

    mul-double/2addr v4, v10

    iget-wide v8, v7, Lbff;->y:D

    mul-double/2addr v8, v10

    invoke-direct {v3, v4, v5, v8, v9}, Lbff;-><init>(DD)V

    invoke-virtual {v0}, Lapl;->f()V

    invoke-static {v3}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v0, Lapl;->d:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lapl;->a:Lbj;

    iget-wide v8, v3, Lbff;->x:D

    invoke-virtual {v4, v8, v9}, Lbj;->c(D)Lbj;

    iget-object v0, v0, Lapl;->b:Lbj;

    iget-wide v4, v3, Lbff;->y:D

    invoke-virtual {v0, v4, v5}, Lbj;->c(D)Lbj;

    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getCurrentPosition()Lbff;

    move-result-object v0

    iget-wide v4, v0, Lbff;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    iget-wide v8, v7, Lbff;->y:D

    invoke-static {v8, v9}, Ljava/lang/Math;->signum(D)D

    move-result-wide v8

    cmpl-double v0, v4, v8

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getCurrentPosition()Lbff;

    move-result-object v3

    iget-wide v4, v3, Lbff;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v3, p0, Lcom/snapchat/android/ui/VerticalFlinger;->g:F

    float-to-double v8, v3

    cmpl-double v3, v4, v8

    if-lez v3, :cond_3

    move v3, v1

    :goto_2
    iget-wide v4, v7, Lbff;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v6, p0, Lcom/snapchat/android/ui/VerticalFlinger;->f:F

    float-to-double v8, v6

    cmpl-double v4, v4, v8

    if-lez v4, :cond_4

    move v4, v1

    :goto_3
    iget v5, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    sget v6, Lcom/snapchat/android/ui/VerticalFlinger$c;->d:I

    if-eq v5, v6, :cond_5

    move v5, v1

    :goto_4
    iget v6, p0, Lcom/snapchat/android/ui/VerticalFlinger;->f:F

    cmpl-float v6, v6, v12

    if-eqz v6, :cond_6

    move v6, v1

    :goto_5
    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->c:Z

    if-eqz v0, :cond_0

    if-eqz v5, :cond_7

    :cond_0
    move v0, v1

    :goto_6
    if-eqz v0, :cond_8

    invoke-direct {p0, v7}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Lbff;)V

    .line 352
    :goto_7
    :pswitch_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->e()V

    .line 353
    return-void

    .line 334
    :cond_1
    iput-object v3, v0, Lapl;->f:Lbff;

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    move v5, v2

    goto :goto_4

    :cond_6
    move v6, v2

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    iget v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->e:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->e:F

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getCurrentPosition()Lbff;

    move-result-object v3

    iget-wide v4, v3, Lbff;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    float-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_9

    :goto_8
    if-eqz v1, :cond_a

    new-instance v0, Lbff;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getCurrentPosition()Lbff;

    move-result-object v1

    iget-wide v4, v1, Lbff;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lbff;-><init>(DD)V

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Lbff;)V

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_a
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->a()V

    goto :goto_7

    .line 337
    :pswitch_2
    const-string v0, "VerticalFlinger"

    const-string v1, "Received touch up event while in FLING state. Weird. Ignoring."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 340
    :pswitch_3
    const-string v0, "VerticalFlinger"

    const-string v1, "Received touch up event while in GONE state. Weird. Ignoring."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 343
    :pswitch_4
    const-string v0, "VerticalFlinger"

    const-string v1, "Received touch up event while in RETURN state. Weird. Ignoring."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 346
    :pswitch_5
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setMovementState(Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    goto :goto_7

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 531
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 534
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    const-string v0, "VerticalFlinger"

    const-string v1, "Velocity tracker not available! Did Android send us events in the wrong order?"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lapl;->a(Z)Lapl;

    .line 466
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setMovementState(Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    .line 467
    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getCurrentPosition()Lbff;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->s:Lbff;

    if-nez v1, :cond_0

    .line 550
    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->s:Lbff;

    .line 571
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-wide v2, v0, Lbff;->y:D

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->s:Lbff;

    iget-wide v4, v1, Lbff;->y:D

    sub-double/2addr v2, v4

    cmpg-double v1, v2, v6

    if-gez v1, :cond_3

    .line 556
    iget v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    sget v2, Lcom/snapchat/android/ui/VerticalFlinger$c;->a:I

    if-ne v1, v2, :cond_2

    .line 557
    sget v1, Lcom/snapchat/android/ui/VerticalFlinger$c;->b:I

    iput v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    .line 570
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->s:Lbff;

    goto :goto_0

    .line 558
    :cond_2
    iget v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    sget v2, Lcom/snapchat/android/ui/VerticalFlinger$c;->b:I

    if-eq v1, v2, :cond_1

    .line 559
    sget v1, Lcom/snapchat/android/ui/VerticalFlinger$c;->d:I

    iput v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    goto :goto_1

    .line 561
    :cond_3
    iget-wide v2, v0, Lbff;->y:D

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->s:Lbff;

    iget-wide v4, v1, Lbff;->y:D

    sub-double/2addr v2, v4

    cmpl-double v1, v2, v6

    if-lez v1, :cond_1

    .line 563
    iget v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    sget v2, Lcom/snapchat/android/ui/VerticalFlinger$c;->a:I

    if-ne v1, v2, :cond_4

    .line 564
    sget v1, Lcom/snapchat/android/ui/VerticalFlinger$c;->c:I

    iput v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    goto :goto_1

    .line 565
    :cond_4
    iget v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    sget v2, Lcom/snapchat/android/ui/VerticalFlinger$c;->c:I

    if-eq v1, v2, :cond_1

    .line 566
    sget v1, Lcom/snapchat/android/ui/VerticalFlinger$c;->d:I

    iput v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    goto :goto_1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->f()V

    .line 635
    invoke-static {}, Lbff;->a()Lbff;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->q:Lbff;

    .line 636
    invoke-static {}, Lbff;->a()Lbff;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->r:Lbff;

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->s:Lbff;

    .line 638
    sget v0, Lcom/snapchat/android/ui/VerticalFlinger$c;->a:I

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->t:I

    .line 639
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    .line 646
    :cond_0
    return-void
.end method

.method private getTouchVelocity()Lbff;
    .locals 6

    .prologue
    .line 445
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 446
    const-string v0, "VerticalFlinger"

    const-string v1, "Velocity tracker not available! Did Android send us events in the wrong order?"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    invoke-static {}, Lbff;->a()Lbff;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->h:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 452
    new-instance v0, Lbff;

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    float-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lbff;-><init>(DD)V

    goto :goto_0
.end method

.method private setMovementState(Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/ui/VerticalFlinger$MovementState;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 574
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq v0, p1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->FLING:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DEACTIVATED:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-ne p1, v0, :cond_0

    .line 577
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    .line 579
    :cond_1
    return-void

    .line 575
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->FLING:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->RETURN:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->RETURN:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->GONE:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->RETURN:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DRAG:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->FLING:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setPosition(Lbff;)V
    .locals 4
    .param p1    # Lbff;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getCurrentPosition()Lbff;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v0}, Lbff;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    invoke-virtual {v0}, Lapl;->f()V

    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lapl;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lapl;->a:Lbj;

    iget-wide v2, p1, Lbff;->x:D

    invoke-virtual {v1, v2, v3}, Lbj;->a(D)Lbj;

    iget-object v0, v0, Lapl;->b:Lbj;

    iget-wide v2, p1, Lbff;->y:D

    invoke-virtual {v0, v2, v3}, Lbj;->a(D)Lbj;

    .line 237
    :goto_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->setViewPosition(Lbff;)V

    .line 239
    :cond_0
    return-void

    .line 236
    :cond_1
    iput-object p1, v0, Lapl;->e:Lbff;

    goto :goto_0
.end method

.method private setRotationAndInvalidate(F)V
    .locals 0

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->setRotation(F)V

    .line 513
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->invalidate()V

    .line 514
    return-void
.end method

.method private setRotationBasedOnDistanceFromCenter(Lbff;)V
    .locals 7
    .param p1    # Lbff;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 500
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    .line 501
    iget-wide v2, p1, Lbff;->x:D

    double-to-float v1, v2

    div-float v0, v1, v0

    .line 502
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 504
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    .line 505
    iget-wide v2, p1, Lbff;->y:D

    double-to-float v2, v2

    div-float v1, v2, v1

    .line 506
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 508
    iget v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->d:F

    neg-float v2, v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setRotationAndInvalidate(F)V

    .line 509
    return-void
.end method

.method private setTouchDownPosition(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 471
    new-instance v0, Lbff;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lbff;-><init>(DD)V

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->q:Lbff;

    .line 473
    new-instance v0, Lbff;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getTranslationX()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getTranslationY()F

    move-result v1

    float-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lbff;-><init>(DD)V

    iput-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->r:Lbff;

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setPivotX(F)V

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setPivotY(F)V

    .line 478
    return-void
.end method

.method private setViewPosition(Lbff;)V
    .locals 2
    .param p1    # Lbff;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->a:Z

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lbff;->x:D

    double-to-float v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setTranslationX(F)V

    .line 482
    iget-wide v0, p1, Lbff;->y:D

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setTranslationY(F)V

    .line 484
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->b:Z

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->setRotationBasedOnDistanceFromCenter(Lbff;)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->invalidate()V

    .line 490
    return-void

    .line 481
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPosition()Lbff;
    .locals 6

    .prologue
    .line 919
    new-instance v0, Lbff;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getTranslationX()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getTranslationY()F

    move-result v1

    float-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lbff;-><init>(DD)V

    return-object v0
.end method

.method public getDistanceOfNoReturn()F
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->e:F

    return v0
.end method

.method public getMaxEffectiveAngle()D
    .locals 2

    .prologue
    .line 855
    iget-wide v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->k:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxRotation()F
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->d:F

    return v0
.end method

.method public getMaxVelocity()F
    .locals 2

    .prologue
    .line 806
    iget v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->h:F

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->b(FLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public getMinDistanceToFling()F
    .locals 2

    .prologue
    .line 789
    iget v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->g:F

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->b(FLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public getMinEffectiveAngle()D
    .locals 2

    .prologue
    .line 839
    iget-wide v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->j:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMovementState()Lcom/snapchat/android/ui/VerticalFlinger$MovementState;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    return-object v0
.end method

.method public getSpringConfig()Lbl;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    invoke-virtual {v0}, Lapl;->f()V

    iget-object v0, v0, Lapl;->a:Lbj;

    iget-object v0, v0, Lbj;->a:Lbl;

    invoke-static {v0}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getTouchSlop()F
    .locals 2

    .prologue
    .line 661
    iget v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->i:F

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->b(FLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public getVelocityNeededToFling()F
    .locals 2

    .prologue
    .line 772
    iget v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->f:F

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->b(FLandroid/content/Context;)F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    iget-boolean v0, v0, Lbfm;->mIsReleased:Z

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to attach to window after resources already released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->a()V

    .line 193
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    invoke-virtual {v0}, Lapl;->e()V

    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->f()V

    .line 169
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 243
    iget-boolean v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->n:Z

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 267
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    sget-object v2, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    sget-object v2, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->DEACTIVATED:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->o:Landroid/view/VelocityTracker;

    :cond_2
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->b(Landroid/view/MotionEvent;)V

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$1;->a:[I

    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->setTouchDownPosition(Landroid/view/MotionEvent;)V

    :goto_2
    :pswitch_2
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->d()V

    goto :goto_1

    :pswitch_3
    const-string v1, "VerticalFlinger"

    const-string v2, "Received touch down event while in DRAG state. Weird. Ignoring."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->setTouchDownPosition(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->c()V

    goto :goto_2

    :pswitch_5
    const-string v1, "VerticalFlinger"

    const-string v2, "Received touch down event while in GONE state. Weird. Ignoring."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->setTouchDownPosition(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->c()V

    goto :goto_2

    .line 259
    :pswitch_7
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->b()V

    goto :goto_1

    .line 262
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 256
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->n:Z

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    .line 276
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :pswitch_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->b()V

    goto :goto_1

    .line 284
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setConsistentSwipeDirectionRequired(Z)V
    .locals 0

    .prologue
    .line 730
    iput-boolean p1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->c:Z

    .line 731
    return-void
.end method

.method public setDistanceOfNoReturn(F)V
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 815
    iput p1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->e:F

    .line 816
    return-void

    .line 814
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHorizontalMovementEnabled(Z)V
    .locals 6

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->a:Z

    if-eq v0, p1, :cond_0

    .line 689
    iput-boolean p1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->a:Z

    .line 690
    new-instance v0, Lbff;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getCurrentPosition()Lbff;

    move-result-object v1

    iget-wide v4, v1, Lbff;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lbff;-><init>(DD)V

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setPosition(Lbff;)V

    .line 692
    :cond_0
    return-void
.end method

.method public setListener(Lcom/snapchat/android/ui/VerticalFlinger$a;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/ui/VerticalFlinger$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 903
    iput-object p1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->p:Lcom/snapchat/android/ui/VerticalFlinger$a;

    .line 904
    return-void
.end method

.method public setMaxEffectiveAngle(D)V
    .locals 3

    .prologue
    .line 847
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->k:D

    .line 848
    return-void
.end method

.method public setMaxRotation(F)V
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 747
    iput p1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->d:F

    .line 748
    return-void

    .line 746
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxVelocity(F)V
    .locals 1

    .prologue
    .line 797
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 798
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->g:F

    .line 799
    return-void

    .line 797
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinDistanceToFling(F)V
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 781
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->g:F

    .line 782
    return-void

    .line 780
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinEffectiveAngle(D)V
    .locals 3

    .prologue
    .line 831
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->j:D

    .line 832
    return-void
.end method

.method public setMinVelocityToFling(F)V
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 764
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->f:F

    .line 765
    return-void

    .line 763
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOvershootClampingEnabled(Z)V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    invoke-virtual {v0, p1}, Lapl;->b(Z)Lapl;

    .line 673
    return-void
.end method

.method public setPositionLocked(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 863
    iget-boolean v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->n:Z

    if-eq v1, p1, :cond_0

    .line 864
    iput-boolean p1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->n:Z

    .line 866
    if-eqz p1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    invoke-virtual {v1, v0}, Lapl;->a(Z)Lapl;

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    sget-object v3, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->FLING:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalFlinger;->m:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    sget-object v3, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->RETURN:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1, v0}, Lapl;->a(Z)Lapl;

    goto :goto_0
.end method

.method public setRotationEnabled(Z)V
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->b:Z

    if-eq v0, p1, :cond_0

    .line 708
    iput-boolean p1, p0, Lcom/snapchat/android/ui/VerticalFlinger;->b:Z

    .line 709
    if-eqz p1, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getCurrentPosition()Lbff;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setRotationBasedOnDistanceFromCenter(Lbff;)V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->setRotationAndInvalidate(F)V

    goto :goto_0
.end method

.method public setSpringConfig(Lbl;)V
    .locals 1
    .param p1    # Lbl;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 887
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->l:Lapl;

    invoke-virtual {v0, p1}, Lapl;->a(Lbl;)Lapl;

    .line 888
    return-void
.end method

.method public setTouchSlop(F)V
    .locals 2

    .prologue
    .line 653
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p0}, Lcom/snapchat/android/ui/VerticalFlinger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/VerticalFlinger;->i:F

    .line 654
    return-void
.end method
