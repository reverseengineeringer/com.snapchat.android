.class Lcom/snapchat/android/analytics/framework/WorkerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/WorkerThread;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/WorkerThread;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a()V

    .line 21
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/WorkerThread;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
.end method

.method final a(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a()V

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/WorkerThread;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    return-void
.end method

.method final b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a()V

    .line 31
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/WorkerThread;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method
