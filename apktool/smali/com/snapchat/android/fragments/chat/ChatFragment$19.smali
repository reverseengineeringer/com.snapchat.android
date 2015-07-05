.class final Lcom/snapchat/android/fragments/chat/ChatFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 2624
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$19;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$19;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->K(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    .line 2638
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$19;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->J(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$19;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->G(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbgr;

    move-result-object v0

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashReceiverView;->a()V

    .line 2630
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2641
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 2633
    return-void
.end method
