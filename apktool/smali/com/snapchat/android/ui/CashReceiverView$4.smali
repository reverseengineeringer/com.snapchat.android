.class public final Lcom/snapchat/android/ui/CashReceiverView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic b:Lcom/snapchat/android/ui/CashReceiverView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/CashReceiverView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/snapchat/android/ui/CashReceiverView$4;->b:Lcom/snapchat/android/ui/CashReceiverView;

    iput-object p2, p0, Lcom/snapchat/android/ui/CashReceiverView$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/ui/CashReceiverView$4;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/snapchat/android/ui/CashReceiverView$4;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 242
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
