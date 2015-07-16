.class public final Lbhp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadUtils"

.field private static sAssertionsEnabled:Z

.field private static sMainThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbhp;->sAssertionsEnabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 54
    sget-boolean v0, Lbhp;->sAssertionsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbhp;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called only from the Main Thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    return-void
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 22
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lbhp;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbhp;->sMainThreadHandler:Landroid/os/Handler;

    .line 74
    :cond_0
    new-instance v0, Lbhu;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Lbhu;-><init>(Ljava/lang/Runnable;I)V

    .line 75
    sget-object v1, Lbhp;->sMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public static a(Ljava/lang/Thread;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 32
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 41
    :cond_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    .line 36
    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 83
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 63
    sget-boolean v0, Lbhp;->sAssertionsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbhp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must not be called from the Main Thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lavf;->MISCELLANEOUS_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
