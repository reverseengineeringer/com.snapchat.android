.class final Lzm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/chat/LoadConversationPageTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm;->c(Lcom/snapchat/android/model/chat/ChatConversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Lzm;


# direct methods
.method constructor <init>(Lzm;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0

    .prologue
    .line 1028
    iput-object p1, p0, Lzm$2;->b:Lzm;

    iput-object p2, p0, Lzm$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .prologue
    .line 1031
    if-nez p1, :cond_2

    .line 1032
    iget-object v0, p0, Lzm$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 1033
    iget-object v0, p0, Lzm$2;->b:Lzm;

    iget-object v2, p0, Lzm$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v0, v0, Lzm;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbif;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbil;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v3, Lbca;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v3, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    :cond_2
    return-void
.end method
