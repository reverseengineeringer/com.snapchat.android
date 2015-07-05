.class public Lcom/snapchat/videotranscoder/task/TaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskExecutor"


# instance fields
.field private mCurrentTask:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

.field private final mTaskLock:Ljava/util/concurrent/locks/Lock;

.field private final mTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskQueue:Ljava/util/Queue;

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mCurrentTask:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->completeTask(Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;Lcom/snapchat/videotranscoder/task/Task$Status;)V

    return-void
.end method

.method private clearCurrentTask()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mCurrentTask:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 144
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 145
    return-void
.end method

.method private completeTask(Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 1
    .param p1    # Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v0, p1, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mDoneCallback:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p2}, Lcom/snapchat/videotranscoder/task/Task$DoneCallback;->done(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->clearCurrentTask()V

    .line 135
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->scheduleNext()V

    .line 136
    return-void
.end method

.method private scheduleNext()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 104
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mCurrentTask:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 121
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 110
    iput-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mCurrentTask:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 112
    iget-object v1, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 114
    iget-object v1, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mTask:Lcom/snapchat/videotranscoder/task/Task;

    .line 115
    new-instance v2, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/videotranscoder/task/TaskExecutor$1;-><init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;)V

    iget-object v0, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mProgressUpdateCallback:Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/Task;->runAsync(Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V
    .locals 2
    .param p1    # Lcom/snapchat/videotranscoder/task/Task;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/videotranscoder/task/Task$DoneCallback;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "task is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 50
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskQueue:Ljava/util/Queue;

    new-instance v1, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;-><init>(Lcom/snapchat/videotranscoder/task/TaskExecutor;Lcom/snapchat/videotranscoder/task/Task;Lcom/snapchat/videotranscoder/task/Task$DoneCallback;Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->scheduleNext()V

    .line 53
    return-void
.end method

.method public tryAbort(Lcom/snapchat/videotranscoder/task/Task;)V
    .locals 6
    .param p1    # Lcom/snapchat/videotranscoder/task/Task;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "task is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/videotranscoder/task/Task;->tryAbort()Lcom/snapchat/videotranscoder/task/Task$Status;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 75
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v1, v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 77
    iget-object v4, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mTask:Lcom/snapchat/videotranscoder/task/Task;

    if-ne v4, p1, :cond_1

    .line 78
    iget-object v2, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mDoneCallback:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-interface {v0, v1}, Lcom/snapchat/videotranscoder/task/Task$DoneCallback;->done(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mCurrentTask:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    iget-object v0, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mTask:Lcom/snapchat/videotranscoder/task/Task;

    if-ne v0, p1, :cond_3

    .line 87
    iput-object v3, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mCurrentTask:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->scheduleNext()V

    .line 94
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :try_start_1
    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->FAILED:Lcom/snapchat/videotranscoder/task/Task$Status;

    invoke-virtual {p1, v1}, Lcom/snapchat/videotranscoder/task/Task;->setStatus(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 72
    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->FAILED:Lcom/snapchat/videotranscoder/task/Task$Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :try_start_2
    new-instance v2, Lcom/snapchat/videotranscoder/task/TranscodingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/snapchat/videotranscoder/task/TranscodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/snapchat/videotranscoder/task/Task$Status;->RUNNING:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-eq v2, v0, :cond_6

    .line 76
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 77
    iget-object v5, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mTask:Lcom/snapchat/videotranscoder/task/Task;

    if-ne v5, p1, :cond_4

    .line 78
    iget-object v4, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mDoneCallback:Lcom/snapchat/videotranscoder/task/Task$DoneCallback;

    .line 80
    if-eqz v0, :cond_5

    .line 81
    invoke-interface {v0, v2}, Lcom/snapchat/videotranscoder/task/Task$DoneCallback;->done(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mCurrentTask:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    iget-object v0, v0, Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;->mTask:Lcom/snapchat/videotranscoder/task/Task;

    if-ne v0, p1, :cond_6

    .line 87
    iput-object v3, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mCurrentTask:Lcom/snapchat/videotranscoder/task/TaskExecutor$TaskWrapper;

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/TaskExecutor;->mTaskLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/TaskExecutor;->scheduleNext()V

    throw v1

    .line 75
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_0
.end method
