.class public Lcom/snapchat/android/ui/SharedProfileSnapcodeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getBitmapFromView()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->setDrawingCacheEnabled(Z)V

    .line 87
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->measure(II)V

    .line 90
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->layout(IIII)V

    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->buildDrawingCache()V

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    :goto_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->draw(Landroid/graphics/Canvas;)V

    .line 101
    return-object v0

    .line 98
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0a0379

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->a:Landroid/view/ViewGroup;

    .line 41
    const v0, 0x7f0a037a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->c:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0a037b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->d:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method public setProfileImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setSnapcodeSvg(Lfu;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Lfu;->a()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
