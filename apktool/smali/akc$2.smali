.class final Lakc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lakc;


# direct methods
.method constructor <init>(Lakc;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lakc$2;->this$0:Lakc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lazm;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lakc$2;->this$0:Lakc;

    invoke-static {}, Lbgp;->a()V

    iget-object v1, v0, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lakc;->mFeedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lakc;->mFeedItems:Ljava/util/List;

    iget-object v0, v0, Lakc;->mConversations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbe;

    invoke-direct {v1}, Lbbe;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lajv;->e()V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 237
    :cond_1
    iget-object v0, p0, Lakc$2;->this$0:Lakc;

    invoke-static {}, Lbgp;->a()V

    iget-object v1, v0, Lakc;->mConversationsForListView:Latw;

    invoke-virtual {v1}, Latw;->clear()V

    iget-object v1, v0, Lakc;->mConversations:Ljava/util/List;

    monitor-enter v1

    :try_start_2
    iget-object v2, v0, Lakc;->mConversationsForListView:Latw;

    iget-object v0, v0, Lakc;->mConversations:Ljava/util/List;

    invoke-virtual {v2, v0}, Latw;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbe;

    invoke-direct {v1}, Lbbe;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lajv;->e()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
