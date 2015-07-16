.class public final Lait;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lait$a;,
        Lait$b;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "CONSTRUCTED_DYANMIC_GEOFILTER_DELAY"

    sput-object v0, Lait;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lait;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lait;->a:Ljava/util/concurrent/ExecutorService;

    .line 31
    iput-object p2, p0, Lait;->b:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 32
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lait;->c:Ljava/lang/String;

    return-object v0
.end method
