.class final Lcom/snapchat/android/ui/CashSwiperView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/CashSwiperView;->a(Landroid/content/Context;)V
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
    .line 153
    iput-object p1, p0, Lcom/snapchat/android/ui/CashSwiperView$6;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 157
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Laux;->a(F)F

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$6;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/snapchat/android/ui/CashSwiperView$6;->a:Lcom/snapchat/android/ui/CashSwiperView;

    invoke-static {v1}, Lcom/snapchat/android/ui/CashSwiperView;->b(Lcom/snapchat/android/ui/CashSwiperView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 161
    :cond_0
    return-void
.end method
