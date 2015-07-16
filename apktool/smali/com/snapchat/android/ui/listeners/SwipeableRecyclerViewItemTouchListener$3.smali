.class final Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$3;
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
.field final synthetic a:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$3;->a:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$3;->a:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-static {v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->c(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)Ljava/lang/Integer;

    .line 408
    return-void
.end method
