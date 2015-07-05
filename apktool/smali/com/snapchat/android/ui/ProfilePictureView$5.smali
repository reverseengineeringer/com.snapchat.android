.class public final Lcom/snapchat/android/ui/ProfilePictureView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ProfilePictureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/ProfilePictureView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/ProfilePictureView;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/snapchat/android/ui/ProfilePictureView$5;->a:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView$5;->a:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->e(Lcom/snapchat/android/ui/ProfilePictureView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView$5;->a:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->e(Lcom/snapchat/android/ui/ProfilePictureView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    return-void
.end method
