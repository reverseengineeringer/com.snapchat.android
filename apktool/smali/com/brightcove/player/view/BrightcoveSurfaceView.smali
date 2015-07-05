.class public Lcom/brightcove/player/view/BrightcoveSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/view/RenderView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLayout: changed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 89
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 90
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onMeasure: width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", videoWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", videoHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", widthMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/brightcove/player/util/LayoutUtil;->getSpecMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", heightMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/brightcove/player/util/LayoutUtil;->getSpecMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    if-lez v2, :cond_0

    .line 101
    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 103
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    div-int/2addr v0, v2

    .line 110
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setMeasuredDimension: width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0, v1, v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->setMeasuredDimension(II)V

    .line 112
    return-void

    .line 104
    :cond_1
    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 106
    iget v1, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSizeChanged: width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 77
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    .line 58
    iput p2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    .line 60
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 61
    invoke-super {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 62
    invoke-super {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 64
    :cond_0
    return-void
.end method
