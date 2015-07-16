.class public Lcom/snapchat/android/ui/ConnectingRippleView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->a:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->a:Landroid/graphics/Paint;

    const v1, 0xb2b2b2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0, p1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->b:F

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->g:J

    sub-long/2addr v0, v2

    .line 85
    const-wide/16 v2, 0x708

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 86
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->f:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 87
    :cond_0
    const-wide/16 v0, 0x0

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->g:J

    .line 91
    :cond_1
    long-to-float v0, v0

    const/high16 v1, 0x44e10000    # 1800.0f

    div-float/2addr v0, v1

    .line 92
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->e:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    .line 93
    iget-object v2, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->a:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v4, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    iget v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->c:F

    iget v2, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->d:F

    iget-object v3, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 95
    iget v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->c:F

    iget v2, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->d:F

    iget v3, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->b:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ConnectingRippleView;->invalidate()V

    goto :goto_0
.end method

.method public setRippleCenter(FF)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->c:F

    .line 52
    iput p2, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->d:F

    .line 53
    return-void
.end method

.method public setRippleScale(F)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->e:F

    .line 61
    return-void
.end method

.method public setRipplesEnabled(Z)V
    .locals 2

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->f:Z

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->g:J

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ConnectingRippleView;->invalidate()V

    .line 73
    :cond_0
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ConnectingRippleView;->f:Z

    .line 74
    return-void
.end method
