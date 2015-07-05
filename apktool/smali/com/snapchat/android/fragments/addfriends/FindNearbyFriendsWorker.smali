.class public final Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;,
        Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;
    }
.end annotation


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;

.field private f:Lahq;

.field private g:Lahr;

.field private h:Landroid/os/Handler;

.field private i:Laol;

.field private j:Lale;

.field private k:Lbgk;

.field private l:Lajx;

.field private m:Z

.field private n:I

.field private o:J

.field private p:Z

.field private q:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private r:F

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xa

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a:J

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->b:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->c:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;)V
    .locals 11

    .prologue
    .line 64
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lahq;

    invoke-direct {v4}, Lahq;-><init>()V

    invoke-static {}, Lahr;->a()Lahr;

    move-result-object v5

    invoke-static {}, Laol;->a()Laol;

    move-result-object v6

    invoke-static {}, Lale;->a()Lale;

    move-result-object v7

    new-instance v8, Lbgk;

    invoke-direct {v8}, Lbgk;-><init>()V

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v9

    new-instance v10, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v10}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;-><init>(Landroid/content/Context;Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;Landroid/os/Handler;Lahq;Lahr;Laol;Lale;Lbgk;Lajx;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;Landroid/os/Handler;Lahq;Lahr;Laol;Lale;Lbgk;Lajx;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->r:F

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->s:J

    .line 73
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->d:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->e:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;

    .line 75
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->h:Landroid/os/Handler;

    .line 76
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->f:Lahq;

    .line 77
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->g:Lahr;

    .line 78
    iput-object p6, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->i:Laol;

    .line 79
    iput-object p8, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->k:Lbgk;

    .line 80
    iput-object p9, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->l:Lajx;

    .line 81
    iput-object p10, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->q:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 82
    iput-object p7, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->j:Lale;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->e:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$a;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)V
    .locals 15

    .prologue
    const/4 v10, 0x0

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 28
    move-object v0, v10

    :goto_0
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->m:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->n:I

    if-ge v1, v14, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->o:J

    sub-long v7, v0, v2

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->p:Z

    if-nez v0, :cond_0

    sget-wide v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->b:J

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    iput-boolean v13, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->p:Z

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->h:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$4;-><init>(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->g:Lahr;

    invoke-virtual {v0}, Lahr;->d()Landroid/location/Location;

    move-result-object v11

    if-eqz v11, :cond_8

    const-string v0, "FindNearbyFriendsWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Polling with location: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; totalDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ANF_POLL_REQUEST"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "accuracy"

    invoke-virtual {v11}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->r:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->r:F

    invoke-virtual {v11}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {v11}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->r:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->o:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->s:J

    :cond_2
    invoke-virtual {v11}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :goto_1
    const-string v0, "FindNearbyFriendsWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Polling request with latitude: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "totalDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->i:Laol;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->d:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-string v9, "update"

    invoke-virtual/range {v0 .. v9}, Laol;->a(Landroid/content/Context;DDLjava/lang/Float;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lamx;

    invoke-direct {v1, v0}, Lamx;-><init>(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lamx;->a(Landroid/content/Context;)V

    iget-object v2, v1, Lamx;->a:Lbkf;

    if-eqz v2, :cond_7

    const-string v0, "FindNearbyFriendsWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Polling response received: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lbkf;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v12, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->n:I

    invoke-virtual {v2}, Lbkf;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lbkf;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->h:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$5;

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$5;-><init>(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;Lbkf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    sget-wide v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a:J

    invoke-virtual {v2}, Lbkf;->a()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    const-string v2, "FindNearbyFriendsWorker"

    const-string v3, "Worker thread sleeping"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lbgp;->a(J)V

    const-string v0, "FindNearbyFriendsWorker"

    const-string v1, "Worker thread awake"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v11

    goto/16 :goto_0

    :cond_5
    move-object v6, v10

    goto/16 :goto_1

    :cond_6
    const-string v0, "FindNearbyFriendsWorker"

    const-string v1, "Interrupting worker as instructed by server"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->INTENTIONAL:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V

    move-object v0, v11

    goto/16 :goto_0

    :cond_7
    const-string v0, "FindNearbyFriendsWorker"

    const-string v1, "Polling failure"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->n:I

    move-object v0, v11

    goto/16 :goto_0

    :cond_8
    const-string v0, "FindNearbyFriendsWorker"

    const-string v1, "No location found!"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-wide v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a:J

    invoke-static {v0, v1}, Lbgp;->a(J)V

    sget-wide v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->c:J

    cmp-long v0, v7, v0

    if-lez v0, :cond_9

    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->LOCATION_ERROR:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V

    :cond_9
    move-object v0, v11

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->n:I

    if-lt v1, v14, :cond_b

    const-string v1, "FindNearbyFriendsWorker"

    const-string v2, "Exceeded max failures, no longer polling"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->j:Lale;

    invoke-virtual {v1}, Lale;->d()Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->NO_INTERNET_CONNECTION:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V

    :cond_b
    return-void

    :cond_c
    if-nez v0, :cond_d

    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->LOCATION_ERROR:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    goto :goto_2

    :cond_d
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->ERROR:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    goto :goto_2
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Lahr;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->g:Lahr;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Lbgk;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->k:Lbgk;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->o:J

    return-wide v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Laol;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->i:Laol;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-static {}, Lajx;->bs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->LOCATION_PERMISSIONS:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V

    .line 115
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lajx;->aU()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->INITIAL_PROMPT:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->g:Lahr;

    invoke-virtual {v0}, Lahr;->b()V

    .line 96
    const-string v0, "FindNearbyFriendsWorker"

    const-string v1, "Begin polling"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->m:Z

    .line 98
    iput v3, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->n:I

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->o:J

    .line 100
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->p:Z

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->h:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$1;-><init>(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    sget-object v0, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$2;-><init>(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 127
    const-string v0, "FindNearbyFriendsWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Polling interrupted with reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const-string v0, "ANF_INTERRUPT"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p1}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "bestAccuracy"

    iget v2, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->r:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "timeToAccuracy"

    iget-wide v2, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->s:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 134
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->m:Z

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->h:Landroid/os/Handler;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$3;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$3;-><init>(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;-><init>(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 142
    invoke-static {}, Lajx;->ab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->g:Lahr;

    invoke-virtual {v0}, Lahr;->c()V

    .line 145
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
