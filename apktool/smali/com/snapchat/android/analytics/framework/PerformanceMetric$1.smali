.class Lcom/snapchat/android/analytics/framework/PerformanceMetric$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/PerformanceMetric;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/analytics/framework/PerformanceMetric;


# direct methods
.method constructor <init>(Lcom/snapchat/android/analytics/framework/PerformanceMetric;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$1;->a:Lcom/snapchat/android/analytics/framework/PerformanceMetric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$1;->a:Lcom/snapchat/android/analytics/framework/PerformanceMetric;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->a(Lcom/snapchat/android/analytics/framework/PerformanceMetric;)Lbbb;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$1;->a:Lcom/snapchat/android/analytics/framework/PerformanceMetric;

    iget-object v0, v0, Lbbb;->mUiLatencyAggregator:Lbba;

    invoke-interface {v0, v1}, Lbba;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$1;->a:Lcom/snapchat/android/analytics/framework/PerformanceMetric;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;->b(Lcom/snapchat/android/analytics/framework/PerformanceMetric;)V

    .line 92
    return-void
.end method
