.class final Lbbb$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbb$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbb$a;

.field final synthetic val$isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$maxTimes:J

.field final synthetic val$sleepDuration:J

.field final synthetic val$uiLatencyAggregator:Lbba;


# direct methods
.method constructor <init>(Lbbb$a;Ljava/util/concurrent/atomic/AtomicBoolean;JLbba;J)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lbbb$a$1;->this$0:Lbbb$a;

    iput-object p2, p0, Lbbb$a$1;->val$isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p3, p0, Lbbb$a$1;->val$maxTimes:J

    iput-object p5, p0, Lbbb$a$1;->val$uiLatencyAggregator:Lbba;

    iput-wide p6, p0, Lbbb$a$1;->val$sleepDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    :goto_0
    iget-object v1, p0, Lbbb$a$1;->val$isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lbbb$a$1;->val$maxTimes:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v0

    iget-wide v4, p0, Lbbb$a$1;->val$maxTimes:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    move v0, v1

    .line 114
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    iget-object v1, p0, Lbbb$a$1;->this$0:Lbbb$a;

    iget-object v1, v1, Lbbb$a;->mUiHandler:Landroid/os/Handler;

    new-instance v4, Lbbb$a$1$1;

    invoke-direct {v4, p0, v2, v3}, Lbbb$a$1$1;-><init>(Lbbb$a$1;J)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    iget-wide v2, p0, Lbbb$a$1;->val$sleepDuration:J

    invoke-static {v2, v3}, Lbhp;->a(J)V

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method
