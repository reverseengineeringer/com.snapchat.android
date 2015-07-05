.class public final Lud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lub;


# static fields
.field private static final GET:Ljava/lang/String; = "GET"

.field private static final TAG:Ljava/lang/String; = "OkHttpNetworkInterface"

.field private static final mClock:Lbgk;


# instance fields
.field private final mClientFactory:Ltq;

.field private final mEntityFactory:Ltl;

.field private final mGoogleAuthManager:Llx;

.field private final mUrlRoutingManager:Lbft;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lbgl;

    invoke-direct {v0}, Lbgl;-><init>()V

    iget-object v0, v0, Lbgl;->mClock:Lbgk;

    sput-object v0, Lud;->mClock:Lbgk;

    return-void
.end method

.method public constructor <init>(Ltl;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lui;

    invoke-direct {v0}, Lui;-><init>()V

    invoke-static {}, Llx;->a()Llx;

    move-result-object v1

    invoke-static {}, Lbft;->a()Lbft;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lud;-><init>(Ltl;Ltq;Llx;Lbft;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ltl;Ltq;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Llx;->a()Llx;

    move-result-object v0

    invoke-static {}, Lbft;->a()Lbft;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lud;-><init>(Ltl;Ltq;Llx;Lbft;)V

    .line 82
    return-void
.end method

.method private constructor <init>(Ltl;Ltq;Llx;Lbft;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lud;->mEntityFactory:Ltl;

    .line 88
    iput-object p2, p0, Lud;->mClientFactory:Ltq;

    .line 89
    iput-object p3, p0, Lud;->mGoogleAuthManager:Llx;

    .line 90
    iput-object p4, p0, Lud;->mUrlRoutingManager:Lbft;

    .line 91
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lbma$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/api2/framework/HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lbma$a;"
        }
    .end annotation

    .prologue
    .line 230
    if-nez p2, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null method encountered for url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    new-instance v0, Lblu$a;

    invoke-direct {v0}, Lblu$a;-><init>()V

    .line 235
    if-eqz p1, :cond_1

    .line 236
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    move-result-object v0

    move-object v2, v0

    .line 238
    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 240
    :cond_2
    invoke-virtual {v2}, Lblu$a;->a()Lblu;

    move-result-object v0

    .line 242
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    new-instance v1, Lbma$a;

    invoke-direct {v1}, Lbma$a;-><init>()V

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbma$a;->a(Ljava/lang/String;Lbmb;)Lbma$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbma$a;->a(Lblu;)Lbma$a;

    move-result-object v0

    .line 253
    :goto_1
    return-object v0

    .line 248
    :cond_3
    iget-object v1, p0, Lud;->mEntityFactory:Ltl;

    invoke-virtual {v1, p3, p4}, Ltl;->a(Ljava/lang/String;Ljava/lang/Object;)Lbmb;

    move-result-object v1

    .line 249
    new-instance v2, Lbma$a;

    invoke-direct {v2}, Lbma$a;-><init>()V

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lbma$a;->a(Ljava/lang/String;Lbmb;)Lbma$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbma$a;->a(Lblu;)Lbma$a;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; UUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 261
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid URL - host should not be null - %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid URL - scheme should not be null - %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lbfk;Ljava/lang/Object;)Luc;
    .locals 37
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/api2/framework/HttpMethod;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lbfk;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/framework/HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbfk;",
            "Ljava/lang/Object;",
            ")",
            "Luc;"
        }
    .end annotation

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lud;->mUrlRoutingManager:Lbft;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lbft;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 100
    const-wide/16 v26, 0x0

    .line 101
    const-wide/16 v24, 0x0

    .line 102
    const-wide/16 v22, 0x0

    .line 103
    const-wide/16 v20, 0x0

    .line 104
    const-wide/16 v18, 0x0

    .line 105
    const-string v28, ""

    .line 106
    const-string v14, ""

    .line 107
    const/16 v29, 0x0

    .line 108
    const/16 v16, 0x0

    .line 109
    new-instance v5, Ltj;

    invoke-direct {v5}, Ltj;-><init>()V

    .line 110
    new-instance v15, Luc$a;

    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v7, v4}, Luc$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v4, 0x1

    .line 112
    if-eqz v7, :cond_2

    const-string v6, "dummy"

    invoke-static {v6}, Lazm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move/from16 v31, v6

    .line 115
    :goto_0
    if-nez p5, :cond_3

    if-eqz v7, :cond_0

    const-string v6, "req_token="

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    const/4 v6, 0x1

    move/from16 v30, v6

    .line 116
    :goto_1
    if-nez p3, :cond_d

    new-instance p3, Ljava/util/HashMap;

    invoke-direct/range {p3 .. p3}, Ljava/util/HashMap;-><init>()V

    move-object v6, v15

    move-object v8, v14

    move-object v14, v7

    move v7, v4

    move-object/from16 v4, v16

    .line 118
    :goto_2
    if-eqz v7, :cond_a

    .line 120
    if-eqz v31, :cond_1

    .line 121
    :try_start_0
    const-string v7, "X-Snapchat-Client-Auth-Token"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Bearer "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lud;->mGoogleAuthManager:Llx;

    invoke-virtual {v12}, Llx;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p0

    iget-object v7, v0, Lud;->mGoogleAuthManager:Llx;

    invoke-virtual {v7}, Llx;->b()Ljava/lang/String;

    move-result-object v7

    .line 124
    if-eqz v7, :cond_1

    .line 125
    const-string v9, "X-Snapchat-AuthExp"

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v14, v3}, Lud;->a(Ljava/util/Map;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lbma$a;

    move-result-object v13

    .line 131
    invoke-static {}, Luh;->a()Luh;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lud;->mClientFactory:Ltq;

    move-object/from16 v16, v0

    const-string v17, "OkHttpNetworkInterface"

    invoke-virtual/range {v12 .. v17}, Luh;->a(Lbma$a;Ljava/lang/String;Ljava/lang/String;Ltq;Ljava/lang/String;)Luh$a;

    move-result-object v9

    .line 134
    iget-object v12, v9, Luh$a;->mRequest:Lbma;

    .line 135
    iget-object v7, v9, Luh$a;->mUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    iget-object v13, v9, Luh$a;->mResponse:Lbmc;

    .line 137
    iget-object v0, v9, Luh$a;->mMigrationResult:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    :try_start_2
    iget-object v4, v9, Luh$a;->mException:Ljava/io/IOException;

    .line 141
    if-eqz v4, :cond_4

    .line 142
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    :catch_0
    move-exception v4

    move-object v15, v6

    move-object v14, v8

    :goto_3
    move-object v8, v4

    move-object/from16 v5, v16

    move-object v6, v14

    move-object v13, v7

    move-object/from16 v7, v28

    move-object v4, v15

    .line 208
    :goto_4
    :try_start_3
    const-string v9, "OkHttpNetworkInterface"

    const-string v12, "Http request failed: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v9, v12, v14}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v12

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v14, v32

    .line 211
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v9 .. v16}, Laaq;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 214
    iput-object v8, v4, Luc$a;->mCaughtException:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    invoke-static/range {v29 .. v29}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    move-wide/from16 v16, v14

    move-wide/from16 v14, v24

    .line 219
    :goto_5
    invoke-virtual {v4}, Luc$a;->a()Luc;

    move-result-object v18

    .line 220
    const-string v4, "Age"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Luc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_6
    new-instance v19, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v20, "ENDPOINT_REQUEST"

    invoke-direct/range {v19 .. v20}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v20, "reachability"

    move-object/from16 v0, v18

    iget-object v0, v0, Luc;->mNetworkType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v19

    const-string v20, "endpoint"

    invoke-virtual/range {v18 .. v18}, Luc;->a()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v19

    const-string v20, "host"

    invoke-virtual/range {v18 .. v18}, Luc;->b()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v19

    const-string v20, "first_bytes_latency"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v14

    const-string v15, "total_latency"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v14

    const-string v15, "status_code"

    move-object/from16 v0, v18

    iget v0, v0, Luc;->mResponseCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v14

    const-string v15, "first_bytes_size"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v14, v15, v12}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v12

    const-string v13, "request_size_bytes"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v13, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v8

    const-string v9, "return_size_bytes"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v8

    const-string v9, "Hit_Cache"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v8, "protocol"

    invoke-virtual {v4, v8, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v7, "requestId"

    invoke-virtual {v4, v7, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    const-string v6, "param1"

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    invoke-static {v4, v5}, Luh;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 222
    return-object v18

    .line 112
    :cond_2
    const/4 v6, 0x0

    move/from16 v31, v6

    goto/16 :goto_0

    .line 115
    :cond_3
    const/4 v6, 0x0

    move/from16 v30, v6

    goto/16 :goto_1

    .line 145
    :cond_4
    :try_start_4
    const-string v4, "X-Snapchat-UUID"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v14, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 147
    :try_start_5
    new-instance v15, Luc$a;

    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v7, v4}, Luc$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 148
    :try_start_6
    iget v9, v13, Lbmc;->c:I

    .line 154
    const/16 v4, 0x1f3

    if-ne v9, v4, :cond_5

    if-eqz v31, :cond_5

    .line 155
    move-object/from16 v0, p0

    iget-object v4, v0, Lud;->mGoogleAuthManager:Llx;

    invoke-virtual {v4}, Llx;->c()V

    .line 156
    const/4 v4, 0x1

    .line 157
    const-string v6, "OkHttpNetworkInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Android ID token expired, retry: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lud;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v15

    move-object v8, v14

    move-object v14, v7

    move v7, v4

    move-object/from16 v4, v16

    goto/16 :goto_2

    .line 159
    :cond_5
    const/16 v26, 0x0

    .line 160
    iget-object v8, v13, Lbmc;->d:Ljava/lang/String;

    .line 161
    new-instance v27, Lug;

    iget-object v4, v13, Lbmc;->f:Lblu;

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Lug;-><init>(Lblu;)V

    .line 162
    iget-object v4, v13, Lbmc;->g:Lbmd;

    .line 163
    iget-object v6, v13, Lbmc;->b:Lblz;

    if-nez v6, :cond_8

    const-string v28, ""

    .line 165
    :goto_7
    iget-object v6, v12, Lbma;->d:Lbmb;

    if-eqz v6, :cond_6

    .line 166
    iget-object v6, v12, Lbma;->d:Lbmb;

    invoke-virtual {v6}, Lbmb;->b()J

    move-result-wide v18

    .line 169
    :cond_6
    iput-object v14, v15, Luc$a;->mRequestId:Ljava/lang/String;

    .line 170
    iput v9, v15, Luc$a;->mResponseCode:I

    .line 171
    iput-object v8, v15, Luc$a;->mResponseMessage:Ljava/lang/String;

    .line 172
    move-object/from16 v0, v27

    iput-object v0, v15, Luc$a;->mResponseHeaders:Lug;

    .line 174
    new-instance v34, Luo;

    invoke-direct/range {v34 .. v34}, Luo;-><init>()V

    .line 175
    if-eqz v4, :cond_c

    .line 176
    invoke-virtual {v4}, Lbmd;->c()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v6

    .line 177
    :try_start_7
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    invoke-interface {v0, v6, v1}, Lbfk;->a(Ljava/io/InputStream;Lbfk$a;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v17, v6

    .line 179
    :goto_8
    :try_start_8
    move-object/from16 v0, p4

    iput-object v0, v15, Luc$a;->mBuffer:Lbfk;

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v12, v12, v32

    .line 182
    move-object/from16 v0, v34

    iget-boolean v4, v0, Luo;->mIsReceived:Z

    if-eqz v4, :cond_9

    .line 183
    move-object/from16 v0, v34

    iget-wide v0, v0, Luo;->mFirstByteReceivedElapsedRealtimeInMillis:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v32

    .line 184
    move-object/from16 v0, v34

    iget v4, v0, Luo;->mFirstByteSize:I

    int-to-long v0, v4

    move-wide/from16 v22, v0

    .line 189
    :goto_9
    move-wide/from16 v0, v20

    iput-wide v0, v15, Luc$a;->mResponseBodySize:J

    .line 191
    move-wide/from16 v0, v20

    move-wide/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2, v3}, Ltj;->a(JJ)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v5 .. v13}, Ltj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 195
    const/4 v4, 0x0

    .line 196
    const-string v6, "X-Snapchat-Request-Id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lug;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 197
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v27

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 198
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 200
    :cond_7
    const-string v6, "Finished Request: method: %s; url: %s; size: %d;  status: %s (%s); requestTime: %d; duration: %d; request-id: %s"

    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    aput-object p2, v27, v29

    const/16 v29, 0x1

    aput-object v7, v27, v29

    const/16 v29, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aput-object v34, v27, v29

    const/16 v29, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v27, v29

    const/4 v9, 0x4

    aput-object v8, v27, v9

    const/4 v8, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v27, v8

    const/4 v8, 0x6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v27, v8

    const/4 v8, 0x7

    aput-object v4, v27, v8

    move-object/from16 v0, v27

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lud;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    const-string v6, "OkHttpNetworkInterface"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v4, v8}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v6, v15

    move-object/from16 v4, v16

    move-object/from16 v29, v17

    move-object v8, v14

    move-object v14, v7

    move/from16 v7, v26

    move-wide/from16 v26, v12

    .line 206
    goto/16 :goto_2

    .line 163
    :cond_8
    :try_start_9
    iget-object v6, v13, Lbmc;->b:Lblz;

    invoke-virtual {v6}, Lblz;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v28

    goto/16 :goto_7

    :cond_9
    move-wide/from16 v22, v20

    move-wide/from16 v24, v12

    .line 187
    goto/16 :goto_9

    .line 216
    :cond_a
    invoke-static/range {v29 .. v29}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v5, v4

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    move-wide/from16 v14, v24

    move-wide/from16 v16, v26

    move-object/from16 v7, v28

    move-object v4, v6

    move-object v6, v8

    move-wide/from16 v8, v18

    .line 217
    goto/16 :goto_5

    .line 216
    :catchall_0
    move-exception v4

    move-object/from16 v29, v17

    :goto_a
    invoke-static/range {v29 .. v29}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    .line 220
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 207
    :catch_1
    move-exception v4

    move-object v6, v15

    move-object/from16 v5, v16

    move-object v8, v7

    move-object/from16 v7, v17

    :goto_b
    move-object/from16 v29, v7

    move-object v13, v8

    move-object v8, v4

    move-object/from16 v7, v28

    move-object v4, v6

    move-object v6, v14

    goto/16 :goto_4

    :catch_2
    move-exception v4

    move-object/from16 v29, v17

    :goto_c
    move-object v8, v4

    move-object/from16 v5, v16

    move-object v6, v14

    move-object v13, v7

    move-object/from16 v7, v28

    move-object v4, v15

    goto/16 :goto_4

    .line 216
    :catchall_1
    move-exception v4

    goto :goto_a

    :catchall_2
    move-exception v4

    move-object/from16 v29, v6

    goto :goto_a

    .line 207
    :catch_3
    move-exception v4

    move-object/from16 v29, v17

    goto/16 :goto_3

    :catch_4
    move-exception v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object v7, v14

    move-object v14, v8

    move-object v4, v5

    goto/16 :goto_3

    :catch_5
    move-exception v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object v14, v8

    move-object v4, v5

    goto/16 :goto_3

    :catch_6
    move-exception v4

    move-object v15, v6

    goto/16 :goto_3

    :catch_7
    move-exception v4

    goto/16 :goto_3

    :catch_8
    move-exception v4

    move-object/from16 v29, v6

    goto/16 :goto_3

    :catch_9
    move-exception v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object v7, v14

    move-object v14, v8

    move-object v4, v5

    goto :goto_c

    :catch_a
    move-exception v5

    move-object v15, v6

    move-object/from16 v16, v4

    move-object v14, v8

    move-object v4, v5

    goto :goto_c

    :catch_b
    move-exception v4

    move-object v15, v6

    move-object v14, v8

    goto :goto_c

    :catch_c
    move-exception v4

    move-object v15, v6

    goto :goto_c

    :catch_d
    move-exception v4

    goto :goto_c

    :catch_e
    move-exception v4

    move-object/from16 v29, v6

    goto :goto_c

    :catch_f
    move-exception v5

    move-object/from16 v7, v29

    move-object/from16 v35, v4

    move-object v4, v5

    move-object/from16 v5, v35

    move-object/from16 v36, v8

    move-object v8, v14

    move-object/from16 v14, v36

    goto :goto_b

    :catch_10
    move-exception v5

    move-object v14, v8

    move-object v8, v7

    move-object/from16 v7, v29

    move-object/from16 v35, v5

    move-object v5, v4

    move-object/from16 v4, v35

    goto :goto_b

    :catch_11
    move-exception v4

    move-object/from16 v5, v16

    move-object v14, v8

    move-object v8, v7

    move-object/from16 v7, v29

    goto :goto_b

    :catch_12
    move-exception v4

    move-object/from16 v5, v16

    move-object v8, v7

    move-object/from16 v7, v29

    goto/16 :goto_b

    :catch_13
    move-exception v4

    move-object v6, v15

    move-object/from16 v5, v16

    move-object v8, v7

    move-object/from16 v7, v29

    goto/16 :goto_b

    :catch_14
    move-exception v4

    move-object/from16 v5, v16

    move-object v8, v7

    move-object v7, v6

    move-object v6, v15

    goto/16 :goto_b

    :cond_c
    move-object/from16 v17, v29

    goto/16 :goto_8

    :cond_d
    move-object v6, v15

    move-object v8, v14

    move-object v14, v7

    move v7, v4

    move-object/from16 v4, v16

    goto/16 :goto_2
.end method
