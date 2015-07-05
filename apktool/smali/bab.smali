.class public final Lbab;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field protected static final MAX_LIST_SIZE:I = 0x32

.field protected static final METRIC_END_PAGE:Ljava/lang/String; = "end_page"

.field protected static final METRIC_MAX:Ljava/lang/String; = "max"

.field protected static final METRIC_MEAN:Ljava/lang/String; = "mean"

.field protected static final METRIC_MEDIAN:Ljava/lang/String; = "median"

.field protected static final METRIC_NAME_SWIPE_LATENCY:Ljava/lang/String; = "SWIPE_LATENCY"

.field protected static final METRIC_SIZE:Ljava/lang/String; = "size"

.field protected static final METRIC_START_PAGE:Ljava/lang/String; = "start_page"

.field private static final TAG:Ljava/lang/String; = "UIThreadLatencyHandler"

.field private static final ZERO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClock:Lbgk;

.field private mLastLatency:J

.field protected mLatencyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbab;->ZERO_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lbab;-><init>(Lbgk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lbgk;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbab;->mLatencyList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lbab;->mClock:Lbgk;

    .line 48
    iput-object p2, p0, Lbab;->mMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 49
    return-void
.end method

.method static synthetic a(Lbab;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-static {}, Lbgp;->b()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lbab;->mLatencyList:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lbab;->ZERO_LIST:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {p4}, Latz;->b(Ljava/util/List;)J

    move-result-wide v2

    invoke-static {p4}, Latz;->a(Ljava/util/List;)J

    move-result-wide v4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const-string v8, "SWIPE_LATENCY"

    invoke-static {v8}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v8

    const-string v9, "start_page"

    invoke-virtual {v8, v9, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v9, "end_page"

    invoke-virtual {v8, v9, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v9, "mean"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "median"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "max"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "size"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v8, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbab;->mLatencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbab;->mLatencyList:Ljava/util/List;

    .line 55
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 82
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lbab;->mLatencyList:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    new-instance v0, Lbab$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lbab$1;-><init>(Lbab;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbab;->mLatencyList:Ljava/util/List;

    .line 90
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CURRENT_TIME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    sub-long v0, v2, v0

    iput-wide v0, p0, Lbab;->mLastLatency:J

    .line 67
    iget-wide v0, p0, Lbab;->mLastLatency:J

    iget-object v2, p0, Lbab;->mLatencyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lbab;->mLatencyList:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method
