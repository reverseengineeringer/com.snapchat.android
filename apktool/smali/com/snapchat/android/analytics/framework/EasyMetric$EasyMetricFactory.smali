.class public Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/framework/EasyMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EasyMetricFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v0, p0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric;

    invoke-direct {v0, p0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-direct {v0, p0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
