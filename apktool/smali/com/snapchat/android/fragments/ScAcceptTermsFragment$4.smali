.class final Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/ScAcceptTermsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;->b:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$4;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    return-void
.end method
