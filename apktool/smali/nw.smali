.class public final Lnw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final APP_STARTUP_TIMED_METRIC:Ljava/lang/String; = "APP_STARTUP_TIMED"

.field public static final FIRST_MEDIA_OPENED_METRIC:Ljava/lang/String; = "FIRST_MEDIA_OPENED"

.field private static final INSTANCE:Lnw;

.field public static final OLD_APP_STARTUP_TIMED_METRIC:Ljava/lang/String; = "APP_STARTUP_TIMED_9_3"

.field private static final TAG:Ljava/lang/String; = "LifecycleAnalytics"

.field public static final USER_LOAD_TIME_METRIC:Ljava/lang/String; = "USER_LOAD_TIME"


# instance fields
.field private final mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field public mDidLoadFromDatabase:Z

.field private final mEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

.field private final mMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

.field public mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

.field private final mStartupContext:Lavv;

.field public mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

.field public mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lnw;

    invoke-direct {v0}, Lnw;-><init>()V

    sput-object v0, Lnw;->INSTANCE:Lnw;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    invoke-static {}, Lavv;->a()Lavv;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lnw;-><init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lavv;Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lavv;Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lnw;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 61
    iput-object p2, p0, Lnw;->mStartupContext:Lavv;

    .line 62
    iput-object p3, p0, Lnw;->mEventEngine:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;

    .line 63
    iput-object p4, p0, Lnw;->mMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 64
    return-void
.end method

.method public static a()Lnw;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lnw;->INSTANCE:Lnw;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 3
    .param p0    # Landroid/content/Intent;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v1, "open_state"

    const-string v2, "NORMAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "intent_action"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "APP_OPEN"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 112
    new-instance v0, Lga;

    invoke-direct {v0}, Lga;-><init>()V

    .line 113
    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    .line 114
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lbaz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbaz;->a(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static e()V
    .locals 10

    .prologue
    .line 191
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lbaz;->b()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lbaz;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 194
    sget-object v1, Lnw;->INSTANCE:Lnw;

    iget-object v4, v1, Lnw;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v4, :cond_0

    iget-object v1, v1, Lnw;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/snapchat/android/analytics/framework/EasyMetric;->b:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELAPSED_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lnw;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 169
    iget-object v0, p0, Lnw;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "APP_STARTUP_TIMED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iput-object v0, p0, Lnw;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 174
    const-string v0, "APP_STARTUP_TIMED_9_3"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    iput-object v0, p0, Lnw;->mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 175
    iget-object v0, p0, Lnw;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 176
    return-void
.end method
