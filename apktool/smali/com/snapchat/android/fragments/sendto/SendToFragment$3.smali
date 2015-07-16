.class final Lcom/snapchat/android/fragments/sendto/SendToFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/sendto/SendToFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/sendto/SendToFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$3;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 626
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$3;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->b()V

    .line 622
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$3;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->a()V

    .line 618
    return-void
.end method
