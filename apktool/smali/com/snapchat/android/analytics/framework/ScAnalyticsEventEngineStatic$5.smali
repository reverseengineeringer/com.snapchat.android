.class final Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 277
    iput-wide p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 280
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->g()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/WorkerThread;->b(Ljava/lang/Runnable;)V

    .line 281
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h()J

    move-result-wide v0

    .line 282
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->i()J

    move-result-wide v2

    .line 283
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;->a:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 286
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    move-result-object v2

    .line 287
    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->b(J)V

    .line 289
    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;->a:J

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(J)V

    .line 290
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->k()V

    .line 292
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a()V

    .line 293
    return-void
.end method
