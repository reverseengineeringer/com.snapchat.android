.class public final Lyh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lyh;


# instance fields
.field final a:Ltd;

.field final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final e:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Ltd;)V
    .locals 2
    .param p1    # Ltd;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lyh;->a:Ltd;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lyh;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lyh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lyh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lyh;->e:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public static declared-synchronized a()Lyh;
    .locals 3

    .prologue
    .line 47
    const-class v1, Lyh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyh;->f:Lyh;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lyh;

    invoke-static {}, Ltd;->a()Ltd;

    move-result-object v2

    invoke-direct {v0, v2}, Lyh;-><init>(Ltd;)V

    sput-object v0, Lyh;->f:Lyh;

    .line 50
    :cond_0
    sget-object v0, Lyh;->f:Lyh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;J)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/ConcurrentHashMap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 280
    :goto_0
    monitor-enter v0

    .line 281
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 277
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 278
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized b()V
    .locals 3

    .prologue
    .line 54
    const-class v1, Lyh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyh;->f:Lyh;

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lyh;->f:Lyh;

    iget-object v0, v0, Lyh;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lyh;->f:Lyh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit v1

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 212
    iget-object v0, p0, Lyh;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 213
    if-eqz v0, :cond_1

    .line 214
    monitor-enter v0

    .line 215
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v0

    move-wide v0, v2

    .line 220
    :goto_0
    return-wide v0

    .line 218
    :cond_0
    monitor-exit v0

    .line 220
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;J)V
    .locals 12
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-wide/16 v8, 0x1

    .line 120
    iget-object v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    .line 121
    iget-wide v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastConnSeqNum:J

    .line 122
    cmp-long v0, p2, v4

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_4

    .line 124
    :cond_0
    invoke-static {}, Lyf;->a()Lyf;

    move-result-object v0

    iget-boolean v0, v0, Lyf;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    if-eqz v0, :cond_2

    .line 125
    sub-long v0, p2, v4

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 126
    add-long v0, v4, v8

    :goto_0
    cmp-long v3, v0, p2

    if-gez v3, :cond_1

    .line 127
    iget-object v3, p0, Lyh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3, v0, v1}, Lyh;->a(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;J)V

    .line 126
    add-long/2addr v0, v8

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lyh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    const-string v0, "ChatGapDetector"

    const-string v1, "CHAT-LOG: Connection seqNum gap of %d starting with %d detected! Scheduling a conversation refresh"

    new-array v3, v6, [Ljava/lang/Object;

    sub-long v6, p2, v4

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v11

    add-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lyh;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lyh;->e:Landroid/os/Handler;

    new-instance v1, Lyh$2;

    invoke-direct {v1, p0, v2}, Lyh$2;-><init>(Lyh;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    :cond_2
    :goto_1
    return-void

    .line 153
    :cond_3
    const-string v0, "ChatGapDetector"

    const-string v1, "CHAT-LOG: Connection seqNum gap of %d starting with %d detected! Conversation refresh is already scheduled"

    new-array v2, v6, [Ljava/lang/Object;

    sub-long v6, p2, v4

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    add-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 160
    :cond_4
    iget-object v0, p0, Lyh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 161
    if-eqz v0, :cond_2

    .line 162
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;J)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 177
    iget-object v0, p0, Lyh;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 178
    if-eqz v0, :cond_2

    .line 179
    monitor-enter v0

    .line 180
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 181
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p2

    if-gez v1, :cond_0

    .line 182
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    .line 187
    :goto_0
    return v0

    .line 185
    :cond_1
    monitor-exit v0

    .line 187
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lyh;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 230
    if-eqz v0, :cond_1

    .line 231
    monitor-enter v0

    .line 232
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v0

    move v0, v1

    .line 235
    :goto_0
    return v0

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v0, v1

    .line 235
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;J)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 197
    iget-object v0, p0, Lyh;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 198
    if-eqz v0, :cond_0

    .line 199
    monitor-enter v0

    .line 200
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    .line 203
    :goto_0
    return v0

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Lyh;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 246
    if-eqz v0, :cond_1

    .line 247
    monitor-enter v0

    .line 248
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v0

    move v0, v1

    .line 251
    :goto_0
    return v0

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v0, v1

    .line 251
    goto :goto_0
.end method
