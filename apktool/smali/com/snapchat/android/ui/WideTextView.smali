.class public Lcom/snapchat/android/ui/WideTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/WideTextView;->a:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/WideTextView;->a:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/WideTextView;->a:Z

    .line 19
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 36
    invoke-virtual {p0}, Lcom/snapchat/android/ui/WideTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 37
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 38
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 39
    iget-boolean v2, p0, Lcom/snapchat/android/ui/WideTextView;->a:Z

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/ui/WideTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/WideTextView;->setMeasuredDimension(II)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/WideTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/WideTextView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setLandscapeMode(Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/snapchat/android/ui/WideTextView;->a:Z

    .line 31
    return-void
.end method
