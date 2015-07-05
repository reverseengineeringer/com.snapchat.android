.class final Lmm$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmm;


# direct methods
.method constructor <init>(Lmm;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lmm$1;->this$0:Lmm;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lmm$1;->this$0:Lmm;

    iget-object v1, v0, Lmm;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lmm$1;->this$0:Lmm;

    iget-boolean v0, v0, Lmm;->mIsComplete:Z

    if-eqz v0, :cond_0

    .line 92
    monitor-exit v1

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lmm$1;->this$0:Lmm;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmm;->b(Lmo;)V

    .line 95
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
