.class public abstract Lbho;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mCountdownInterval:J

.field final mDuration:J

.field private final mFinishMessage:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field final mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mTickMessage:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJLandroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbho;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbho;->mIsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Lbho$1;

    invoke-direct {v0, p0}, Lbho$1;-><init>(Lbho;)V

    iput-object v0, p0, Lbho;->mTickMessage:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Lbho$2;

    invoke-direct {v0, p0}, Lbho$2;-><init>(Lbho;)V

    iput-object v0, p0, Lbho;->mFinishMessage:Ljava/lang/Runnable;

    .line 47
    int-to-long v0, p1

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lbho;->mDuration:J

    .line 48
    iput-wide p2, p0, Lbho;->mCountdownInterval:J

    .line 49
    iput-object p4, p0, Lbho;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lbho;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lbho;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final d()V
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lbho;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lbho;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lbho;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lbho;->mFinishMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    :goto_0
    iget-object v0, p0, Lbho;->mIsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    monitor-exit v1

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lbho;->b()V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbho$3;

    invoke-direct {v1, p0}, Lbho$3;-><init>(Lbho;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method
