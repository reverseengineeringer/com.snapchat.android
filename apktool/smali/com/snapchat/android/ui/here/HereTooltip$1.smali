.class final Lcom/snapchat/android/ui/here/HereTooltip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HereTooltip;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewPropertyAnimator;

.field final synthetic b:Lcom/snapchat/android/ui/here/HereTooltip;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HereTooltip;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HereTooltip$1;->b:Lcom/snapchat/android/ui/here/HereTooltip;

    iput-object p2, p0, Lcom/snapchat/android/ui/here/HereTooltip$1;->a:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip$1;->a:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip$1;->a:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip$1;->a:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip$1;->a:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip$1;->a:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 166
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method
