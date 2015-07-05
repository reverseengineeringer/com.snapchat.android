.class final Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/ScAcceptTermsFragment;->i()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/animation/AnimatorSet;

.field final synthetic c:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/ScAcceptTermsFragment;Landroid/widget/ImageView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;->c:Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;->b:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 353
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/snapchat/android/fragments/ScAcceptTermsFragment$3;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    return-void
.end method
