.class public final Lut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lur;


# static fields
.field private static final GET:Ljava/lang/String; = "GET"

.field private static final TAG:Ljava/lang/String; = "OkHttpNetworkInterface"

.field private static final mClock:Lbhk;


# instance fields
.field private final mClientFactory:Lug;

.field private final mEntityFactory:Lub;

.field private final mGoogleAuthManager:Lmp;

.field private final mUrlRoutingManager:Lbgt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    iget-object v0, v0, Lbhl;->mClock:Lbhk;

    sput-object v0, Lut;->mClock:Lbhk;

    return-void
.end method

.method public constructor <init>(Lub;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Luz;

    invoke-direct {v0}, Luz;-><init>()V

    invoke-static {}, Lmp;->a()Lmp;

    move-result-object v1

    invoke-static {}, Lbgt;->a()Lbgt;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lut;-><init>(Lub;Lug;Lmp;Lbgt;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lub;Lug;)V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lmp;->a()Lmp;

    move-result-object v0

    invoke-static {}, Lbgt;->a()Lbgt;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lut;-><init>(Lub;Lug;Lmp;Lbgt;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Lub;Lug;Lmp;Lbgt;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lut;->mEntityFactory:Lub;

    .line 89
    iput-object p2, p0, Lut;->mClientFactory:Lug;

    .line 90
    iput-object p3, p0, Lut;->mGoogleAuthManager:Lmp;

    .line 91
    iput-object p4, p0, Lut;->mUrlRoutingManager:Lbgt;

    .line 92
    return-void
.end method

.method private a(Ljava/util/Map;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lbnb$a;
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
            "Lbnb$a;"
        }
    .end annotation

    .prologue
    .line 241
    if-nez p2, :cond_0

    .line 242
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

    .line 245
    :cond_0
    new-instance v0, Lbmv$a;

    invoke-direct {v0}, Lbmv$a;-><init>()V

    .line 246
    if-eqz p1, :cond_1

    .line 247
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

    .line 248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    move-result-object v0

    move-object v2, v0

    .line 249
    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 251
    :cond_2
    invoke-virtual {v2}, Lbmv$a;->a()Lbmv;

    move-result-object v0

    .line 253
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    new-instance v1, Lbnb$a;

    invoke-direct {v1}, Lbnb$a;-><init>()V

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbnb$a;->a(Ljava/lang/String;Lbnc;)Lbnb$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbnb$a;->a(Lbmv;)Lbnb$a;

    move-result-object v0

    .line 264
    :goto_1
    return-object v0

    .line 259
    :cond_3
    iget-object v1, p0, Lut;->mEntityFactory:Lub;

    invoke-virtual {v1, p3, p4}, Lub;->a(Ljava/lang/String;Ljava/lang/Object;)Lbnc;

    move-result-object v1

    .line 260
    new-instance v2, Lbnb$a;

    invoke-direct {v2}, Lbnb$a;-><init>()V

    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lbnb$a;->a(Ljava/lang/String;Lbnc;)Lbnb$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbnb$a;->a(Lbmv;)Lbnb$a;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
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

    .line 272
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid URL - host should not be null - %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid URL - scheme should not be null - %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lbgk;Ljava/lang/Object;)Lus;
    .locals 38
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/api2/framework/HttpMethod;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Lbgk;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lchd;
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
            "Lbgk;",
            "Ljava/lang/Object;",
            ")",
            "Lus;"
        }
    .end annotation

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lut;->mUrlRoutingManager:Lbgt;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lbgt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 103
    const-wide/16 v22, 0x0

    .line 104
    const-wide/16 v20, 0x0

    .line 105
    const-wide/16 v18, 0x0

    .line 106
    const-wide/16 v16, 0x0

    .line 107
    const-wide/16 v12, 0x0

    .line 108
    const-string v15, ""

    .line 109
    const-string v14, ""

    .line 110
    const/16 v26, 0x0

    .line 111
    const/16 v25, 0x0

    .line 112
    new-instance v5, Ltz;

    invoke-direct {v5}, Ltz;-><init>()V

    .line 113
    new-instance v24, Lus$a;

    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v4}, Lus$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v4, 0x1

    .line 115
    if-eqz v7, :cond_2

    const-string v6, "dummy"

    invoke-static {v6}, Lbal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move/from16 v30, v6

    .line 118
    :goto_0
    if-nez p5, :cond_3

    if-eqz v7, :cond_0

    const-string v6, "req_token="

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    const/4 v6, 0x1

    move/from16 v29, v6

    .line 119
    :goto_1
    if-nez p3, :cond_e

    new-instance p3, Ljava/util/HashMap;

    invoke-direct/range {p3 .. p3}, Ljava/util/HashMap;-><init>()V

    move v9, v4

    move-object/from16 v6, v24

    move-object v8, v14

    move-object/from16 v4, v25

    .line 121
    :goto_2
    if-eqz v9, :cond_a

    .line 123
    if-eqz v30, :cond_1

    .line 124
    :try_start_0
    const-string v9, "X-Snapchat-Client-Auth-Token"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v24, "Bearer "

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lut;->mGoogleAuthManager:Lmp;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmp;->d()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-object/from16 v0, p0

    iget-object v9, v0, Lut;->mGoogleAuthManager:Lmp;

    invoke-virtual {v9}, Lmp;->b()Ljava/lang/String;

    move-result-object v9

    .line 127
    if-eqz v9, :cond_1

    .line 128
    const-string v14, "X-Snapchat-AuthExp"

    move-object/from16 v0, p3

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v7, v3}, Lut;->a(Ljava/util/Map;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lbnb$a;

    move-result-object v9

    .line 134
    invoke-static {}, Luy;->a()Luy;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lut;->mClientFactory:Lug;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v9, v7, v0, v1}, Luy;->a(Lbnb$a;Ljava/lang/String;Ljava/lang/String;Lug;)Luy$a;

    move-result-object v9

    .line 137
    iget-object v0, v9, Luy$a;->mRequest:Lbnb;

    move-object/from16 v31, v0

    .line 138
    iget-object v7, v9, Luy$a;->mUrl:Ljava/lang/String;

    .line 139
    iget-object v0, v9, Luy$a;->mResponse:Lbnd;

    move-object/from16 v27, v0

    .line 140
    iget-object v0, v9, Luy$a;->mMigrationResult:Ljava/lang/String;

    move-object/from16 v25, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    iget-object v4, v9, Luy$a;->mException:Ljava/io/IOException;

    .line 144
    if-eqz v4, :cond_4

    .line 145
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    :catch_0
    move-exception v4

    move-object/from16 v24, v6

    move-object v14, v8

    :goto_3
    move-object v8, v4

    move-object/from16 v5, v25

    move-object v6, v14

    move-wide/from16 v22, v18

    move-wide/from16 v18, v12

    move-object/from16 v4, v24

    move-wide/from16 v24, v20

    move-object v13, v7

    move-object v7, v15

    move-wide/from16 v20, v16

    .line 219
    :goto_4
    const/4 v9, 0x1

    :try_start_2
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v12

    .line 220
    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v12

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v14, v14, v32

    .line 222
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v9 .. v16}, Labp;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 225
    iput-object v8, v4, Lus$a;->mCaughtException:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 227
    invoke-static/range {v26 .. v26}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    move-wide/from16 v16, v14

    move-wide/from16 v14, v24

    .line 230
    :goto_5
    invoke-virtual {v4}, Lus$a;->a()Lus;

    move-result-object v18

    .line 231
    const-string v4, "Age"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lus;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_6
    new-instance v19, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v20, "ENDPOINT_REQUEST"

    invoke-direct/range {v19 .. v20}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v20, "reachability"

    move-object/from16 v0, v18

    iget-object v0, v0, Lus;->mNetworkType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v19

    const-string v20, "endpoint"

    invoke-virtual/range {v18 .. v18}, Lus;->a()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v19

    const-string v20, "host"

    invoke-virtual/range {v18 .. v18}, Lus;->b()Ljava/lang/String;

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

    iget v0, v0, Lus;->mResponseCode:I

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

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v4

    invoke-static {v4, v5}, Luy;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 233
    return-object v18

    .line 115
    :cond_2
    const/4 v6, 0x0

    move/from16 v30, v6

    goto/16 :goto_0

    .line 118
    :cond_3
    const/4 v6, 0x0

    move/from16 v29, v6

    goto/16 :goto_1

    .line 148
    :cond_4
    :try_start_3
    const-string v4, "X-Snapchat-UUID"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v14, v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    :try_start_4
    new-instance v24, Lus$a;

    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v7, v4}, Lus$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    :try_start_5
    move-object/from16 v0, v27

    iget v9, v0, Lbnd;->c:I

    .line 157
    const/16 v4, 0x1f3

    if-ne v9, v4, :cond_5

    if-eqz v30, :cond_5

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lut;->mGoogleAuthManager:Lmp;

    invoke-virtual {v4}, Lmp;->c()V

    .line 159
    const/4 v4, 0x1

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Android ID token expired, retry: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lut;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move v9, v4

    move-object/from16 v6, v24

    move-object v8, v14

    move-object/from16 v4, v25

    goto/16 :goto_2

    .line 162
    :cond_5
    const/16 v28, 0x0

    .line 163
    new-instance v6, Lut$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v6, v0, v1}, Lut$1;-><init>(Lut;Lbnd;)V

    .line 170
    new-instance v34, Lvf;

    invoke-direct/range {v34 .. v34}, Lvf;-><init>()V

    .line 171
    move-object/from16 v0, v27

    iget-object v4, v0, Lbnd;->g:Lbne;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 173
    :goto_7
    move-object/from16 v0, v27

    iget-object v8, v0, Lbnd;->d:Ljava/lang/String;

    .line 174
    new-instance v35, Lux;

    move-object/from16 v0, v27

    iget-object v6, v0, Lbnd;->f:Lbmv;

    move-object/from16 v0, v35

    invoke-direct {v0, v6}, Lux;-><init>(Lbmv;)V

    .line 175
    move-object/from16 v0, v27

    iget-object v6, v0, Lbnd;->b:Lbna;

    if-nez v6, :cond_8

    const-string v27, ""
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 177
    :goto_8
    :try_start_6
    move-object/from16 v0, v31

    iget-object v6, v0, Lbnb;->d:Lbnc;

    if-eqz v6, :cond_d

    .line 178
    move-object/from16 v0, v31

    iget-object v6, v0, Lbnb;->d:Lbnc;

    invoke-virtual {v6}, Lbnc;->b()J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-wide v22

    .line 181
    :goto_9
    :try_start_7
    move-object/from16 v0, v24

    iput-object v14, v0, Lus$a;->mRequestId:Ljava/lang/String;

    .line 182
    move-object/from16 v0, v24

    iput v9, v0, Lus$a;->mResponseCode:I

    .line 183
    move-object/from16 v0, v24

    iput-object v8, v0, Lus$a;->mResponseMessage:Ljava/lang/String;

    .line 184
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    iput-object v0, v1, Lus$a;->mResponseHeaders:Lux;

    .line 186
    if-eqz v4, :cond_c

    .line 187
    invoke-virtual {v4}, Lbne;->c()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v6

    .line 188
    :try_start_8
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Lbgk;->a(Ljava/io/InputStream;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v16, v0

    move-object v15, v6

    .line 190
    :goto_a
    :try_start_9
    move-object/from16 v0, p4

    move-object/from16 v1, v24

    iput-object v0, v1, Lus$a;->mBuffer:Lbgk;

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v12, v12, v32

    .line 193
    move-object/from16 v0, v34

    iget-boolean v4, v0, Lvf;->mIsReceived:Z

    if-eqz v4, :cond_9

    .line 194
    move-object/from16 v0, v34

    iget-wide v0, v0, Lvf;->mFirstByteReceivedElapsedRealtimeInMillis:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v32

    .line 195
    move-object/from16 v0, v34

    iget-wide v0, v0, Lvf;->mFirstByteSize:J

    move-wide/from16 v18, v0

    .line 200
    :goto_b
    move-wide/from16 v0, v16

    move-object/from16 v2, v24

    iput-wide v0, v2, Lus$a;->mResponseBodySize:J

    .line 202
    move-wide/from16 v0, v16

    move-wide/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Ltz;->a(JJ)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Lcom/snapchat/android/api2/framework/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v5 .. v13}, Ltz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 206
    const/4 v4, 0x0

    .line 207
    const-string v6, "X-Snapchat-Request-Id"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lux;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 208
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v26

    const/16 v31, 0x1

    move/from16 v0, v26

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 209
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 211
    :cond_6
    const-string v6, "Finished Request: method: %s; url: %s; size: %d;  status: %s (%s); requestTime: %d; duration: %d; request-id: %s"

    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v31, 0x0

    aput-object p2, v26, v31

    const/16 v31, 0x1

    aput-object v7, v26, v31

    const/16 v31, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aput-object v34, v26, v31

    const/16 v31, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v26, v31

    const/4 v9, 0x4

    aput-object v8, v26, v9

    const/4 v8, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v26, v8

    const/4 v8, 0x6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v26, v8

    const/4 v8, 0x7

    aput-object v4, v26, v8

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lut;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move/from16 v9, v28

    move-object/from16 v6, v24

    move-object/from16 v4, v25

    move-object/from16 v26, v15

    move-object v8, v14

    move-object/from16 v15, v27

    move-wide/from16 v36, v12

    move-wide/from16 v12, v22

    move-wide/from16 v22, v36

    .line 215
    goto/16 :goto_2

    .line 171
    :cond_7
    :try_start_a
    new-instance v4, Luv;

    move-object/from16 v0, v27

    iget-object v8, v0, Lbnd;->g:Lbne;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lvg;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v6, v22, v23

    const/4 v6, 0x1

    aput-object v34, v22, v6

    move-object/from16 v0, v22

    invoke-direct {v4, v8, v0}, Luv;-><init>(Lbne;[Lvg;)V

    goto/16 :goto_7

    .line 218
    :catch_1
    move-exception v4

    goto/16 :goto_3

    .line 175
    :cond_8
    move-object/from16 v0, v27

    iget-object v6, v0, Lbnd;->b:Lbna;

    invoke-virtual {v6}, Lbna;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v27

    goto/16 :goto_8

    :cond_9
    move-wide/from16 v18, v16

    move-wide/from16 v20, v12

    .line 198
    goto/16 :goto_b

    .line 227
    :cond_a
    invoke-static/range {v26 .. v26}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v5, v4

    move-wide/from16 v10, v16

    move-object v7, v15

    move-object v4, v6

    move-wide/from16 v14, v20

    move-wide/from16 v16, v22

    move-object v6, v8

    move-wide v8, v12

    move-wide/from16 v12, v18

    .line 228
    goto/16 :goto_5

    .line 227
    :catchall_0
    move-exception v4

    move-object/from16 v26, v15

    :goto_c
    invoke-static/range {v26 .. v26}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    .line 231
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 218
    :catch_2
    move-exception v4

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    move-wide/from16 v12, v22

    move-object v8, v7

    move-object v7, v15

    move-object/from16 v15, v27

    :goto_d
    move-object/from16 v26, v7

    move-wide/from16 v22, v18

    move-wide/from16 v24, v20

    move-wide/from16 v18, v12

    move-wide/from16 v20, v16

    move-object v7, v15

    move-object v13, v8

    move-object v8, v4

    move-object v4, v6

    move-object v6, v14

    goto/16 :goto_4

    :catch_3
    move-exception v4

    move-object/from16 v26, v15

    move-wide/from16 v12, v22

    move-object/from16 v15, v27

    :goto_e
    move-object v8, v4

    move-object/from16 v5, v25

    move-object v6, v14

    move-wide/from16 v22, v18

    move-wide/from16 v18, v12

    move-object/from16 v4, v24

    move-wide/from16 v24, v20

    move-object v13, v7

    move-object v7, v15

    move-wide/from16 v20, v16

    goto/16 :goto_4

    .line 227
    :catchall_1
    move-exception v4

    goto :goto_c

    :catchall_2
    move-exception v4

    move-object/from16 v26, v6

    goto :goto_c

    .line 218
    :catch_4
    move-exception v4

    move-object/from16 v26, v15

    move-wide/from16 v12, v22

    move-object/from16 v15, v27

    goto/16 :goto_3

    :catch_5
    move-exception v5

    move-object/from16 v24, v6

    move-object/from16 v25, v4

    move-object v14, v8

    move-object v4, v5

    goto/16 :goto_3

    :catch_6
    move-exception v4

    move-object/from16 v24, v6

    goto/16 :goto_3

    :catch_7
    move-exception v4

    move-object/from16 v15, v27

    goto/16 :goto_3

    :catch_8
    move-exception v4

    move-wide/from16 v12, v22

    move-object/from16 v15, v27

    goto/16 :goto_3

    :catch_9
    move-exception v4

    move-object/from16 v26, v6

    move-wide/from16 v12, v22

    move-object/from16 v15, v27

    goto/16 :goto_3

    :catch_a
    move-exception v5

    move-object/from16 v24, v6

    move-object/from16 v25, v4

    move-object v14, v8

    move-object v4, v5

    goto :goto_e

    :catch_b
    move-exception v4

    move-object/from16 v24, v6

    move-object v14, v8

    goto :goto_e

    :catch_c
    move-exception v4

    move-object/from16 v24, v6

    goto :goto_e

    :catch_d
    move-exception v4

    goto :goto_e

    :catch_e
    move-exception v4

    move-object/from16 v15, v27

    goto :goto_e

    :catch_f
    move-exception v4

    move-wide/from16 v12, v22

    move-object/from16 v15, v27

    goto :goto_e

    :catch_10
    move-exception v4

    move-object/from16 v26, v6

    move-wide/from16 v12, v22

    move-object/from16 v15, v27

    goto :goto_e

    :catch_11
    move-exception v5

    move-object v14, v8

    move-object v8, v7

    move-object/from16 v7, v26

    move-object/from16 v36, v5

    move-object v5, v4

    move-object/from16 v4, v36

    goto/16 :goto_d

    :catch_12
    move-exception v4

    move-object/from16 v5, v25

    move-object v14, v8

    move-object v8, v7

    move-object/from16 v7, v26

    goto/16 :goto_d

    :catch_13
    move-exception v4

    move-object/from16 v5, v25

    move-object v8, v7

    move-object/from16 v7, v26

    goto/16 :goto_d

    :catch_14
    move-exception v4

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    move-object v8, v7

    move-object/from16 v7, v26

    goto/16 :goto_d

    :catch_15
    move-exception v4

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    move-object/from16 v15, v27

    move-object v8, v7

    move-object/from16 v7, v26

    goto/16 :goto_d

    :catch_16
    move-exception v4

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    move-wide/from16 v12, v22

    move-object/from16 v15, v27

    move-object v8, v7

    move-object/from16 v7, v26

    goto/16 :goto_d

    :catch_17
    move-exception v4

    move-object/from16 v5, v25

    move-wide/from16 v12, v22

    move-object/from16 v15, v27

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v6, v24

    goto/16 :goto_d

    :cond_c
    move-object/from16 v15, v26

    goto/16 :goto_a

    :cond_d
    move-wide/from16 v22, v12

    goto/16 :goto_9

    :cond_e
    move v9, v4

    move-object/from16 v6, v24

    move-object v8, v14

    move-object/from16 v4, v25

    goto/16 :goto_2
.end method
