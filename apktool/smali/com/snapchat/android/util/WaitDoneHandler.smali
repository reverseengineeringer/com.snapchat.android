.class public Lcom/snapchat/android/util/WaitDoneHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WaitDoneHandler"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    return-void
.end method


# virtual methods
.method public waitDone()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 25
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v2, Lcom/snapchat/android/util/WaitDoneHandler$1;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/util/WaitDoneHandler$1;-><init>(Lcom/snapchat/android/util/WaitDoneHandler;Ljava/lang/Object;)V

    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/snapchat/android/util/WaitDoneHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    monitor-exit v1

    .line 44
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 40
    :catch_0
    move-exception v2

    const-string v2, "WaitDoneHandler"

    const-string v3, "waitDone interrupted"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    monitor-exit v1

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
