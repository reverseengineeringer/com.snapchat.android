.class public Lorg/apache/commons/lang3/time/StopWatch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/StopWatch$1;,
        Lorg/apache/commons/lang3/time/StopWatch$SplitState;,
        Lorg/apache/commons/lang3/time/StopWatch$State;
    }
.end annotation


# static fields
.field private static final NANO_2_MILLIS:J = 0xf4240L


# instance fields
.field private runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

.field private splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

.field private startTime:J

.field private startTimeMillis:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 137
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 163
    return-void
.end method


# virtual methods
.method public getNanoTime()J
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_1

    .line 339
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    .line 343
    :goto_0
    return-wide v0

    .line 340
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_2

    .line 341
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 342
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_3

    .line 343
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 345
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal running state has occurred."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSplitNanoTime()J
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    if-eq v0, v1, :cond_0

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be split to get the split time. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSplitTime()J
    .locals 4

    .prologue
    .line 364
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeMillis:J

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isStarted()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isStopped()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 223
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 224
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be suspended to resume. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 306
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 307
    return-void
.end method

.method public split()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 244
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 245
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_1

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeMillis:J

    .line 186
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 187
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_1

    .line 207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 209
    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 210
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be running to suspend. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 285
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 286
    return-void
.end method

.method public toSplitString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsplit()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    if-eq v0, v1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been split. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    .line 265
    return-void
.end method
