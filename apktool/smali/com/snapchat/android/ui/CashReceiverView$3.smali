.class public final Lcom/snapchat/android/ui/CashReceiverView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CashReceiverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:F

.field final synthetic i:Lcom/snapchat/android/ui/CashReceiverView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/CashReceiverView;Landroid/view/View;FFFFFFF)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->i:Lcom/snapchat/android/ui/CashReceiverView;

    iput-object p2, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->a:Landroid/view/View;

    iput p3, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->b:F

    iput p4, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->c:F

    iput p5, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->d:F

    iput p6, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->e:F

    iput p7, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->f:F

    iput p8, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->g:F

    iput p9, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->h:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 229
    const v1, 0x459c4000    # 5000.0f

    mul-float/2addr v0, v1

    .line 230
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->a:Landroid/view/View;

    iget v2, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->b:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->c:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->d:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->e:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 231
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->a:Landroid/view/View;

    iget v2, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->f:F

    iget v3, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->g:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 232
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->a:Landroid/view/View;

    iget v2, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->b:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->c:F

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget v0, p0, Lcom/snapchat/android/ui/CashReceiverView$3;->h:F

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 233
    return-void
.end method
