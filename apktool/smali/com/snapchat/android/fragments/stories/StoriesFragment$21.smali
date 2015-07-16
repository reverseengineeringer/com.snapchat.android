.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$21;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 607
    if-eqz p2, :cond_0

    .line 611
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$21;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    goto :goto_0
.end method
