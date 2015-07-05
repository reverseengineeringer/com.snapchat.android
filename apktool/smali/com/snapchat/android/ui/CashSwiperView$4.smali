.class final Lcom/snapchat/android/ui/CashSwiperView$4;
.super Lcom/snapchat/android/ui/CashSwiperView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->p(Lcom/snapchat/android/ui/CashSwiperView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 644
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->r(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$4;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->s(Lcom/snapchat/android/ui/CashSwiperView;)Z

    .line 648
    return-void
.end method
