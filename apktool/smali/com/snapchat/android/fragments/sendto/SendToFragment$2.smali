.class final Lcom/snapchat/android/fragments/sendto/SendToFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/sendto/SendToFragment;->n()V
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
    .line 587
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    .line 591
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->r(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    .line 599
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 595
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->s(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    goto :goto_0

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->a(Z)V

    goto :goto_0
.end method
