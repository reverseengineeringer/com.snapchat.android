.class final Lcom/snapchat/android/ui/CashSwiperView$10;
.super Lcom/snapchat/android/ui/CashSwiperView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CashSwiperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$10;->b:Lcom/snapchat/android/ui/CashSwiperView;

    iput-object p2, p0, Lcom/snapchat/android/ui/CashSwiperView$10;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$10;->b:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->h(Lcom/snapchat/android/ui/CashSwiperView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$10;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$10;->b:Lcom/snapchat/android/ui/CashSwiperView;

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$10;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/CashSwiperView;->a(Lcom/snapchat/android/ui/CashSwiperView;Landroid/view/View;)V

    .line 446
    return-void
.end method
