.class final Lbgo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgo;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbgo;


# direct methods
.method constructor <init>(Lbgo;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lbgo$3;->this$0:Lbgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 102
    iget-object v2, p0, Lbgo$3;->this$0:Lbgo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, v2, Lbgo;->mDuration:J

    add-long/2addr v4, v0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Lbgo;->d()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    :goto_1
    cmp-long v3, v0, v4

    if-gez v3, :cond_3

    iget-wide v6, v2, Lbgo;->mCountdownInterval:J

    invoke-static {v6, v7}, Lbgp;->a(J)V

    iget-object v3, v2, Lbgo;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lbgo;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lbgo;->mHandler:Landroid/os/Handler;

    iget-object v6, v2, Lbgo;->mTickMessage:Ljava/lang/Runnable;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    iget-wide v6, v2, Lbgo;->mCountdownInterval:J

    add-long/2addr v0, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lbgo;->a()V

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lbgo;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lbgo;->d()V

    goto :goto_0
.end method
