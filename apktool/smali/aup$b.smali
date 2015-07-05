.class final Laup$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field iSnapProvider:Laio;

.field iSnapToOpen:Laje;

.field final synthetic this$0:Laup;


# direct methods
.method public constructor <init>(Laup;Laje;Laio;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Laup$b;->this$0:Laup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p2, p0, Laup$b;->iSnapToOpen:Laje;

    .line 429
    iput-object p3, p0, Laup$b;->iSnapProvider:Laio;

    .line 430
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 434
    iget-object v0, p0, Laup$b;->this$0:Laup;

    iget-object v0, v0, Laup;->mMediaViewAnalytics:Lng;

    const-string v1, "feed"

    const-string v2, "view_media"

    invoke-virtual {v0, v2, v1}, Lng;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Laup$b;->iSnapToOpen:Laje;

    invoke-virtual {v0}, Laje;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Laup$b;->iSnapToOpen:Laje;

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    instance-of v5, v0, Laje;

    if-eqz v5, :cond_1

    check-cast v0, Laje;

    invoke-virtual {v0}, Laje;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Laje;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Laje;->ap()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Laje;->z()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Laje;->o()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 440
    :cond_3
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdm;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbdm;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Laup$b;->this$0:Laup;

    iget-object v0, v0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    iget-object v1, p0, Laup$b;->iSnapToOpen:Laje;

    iget-object v2, p0, Laup$b;->iSnapProvider:Laio;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/SnapView;->a(Laje;Laio;)V

    goto :goto_0
.end method
