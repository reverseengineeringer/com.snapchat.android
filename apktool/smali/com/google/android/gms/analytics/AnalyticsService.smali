.class public final Lcom/google/android/gms/analytics/AnalyticsService;
.super Landroid/app/IntentService;


# static fields
.field static zzAZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x708

    sput v0, Lcom/google/android/gms/analytics/AnalyticsService;->zzAZ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "AnalyticsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static zzC(I)V
    .locals 0

    sput p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzAZ:I

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzmz:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzAY:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzAY:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->zzAY:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    const-string v0, "Analytics Service called."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzgl()Lcom/google/android/gms/analytics/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzd;->zzfg()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget v0, Lcom/google/android/gms/analytics/AnalyticsService;->zzAZ:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelf()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
