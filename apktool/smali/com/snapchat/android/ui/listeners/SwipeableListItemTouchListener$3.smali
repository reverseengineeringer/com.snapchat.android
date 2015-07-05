.class final Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Landroid/view/View;)I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->c:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->a:Landroid/view/View;

    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$3;->b:Z

    invoke-interface {v1, v2, v0, v3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->a(Landroid/view/View;IZ)V

    .line 480
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method
