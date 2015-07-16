.class public final Laab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lama;

.field private final b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lama;->a()Lama;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Laab;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lama;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lama;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Laab;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 35
    iput-object p2, p0, Laab;->a:Lama;

    .line 36
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/StoryCollection;)I
    .locals 1

    .prologue
    .line 72
    instance-of v0, p0, Lakc;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
