.class public abstract Lcom/snapchat/android/api/LoadAllStorySnapsTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;,
        Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;
    }
.end annotation


# static fields
.field private static final DEFAULT_POLL_FREQUENCY_MS:J = 0x3e8L

.field private static final DEFAULT_TIMEOUT_MS:J = 0x7530L


# instance fields
.field private final mCallbackHandler:Landroid/os/Handler;
    .annotation build Lcgc;
    .end annotation
.end field

.field public mMutex:Ljava/lang/Object;

.field public final mPollFrequencyMs:J

.field public mPollingTask:Ljava/util/TimerTask;
    .annotation build Lcgc;
    .end annotation
.end field

.field public mPollingTimer:Ljava/util/Timer;
    .annotation build Lcgc;
    .end annotation
.end field

.field private final mSnapLoadedListener:Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;

.field public mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

.field private final mStoryLoader:Lzd;

.field private final mStorySnaps:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field mStorySnapsLeftToLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field public final mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Lcgc;
    .end annotation
.end field

.field public final mTimeoutMs:J


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lajr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;-><init>(Ljava/util/Collection;B)V

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lajr;",
            ">;B)V"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lzd;->a()Lzd;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;-><init>(Ljava/util/Collection;Landroid/os/Handler;Lzd;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Landroid/os/Handler;Lzd;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lajr;",
            ">;",
            "Landroid/os/Handler;",
            "Lzd;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    const-wide/16 v6, 0x7530

    const-wide/16 v4, 0x3e8

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;

    invoke-direct {v0, p0, v8}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;-><init>(Lcom/snapchat/android/api/LoadAllStorySnapsTask;B)V

    iput-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mSnapLoadedListener:Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStorySnapsLeftToLoad:Ljava/util/Set;

    .line 48
    sget-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->INITIALIZED:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    iput-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    .line 68
    cmp-long v0, v6, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMs < 0: 30000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pollFrequencyMs < 0: 1000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pollFrequencyMs (%s) > timeoutMs (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    iput-object p1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStorySnaps:Ljava/util/Collection;

    .line 76
    iput-wide v6, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mTimeoutMs:J

    .line 77
    iput-wide v4, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollFrequencyMs:J

    .line 78
    iput-object p2, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mCallbackHandler:Landroid/os/Handler;

    .line 79
    iput-object p3, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStoryLoader:Lzd;

    .line 80
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method final a(Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 183
    iget-object v1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    sget-object v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->SUCCESS:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    sget-object v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->FAILED_TO_LOAD:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    sget-object v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->TIMEOUT:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    if-ne v0, v4, :cond_1

    .line 185
    :cond_0
    monitor-exit v1

    .line 202
    :goto_0
    return-void

    .line 187
    :cond_1
    iput-object p1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    .line 188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 190
    sget-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->TIMEOUT:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    if-ne p1, v0, :cond_2

    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStorySnapsLeftToLoad:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    iget-object v6, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mSnapLoadedListener:Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;

    invoke-virtual {v0, v6}, Lajr;->a(Laje$a;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 188
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    move v1, v3

    .line 190
    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStorySnapsLeftToLoad:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollingTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollingTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/api/LoadAllStorySnapsTask$3;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$3;-><init>(Lcom/snapchat/android/api/LoadAllStorySnapsTask;Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 200
    :cond_7
    sget-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->SUCCESS:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    if-ne p1, v0, :cond_8

    :goto_3
    invoke-virtual {p0, v2}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->a(Z)V

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_3
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->a()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->b()V

    goto :goto_0
.end method

.method public abstract b()V
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 142
    iget-object v1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStorySnaps:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 144
    invoke-virtual {v0}, Lajr;->L()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStorySnapsLeftToLoad:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v3, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mSnapLoadedListener:Lcom/snapchat/android/api/LoadAllStorySnapsTask$a;

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :cond_1
    :try_start_1
    iget-object v4, v0, Laje;->mLoadEventListeners:Ljava/util/Set;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v0, Laje;->mLoadEventListeners:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :try_start_3
    invoke-virtual {v0}, Lajr;->R()Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStoryLoader:Lzd;

    invoke-virtual {v3, v0}, Lzd;->b(Lajr;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 149
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 155
    :cond_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStorySnapsLeftToLoad:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    sget-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->SUCCESS:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->a(Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;)V

    .line 168
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->SUCCESS:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->a(Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;)V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final e()Z
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStorySnapsLeftToLoad:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 174
    invoke-virtual {v0}, Lajr;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    monitor-exit v1

    .line 179
    :goto_0
    return v0

    .line 178
    :cond_1
    monitor-exit v1

    .line 179
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
