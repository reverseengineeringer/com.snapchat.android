.class public final Lamx;
.super Lamd;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamd;",
        "Lts$b",
        "<",
        "Lbkf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lbkf;

.field private final b:D

.field private final c:D

.field private final d:Ljava/lang/Float;

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x1

    .line 46
    invoke-direct {p0, p1}, Lamd;-><init>(Landroid/content/Intent;)V

    .line 41
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    iput-object v0, p0, Lamx;->g:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 47
    const-string v0, "lat"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lamx;->b:D

    .line 48
    const-string v0, "long"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lamx;->c:D

    .line 49
    const-string v0, "accuracyMeters"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 50
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lamx;->d:Ljava/lang/Float;

    .line 51
    const-string v0, "totalPollingDurationMillis"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lamx;->e:J

    .line 52
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamx;->f:Ljava/lang/String;

    .line 54
    const-class v0, Lbkf;

    invoke-virtual {p0, v0, p0}, Lamx;->a(Ljava/lang/Class;Lts$b;)V

    .line 55
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-wide v2, p0, Lamx;->b:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 90
    invoke-super {p0, p1}, Lamd;->a(Landroid/content/Context;)V

    .line 94
    :goto_1
    return-void

    .line 89
    :cond_0
    iget-wide v2, p0, Lamx;->c:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lamx;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lamx;->f:Ljava/lang/String;

    const-string v2, "update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lamx;->f:Ljava/lang/String;

    const-string v2, "delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_4
    const-string v0, "FindNearbyFriendsOperation"

    const-string v2, "Skipping find nearby friends request due to invalid params"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 2

    .prologue
    .line 24
    check-cast p1, Lbkf;

    iget v0, p2, Luc;->mResponseCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const-string v0, "ANF_RATE_LIMIT"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    :cond_0
    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lamx;->a:Lbkf;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lamx;->a:Lbkf;

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 119
    new-instance v0, Lamx$a;

    iget-wide v2, p0, Lamx;->b:D

    iget-wide v4, p0, Lamx;->c:D

    iget-object v6, p0, Lamx;->d:Ljava/lang/Float;

    iget-wide v7, p0, Lamx;->e:J

    iget-object v9, p0, Lamx;->f:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lamx$a;-><init>(Lamx;DDLjava/lang/Float;JLjava/lang/String;)V

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "/bq/and/find_nearby_friends"

    return-object v0
.end method
