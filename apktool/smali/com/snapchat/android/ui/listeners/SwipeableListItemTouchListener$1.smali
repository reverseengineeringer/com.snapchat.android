.class final Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$1;->a:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$1;->a:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Z)V

    .line 193
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
