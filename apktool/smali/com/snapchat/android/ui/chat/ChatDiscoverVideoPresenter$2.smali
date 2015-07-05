.class final Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 198
    iput-boolean v1, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->a:Z

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iput-boolean v1, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->e:Z

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->setAlpha(F)V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 203
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 187
    iget-boolean v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->a:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    .line 193
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResourceView;->setAlpha(F)V

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;->b:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    .line 184
    return-void
.end method
