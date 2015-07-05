.class public Lcom/brightcove/player/view/BrightcoveTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/view/RenderView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private surface:Landroid/view/Surface;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/brightcove/player/view/BrightcoveTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcoveTextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->surface:Landroid/view/Surface;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoWidth:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 78
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

    .line 80
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    .line 81
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 100
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 102
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

    iget v5, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", videoHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoHeight:I

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

    .line 107
    iget v2, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoHeight:I

    if-lez v2, :cond_0

    .line 111
    iget v2, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 113
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoHeight:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoWidth:I

    div-int/2addr v0, v2

    .line 120
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

    .line 121
    invoke-virtual {p0, v1, v0}, Lcom/brightcove/player/view/BrightcoveTextureView;->setMeasuredDimension(II)V

    .line 122
    return-void

    .line 114
    :cond_1
    iget v2, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 116
    iget v1, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoHeight:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 85
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

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 87
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoWidth:I

    .line 68
    iput p2, p0, Lcom/brightcove/player/view/BrightcoveTextureView;->videoHeight:I

    .line 70
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 71
    invoke-super {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 72
    invoke-super {p0}, Landroid/view/TextureView;->invalidate()V

    .line 74
    :cond_0
    return-void
.end method
