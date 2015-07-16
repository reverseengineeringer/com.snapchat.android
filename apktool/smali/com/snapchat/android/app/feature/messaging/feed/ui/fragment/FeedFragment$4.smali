.class final Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->b_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lvu;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lvu;->a:Z

    .line 798
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lvu;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 799
    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v2}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->m(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lvu;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;->c(I)V

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->o(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment$4;->a:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;->n(Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$b;->a(I)V

    goto :goto_0
.end method
