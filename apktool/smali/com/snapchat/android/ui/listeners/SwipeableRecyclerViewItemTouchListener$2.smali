.class final Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;I)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    iput p2, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$2;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    .line 310
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$s;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 311
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$2;->b:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v1}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->b(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$c;->g(Landroid/support/v7/widget/RecyclerView$s;)V

    .line 312
    return-void
.end method
