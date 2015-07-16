.class public final Lnx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MEDIA_VIEW_INTERVAL_EVENT:Ljava/lang/String; = "MEDIA_VIEW_INTERVAL"

.field private static sInstance:Lnx;


# instance fields
.field public final mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lnx;-><init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lnx;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lnx;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lnx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnx;->sInstance:Lnx;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lnx;

    invoke-direct {v0}, Lnx;-><init>()V

    sput-object v0, Lnx;->sInstance:Lnx;

    .line 24
    :cond_0
    sget-object v0, Lnx;->sInstance:Lnx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lnx;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    const-string v2, "context"

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 94
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lnx;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    const-string v2, "last_action"

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 102
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0, p2, p1}, Lnx;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p2, p1}, Lnx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lnx;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnx;->a(Z)V

    .line 74
    invoke-direct {p0, p2}, Lnx;->b(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lnx;->a(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lnx;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    const-string v2, "current_action"

    invoke-virtual {v0, v1, v2, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 80
    invoke-direct {p0, p2}, Lnx;->b(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lnx;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 82
    return-void
.end method
