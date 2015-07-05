.class public Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/framework/EasyMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryStats"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;-><init>(Ljava/lang/Runtime;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/lang/Runtime;)V
    .locals 4

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->e:Z

    .line 74
    invoke-virtual {p1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->a:J

    .line 75
    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->c:J

    .line 76
    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->c:J

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->b:J

    .line 77
    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->d:J

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$MemoryStats;->d:J

    return-wide v0
.end method
