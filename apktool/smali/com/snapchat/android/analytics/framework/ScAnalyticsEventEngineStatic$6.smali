.class final Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 293
    iput-wide p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    .line 297
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->d:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 304
    iget-wide v4, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;->a:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d(J)J

    move-result-wide v4

    .line 306
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->h:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 307
    iget-wide v8, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;->a:J

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->k()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d(J)J

    move-result-wide v8

    .line 308
    add-long/2addr v6, v8

    .line 310
    new-instance v1, Lgc;

    invoke-direct {v1}, Lgc;-><init>()V

    .line 311
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    move-result-object v8

    invoke-interface {v8}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lml;->userId:Ljava/lang/String;

    .line 312
    invoke-static {v2, v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lgc;->sessionStartTs:Ljava/lang/Double;

    .line 313
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lgc;->sessionTimeSec:Ljava/lang/Long;

    .line 314
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lgc;->sessionActiveTimeSec:Ljava/lang/Long;

    .line 315
    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;->a:J

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Lht;J)J

    move-result-wide v2

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->e:Ljava/lang/String;

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;->a:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Z)Z

    goto :goto_0
.end method
