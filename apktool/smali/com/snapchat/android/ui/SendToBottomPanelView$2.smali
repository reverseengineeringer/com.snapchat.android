.class public final Lcom/snapchat/android/ui/SendToBottomPanelView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/SendToBottomPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SendToBottomPanelView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/SendToBottomPanelView;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/snapchat/android/ui/SendToBottomPanelView$2;->a:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView$2;->a:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->a(Lcom/snapchat/android/ui/SendToBottomPanelView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView$2;->a:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->b(Lcom/snapchat/android/ui/SendToBottomPanelView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
