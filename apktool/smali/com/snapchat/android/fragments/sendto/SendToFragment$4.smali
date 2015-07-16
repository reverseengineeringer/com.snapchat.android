.class final Lcom/snapchat/android/fragments/sendto/SendToFragment$4;
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
    .line 645
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$4;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$4;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->b()V

    .line 654
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 664
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$4;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->a()V

    .line 649
    return-void
.end method
