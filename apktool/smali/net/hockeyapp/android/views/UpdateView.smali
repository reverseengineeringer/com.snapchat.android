.class public Lnet/hockeyapp/android/views/UpdateView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/RelativeLayout;

.field protected b:Z

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;B)V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 11

    .prologue
    const/high16 v10, 0x41a00000    # 20.0f

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, -0x1

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    .line 63
    iput-boolean v7, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    .line 64
    iput-boolean v7, p0, Lnet/hockeyapp/android/views/UpdateView;->c:Z

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/UpdateView;->setLayoutHorizontally(Landroid/content/Context;)V

    .line 87
    :goto_0
    iput-boolean p3, p0, Lnet/hockeyapp/android/views/UpdateView;->c:Z

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/UpdateView;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/UpdateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-boolean v0, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_1
    iget-object v2, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    const/16 v2, 0xe6

    const/16 v3, 0xec

    const/16 v4, 0xef

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4, v4, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v8, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v4, 0x3

    const/16 v5, 0x1002

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    const/4 v3, 0x0

    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x1004

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v10, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x9

    invoke-virtual {v5, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    const/16 v4, 0x1003

    invoke-virtual {v5, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lnet/hockeyapp/android/views/UpdateView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v3, "Update"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/UpdateView;->addView(Landroid/view/View;)V

    .line 91
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1005

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setId(I)V

    const/high16 v0, 0x43c80000    # 400.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Lnet/hockeyapp/android/views/UpdateView;->c:Z

    if-eqz v4, :cond_2

    :goto_2
    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-boolean v0, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x1001

    invoke-virtual {v3, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_3
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/UpdateView;->addView(Landroid/view/View;)V

    .line 92
    iget-object v2, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v3, v0

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-boolean v3, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    if-eqz v3, :cond_5

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lbxo;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/UpdateView;->addView(Landroid/view/View;)V

    .line 93
    return-void

    .line 85
    :cond_0
    iput-boolean v7, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    goto/16 :goto_0

    .line 90
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lnet/hockeyapp/android/views/UpdateView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v8, v10, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v7, v7, v7, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_2
    move v0, v1

    .line 91
    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x3

    const/16 v4, 0x1001

    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_3

    .line 92
    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {}, Lbxo;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x3

    const/16 v3, 0x1001

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_5
.end method

.method private getButtonSelector()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 197
    new-array v1, v5, [I

    const v2, -0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 198
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 199
    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 200
    return-object v0

    .line 198
    :array_0
    .array-data 4
        -0x10100a7
        0x101009c
    .end array-data
.end method

.method private setLayoutHorizontally(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 97
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/views/UpdateView;->b:Z

    goto :goto_0
.end method
