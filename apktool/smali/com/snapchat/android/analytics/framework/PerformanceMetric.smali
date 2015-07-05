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

.field private final g:Late;

.field private final h:D

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;-><init>(Ljava/lang/String;B)V

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    invoke-static {}, Late;->a()Late;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/debug/ReleaseManager;Late;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/snapchat/android/util/debug/ReleaseManager;Late;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 33
    iput-boolean v1, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->i:Z

    .line 52
    const-string v0, "Percentage must be between [0.0, 1.0]"

    invoke-static {v1, v0}, Lck;->a(ZLjava/lang/Object;)V

    .line 54
    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->f:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 55
    iput-object p3, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->g:Late;

    .line 56
    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->h:D

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->i:Z

    .line 58
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 133
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
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->b(Z)V

    .line 70
    return-void
.end method

.method public final b(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->i:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->h:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "endpoint_host"

    invoke-static {}, Lazm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 78
    :cond_1
    const-string v0, "year_class"

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->g:Late;

    invoke-virtual {v2}, Late;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    invoke-super {p0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    .line 81
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public final d()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->b(Z)V

    .line 64
    return-void
.end method
