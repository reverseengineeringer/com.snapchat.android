.class Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/snapchat/android/analytics/framework/WorkerThread;

.field static b:Lcom/snapchat/android/analytics/framework/WorkerThread;

.field private static c:Landroid/content/Context;

.field private static d:Z

.field private static e:Ljava/lang/Runnable;

.field private static f:J

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final i:Lcom/google/gson/Gson;

.field private static j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    sput-boolean v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    .line 53
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->f:J

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->i:Lcom/google/gson/Gson;

    .line 63
    new-instance v0, Lcom/snapchat/android/analytics/framework/WorkerThread;

    const-string v1, "sLogThread"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    .line 64
    new-instance v0, Lcom/snapchat/android/analytics/framework/WorkerThread;

    const-string v1, "sHttpThread"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/WorkerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b:Lcom/snapchat/android/analytics/framework/WorkerThread;

    .line 67
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->start()V

    .line 68
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b:Lcom/snapchat/android/analytics/framework/WorkerThread;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->start()V

    .line 69
    return-void
.end method

.method static synthetic a(Lhk;J)J
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    .line 45
    invoke-static {p1, p2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->g(J)V

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->g:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    long-to-double v4, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lhk;->clientTs:Ljava/lang/Double;

    iput-object v0, p0, Lhk;->sessionId:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhk;->userAgent:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->c()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lhk;->friendCount:Ljava/lang/Long;

    invoke-virtual {p0}, Lhk;->a()Ljava/util/Map;

    move-result-object v1

    const-string v4, "Blizzard Event:%s"

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v0, "event_name"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lazk;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->i:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a()J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    cmp-long v0, v0, v8

    if-ltz v0, :cond_2

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->i(J)V

    :cond_0
    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->b()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(J)V

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->z()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/framework/Constants;->k:Ljava/lang/String;

    const-wide/16 v8, 0x14

    add-long/2addr v0, v8

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    invoke-static {v10}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Z)V

    :cond_3
    :goto_0
    return-wide v6

    :cond_4
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    new-instance v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$4;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$4;-><init>()V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 416
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 419
    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 428
    const/16 v2, 0x2710

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 429
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 431
    const/4 v0, 0x0

    .line 434
    :try_start_1
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 435
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 453
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 458
    :cond_0
    :goto_1
    return-object v0

    .line 420
    :catch_0
    move-exception v0

    .line 424
    const-string v2, "com.amplitude.api.Amplitude"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    :catch_1
    move-exception v1

    :try_start_2
    const-string v1, "com.amplitude.api.Amplitude"

    const-string v3, "No service, will attempt to re-upload events later."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 440
    :catch_2
    move-exception v1

    :try_start_3
    const-string v1, "com.amplitude.api.Amplitude"

    const-string v3, "No service, will attempt to re-upload events later."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 441
    :catch_3
    move-exception v1

    .line 442
    :try_start_4
    const-string v3, "com.amplitude.api.Amplitude"

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 453
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 443
    :catch_4
    move-exception v1

    .line 444
    :try_start_5
    const-string v3, "com.amplitude.api.Amplitude"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 453
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 445
    :catch_5
    move-exception v1

    .line 447
    :try_start_6
    const-string v3, "com.amplitude.api.Amplitude"

    const-string v4, "Exception:"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 453
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1

    .line 448
    :catch_6
    move-exception v1

    .line 451
    :try_start_7
    const-string v3, "com.amplitude.api.Amplitude"

    const-string v4, "Exception:"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 453
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 454
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_1

    .line 453
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 454
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1
    throw v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "uploadEvents()"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    new-instance v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$3;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(J)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->g(J)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;)V
    .locals 4

    .prologue
    .line 75
    const-class v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 76
    :try_start_0
    const-string v0, "com.amplitude.api.Amplitude"

    const-string v2, "Argument context cannot be null in initialize()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    monitor-exit v1

    return-void

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 80
    :try_start_1
    const-string v0, "com.amplitude.api.Amplitude"

    const-string v2, "Argument userProperties cannot be null in initialize()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 84
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    .line 85
    sput-object p1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    if-eq v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Lorg/json/JSONArray;JJ)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v0, v6

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "client_upload_ts"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "com.amplitude.api.Amplitude"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lajt;->a()Lajt;

    move-result-object v0

    const-string v1, "ANALYTICS_MIGRATION"

    const-string v2, "AUTH_ENDPOINT_PERCENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    invoke-static {}, Latz;->a()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    float-to-double v0, v0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_4

    move v0, v7

    :goto_2
    if-eqz v0, :cond_6

    new-instance v0, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;->i()Luc;

    move-result-object v0

    iget v0, v0, Luc;->mResponseCode:I

    if-nez v0, :cond_5

    const-string v0, "com.amplitude.api.Amplitude"

    const-string v1, "Failed to obtain a response from server.  Will retry later."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_2

    const/16 v2, 0x257

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x191

    if-ne v0, v2, :cond_7

    :cond_3
    move v0, v7

    :goto_5
    if-eqz v0, :cond_8

    const-string v0, "com.amplitude.api.Amplitude"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event upload failed, with code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", will attempt to re-upload later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    :goto_6
    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_2

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_7
    move v0, v6

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v8, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;

    move-wide v2, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$9;-><init>(IJJ)V

    invoke-virtual {v8, v0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;)V

    move v0, v7

    goto :goto_6

    :cond_9
    move v0, v6

    goto :goto_6
.end method

.method public static a(Lls;)V
    .locals 3

    .prologue
    .line 89
    const-string v0, "logEvent()"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 94
    new-instance v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$1;-><init>(Lls;J)V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Llt;)V
    .locals 3

    .prologue
    .line 104
    const-string v0, "logEvent()"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    new-instance v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$2;-><init>(Llt;J)V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static a(Z)V
    .locals 12

    .prologue
    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v9, 0x0

    .line 355
    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    const-string v0, "com.amplitude.api.Amplitude"

    const-string v1, "Attempt to update server when not logged in. Aborting upload."

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    move-result-object v1

    .line 364
    if-eqz p0, :cond_3

    const/16 v0, 0x64

    :goto_1
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(I)Landroid/util/Pair;

    move-result-object v1

    .line 365
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 366
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    .line 367
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    int-to-long v4, v0

    .line 369
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v10

    new-instance v0, Lfs;

    invoke-direct {v0}, Lfs;-><init>()V

    sget-object v8, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v8}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Llt;->userId:Ljava/lang/String;

    sget-object v8, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v8}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->b()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lhk;->userAgent:Ljava/lang/String;

    sget-object v8, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v8}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->c()Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v0, Lhk;->friendCount:Ljava/lang/Long;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iput-object v8, v0, Lhk;->clientTs:Ljava/lang/Double;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lhk;->clientUploadTs:Ljava/lang/Double;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->x()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lfs;->firstFailureTs:Ljava/lang/Double;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->y()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lfs;->rejectedEventCount:Ljava/lang/Long;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->z()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lfs;->overflowedEventCount:Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    sget-object v7, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->i:Lcom/google/gson/Gson;

    invoke-virtual {v7, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 380
    :cond_2
    :goto_2
    :try_start_2
    sget-object v6, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b:Lcom/snapchat/android/analytics/framework/WorkerThread;

    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8;-><init>(Lorg/json/JSONArray;JJ)V

    invoke-virtual {v6, v0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    sget-object v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 389
    const-string v1, "com.amplitude.api.Amplitude"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 364
    :cond_3
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 377
    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "com.amplitude.api.Amplitude"

    const-string v6, "Unable to add failure event to upload event list."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private static declared-synchronized a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 557
    const-class v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 558
    const-string v2, "com.amplitude.api.Amplitude"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "context cannot be null, set context with initialize() before calling "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :goto_0
    monitor-exit v1

    return v0

    .line 562
    :cond_0
    :try_start_1
    sget-object v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    if-nez v2, :cond_1

    .line 563
    const-string v2, "com.amplitude.api.Amplitude"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userPrefs cannot be null, set userPrefs with initialize() before calling "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 566
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(J)J
    .locals 2

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 272
    const-string v0, "startSession()"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    new-instance v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;-><init>(J)V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic c(J)D
    .locals 4

    .prologue
    .line 45
    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 298
    const-string v0, "endSession()"

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 302
    new-instance v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;-><init>(J)V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Runnable;)V

    .line 332
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    sget-object v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/WorkerThread;->b(Ljava/lang/Runnable;)V

    .line 333
    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$7;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$7;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e:Ljava/lang/Runnable;

    .line 343
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    sget-object v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method static synthetic d()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    return-object v0
.end method

.method static synthetic d(J)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->i(J)V

    return-void
.end method

.method static synthetic e()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Z)V

    return-void
.end method

.method static synthetic e(J)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->y()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/framework/Constants;->j:Ljava/lang/String;

    add-long/2addr v0, p0

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic f()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static f(J)V
    .locals 6

    .prologue
    .line 225
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    .line 228
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/framework/Constants;->d:Ljava/lang/String;

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/framework/Constants;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->v()J

    move-result-wide v0

    .line 239
    sub-long v0, p0, v0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h(J)J

    move-result-wide v0

    .line 242
    new-instance v4, Lfu;

    invoke-direct {v4}, Lfu;-><init>()V

    .line 243
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lfu;->sessionSeqNum:Ljava/lang/Long;

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lfu;->sinceLastSessionSec:Ljava/lang/Long;

    .line 245
    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Llt;)V

    .line 246
    return-void
.end method

.method static synthetic g()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static g(J)V
    .locals 4

    .prologue
    .line 249
    sget-boolean v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    sput-wide p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->f:J

    .line 254
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->v()J

    move-result-wide v0

    .line 255
    sub-long v0, p0, v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 258
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    .line 262
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->f(J)V

    goto :goto_0

    .line 266
    :cond_2
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->f(J)V

    goto :goto_0
.end method

.method static synthetic h()J
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->f:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static h(J)J
    .locals 4

    .prologue
    .line 580
    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 581
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic i()J
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method private static i(J)V
    .locals 4

    .prologue
    .line 632
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const-string v0, "com.amplitude.api.Amplitude"

    const-string v1, "First failure has already occurred - aborting overwrite of first failure timestamp."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 638
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic j()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    return-void
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    return v0
.end method

.method static synthetic m()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()J
    .locals 2

    .prologue
    .line 45
    sget-wide v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->f:J

    return-wide v0
.end method

.method static synthetic o()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    return-void
.end method

.method static synthetic p()J
    .locals 2

    .prologue
    .line 45
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->f:J

    return-wide v0
.end method

.method static synthetic q()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->w()Z

    move-result v0

    return v0
.end method

.method static synthetic r()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->l:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic s()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic t()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Z)V

    return-void
.end method

.method private static u()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 199
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/snapchat/android/analytics/framework/Constants;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static v()J
    .locals 4

    .prologue
    .line 203
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->e:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static w()Z
    .locals 4

    .prologue
    .line 618
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->x()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static x()J
    .locals 4

    .prologue
    .line 627
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 628
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->l:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static y()J
    .locals 4

    .prologue
    .line 646
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 647
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->j:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static z()J
    .locals 4

    .prologue
    .line 665
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 666
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->k:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
