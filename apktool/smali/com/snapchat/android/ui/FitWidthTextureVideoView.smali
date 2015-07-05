.class public Lcom/snapchat/android/ui/FitWidthTextureVideoView;
.super Lcom/snapchat/android/ui/TextureVideoView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/TextureVideoView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/FitWidthTextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(I)Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 47
    iget v0, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->e:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->f:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->d:I

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->e:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    iget v2, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->d:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 54
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 26
    iget v0, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->a:I

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->getDefaultSize(II)I

    move-result v0

    .line 27
    iget v1, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->b:I

    invoke-static {v1, p2}, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->getDefaultSize(II)I

    move-result v1

    .line 28
    iget v2, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->a:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->b:I

    if-lez v2, :cond_0

    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 31
    int-to-float v1, v0

    iget v2, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->a:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 33
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->a(I)Landroid/graphics/Matrix;

    move-result-object v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->setTransform(Landroid/graphics/Matrix;)V

    .line 42
    :cond_0
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/FitWidthTextureVideoView;->setMeasuredDimension(II)V

    .line 43
    return-void
.end method
