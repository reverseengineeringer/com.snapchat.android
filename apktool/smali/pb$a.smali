.class public final Lpb$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final DELAY:J = 0x190L

.field private static final MESSAGE_WHAT_SEARCH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StorySearchScheduler"


# instance fields
.field private final mSearchTaskCallback:Lpb$b;


# direct methods
.method public constructor <init>(Lpb$b;)V
    .locals 0
    .param p1    # Lpb$b;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    iput-object p1, p0, Lpb$a;->mSearchTaskCallback:Lpb$b;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "StorySearchScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scheduleSearch - query: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0, v3}, Lpb$a;->removeMessages(I)V

    .line 86
    invoke-virtual {p0, v3, p1}, Lpb$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 87
    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lpb$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 94
    const-string v1, "StorySearchScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Execute task - query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance v1, Lpb;

    iget-object v2, p0, Lpb$a;->mSearchTaskCallback:Lpb$b;

    invoke-direct {v1, v0, v2}, Lpb;-><init>(Ljava/lang/String;Lpb$b;)V

    sget-object v0, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lpb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    :cond_0
    return-void
.end method
