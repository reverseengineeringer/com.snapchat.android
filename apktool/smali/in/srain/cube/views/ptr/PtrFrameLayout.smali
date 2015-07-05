.class public Lin/srain/cube/views/ptr/PtrFrameLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/PtrFrameLayout$a;,
        Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static a:I

.field public static b:Z

.field private static h:B

.field private static i:B


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Landroid/view/MotionEvent;

.field private G:Landroid/view/MotionEvent;

.field private H:Lbuu;

.field private I:I

.field private J:J

.field protected final c:Ljava/lang/String;

.field protected d:Landroid/view/View;

.field protected e:I

.field f:Z

.field public g:Z

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:I

.field private o:F

.field private p:Z

.field private q:Landroid/view/View;

.field private r:Lbut;

.field private s:Lbur;

.field private t:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

.field private u:Landroid/graphics/PointF;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    .line 29
    sput v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:I

    .line 31
    sput-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->h:B

    .line 32
    const/4 v0, 0x2

    sput-byte v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ptr-frame-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    .line 35
    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    .line 37
    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:I

    .line 38
    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    .line 40
    const v0, 0x3fd9999a    # 1.7f

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:F

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    .line 42
    const/16 v0, 0x3e8

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    .line 43
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:F

    .line 44
    iput-boolean v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    .line 45
    iput-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    .line 47
    new-instance v0, Lbut;

    invoke-direct {v0}, Lbut;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Landroid/graphics/PointF;

    .line 52
    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    .line 53
    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    .line 57
    iput-byte v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    .line 58
    iput-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Z

    .line 59
    iput-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->g:Z

    .line 60
    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    .line 61
    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    .line 64
    iput-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    .line 67
    iput-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Z

    .line 73
    const/16 v0, 0x1f4

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->I:I

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->J:J

    .line 86
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lbuy;->f:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 88
    :cond_0
    :goto_0
    sget-object v0, Lbuv$d;->PtrFrameLayout:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_1

    .line 91
    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:I

    .line 92
    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    .line 94
    const/4 v1, 0x2

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:F

    .line 96
    const/4 v1, 0x4

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    .line 97
    const/4 v1, 0x5

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    .line 99
    const/4 v1, 0x3

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:F

    .line 100
    const/4 v1, 0x7

    iget-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    .line 102
    const/4 v1, 0x6

    iget-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    :cond_1
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    .line 108
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    .line 110
    return-void

    .line 86
    :cond_2
    sput-boolean v4, Lbuy;->f:Z

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lbuy;->a:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lbuy;->b:I

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lbuy;->c:F

    sget v0, Lbuy;->a:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lbuy;->d:I

    sget v0, Lbuy;->b:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lbuy;->e:I

    goto/16 :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 476
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Z

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    const/4 v1, 0x0

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    invoke-virtual {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a(II)V

    .line 479
    :cond_0
    return-void
.end method

.method private a(F)V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 337
    cmpg-float v0, p1, v9

    if-gez v0, :cond_1

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-nez v0, :cond_1

    .line 338
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "has reached the top"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    float-to-int v1, p1

    add-int/2addr v0, v1

    .line 347
    if-gez v0, :cond_3

    .line 348
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "over top"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v8

    .line 354
    :cond_3
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    .line 355
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    sub-int v10, v0, v1

    if-eqz v10, :cond_c

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    if-nez v0, :cond_6

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    invoke-virtual {v0}, Lbut;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    if-ne v0, v11, :cond_4

    iput-byte v12, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    invoke-virtual {v0, p0}, Lbut;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIRefreshPrepare, mAutoScrollRefreshTag %s"

    new-array v2, v11, [Ljava/lang/Object;

    iget v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lin/srain/cube/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "send cancel event"

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    if-eqz v0, :cond_8

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->f()Z

    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "send down event"

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->G:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move v4, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_8
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    if-ne v0, v12, :cond_a

    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    if-ge v0, v1, :cond_9

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    if-lt v0, v1, :cond_9

    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b()Z

    :cond_9
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    sget-byte v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->i:B

    if-ne v0, v1, :cond_a

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    if-ge v0, v1, :cond_a

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    if-lt v0, v1, :cond_a

    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b()Z

    :cond_a
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    iget v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    iget v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    const/4 v3, 0x3

    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lin/srain/cube/util/CLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->invalidate()V

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    if-nez v0, :cond_d

    move v6, v9

    :goto_1
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    if-nez v0, :cond_e

    move v7, v9

    :goto_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    invoke-virtual {v0}, Lbut;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    iget-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Z

    iget-byte v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    iget v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lbut;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V

    .line 356
    :cond_c
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    goto/16 :goto_0

    .line 355
    :cond_d
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->w:I

    int-to-float v0, v0

    mul-float/2addr v0, v13

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    int-to-float v1, v1

    div-float v6, v0, v1

    goto :goto_1

    :cond_e
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    int-to-float v0, v0

    mul-float/2addr v0, v13

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    int-to-float v1, v1

    div-float v7, v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(F)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 431
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b()Z

    .line 433
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 435
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    if-eqz v0, :cond_1

    .line 437
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    if-le v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 438
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    invoke-virtual {v0, v1, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a(II)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a()V

    goto :goto_0

    .line 446
    :cond_2
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    goto :goto_0

    .line 449
    :cond_3
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 617
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lbuu;

    if-eqz v0, :cond_1

    .line 618
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "notifyUIRefreshComplete mRefreshCompleteHook run."

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lbuu;

    iget-byte v1, v0, Lbuu;->b:B

    packed-switch v1, :pswitch_data_0

    .line 633
    :goto_0
    :pswitch_0
    return-void

    .line 622
    :pswitch_1
    const/4 v1, 0x1

    iput-byte v1, v0, Lbuu;->b:B

    invoke-virtual {v0}, Lbuu;->run()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lbuu;->a()V

    goto :goto_0

    .line 625
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    invoke-virtual {v0}, Lbut;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIRefreshComplete"

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    invoke-virtual {v0, p0}, Lbut;->d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 631
    :cond_3
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a()V

    .line 632
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->f()Z

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v2

    .line 506
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    if-gtz v0, :cond_3

    :cond_2
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    if-lt v0, v1, :cond_0

    .line 507
    :cond_3
    const/4 v0, 0x3

    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->J:J

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    invoke-virtual {v0}, Lbut;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    invoke-virtual {v0, p0}, Lbut;->c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIRefreshBegin"

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lbur;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lbur;

    invoke-interface {v0, p0}, Lbur;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    goto :goto_0
.end method

.method static synthetic c(Lin/srain/cube/views/ptr/PtrFrameLayout;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    return v0
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 530
    iget-byte v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-byte v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-nez v2, :cond_2

    .line 531
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    invoke-virtual {v2}, Lbut;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    invoke-virtual {v2, p0}, Lbut;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 533
    sget-boolean v2, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v2, :cond_1

    .line 534
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v3, "PtrUIHandler: onUIReset"

    invoke-static {v2, v3}, Lin/srain/cube/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_1
    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    .line 538
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    .line 541
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 598
    const/4 v0, 0x4

    iput-byte v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->z:B

    .line 601
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a(Lin/srain/cube/views/ptr/PtrFrameLayout$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    if-lez v0, :cond_1

    .line 603
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-static {v3}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a(Lin/srain/cube/views/ptr/PtrFrameLayout$a;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    invoke-direct {p0, v4}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lbus;)V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->r:Lbut;

    if-nez p1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Lbut;->a:Lbus;

    if-nez v1, :cond_2

    iput-object p1, v0, Lbut;->a:Lbus;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, v0, Lbut;->a:Lbus;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lbut;->a:Lbus;

    if-ne v1, p1, :cond_3

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_0

    iget-object v1, v0, Lbut;->b:Lbut;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lbut;->b:Lbut;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    new-instance v1, Lbut;

    invoke-direct {v1}, Lbut;-><init>()V

    iput-object p1, v1, Lbut;->a:Lbus;

    iput-object v1, v0, Lbut;->b:Lbut;

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 545
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-lez v0, :cond_1

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    if-lez v0, :cond_1

    .line 546
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "call onRelease after scroll abort"

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Z)V

    .line 551
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 785
    instance-of v0, p1, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    return v0
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-lez v0, :cond_1

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->B:I

    if-lez v0, :cond_1

    .line 555
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "call onRelease after scroll finish"

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Z)V

    .line 560
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 255
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v0, :cond_2

    .line 256
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 327
    :cond_1
    :goto_0
    return v1

    .line 258
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 259
    packed-switch v0, :pswitch_data_0

    .line 327
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 262
    :pswitch_0
    iput-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Z

    .line 263
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-lez v0, :cond_5

    .line 264
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_4

    .line 265
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v3, "call onRelease when user release"

    invoke-static {v0, v3}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_4
    invoke-direct {p0, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Z)V

    .line 268
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    if-ne v0, v2, :cond_1

    .line 271
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 273
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 277
    :pswitch_1
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->F:Landroid/view/MotionEvent;

    .line 278
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 280
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->t:Lin/srain/cube/views/ptr/PtrFrameLayout$a;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout$a;->a()V

    .line 282
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->A:Z

    .line 283
    iput-boolean v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    .line 284
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-gtz v0, :cond_7

    .line 287
    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 289
    :cond_7
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->C:I

    goto :goto_0

    .line 293
    :pswitch_2
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->G:Landroid/view/MotionEvent;

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v6, v3

    .line 297
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->u:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 298
    iget-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->g:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    if-nez v3, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->x:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    .line 299
    :cond_8
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-nez v0, :cond_a

    move v0, v1

    :goto_1
    if-eqz v0, :cond_9

    .line 300
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    .line 303
    :cond_9
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->D:Z

    if-eqz v0, :cond_b

    .line 304
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 299
    goto :goto_1

    .line 307
    :cond_b
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_d

    move v5, v1

    .line 308
    :goto_2
    if-nez v5, :cond_e

    move v0, v1

    .line 309
    :goto_3
    iget v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    if-lez v3, :cond_f

    move v3, v1

    .line 311
    :goto_4
    sget-boolean v4, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v4, :cond_c

    .line 312
    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lbur;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lbur;

    invoke-interface {v4}, Lbur;->a()Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v1

    .line 313
    :goto_5
    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v8, "ACTION_MOVE: offsetY:%s, mCurrentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v2

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v9, v2

    invoke-static {v7, v8, v9}, Lin/srain/cube/util/CLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_c
    if-eqz v5, :cond_11

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lbur;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lbur;

    invoke-interface {v2}, Lbur;->a()Z

    move-result v2

    if-nez v2, :cond_11

    .line 318
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0

    :cond_d
    move v5, v2

    .line 307
    goto :goto_2

    :cond_e
    move v0, v2

    .line 308
    goto :goto_3

    :cond_f
    move v3, v2

    .line 309
    goto :goto_4

    :cond_10
    move v4, v2

    .line 312
    goto :goto_5

    .line 321
    :cond_11
    if-eqz v0, :cond_12

    if-nez v3, :cond_13

    :cond_12
    if-eqz v5, :cond_3

    .line 322
    :cond_13
    float-to-double v2, v6

    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:F

    float-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 323
    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(F)V

    goto/16 :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 570
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "refreshComplete"

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lbuu;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lbuu;

    iput-byte v6, v0, Lbuu;->b:B

    .line 578
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->I:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->J:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 579
    if-gtz v0, :cond_4

    .line 580
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v1, "performRefreshComplete at once"

    invoke-static {v0, v1}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_2
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->g()V

    .line 595
    :cond_3
    :goto_0
    return-void

    .line 585
    :cond_4
    new-instance v1, Lin/srain/cube/views/ptr/PtrFrameLayout$2;

    invoke-direct {v1, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$2;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 591
    sget-boolean v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Z

    if-eqz v1, :cond_3

    .line 592
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->c:Ljava/lang/String;

    const-string v2, "performRefreshComplete after delay: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 790
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 800
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 795
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    return-object v0
.end method

.method public getDurationToClose()F
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    int-to-float v0, v0

    return v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    .prologue
    .line 726
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    return-object v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:F

    return v0
.end method

.method public getResistance()F
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:F

    return v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 114
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildCount()I

    move-result v0

    .line 115
    if-le v0, v3, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PtrFrameLayout only can host 2 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    if-ne v0, v3, :cond_a

    .line 118
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v0, :cond_1

    .line 119
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->j:I

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    .line 121
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    if-nez v0, :cond_2

    .line 122
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->k:I

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 126
    :cond_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v0, :cond_4

    .line 128
    :cond_3
    invoke-virtual {p0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 129
    invoke-virtual {p0, v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    instance-of v2, v1, Lbus;

    if-eqz v2, :cond_5

    .line 131
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    move-object v1, p0

    .line 147
    :goto_0
    iput-object v0, v1, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 164
    :cond_4
    :goto_1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 165
    return-void

    .line 133
    :cond_5
    instance-of v2, v0, Lbus;

    if-eqz v2, :cond_6

    .line 134
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    move-object v0, p0

    :goto_2
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 147
    goto :goto_0

    .line 138
    :cond_6
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    if-nez v2, :cond_7

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v2, :cond_7

    .line 139
    iput-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    move-object v1, p0

    .line 140
    goto :goto_0

    .line 144
    :cond_7
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-nez v2, :cond_9

    .line 145
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    if-ne v2, v1, :cond_8

    :goto_3
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_3

    .line 147
    :cond_9
    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-ne v2, v1, :cond_c

    move-object v1, p0

    goto :goto_0

    .line 152
    :cond_a
    if-ne v0, v2, :cond_b

    .line 153
    invoke-virtual {p0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    goto :goto_1

    .line 155
    :cond_b
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 157
    const v1, -0x9a00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    const-string v1, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_c
    move-object v0, p0

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 217
    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->v:I

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v3

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    iget v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    sub-int/2addr v0, v5

    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v7, v4, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 218
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 169
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 171
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lin/srain/cube/views/ptr/PtrFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 180
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 181
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    .line 182
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    int-to-float v0, v0

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    .line 183
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 190
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p1, v2, v3}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v2

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p2, v3, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 191
    :cond_1
    return-void
.end method

.method public setDurationToClose(I)V
    .locals 0

    .prologue
    .line 722
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->m:I

    .line 723
    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0

    .prologue
    .line 730
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->n:I

    .line 731
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 772
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeView(Landroid/view/View;)V

    .line 774
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 775
    if-nez v0, :cond_1

    .line 776
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout$LayoutParams;-><init>(I)V

    .line 777
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    :cond_1
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->q:Landroid/view/View;

    .line 780
    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    .line 781
    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0

    .prologue
    .line 689
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->E:Z

    .line 690
    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0

    .prologue
    .line 755
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->p:Z

    .line 756
    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0

    .prologue
    .line 680
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->I:I

    .line 681
    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 0

    .prologue
    .line 743
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    .line 744
    return-void
.end method

.method public setPtrHandler(Lbur;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->s:Lbur;

    .line 698
    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0

    .prologue
    .line 763
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    .line 764
    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 2

    .prologue
    .line 734
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:F

    .line 735
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->y:I

    int-to-float v0, v0

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->o:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->e:I

    .line 736
    return-void
.end method

.method public setRefreshCompleteHook(Lbuu;)V
    .locals 1

    .prologue
    .line 460
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->H:Lbuu;

    .line 461
    new-instance v0, Lin/srain/cube/views/ptr/PtrFrameLayout$1;

    invoke-direct {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$1;-><init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    iput-object v0, p1, Lbuu;->a:Ljava/lang/Runnable;

    .line 470
    return-void
.end method

.method public setResistance(F)V
    .locals 0

    .prologue
    .line 714
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout;->l:F

    .line 715
    return-void
.end method
