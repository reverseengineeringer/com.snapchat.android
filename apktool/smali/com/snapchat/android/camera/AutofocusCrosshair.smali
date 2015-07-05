.class public Lcom/snapchat/android/camera/AutofocusCrosshair;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Lapn;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/snapchat/android/camera/AutofocusCrosshair;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:I

    .line 25
    new-instance v0, Lapn;

    invoke-direct {v0, p0}, Lapn;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->a:Lapn;

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->a:Lapn;

    iget v1, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:I

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-static {v1}, Lapn;->a(I)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapn;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lapn;->a()Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapn;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Lapn;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lapn$1;

    invoke-direct {v1, v0}, Lapn$1;-><init>(Lapn;)V

    invoke-virtual {v0, v1}, Lapn;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 33
    iget v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:I

    iget v1, p0, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/camera/AutofocusCrosshair;->setMeasuredDimension(II)V

    .line 34
    return-void
.end method
