.class public final Lpt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpt$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_RESPONSE_SIZE:I = 0x400

.field public static final DELETE:I = 0x4

.field public static final GET:I = 0x1

.field private static final LANGUAGE_HEADER_NAME:Ljava/lang/String; = "Accept-Language"

.field private static final LOCALE_HEADER_NAME:Ljava/lang/String; = "Accept-Locale"

.field public static final MAX_DISCOVER_SHARE_BLOB_SIZE:I = 0x500000

.field public static final MAX_UPLOAD_BLOB_SIZE:I = 0x280000

.field public static final NO_RESPONSE_STATUSCODE:I = -0x1

.field public static final POST:I = 0x2

.field public static final PUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SnapchatServer"

.field private static final USER_AGENT_HEADER_NAME:Ljava/lang/String; = "User-Agent"

.field private static final UUID_HEADER_NAME:Ljava/lang/String; = "X-Snapchat-UUID"


# direct methods
.method public static a(Ljava/lang/String;Landroid/os/Bundle;Lpt$a;)Landroid/os/Bundle;
    .locals 39

    .prologue
    .line 92
    const/4 v14, 0x0

    .line 95
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    invoke-static/range {p0 .. p0}, Lbal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    :goto_0
    invoke-static {}, Lbgt;->a()Lbgt;

    move-result-object v5

    invoke-virtual {v5, v4}, Lbgt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 108
    new-instance v26, Landroid/os/Bundle;

    invoke-direct/range {v26 .. v26}, Landroid/os/Bundle;-><init>()V

    .line 109
    new-instance v5, Ltz;

    invoke-direct {v5}, Ltz;-><init>()V

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 114
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 115
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lpt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    const-string v7, "timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "req_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v27

    .line 119
    const/4 v9, -0x1

    .line 124
    invoke-static {}, Lmp;->a()Lmp;

    move-result-object v30

    .line 125
    const/4 v4, 0x1

    move-object v6, v14

    .line 127
    :goto_1
    if-eqz v4, :cond_f

    .line 131
    :try_start_0
    new-instance v7, Lbnb$a;

    invoke-direct {v7}, Lbnb$a;-><init>()V

    .line 135
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 157
    const-string v4, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "thumbnail_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "raw_thumbnail_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 158
    :cond_0
    invoke-static/range {p1 .. p1}, Lpt;->a(Landroid/os/Bundle;)Lbnc;

    move-result-object v4

    .line 163
    :goto_2
    const-string v12, "POST"

    invoke-virtual {v7, v12, v4}, Lbnb$a;->a(Ljava/lang/String;Lbnc;)Lbnb$a;

    .line 164
    new-instance v4, Lbmv$a;

    invoke-direct {v4}, Lbmv$a;-><init>()V

    .line 180
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->h()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 181
    invoke-static {}, Lbgs;->c()Ljava/lang/String;

    move-result-object v6

    .line 182
    const-string v12, "X-Snapchat-UUID"

    invoke-virtual {v4, v12, v6}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_1
    move-object v14, v6

    .line 184
    :try_start_1
    const-string v6, "User-Agent"

    invoke-static {}, Lbgs;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v6, v12}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 185
    const-string v6, "Accept-Language"

    invoke-static {}, Lbgs;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v6, v12}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 186
    const-string v6, "Accept-Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v6, v12}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 189
    if-eqz v8, :cond_2

    if-eqz v24, :cond_2

    .line 190
    const-string v6, "X-Snapchat-Client-Auth-Token"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Bearer "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Lmp;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v6, v12}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 192
    invoke-virtual/range {v30 .. v30}, Lmp;->b()Ljava/lang/String;

    move-result-object v6

    .line 193
    if-eqz v6, :cond_2

    .line 194
    const-string v12, "X-Snapchat-AuthExp"

    invoke-virtual {v4, v12, v6}, Lbmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;

    .line 198
    :cond_2
    invoke-virtual {v4}, Lbmv$a;->a()Lbmv;

    move-result-object v4

    .line 199
    invoke-virtual {v7, v4}, Lbnb$a;->a(Lbmv;)Lbnb$a;

    .line 201
    invoke-static {}, Luy;->a()Luy;

    move-result-object v4

    const-string v6, "POST"

    new-instance v12, Luz;

    invoke-direct {v12}, Luz;-><init>()V

    invoke-virtual {v4, v7, v8, v6, v12}, Luy;->a(Lbnb$a;Ljava/lang/String;Ljava/lang/String;Lug;)Luy$a;

    move-result-object v4

    .line 204
    iget-object v0, v4, Luy$a;->mRequest:Lbnb;

    move-object/from16 v31, v0

    .line 205
    iget-object v0, v4, Luy$a;->mUrl:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 206
    iget-object v0, v4, Luy$a;->mResponse:Lbnd;

    move-object/from16 v33, v0

    .line 207
    iget-object v0, v4, Luy$a;->mMigrationResult:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 208
    iget-object v4, v4, Luy$a;->mException:Ljava/io/IOException;

    .line 211
    if-eqz v4, :cond_6

    .line 212
    const-string v5, "migrationResult"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    .line 336
    :catch_0
    move-exception v4

    move v5, v9

    move-object v6, v14

    .line 337
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "There was a problem when sending the request POST:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lpt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v14, v6, v28

    .line 342
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v9

    const-string v12, "POST"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v13, p0

    invoke-static/range {v9 .. v16}, Labp;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 344
    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_3

    .line 345
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v4

    invoke-virtual {v4}, Lbgr;->b()V

    .line 349
    :cond_3
    :goto_4
    :try_start_2
    const-string v4, "resultData"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-static {v4}, Lpt;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 355
    :goto_5
    const-string v4, "statusCode"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    const-string v4, "reachability"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-object v26

    .line 98
    :cond_4
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v4

    iget-object v4, v4, Lbgr;->mProxyEndpoint:Lajz;

    iget-object v4, v4, Lajz;->mBaseUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 160
    :cond_5
    :try_start_3
    sget-object v4, Lub;->URL_ENCODED_FORM_MEDIA_TYPE:Lbmx;

    invoke-static/range {p1 .. p1}, Lpt;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lbnc;->a(Lbmx;Ljava/lang/String;)Lbnc;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v4

    goto/16 :goto_2

    .line 216
    :cond_6
    :try_start_4
    move-object/from16 v0, v33

    iget v9, v0, Lbnd;->c:I

    .line 222
    const/16 v4, 0x1f3

    if-ne v9, v4, :cond_7

    if-eqz v32, :cond_7

    if-eqz v24, :cond_7

    .line 224
    invoke-virtual/range {v30 .. v30}, Lmp;->c()V

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Android ID token expired, retry: POST: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lpt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    .line 227
    const/4 v4, 0x1

    move-object v6, v14

    goto/16 :goto_1

    .line 229
    :cond_7
    const/16 v23, 0x0

    .line 230
    const/4 v7, 0x0

    .line 231
    const/4 v6, 0x0

    .line 233
    :try_start_5
    new-instance v8, Lux;

    move-object/from16 v0, v33

    iget-object v4, v0, Lbnd;->f:Lbmv;

    invoke-direct {v8, v4}, Lux;-><init>(Lbmv;)V

    .line 235
    const-string v4, "X-Snapchat-Actions"

    invoke-virtual {v8, v4}, Lux;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 236
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    const-string v13, "RESET_GAE_PROXY"

    invoke-static {v4, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 238
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v4

    invoke-virtual {v4}, Lbgr;->b()V

    .line 243
    :cond_9
    const-string v4, "X-Snapchat-Request-Id"

    invoke-virtual {v8, v4}, Lux;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 244
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 245
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v6, v4

    .line 253
    :cond_a
    const-string v4, "Age"

    invoke-virtual {v8, v4}, Lux;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 254
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    :goto_6
    move-object v15, v6

    move/from16 v22, v4

    .line 260
    :goto_7
    :try_start_6
    move-object/from16 v0, v33

    iget-object v8, v0, Lbnd;->d:Ljava/lang/String;

    .line 261
    new-instance v4, Lpt$1;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Lpt$1;-><init>(Lbnd;)V

    .line 268
    new-instance v35, Lvf;

    invoke-direct/range {v35 .. v35}, Lvf;-><init>()V

    .line 269
    new-instance v36, Luv;

    move-object/from16 v0, v33

    iget-object v6, v0, Lbnd;->g:Lbne;

    const/4 v7, 0x2

    new-array v7, v7, [Lvg;

    const/4 v12, 0x0

    aput-object v4, v7, v12

    const/4 v4, 0x1

    aput-object v35, v7, v4

    move-object/from16 v0, v36

    invoke-direct {v0, v6, v7}, Luv;-><init>(Lbne;[Lvg;)V

    .line 271
    move-object/from16 v0, v33

    iget-object v4, v0, Lbnd;->b:Lbna;

    if-nez v4, :cond_c

    const-string v4, ""

    .line 274
    :goto_8
    const-wide/16 v18, 0x0

    .line 275
    const-wide/16 v16, 0x0

    .line 277
    const-wide/16 v12, 0x0

    .line 278
    const-wide/16 v6, 0x0

    .line 280
    move-object/from16 v0, v31

    iget-object v0, v0, Lbnb;->d:Lbnc;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 281
    move-object/from16 v0, v31

    iget-object v0, v0, Lbnb;->d:Lbnc;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbnc;->b()J

    move-result-wide v18

    move-wide/from16 v20, v18

    .line 284
    :goto_9
    if-nez p2, :cond_e

    .line 288
    new-instance v6, Lbgl;

    const/16 v7, 0x400

    new-instance v12, Lbgl$b;

    invoke-direct {v12}, Lbgl$b;-><init>()V

    invoke-direct {v6, v7, v12}, Lbgl;-><init>(ILbgl$a;)V

    .line 290
    invoke-virtual/range {v36 .. v36}, Lbne;->c()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbgl;->a(Ljava/io/InputStream;)I

    move-result v7

    int-to-long v12, v7

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v18, v16, v28

    .line 293
    new-instance v7, Ljava/lang/String;

    iget-object v0, v6, Lbgl;->mBuffer:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v6, v6, Lbgl;->mSize:I

    const-string v33, "UTF-8"

    invoke-static/range {v33 .. v33}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v33

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v33

    invoke-direct {v7, v0, v1, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 295
    const-string v6, "resultData"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, v35

    iget-boolean v6, v0, Lvf;->mIsReceived:Z

    if-eqz v6, :cond_d

    .line 298
    move-object/from16 v0, v35

    iget-wide v6, v0, Lvf;->mFirstByteReceivedElapsedRealtimeInMillis:J

    sub-long v16, v6, v28

    .line 300
    move-object/from16 v0, v35

    iget-wide v6, v0, Lvf;->mFirstByteSize:J

    move-wide/from16 v37, v18

    move-wide/from16 v18, v12

    move-wide/from16 v12, v37

    .line 311
    :goto_a
    const-string v33, "hitCache"

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string v22, "firstByteDuration"

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 316
    const-string v16, "duration"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 317
    const-string v16, "sentBytes"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 318
    const-string v16, "firstByteSize"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 319
    const-string v6, "receivedBytes"

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 320
    const-string v6, "protocol"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v4, "host"

    invoke-virtual/range {v31 .. v31}, Lbnb;->a()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v4, "migrationResult"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Ltz;->a(JJ)V

    .line 325
    const-string v6, "POST"

    move-object/from16 v7, p0

    invoke-virtual/range {v5 .. v13}, Ltz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 329
    const-string v4, "Finished Request: method: %s; url: %s; size: %d;  status: %s (%s); requestTime: %d; duration: %d; request-id: %s"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v16, "POST"

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v32, v6, v7

    const/4 v7, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x4

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    aput-object v15, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v14}, Lpt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move/from16 v4, v23

    move-object v6, v14

    .line 333
    goto/16 :goto_1

    .line 254
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 255
    :catch_1
    move-exception v4

    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "Exception when parsing headers: "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v6

    move/from16 v22, v7

    goto/16 :goto_7

    .line 271
    :cond_c
    move-object/from16 v0, v33

    iget-object v4, v0, Lbnd;->b:Lbna;

    invoke-virtual {v4}, Lbna;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    :cond_d
    move-wide v6, v12

    move-wide/from16 v16, v18

    move-wide/from16 v37, v18

    move-wide/from16 v18, v12

    move-wide/from16 v12, v37

    .line 305
    goto/16 :goto_a

    .line 307
    :cond_e
    move-object/from16 v0, v33

    iget-object v0, v0, Lbnd;->f:Lbmv;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lpt$a;->a(Lbmv;Lbne;)V

    .line 308
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-wide v18

    sub-long v18, v18, v28

    move-wide/from16 v37, v12

    move-wide/from16 v12, v18

    move-wide/from16 v18, v16

    move-wide/from16 v16, v37

    goto/16 :goto_a

    :cond_f
    move v5, v9

    .line 347
    goto/16 :goto_4

    .line 352
    :catch_2
    move-exception v4

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception when returning result = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 336
    :catch_3
    move-exception v4

    move v5, v9

    goto/16 :goto_3

    :catch_4
    move-exception v4

    move v5, v9

    goto/16 :goto_3

    :catch_5
    move-exception v4

    move v5, v9

    move-object v6, v14

    goto/16 :goto_3

    :cond_10
    move-wide/from16 v20, v18

    goto/16 :goto_9
.end method

.method private static a(Landroid/os/Bundle;)Lbnc;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 413
    new-instance v0, Lbmy;

    invoke-direct {v0}, Lbmy;-><init>()V

    sget-object v1, Lbmy;->e:Lbmx;

    invoke-virtual {v0, v1}, Lbmy;->a(Lbmx;)Lbmy;

    move-result-object v2

    .line 414
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 416
    if-nez v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createMultipartBody putting null value for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_0
    const-string v4, "thumbnail_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "raw_thumbnail_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 420
    :cond_1
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Content-Disposition"

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "form-data; name=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"; filename=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v4}, Lbmv;->a([Ljava/lang/String;)Lbmv;

    move-result-object v4

    .line 422
    sget-object v5, Lub;->BYTE_STREAM_MEDIA_TYPE:Lbmx;

    move-object v0, v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v5, v0}, Lbnc;->a(Lbmx;[B)Lbnc;

    move-result-object v0

    .line 423
    invoke-virtual {v2, v4, v0}, Lbmy;->a(Lbmv;Lbnc;)Lbmy;

    goto :goto_0

    .line 425
    :cond_2
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "Content-Disposition"

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "form-data; name=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v4}, Lbmv;->a([Ljava/lang/String;)Lbmv;

    move-result-object v0

    sget-object v4, Lub;->STRING_MEDIA_TYPE:Lbmx;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lbnc;->a(Lbmx;Ljava/lang/String;)Lbnc;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lbmy;->a(Lbmv;Lbnc;)Lbmy;

    goto/16 :goto_0

    .line 431
    :cond_3
    invoke-virtual {v2}, Lbmy;->a()Lbnc;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 466
    const/4 v1, 0x0

    .line 468
    :try_start_0
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lalp;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalp;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 470
    :goto_0
    if-nez v0, :cond_0

    const-string v0, "ERROR: could not parse server response."

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lalp;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 362
    const-string v0, "/loq/gae_server_list"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/loq/ping"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 364
    invoke-static {p0}, Lpj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    :goto_1
    return-object v0

    .line 362
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :cond_2
    invoke-static {p0}, Lpj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 436
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 438
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 444
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 447
    :cond_1
    invoke-static {v1}, Lub;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
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
