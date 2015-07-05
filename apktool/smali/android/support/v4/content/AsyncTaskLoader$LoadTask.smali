.class final Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private done:Ljava/util/concurrent/CountDownLatch;

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v4/content/AsyncTaskLoader;

.field waiting:Z


# direct methods
.method constructor <init>(Landroid/support/v4/content/AsyncTaskLoader;)V
    .locals 2

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private varargs doInBackground$532ebdd5()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground$42af7916()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->result:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    iget-object v1, v0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eq v1, p0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    return-void

    .line 61
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->isAbandoned()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 61
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->commitContentChanged()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 80
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    .line 81
    return-void
.end method
