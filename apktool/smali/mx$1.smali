.class final Lmx$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmx;


# direct methods
.method constructor <init>(Lmx;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lmx$1;->this$0:Lmx;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lmx$1;->this$0:Lmx;

    iget-object v1, v0, Lmx;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lmx$1;->this$0:Lmx;

    iget-boolean v0, v0, Lmx;->mIsComplete:Z

    if-eqz v0, :cond_0

    .line 60
    monitor-exit v1

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lmx$1;->this$0:Lmx;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmx;->b(Lmo;)V

    .line 63
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
