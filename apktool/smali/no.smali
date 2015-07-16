.class public final Lno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne;


# static fields
.field public static final TIMEOUT_MILLISECONDS:I = 0x7530


# instance fields
.field private final TAG:Ljava/lang/String;

.field mIsComplete:Z

.field private final mListener:Lnk;

.field final mMutex:Ljava/lang/Object;

.field private final mTimeoutRunnable:Ljava/util/TimerTask;

.field private final mTimeoutTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lnk;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-direct {p0, p1, v0}, Lno;-><init>(Lnk;Ljava/util/Timer;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lnk;Ljava/util/Timer;)V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "StoryAdStreamTimeoutListener"

    iput-object v0, p0, Lno;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lno;->mMutex:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lno;->mIsComplete:Z

    .line 54
    new-instance v0, Lno$1;

    invoke-direct {v0, p0}, Lno$1;-><init>(Lno;)V

    iput-object v0, p0, Lno;->mTimeoutRunnable:Ljava/util/TimerTask;

    .line 31
    iput-object p1, p0, Lno;->mListener:Lnk;

    .line 32
    iput-object p2, p0, Lno;->mTimeoutTimer:Ljava/util/Timer;

    .line 33
    iget-object v0, p0, Lno;->mTimeoutTimer:Ljava/util/Timer;

    iget-object v1, p0, Lno;->mTimeoutRunnable:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lno;->mListener:Lnk;

    invoke-virtual {v0, p1}, Lnk;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lnf;)V
    .locals 4
    .param p1    # Lnf;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 41
    iget-object v1, p0, Lno;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lno;->mIsComplete:Z

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lno;->mListener:Lnk;

    aput-object v3, v0, v2

    .line 44
    monitor-exit v1

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lno;->b(Lnf;)V

    .line 47
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final b(Lnf;)V
    .locals 5

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lno;->mIsComplete:Z

    .line 70
    iget-object v0, p0, Lno;->mTimeoutRunnable:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 71
    iget-object v0, p0, Lno;->mTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lno;->mListener:Lnk;

    invoke-virtual {v0, p1}, Lnk;->a(Lnf;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lno;->mListener:Lnk;

    new-instance v1, Lnf$a;

    invoke-direct {v1}, Lnf$a;-><init>()V

    new-instance v2, Lcom/snapchat/android/ads/AdRequestError;

    sget-object v3, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->TIMEOUT:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v4, "Request timed out"

    invoke-direct {v2, v3, v4}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    iput-object v2, v1, Lnf$a;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    invoke-virtual {v1}, Lnf$a;->a()Lnf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnk;->a(Lnf;)V

    goto :goto_0
.end method
