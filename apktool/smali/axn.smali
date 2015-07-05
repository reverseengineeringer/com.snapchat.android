.class public final Laxn;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecureChatSessionInputThread"


# instance fields
.field public final mInputStreamQueue:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Laxk;",
            ">;"
        }
    .end annotation
.end field

.field private final mRateLimiter:Laxo;

.field private final mReceivedMessageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxg;",
            ">;"
        }
    .end annotation
.end field

.field public final mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mStreamProcessingStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laxo;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Laxn;->mInputStreamQueue:Ljava/util/concurrent/SynchronousQueue;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Laxn;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Laxn;->mReceivedMessageListeners:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Laxn;->mStreamProcessingStateListeners:Ljava/util/List;

    .line 31
    const-string v0, "SecureChatSessionInputThread"

    invoke-virtual {p0, v0}, Laxn;->setName(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Laxn;->mRateLimiter:Laxo;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Laxg;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Laxn;->mReceivedMessageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public final run()V
    .locals 5

    .prologue
    .line 43
    :cond_0
    iget-object v0, p0, Laxn;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 44
    const/4 v2, 0x0

    .line 46
    :try_start_0
    iget-object v0, p0, Laxn;->mInputStreamQueue:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxk;

    .line 47
    const-string v1, "SecureChatSessionInputThread"

    const-string v3, "CHAT-LOG: SecureChatSessionInputThread got input stream"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v1, p0, Laxn;->mStreamProcessingStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laxh;

    invoke-interface {v1}, Laxh;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 64
    :goto_1
    iget-object v0, p0, Laxn;->mStreamProcessingStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxh;

    invoke-interface {v0, v1}, Laxh;->a(Ljava/lang/Exception;)V

    goto :goto_2

    .line 55
    :cond_1
    :try_start_1
    iget-object v1, p0, Laxn;->mRateLimiter:Laxo;

    iget-boolean v3, v1, Laxo;->mRunning:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Laxo;->mMessagesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget v4, v1, Laxo;->mMaxMessagesPerSecond:I

    if-le v3, v4, :cond_2

    iget-object v1, v1, Laxo;->mRateLimiterInterface:Laxo$a;

    invoke-interface {v1}, Laxo$a;->e()V

    .line 50
    :cond_2
    invoke-virtual {v0}, Laxk;->a()Lbii;

    move-result-object v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    iget-object v1, p0, Laxn;->mReceivedMessageListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laxg;

    .line 53
    invoke-interface {v1, v3}, Laxg;->a(Lbii;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 63
    goto :goto_1

    .line 66
    :cond_4
    return-void
.end method
