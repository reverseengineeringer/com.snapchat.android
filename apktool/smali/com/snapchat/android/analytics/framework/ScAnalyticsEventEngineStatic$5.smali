.class final Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b()V
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
    .line 259
    iput-wide p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 262
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Z)Z

    .line 266
    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;->a:J

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(J)J

    .line 268
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h()J

    move-result-wide v0

    .line 269
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->i()J

    move-result-wide v2

    .line 270
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;->a:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 273
    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b(J)V

    goto :goto_0

    .line 276
    :cond_1
    iget-wide v0, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;->a:J

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c(J)V

    goto :goto_0
.end method
