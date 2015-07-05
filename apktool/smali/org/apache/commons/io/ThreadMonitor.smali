.class Lorg/apache/commons/io/ThreadMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final thread:Ljava/lang/Thread;

.field private final timeout:J


# direct methods
.method private constructor <init>(Ljava/lang/Thread;J)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    .line 97
    iput-wide p2, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:J

    .line 98
    return-void
.end method

.method public static start(J)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/apache/commons/io/ThreadMonitor;->start(Ljava/lang/Thread;J)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static start(Ljava/lang/Thread;J)Ljava/lang/Thread;
    .locals 5

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 70
    new-instance v1, Lorg/apache/commons/io/ThreadMonitor;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/io/ThreadMonitor;-><init>(Ljava/lang/Thread;J)V

    .line 71
    new-instance v0, Ljava/lang/Thread;

    const-class v2, Lorg/apache/commons/io/ThreadMonitor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    :cond_0
    return-object v0
.end method

.method public static stop(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 84
    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 109
    iget-object v0, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
