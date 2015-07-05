.class final Lcom/snapchat/android/ui/CashReceiverView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic c:I

.field final synthetic d:Lcom/snapchat/android/ui/CashReceiverView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashReceiverView;FFI)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    iput p2, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->a:F

    iput p3, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->b:F

    iput p4, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashReceiverView;->d(Lcom/snapchat/android/ui/CashReceiverView;)Z

    .line 189
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashReceiverView;->c(Lcom/snapchat/android/ui/CashReceiverView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->a:F

    iget v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->b:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    sget v1, Lcom/snapchat/android/ui/CashReceiverView$a;->a:I

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView;I)V

    goto :goto_0

    .line 179
    :cond_1
    iget v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->a:F

    iget v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->b:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashReceiverView;->b(Lcom/snapchat/android/ui/CashReceiverView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CashReceiverView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    sget v1, Lcom/snapchat/android/ui/CashReceiverView$a;->b:I

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView;I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->d:Lcom/snapchat/android/ui/CashReceiverView;

    iget v1, p0, Lcom/snapchat/android/ui/CashReceiverView$2;->c:I

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashReceiverView;->a(Lcom/snapchat/android/ui/CashReceiverView;I)V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method
