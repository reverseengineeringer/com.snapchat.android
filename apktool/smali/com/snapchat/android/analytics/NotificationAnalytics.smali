.class public final Lcom/snapchat/android/analytics/NotificationAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;
    }
.end annotation


# static fields
.field public static final TIME_UNINITIALIZED:J = -0x1L


# instance fields
.field public mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

.field public mTimeOnPressed:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)J
    .locals 10
    .param p1    # Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 31
    iget-wide v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    .line 33
    iget-wide v2, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v2, :cond_0

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    sub-long/2addr v2, v4

    .line 35
    invoke-virtual {p1}, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 36
    iget-object v5, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v6, "type"

    invoke-static {}, Lavv;->a()Lavv;

    invoke-static {}, Lavv;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v5, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v6, "context"

    invoke-virtual {v5, v6, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 37
    iput-wide v8, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mTimeOnPressed:J

    .line 40
    :cond_0
    return-wide v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "NOTIFICATION_OPEN"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/analytics/NotificationAnalytics;->mEasyMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 62
    return-void
.end method
