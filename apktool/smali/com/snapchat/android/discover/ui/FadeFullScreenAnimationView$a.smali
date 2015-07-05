.class final Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$a;->a:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;B)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$a;-><init>(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$a;->a:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;)Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$a;->a:Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;->a(Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView;)Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/FadeFullScreenAnimationView$b;->a()V

    .line 116
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
