.class final Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;
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

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;Z)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iput-boolean p2, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->a:Z

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->e:Z

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResourceView;->setAlpha(F)V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->a:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    .line 139
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->f:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->b:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/TextureVideoView;->setAlpha(F)V

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;->c:Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;

    iget-object v0, v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVisibility(I)V

    .line 132
    return-void
.end method
