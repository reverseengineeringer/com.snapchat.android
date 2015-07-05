.class final Lcom/snapchat/android/stories/ui/animation/DismissAnimationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView$1;->a:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView$1;->a:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView$1;->a:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView$1;->a:Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/stories/ui/animation/DismissAnimationView;->setVisibility(I)V

    .line 89
    return-void
.end method
