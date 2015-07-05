.class final Lcom/snapchat/android/ui/CashSwiperView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CashSwiperView;
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
    .line 613
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->p(Lcom/snapchat/android/ui/CashSwiperView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->q(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 618
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->n(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 619
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->n(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/ui/CashSwiperView$3$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CashSwiperView$3$1;-><init>(Lcom/snapchat/android/ui/CashSwiperView$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 630
    :cond_0
    return-void
.end method
