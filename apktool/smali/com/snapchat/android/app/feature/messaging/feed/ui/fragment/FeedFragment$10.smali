.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->a(Lvs;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    iput-object p2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1141
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->c:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->u(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)F

    move-result v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1142
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1143
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1144
    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1145
    new-instance v1, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10$1;-><init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1156
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$10;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1157
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1137
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1135
    return-void
.end method
