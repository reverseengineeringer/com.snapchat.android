.class public final Lbay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbba;


# static fields
.field public static final HORIZONTAL:Ljava/lang/String; = "HORIZONTAL"

.field protected static final IS_VERTICAL_SCROLL:Ljava/lang/String; = "is_vertical_scroll"

.field protected static final MAX_LATENCY_LIST_SIZE:I = 0x32

.field protected static final METRIC_END_PAGE:Ljava/lang/String; = "end_page"

.field protected static final METRIC_MAX:Ljava/lang/String; = "max"

.field protected static final METRIC_MEAN:Ljava/lang/String; = "mean"

.field protected static final METRIC_MEDIAN:Ljava/lang/String; = "median"

.field protected static final METRIC_NAME_SWIPE_LATENCY:Ljava/lang/String; = "SWIPE_LATENCY"

.field protected static final METRIC_SIZE:Ljava/lang/String; = "size"

.field protected static final METRIC_START_PAGE:Ljava/lang/String; = "start_page"

.field private static final TAG:Ljava/lang/String; = "SwipeUiLatencyAggregator"

.field public static final VERTICAL:Ljava/lang/String; = "VERTICAL"


# instance fields
.field private final mLatencyList:Ljava/util/List;
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

.field private mStartPage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0}, Lbay;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbay;->mLatencyList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lbay;->mMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/analytics/framework/EasyMetric;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 0

    .prologue
    .line 78
    return-object p1
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbay;->mLatencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lbay;->mLatencyList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 52
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "startPage"

    invoke-static {v0, v2}, Lco;->a(ZLjava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lbay;->mLatencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    aget-object v0, p1, v1

    iput-object v0, p0, Lbay;->mStartPage:Ljava/lang/String;

    .line 55
    return-void

    :cond_0
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public final varargs b([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    array-length v0, p1

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "endPage, direction"

    invoke-static {v0, v3}, Lco;->a(ZLjava/lang/Object;)V

    .line 69
    aget-object v3, p1, v2

    .line 70
    aget-object v4, p1, v1

    .line 71
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lbay;->mLatencyList:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    iget-object v2, p0, Lbay;->mStartPage:Ljava/lang/String;

    new-instance v0, Lbay$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbay$1;-><init>(Lbay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 73
    iget-object v0, p0, Lbay;->mLatencyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0
.end method
