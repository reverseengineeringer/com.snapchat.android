.class public Lcom/snapchat/android/analytics/framework/PerformanceMetric;
.super Lcom/snapchat/android/analytics/framework/EasyMetric;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    }
.end annotation


# instance fields
.field private final f:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private final g:Laud;

.field private final h:Lbbb;

.field private final i:D

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;-><init>(Ljava/lang/String;B)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    invoke-static {}, Laud;->a()Laud;

    move-result-object v1

    invoke-static {}, Lbbb;->a()Lbbb;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/debug/ReleaseManager;Laud;Lbbb;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/snapchat/android/util/debug/ReleaseManager;Laud;Lbbb;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 37
    iput-boolean v1, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->j:Z

    .line 57
    const-string v0, "Percentage must be between [0.0, 1.0]"

    invoke-static {v1, v0}, Lco;->a(ZLjava/lang/Object;)V

    .line 59
    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->f:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 60
    iput-object p3, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->g:Laud;

    .line 61
    iput-object p4, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->h:Lbbb;

    .line 62
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->i:D

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->j:Z

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/analytics/framework/PerformanceMetric;)Lbbb;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->h:Lbbb;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/analytics/framework/PerformanceMetric;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->fromValue(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->UNKNOWN:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->b(Z)V

    .line 76
    return-void
.end method

.method public final b(Z)V
    .locals 6

    .prologue
    .line 80
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->j:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->i:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->d()J

    move-result-wide v0

    .line 82
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "endpoint_host"

    invoke-static {}, Lbal;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 85
    :cond_1
    const-string v2, "year_class"

    iget-object v3, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->g:Laud;

    invoke-virtual {v3}, Laud;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 87
    new-instance v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$1;-><init>(Lcom/snapchat/android/analytics/framework/PerformanceMetric;)V

    invoke-static {v1, v0}, Lcfd;->a(Ljava/lang/Runnable;I)V

    .line 95
    :cond_2
    return-void

    .line 80
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->b(Z)V

    .line 70
    return-void
.end method
