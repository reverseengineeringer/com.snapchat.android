.class public Lcom/snapchat/android/ui/FitWidthImageResourceView;
.super Lcom/snapchat/android/ui/ImageResourceView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ImageResourceView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/ImageResourceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/ImageResourceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/ImageResourceView;->onMeasure(II)V

    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ui/FitWidthImageResourceView;->a:Lapb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/FitWidthImageResourceView;->a:Lapb;

    invoke-virtual {v0}, Lapb;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-ne v0, v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FitWidthImageResourceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 33
    if-lez v2, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/FitWidthImageResourceView;->setMeasuredDimension(II)V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 46
    iget v0, p0, Lcom/snapchat/android/ui/FitWidthImageResourceView;->b:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/ui/FitWidthImageResourceView;->c:I

    if-eqz v0, :cond_2

    .line 47
    int-to-float v0, v1

    iget v2, p0, Lcom/snapchat/android/ui/FitWidthImageResourceView;->c:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/snapchat/android/ui/FitWidthImageResourceView;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 52
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/FitWidthImageResourceView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FitWidthImageResourceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 50
    int-to-float v2, v1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    goto :goto_1
.end method
