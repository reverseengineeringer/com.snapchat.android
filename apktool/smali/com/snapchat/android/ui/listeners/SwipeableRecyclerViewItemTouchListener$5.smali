.class final Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Ljava/lang/Integer;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;Ljava/lang/Integer;Z)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;->c:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;->a:Ljava/lang/Integer;

    iput-boolean p3, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;->c:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->d(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;->c:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$5;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    .line 552
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 547
    return-void
.end method
