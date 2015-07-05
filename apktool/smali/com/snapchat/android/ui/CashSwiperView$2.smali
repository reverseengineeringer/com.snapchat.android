.class public final Lcom/snapchat/android/ui/CashSwiperView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CashSwiperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$2;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$2;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->m(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$2;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->n(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 593
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$2;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$2;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 596
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$2;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    const/16 v1, 0x1388

    if-le v0, v1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$2;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->o(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 600
    :cond_0
    return-void
.end method
