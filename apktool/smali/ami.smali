.class public final Lami;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lama;

.field private final b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lama;->a()Lama;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lami;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lama;)V

    .line 33
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lama;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    iput-object v0, p0, Lami;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 39
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lama;

    iput-object v0, p0, Lami;->a:Lama;

    .line 40
    return-void
.end method
