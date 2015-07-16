.class final Lcom/snapchat/android/fragments/chat/ChatFragment$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$16;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$16;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$16;)V
    .locals 0

    .prologue
    .line 2573
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$16$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2576
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$16$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$16;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$16;->a:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    .line 2577
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$16$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$16;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$16;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->p()V

    .line 2578
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$16$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$16;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$16;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lbhr;

    move-result-object v0

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashSwiperView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->setAlpha(F)V

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/CashSwiperView;->setEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/CashSwiperView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean v4, v0, Lcom/snapchat/android/ui/CashSwiperView;->e:Z

    iget-object v1, v0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->setUpFadeInAudio()V

    iget-object v1, v0, Lcom/snapchat/android/ui/CashSwiperView;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, v0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    :goto_0
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(I)V

    .line 2579
    return-void

    .line 2578
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    iget-object v1, v0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v1, Lcom/snapchat/android/ui/CashSwiperView;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, v0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :try_start_0
    iget-object v2, v0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/snapchat/android/ui/CashSwiperView$2;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/CashSwiperView$2;-><init>(Lcom/snapchat/android/ui/CashSwiperView;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, v0, Lcom/snapchat/android/ui/CashSwiperView;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
