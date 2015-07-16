.class public Lcom/snapchat/android/ui/SelfScalingImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SelfScalingImageView$1;,
        Lcom/snapchat/android/ui/SelfScalingImageView$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, 0x11

    iput v0, p0, Lcom/snapchat/android/ui/SelfScalingImageView;->a:I

    .line 47
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v1, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    .line 69
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    .line 80
    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v6, Lcom/snapchat/android/ui/SelfScalingImageView$1;->a:[I

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ScaleType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;

    invoke-direct {v0, v4, v5}, Lcom/snapchat/android/ui/SelfScalingImageView$a;-><init>(II)V

    .line 85
    :goto_1
    iget v2, v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;->a:I

    iget v3, v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;->b:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to add this to a View first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_1
    int-to-float v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v4

    int-to-float v3, v5

    div-float/2addr v2, v3

    div-float v2, v0, v2

    cmpl-float v0, v2, v8

    if-lez v0, :cond_2

    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;

    div-float v2, v3, v2

    float-to-int v2, v2

    invoke-direct {v0, v4, v2}, Lcom/snapchat/android/ui/SelfScalingImageView$a;-><init>(II)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;

    int-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v2, v5}, Lcom/snapchat/android/ui/SelfScalingImageView$a;-><init>(II)V

    goto :goto_1

    :pswitch_2
    int-to-float v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v4

    int-to-float v3, v5

    div-float/2addr v2, v3

    div-float v2, v0, v2

    cmpl-float v0, v2, v8

    if-lez v0, :cond_3

    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;

    int-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v2, v5}, Lcom/snapchat/android/ui/SelfScalingImageView$a;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;

    div-float v2, v3, v2

    float-to-int v2, v2

    invoke-direct {v0, v4, v2}, Lcom/snapchat/android/ui/SelfScalingImageView$a;-><init>(II)V

    goto :goto_1

    .line 85
    :cond_4
    if-nez v2, :cond_5

    move v0, v1

    :goto_2
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v3, :cond_6

    :goto_3
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/SelfScalingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_7

    .line 105
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/snapchat/android/ui/SelfScalingImageView;->a:I

    int-to-float v0, v2

    int-to-float v6, v1

    div-float/2addr v0, v6

    int-to-float v6, v3

    int-to-float v7, v4

    div-float/2addr v6, v7

    div-float/2addr v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;

    mul-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    float-to-int v1, v1

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/SelfScalingImageView$a;-><init>(II)V

    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v5}, Lawf;->e(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;->a:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_2
    invoke-static {v5}, Lawf;->c(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v0, v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;->b:I

    sub-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 107
    :cond_3
    :goto_3
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/snapchat/android/ui/SelfScalingImageView;->setPadding(IIII)V

    goto :goto_0

    .line 105
    :cond_4
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;

    mul-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v3, v1}, Lcom/snapchat/android/ui/SelfScalingImageView$a;-><init>(II)V

    goto :goto_1

    :cond_5
    invoke-static {v5}, Lawf;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;->a:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_6
    invoke-static {v5}, Lawf;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v0, v0, Lcom/snapchat/android/ui/SelfScalingImageView$a;->b:I

    sub-int/2addr v0, v4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 109
    :cond_7
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/snapchat/android/ui/SelfScalingImageView;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method private getParentViewGroup()Landroid/view/ViewGroup;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 162
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Landroid/view/ViewGroup;

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setGravity(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/snapchat/android/ui/SelfScalingImageView;->a:I

    .line 61
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->b()V

    .line 62
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->a()V

    .line 63
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->b()V

    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->a()V

    .line 54
    return-void
.end method
