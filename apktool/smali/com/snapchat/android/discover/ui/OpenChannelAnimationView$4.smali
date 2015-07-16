.class public final Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;
.super Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;

.field final synthetic b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$b;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Lcom/snapchat/android/discover/ui/ChannelView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/discover/ui/ChannelView;->addView(Landroid/view/View;I)V

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Lcom/snapchat/android/discover/ui/ChannelView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/discover/ui/ChannelView;->a:Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 210
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 211
    new-instance v1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4$1;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 217
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->d(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Z

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Lcom/snapchat/android/discover/ui/ChannelView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;->a(Lcom/snapchat/android/discover/ui/ChannelView;)V

    .line 224
    :cond_1
    return-void

    .line 209
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
