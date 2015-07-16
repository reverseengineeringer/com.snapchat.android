.class final Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;F)F

    .line 461
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iget-object v1, v1, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->b(Landroid/view/View;)I

    .line 462
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-static {v2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->b(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$a;->a(Landroid/view/View;F)Z

    .line 466
    return-void
.end method
