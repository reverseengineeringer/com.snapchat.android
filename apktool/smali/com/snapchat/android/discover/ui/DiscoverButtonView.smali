.class public Lcom/snapchat/android/discover/ui/DiscoverButtonView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:F

.field private final d:Lbhk;

.field private e:F

.field private f:F

.field private g:J

.field private h:F

.field private i:Z

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const v3, 0x7f080041

    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->d:Lbhk;

    .line 35
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->h:F

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:Z

    .line 39
    new-instance v0, Lcom/snapchat/android/discover/ui/DiscoverButtonView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView$1;-><init>(Lcom/snapchat/android/discover/ui/DiscoverButtonView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->j:Ljava/lang/Runnable;

    .line 50
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DiscoverButtonView;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->g:J

    return-wide p1
.end method

.method private a(F)V
    .locals 3

    .prologue
    .line 100
    iget v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->h:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 101
    const v0, 0x3f2b851f    # 0.67f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->c:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->h:F

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 76
    iget v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:F

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a(F)V

    .line 77
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:Z

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->g:J

    sub-long/2addr v0, v2

    .line 80
    const-wide/16 v2, 0x28a

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->invalidate()V

    .line 85
    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:F

    iget v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    iget v4, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->h:F

    iget-object v5, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    long-to-double v0, v0

    const-wide v2, 0x4084500000000000L    # 650.0

    div-double/2addr v0, v2

    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->h:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    .line 89
    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:F

    iget v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    double-to-float v0, v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:F

    iget v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->h:F

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 95
    :cond_1
    iget v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:F

    iget v1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    iget v2, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->h:F

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 69
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:F

    .line 70
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->f:F

    .line 71
    iget v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->e:F

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a(F)V

    .line 72
    return-void
.end method

.method public setFilled(Z)V
    .locals 4

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:Z

    if-ne v0, p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-boolean p1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->i:Z

    .line 111
    if-eqz p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->invalidate()V

    goto :goto_0
.end method
