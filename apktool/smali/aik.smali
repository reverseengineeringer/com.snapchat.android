.class public final Laik;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:J

.field protected static b:Ljava/lang/String;

.field protected static c:Ljava/lang/String;

.field private static e:Laik;


# instance fields
.field d:J

.field private final f:Lbhk;

.field private final g:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Laik;->e:Laik;

    .line 17
    const-wide/16 v0, -0x1

    sput-wide v0, Laik;->a:J

    .line 19
    const-string v0, "PREVIEW_GEOFILTER_SWIPE_DELAY"

    sput-object v0, Laik;->b:Ljava/lang/String;

    .line 21
    const-string v0, "PREVIEW_GEOFILTER_AVAILABLE_DELAY"

    sput-object v0, Laik;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lbhk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-wide v0, Laik;->a:J

    iput-wide v0, p0, Laik;->d:J

    .line 25
    sget-wide v0, Laik;->a:J

    iput-wide v0, p0, Laik;->h:J

    .line 26
    sget-wide v0, Laik;->a:J

    iput-wide v0, p0, Laik;->i:J

    .line 30
    iput-object p1, p0, Laik;->f:Lbhk;

    .line 31
    iput-object p2, p0, Laik;->g:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 32
    return-void
.end method

.method public static declared-synchronized a()Laik;
    .locals 4

    .prologue
    .line 38
    const-class v1, Laik;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laik;->e:Laik;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Laik;

    new-instance v2, Lbhl;

    invoke-direct {v2}, Lbhl;-><init>()V

    iget-object v2, v2, Lbhl;->mClock:Lbhk;

    new-instance v3, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {v0, v2, v3}, Laik;-><init>(Lbhk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    sput-object v0, Laik;->e:Laik;

    .line 41
    :cond_0
    sget-object v0, Laik;->e:Laik;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(JLjava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 112
    sget-wide v2, Laik;->a:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    iget-wide v2, p0, Laik;->i:J

    sget-wide v4, Laik;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-wide v2, p0, Laik;->i:J

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 116
    invoke-static {p3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 98
    iget-wide v0, p0, Laik;->h:J

    sget-object v2, Laik;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Laik;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-wide v0, Laik;->a:J

    iput-wide v0, p0, Laik;->h:J

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 4
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lbhp;->b()V

    .line 72
    iget-wide v0, p0, Laik;->h:J

    sget-wide v2, Laik;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laik;->h:J

    .line 76
    invoke-direct {p0}, Laik;->d()V

    goto :goto_0
.end method

.method public final c()V
    .locals 3
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lbhp;->b()V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laik;->i:J

    .line 87
    iget-wide v0, p0, Laik;->d:J

    sget-object v2, Laik;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Laik;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Laik;->a:J

    iput-wide v0, p0, Laik;->d:J

    .line 88
    :cond_0
    invoke-direct {p0}, Laik;->d()V

    .line 89
    return-void
.end method
