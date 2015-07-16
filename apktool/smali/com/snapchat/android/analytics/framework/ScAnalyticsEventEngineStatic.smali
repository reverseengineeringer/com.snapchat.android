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

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 45
    sput-wide p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->f:J

    return-wide p0
.end method

.method static synthetic a(Lht;J)J
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

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

    iput-object v1, p0, Lht;->clientTs:Ljava/lang/Double;

    iput-object v0, p0, Lht;->sessionId:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lht;->userAgent:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->c()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lht;->friendCount:Ljava/lang/Long;

    invoke-virtual {p0}, Lht;->a()Ljava/util/Map;

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

    invoke-static {v0}, Lbaj;->a(Ljava/lang/String;)V

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

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->i(J)V

    :cond_0
    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->b()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(J)V

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->w()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

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

    invoke-static {v10}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b(Z)V

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
    .locals 5

    .prologue
    .line 410
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 413
    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6

    .line 418
    :goto_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 422
    const/16 v2, 0x2710

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 423
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 425
    const/4 v0, 0x0

    .line 428
    :try_start_1
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 429
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 447
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 452
    :cond_0
    :goto_1
    return-object v0

    .line 432
    :catch_0
    move-exception v1

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 434
    :catch_1
    move-exception v1

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 436
    :catch_2
    move-exception v1

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 438
    :catch_3
    move-exception v1

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 439
    :catch_4
    move-exception v1

    .line 441
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 442
    :catch_5
    move-exception v1

    .line 445
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 447
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 448
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_1
    throw v0

    :catch_6
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    new-instance v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$3;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;)V
    .locals 2

    .prologue
    .line 75
    const-class v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 86
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 79
    :cond_1
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    .line 85
    sput-object p1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    if-eq v0, v1, :cond_0

    .line 161
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;)V

    .line 165
    :goto_0
    return-void

    .line 163
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

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "client_upload_ts"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v0

    const-string v1, "ANALYTICS_MIGRATION"

    const-string v2, "AUTH_ENDPOINT_PERCENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    invoke-static {}, Laux;->a()Ljava/util/Random;

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

    :goto_1
    if-eqz v0, :cond_6

    new-instance v0, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/UploadUsageAnalyticsTask;->executeSynchronously()Lus;

    move-result-object v0

    iget v0, v0, Lus;->mResponseCode:I

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_2
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_1

    const/16 v2, 0x257

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x191

    if-ne v0, v2, :cond_7

    :cond_2
    move v0, v7

    :goto_4
    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Event upload failed, with code "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", will attempt to re-upload later"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    :goto_5
    if-nez v0, :cond_3

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_6
    return-void

    :cond_4
    move v0, v6

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_7
    move v0, v6

    goto :goto_4

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

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_9
    move v0, v6

    goto :goto_5
.end method

.method public static a(Lmk;)V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->s()Z

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

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$1;-><init>(Lmk;J)V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Lml;)V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->s()Z

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

    invoke-direct {v2, p0, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$2;-><init>(Lml;J)V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 45
    sput-boolean p0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    return p0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 253
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 259
    new-instance v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$5;-><init>(J)V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(J)V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    sget-object v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/WorkerThread;->b(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->b(J)V

    return-void
.end method

.method private static b(Z)V
    .locals 12

    .prologue
    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 349
    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/analytics/framework/DatabaseHelper;

    move-result-object v1

    .line 358
    if-eqz p0, :cond_3

    const/16 v0, 0x64

    :goto_1
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/DatabaseHelper;->a(I)Landroid/util/Pair;

    move-result-object v1

    .line 359
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 360
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    .line 361
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    int-to-long v4, v0

    .line 363
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v10

    new-instance v0, Lgb;

    invoke-direct {v0}, Lgb;-><init>()V

    sget-object v8, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v8}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lml;->userId:Ljava/lang/String;

    sget-object v8, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v8}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->b()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lht;->userAgent:Ljava/lang/String;

    sget-object v8, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    invoke-interface {v8}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;->c()Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v0, Lht;->friendCount:Ljava/lang/Long;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iput-object v8, v0, Lht;->clientTs:Ljava/lang/Double;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lht;->clientUploadTs:Ljava/lang/Double;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v0, Lgb;->firstFailureTs:Ljava/lang/Double;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->v()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lgb;->rejectedEventCount:Ljava/lang/Long;

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->w()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v0, Lgb;->overflowedEventCount:Ljava/lang/Long;
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

    .line 374
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

    .line 382
    :catch_0
    move-exception v0

    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 358
    :cond_3
    const/4 v0, -0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static c()V
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 293
    new-instance v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$6;-><init>(J)V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Ljava/lang/Runnable;)V

    .line 326
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    sget-object v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/WorkerThread;->b(Ljava/lang/Runnable;)V

    .line 327
    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$7;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$7;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e:Ljava/lang/Runnable;

    .line 338
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a:Lcom/snapchat/android/analytics/framework/WorkerThread;

    sget-object v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/WorkerThread;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method static synthetic c(J)V
    .locals 6

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/framework/Constants;->d:Ljava/lang/String;

    invoke-interface {v1, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/framework/Constants;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->i:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->r()J

    move-result-wide v0

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h(J)J

    move-result-wide v0

    new-instance v4, Lgd;

    invoke-direct {v4}, Lgd;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lgd;->sessionSeqNum:Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lgd;->sinceLastSessionSec:Ljava/lang/Long;

    invoke-static {v4}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->a(Lml;)V

    return-void
.end method

.method static synthetic d(J)J
    .locals 2

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d()Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;

    return-object v0
.end method

.method static synthetic e(J)D
    .locals 4

    .prologue
    .line 45
    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic e()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b(Z)V

    return-void
.end method

.method static synthetic f()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(J)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->i(J)V

    return-void
.end method

.method static synthetic g(J)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->v()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

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

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->d:Z

    return v0
.end method

.method static synthetic h()J
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

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
    .line 574
    long-to-double v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 575
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic i()J
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method private static i(J)V
    .locals 2

    .prologue
    .line 626
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 632
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic j()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k()J
    .locals 2

    .prologue
    .line 45
    sget-wide v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->f:J

    return-wide v0
.end method

.method static synthetic l()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic n()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 45
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

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

.method static synthetic o()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic p()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->b(Z)V

    return-void
.end method

.method private static q()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 197
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

.method private static r()J
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->e:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized s()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 551
    const-class v1, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 560
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 556
    :cond_1
    :try_start_1
    sget-object v2, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->j:Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 560
    const/4 v0, 0x1

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static t()Z
    .locals 4

    .prologue
    .line 612
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->u()J

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

.method private static u()J
    .locals 4

    .prologue
    .line 621
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 622
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->l:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static v()J
    .locals 4

    .prologue
    .line 640
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 641
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->j:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static w()J
    .locals 4

    .prologue
    .line 659
    invoke-static {}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic;->q()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 660
    sget-object v1, Lcom/snapchat/android/analytics/framework/Constants;->k:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
