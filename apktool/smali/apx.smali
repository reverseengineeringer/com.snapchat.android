.class public final Lapx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapx$4;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/snapchat/android/model/StoryGroup;

.field final c:Lnl;

.field final d:Lbgc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;)V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lnl;->a()Lnl;

    move-result-object v0

    invoke-static {}, Lbgc;->a()Lbgc;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lapx;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Lnl;Lbgc;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Lnl;Lbgc;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lapx;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lapx;->b:Lcom/snapchat/android/model/StoryGroup;

    .line 47
    iput-object p3, p0, Lapx;->c:Lnl;

    .line 48
    iput-object p4, p0, Lapx;->d:Lbgc;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 90
    iget-object v0, p0, Lapx;->b:Lcom/snapchat/android/model/StoryGroup;

    iget-object v0, v0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    .line 91
    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVING:Lcom/snapchat/android/model/StoryGroup$ActionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVED:Lcom/snapchat/android/model/StoryGroup$ActionState;

    if-ne v0, v1, :cond_1

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only save one story at a time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    iget-object v0, p0, Lapx;->b:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVING:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 97
    new-instance v4, Lapx$2;

    iget-object v0, p0, Lapx;->b:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lapx$2;-><init>(Lapx;Ljava/util/Collection;)V

    iget-object v1, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    sget-object v2, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->INITIALIZED:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already executed this task. Status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->RUNNING:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    iput-object v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-wide v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mTimeoutMs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_3

    iget-object v1, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/snapchat/android/api/LoadAllStorySnapsTask$1;

    invoke-direct {v2, v4}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$1;-><init>(Lcom/snapchat/android/api/LoadAllStorySnapsTask;)V

    iget-wide v6, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mTimeoutMs:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v6, v7, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    invoke-virtual {v4}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->c()V

    invoke-virtual {v4}, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->d()V

    iget-object v6, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mStatus:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    sget-object v1, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->RUNNING:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    if-ne v0, v1, :cond_4

    iget-wide v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollFrequencyMs:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4

    iget-object v7, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mMutex:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$2;

    invoke-direct {v0, v4}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$2;-><init>(Lcom/snapchat/android/api/LoadAllStorySnapsTask;)V

    iput-object v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollingTask:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollingTimer:Ljava/util/Timer;

    iget-object v0, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollingTimer:Ljava/util/Timer;

    iget-object v1, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollingTask:Ljava/util/TimerTask;

    iget-wide v2, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollFrequencyMs:J

    iget-wide v4, v4, Lcom/snapchat/android/api/LoadAllStorySnapsTask;->mPollFrequencyMs:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method
