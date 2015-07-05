.class final Lcom/snapchat/android/ui/CashSwiperView$12;
.super Lcom/snapchat/android/ui/CashSwiperView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->b()V
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
    .line 541
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$12;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$12;->a:Lcom/snapchat/android/ui/CashSwiperView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$12;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->a()V

    .line 546
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$12;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->l(Lcom/snapchat/android/ui/CashSwiperView;)Lcom/snapchat/android/ui/CashSwiperView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/ui/CashSwiperView$b;->v()V

    .line 547
    return-void
.end method
