.class final Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_1

    .line 546
    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v4, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;F)F

    .line 547
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->d(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;)I

    move-result v0

    .line 548
    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v4}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->e(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)F

    move-result v4

    neg-float v4, v4

    int-to-float v0, v0

    div-float v0, v4, v0

    .line 549
    cmpg-float v4, v0, v2

    if-gez v4, :cond_0

    move v0, v2

    .line 550
    :cond_0
    cmpl-float v2, v0, v3

    if-lez v2, :cond_2

    .line 551
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->d(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v2}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->e(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)F

    move-result v2

    iget-object v4, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v4}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->f(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)F

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$4;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->g(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)F

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$d;->a(Landroid/support/v7/widget/RecyclerView$s;FFFF)Z

    .line 553
    :cond_1
    return-void

    :cond_2
    move v3, v0

    goto :goto_0
.end method
