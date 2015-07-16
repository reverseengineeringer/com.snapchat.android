.class public final Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;,
        Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;
    }
.end annotation


# static fields
.field public static final CONTEXT_PARAM:Ljava/lang/String; = "context"

.field private static INSTANCE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics; = null

.field public static final REASON_PARAM:Ljava/lang/String; = "reason"

.field public static final SENDER_PARAM:Ljava/lang/String; = "sender"

.field public static final SNAP_STACK_LOADING_EVENT:Ljava/lang/String; = "SNAP_STACK_LOADING"

.field public static final SNAP_VIEW_FAILED_EVENT:Ljava/lang/String; = "SNAP_VIEW_FAILED"

.field public static final SNAP_VIEW_SUCCESS_EVENT:Ljava/lang/String; = "SNAP_VIEW_SUCCESS"

.field public static final TYPE_PARAM:Ljava/lang/String; = "type"

.field public static final VIEW_NEXT_SNAP_EVENT:Ljava/lang/String; = "VIEW_NEXT_SNAP"

.field public static final VIEW_SNAP_EVENT:Ljava/lang/String; = "VIEW_SNAP"

.field public static final WAS_SKIPPED_PARAM:Ljava/lang/String; = "wasSkipped"


# instance fields
.field private final mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field private final mStartupContext:Lavv;

.field public mViewNextSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;
    .annotation build Lchd;
    .end annotation
.end field

.field public mViewSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;
    .annotation build Lchd;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->INSTANCE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v1

    invoke-static {}, Lavv;->a()Lavv;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lavv;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lavv;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 93
    iput-object p2, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 94
    iput-object p3, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mStartupContext:Lavv;

    .line 95
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->INSTANCE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "VIEW_SNAP"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "context"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mViewSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 107
    iget-object v1, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "FIRST_MEDIA_OPENED"

    const-string v3, "context"

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    const-string v2, "type"

    invoke-static {}, Lavv;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 110
    return-void
.end method
