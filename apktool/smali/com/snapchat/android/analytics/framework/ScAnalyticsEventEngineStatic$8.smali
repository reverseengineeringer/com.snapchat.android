.class final Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:J

.field final synthetic c:J


# direct methods
.method constructor <init>(Lorg/json/JSONArray;JJ)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8;->a:Lorg/json/JSONArray;

    iput-wide p2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8;->b:J

    iput-wide p4, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 377
    const-string v0, "https://sc-analytics.appspot.com/analytics/bz"

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8;->a:Lorg/json/JSONArray;

    iget-wide v2, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8;->b:J

    iget-wide v4, p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8;->c:J

    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;Lorg/json/JSONArray;JJ)V

    .line 379
    return-void
.end method
