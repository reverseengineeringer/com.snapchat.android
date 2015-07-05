.class public final Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$3;,
        Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;
    }
.end annotation


# instance fields
.field final a:Lcom/snapchat/android/ui/TextureVideoView;

.field final b:Lcom/snapchat/android/ui/ImageResourceView;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/view/View;

.field e:Z

.field public f:Z

.field g:Landroid/animation/AnimatorSet;

.field private final h:Landroid/widget/ProgressBar;

.field private final i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/TextureVideoView;Lcom/snapchat/android/ui/ImageResourceView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/ui/TextureVideoView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/ImageResourceView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ProgressBar;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Landroid/view/ViewGroup;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    .line 49
    iput-object p2, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    .line 50
    iput-object p3, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->c:Landroid/widget/ImageView;

    .line 51
    iput-object p4, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->d:Landroid/view/View;

    .line 52
    iput-object p5, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->h:Landroid/widget/ProgressBar;

    .line 53
    iput-object p6, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->i:Landroid/view/View;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;)V
    .locals 10
    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 62
    sget-object v0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$3;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$VideoState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-boolean v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->e:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->e:Z

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    iget-object v6, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/TextureVideoView;->getAlpha()F

    move-result v6

    aput v6, v5, v2

    aput v9, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->f:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->c:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    iget-object v6, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->c:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    aput v6, v5, v2

    aput v9, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    const-string v2, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$2;-><init>(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResourceView;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->h:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/ImageResourceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTranslationY(F)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setTranslationY(F)V

    goto/16 :goto_0

    .line 82
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-boolean v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->e:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->e:Z

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/ImageResourceView;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_8

    move v0, v1

    :goto_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->a:Lcom/snapchat/android/ui/TextureVideoView;

    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->f:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->c:Landroid/widget/ImageView;

    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_5
    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v6, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/ImageResourceView;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_6

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/ImageResourceView;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/ImageResourceView;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/ImageResourceView;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->d:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v4, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    const-string v5, "alpha"

    new-array v6, v7, [F

    iget-object v7, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->b:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v7}, Lcom/snapchat/android/ui/ImageResourceView;->getAlpha()F

    move-result v7

    aput v7, v6, v2

    aput v9, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter$1;-><init>(Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/snapchat/android/ui/chat/ChatDiscoverVideoPresenter;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 71
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 84
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
