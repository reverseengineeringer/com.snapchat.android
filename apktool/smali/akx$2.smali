.class final Lakx$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lakx;


# direct methods
.method constructor <init>(Lakx;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lakx$2;->this$0:Lakx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lakx$2;->this$0:Lakx;

    invoke-static {}, Lbhp;->a()V

    iget-object v1, v0, Lakx;->mConversations:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lakx;->mFeedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lakx;->mFeedItems:Ljava/util/List;

    iget-object v3, v0, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lakx;->mConversationsForListView:Lauu;

    invoke-virtual {v2}, Lauu;->clear()V

    iget-object v2, v0, Lakx;->mConversationsForListView:Lauu;

    iget-object v0, v0, Lakx;->mConversations:Ljava/util/List;

    invoke-virtual {v2, v0}, Lauu;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbce;

    invoke-direct {v1}, Lbce;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lakp;->e()V

    .line 238
    :cond_0
    return-void

    .line 237
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
