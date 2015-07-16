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
    .locals 2

    .prologue
    .line 25
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/snapchat/android/util/WaitDoneHandler$1;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/util/WaitDoneHandler$1;-><init>(Lcom/snapchat/android/util/WaitDoneHandler;Ljava/lang/Object;)V

    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/WaitDoneHandler;->post(Ljava/lang/Runnable;)Z

    .line 38
    monitor-exit v1

    .line 44
    const/4 v0, 0x1

    return v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
