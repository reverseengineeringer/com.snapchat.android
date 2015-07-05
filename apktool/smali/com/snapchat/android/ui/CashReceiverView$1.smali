.class final Lcom/snapchat/android/ui/CashReceiverView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashReceiverView;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Lcom/snapchat/android/ui/CashReceiverView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashReceiverView;FFF)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->d:Lcom/snapchat/android/ui/CashReceiverView;

    iput p2, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->a:F

    iput p3, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->b:F

    iput p4, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashReceiverView;->b(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->a:F

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v0, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 159
    iget v1, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->b:F

    iget v2, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->c:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 160
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 161
    neg-float v0, v0

    .line 165
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashReceiverView;->b(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 166
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashReceiverView;->b(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CashReceiverView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 163
    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v2}, Lcom/snapchat/android/ui/CashReceiverView;->b(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/snapchat/android/ui/CashReceiverView$1;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/CashReceiverView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method
