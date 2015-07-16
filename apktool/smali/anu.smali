.class public final Lanu;
.super Lana;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lana;",
        "Lui$b",
        "<",
        "Lblg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lblg;

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
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 41
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    iput-object v0, p0, Lanu;->g:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 47
    const-string v0, "lat"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lanu;->b:D

    .line 48
    const-string v0, "long"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lanu;->c:D

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
    iput-object v0, p0, Lanu;->d:Ljava/lang/Float;

    .line 51
    const-string v0, "totalPollingDurationMillis"

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lanu;->e:J

    .line 52
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanu;->f:Ljava/lang/String;

    .line 54
    const-class v0, Lblg;

    invoke-virtual {p0, v0, p0}, Lanu;->registerCallback(Ljava/lang/Class;Lui$b;)V

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
    const/4 v0, 0x0

    .line 89
    iget-wide v2, p0, Lanu;->b:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 90
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V

    .line 92
    :cond_1
    return-void

    .line 89
    :cond_2
    iget-wide v2, p0, Lanu;->c:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_0

    iget-wide v2, p0, Lanu;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lanu;->f:Ljava/lang/String;

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lanu;->f:Ljava/lang/String;

    const-string v2, "delete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 10

    .prologue
    .line 119
    new-instance v0, Lanu$a;

    iget-wide v2, p0, Lanu;->b:D

    iget-wide v4, p0, Lanu;->c:D

    iget-object v6, p0, Lanu;->d:Ljava/lang/Float;

    iget-wide v7, p0, Lanu;->e:J

    iget-object v9, p0, Lanu;->f:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lanu$a;-><init>(Lanu;DDLjava/lang/Float;JLjava/lang/String;)V

    return-object v0
.end method

.method protected final l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "/bq/and/find_nearby_friends"

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 2

    .prologue
    .line 24
    check-cast p1, Lblg;

    iget v0, p2, Lus;->mResponseCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const-string v0, "ANF_RATE_LIMIT"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b(Z)V

    :cond_0
    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lanu;->a:Lblg;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lanu;->a:Lblg;

    goto :goto_0
.end method
