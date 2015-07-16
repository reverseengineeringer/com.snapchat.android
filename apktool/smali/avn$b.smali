.class final Lavn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field iSnapProvider:Lajk;

.field iSnapToOpen:Laka;

.field final synthetic this$0:Lavn;


# direct methods
.method public constructor <init>(Lavn;Laka;Lajk;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lavn$b;->this$0:Lavn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p2, p0, Lavn$b;->iSnapToOpen:Laka;

    .line 451
    iput-object p3, p0, Lavn$b;->iSnapProvider:Lajk;

    .line 452
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 456
    iget-object v0, p0, Lavn$b;->this$0:Lavn;

    iget-object v0, v0, Lavn;->mMediaViewAnalytics:Lnx;

    const-string v1, "feed"

    const-string v2, "view_media"

    invoke-virtual {v0, v2, v1}, Lnx;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lavn$b;->iSnapToOpen:Laka;

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v6, v1, Laka;

    if-eqz v6, :cond_0

    check-cast v1, Laka;

    invoke-virtual {v1}, Laka;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Laka;->j()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Laka;->an()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Laka;->A()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v0}, Laka;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :cond_2
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbem;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbem;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lavn$b;->this$0:Lavn;

    iget-object v0, v0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    iget-object v1, p0, Lavn$b;->iSnapToOpen:Laka;

    iget-object v2, p0, Lavn$b;->iSnapProvider:Lajk;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/SnapView;->a(Laka;Lajk;)V

    .line 460
    return-void
.end method
