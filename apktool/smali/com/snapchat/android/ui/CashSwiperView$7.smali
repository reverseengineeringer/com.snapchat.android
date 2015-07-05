.class final Lcom/snapchat/android/ui/CashSwiperView$7;
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
.field final synthetic a:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->c(Lcom/snapchat/android/ui/CashSwiperView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->d(Lcom/snapchat/android/ui/CashSwiperView;)Z

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$7;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->e(Lcom/snapchat/android/ui/CashSwiperView;)F

    .line 223
    return-void
.end method
