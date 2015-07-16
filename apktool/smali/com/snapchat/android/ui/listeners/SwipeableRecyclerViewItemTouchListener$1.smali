.class public final Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$1;
.super Landroid/support/v7/widget/RecyclerView$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$1;->a:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$j;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 263
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener$1;->a:Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableRecyclerViewItemTouchListener;->a(Z)V

    .line 264
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$j;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 268
    return-void
.end method
