.class final Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J


# direct methods
.method constructor <init>(IJJ)V
    .locals 0

    .prologue
    .line 462
    iput p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;->a:I

    iput-wide p2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;->b:J

    iput-wide p4, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 465
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    move-result-object v0

    .line 467
    iget v1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 468
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->r()V

    .line 487
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(J)V

    .line 488
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->s()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 489
    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 490
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    new-instance v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9$1;-><init>(Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;)V

    .line 497
    :cond_1
    return-void

    .line 474
    :cond_2
    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 475
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Z

    move-result v1

    if-nez v1, :cond_3

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d(J)V

    .line 479
    :cond_3
    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;->b:J

    invoke-static {v2, v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e(J)V

    goto :goto_0

    .line 483
    :cond_4
    const-string v1, "com.amplitude.api.Amplitude"

    const-string v2, "Uploaded to server with 0 events."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
