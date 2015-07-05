.class final Lcom/snapchat/android/ui/CashSwiperView$8;
.super Lcom/snapchat/android/ui/CashSwiperView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->setBarTextWithFade(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/ui/CashSwiperView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/CashSwiperView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$8;->b:Lcom/snapchat/android/ui/CashSwiperView;

    iput-object p2, p0, Lcom/snapchat/android/ui/CashSwiperView$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/snapchat/android/ui/CashSwiperView$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/snapchat/android/ui/CashSwiperView$8;->b:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v0}, Lcom/snapchat/android/ui/CashSwiperView;->f(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    return-void
.end method
