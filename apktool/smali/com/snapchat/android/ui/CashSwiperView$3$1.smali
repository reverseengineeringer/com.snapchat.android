.class final Lcom/snapchat/android/ui/CashSwiperView$3$1;
.super Lcom/snapchat/android/ui/CashSwiperView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView$3;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView$3;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$3$1;->a:Lcom/snapchat/android/ui/CashSwiperView$3;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$3$1;->a:Lcom/snapchat/android/ui/CashSwiperView$3;

    iget-object v0, v0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->p(Lcom/snapchat/android/ui/CashSwiperView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$3$1;->a:Lcom/snapchat/android/ui/CashSwiperView$3;

    iget-object v0, v0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->o(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 624
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$3$1;->a:Lcom/snapchat/android/ui/CashSwiperView$3;

    iget-object v0, v0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->m(Lcom/snapchat/android/ui/CashSwiperView;)V

    .line 625
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$3$1;->a:Lcom/snapchat/android/ui/CashSwiperView$3;

    iget-object v0, v0, Lcom/snapchat/android/ui/CashSwiperView$3;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->n(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 627
    :cond_0
    return-void
.end method
