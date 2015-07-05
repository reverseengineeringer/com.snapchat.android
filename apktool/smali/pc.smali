.class public final Lpc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpc$a;
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
.method public static a(Ljava/lang/String;Landroid/os/Bundle;Lpc$a;)Landroid/os/Bundle;
    .locals 40

    .prologue
    .line 90
    const/16 v16, 0x0

    .line 93
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    invoke-static/range {p0 .. p0}, Lazm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    :goto_0
    invoke-static {}, Lbft;->a()Lbft;

    move-result-object v7

    invoke-virtual {v7, v6}, Lbft;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 106
    new-instance v27, Landroid/os/Bundle;

    invoke-direct/range {v27 .. v27}, Landroid/os/Bundle;-><init>()V

    .line 107
    new-instance v28, Ltj;

    invoke-direct/range {v28 .. v28}, Ltj;-><init>()V

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 112
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 113
    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lpc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 114
    const-string v8, "timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v6, "req_token"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v29

    .line 117
    const/4 v11, -0x1

    .line 122
    invoke-static {}, Llx;->a()Llx;

    move-result-object v32

    .line 123
    const/4 v6, 0x1

    move v14, v11

    move-object/from16 v9, v16

    .line 125
    :goto_1
    if-eqz v6, :cond_10

    .line 129
    :try_start_0
    new-instance v7, Lbma$a;

    invoke-direct {v7}, Lbma$a;-><init>()V

    .line 133
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 155
    const-string v6, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "thumbnail_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "raw_thumbnail_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 156
    :cond_0
    invoke-static/range {p1 .. p1}, Lpc;->a(Landroid/os/Bundle;)Lbmb;

    move-result-object v6

    .line 161
    :goto_2
    const-string v10, "POST"

    invoke-virtual {v7, v10, v6}, Lbma$a;->a(Ljava/lang/String;Lbmb;)Lbma$a;

    .line 162
    new-instance v6, Lblu$a;

    invoke-direct {v6}, Lblu$a;-><init>()V

    .line 178
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->h()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 179
    invoke-static {}, Lbfs;->c()Ljava/lang/String;

    move-result-object v9

    .line 180
    const-string v10, "X-Snapchat-UUID"

    invoke-virtual {v6, v10, v9}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_1
    move-object/from16 v16, v9

    .line 182
    :try_start_1
    const-string v9, "User-Agent"

    invoke-static {}, Lbfs;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    .line 183
    const-string v9, "Accept-Language"

    invoke-static {}, Lbfs;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    .line 184
    const-string v9, "Accept-Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    .line 187
    if-eqz v8, :cond_2

    if-eqz v25, :cond_2

    .line 188
    const-string v9, "X-Snapchat-Client-Auth-Token"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Bearer "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Llx;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    .line 190
    invoke-virtual/range {v32 .. v32}, Llx;->b()Ljava/lang/String;

    move-result-object v9

    .line 191
    if-eqz v9, :cond_2

    .line 192
    const-string v10, "X-Snapchat-AuthExp"

    invoke-virtual {v6, v10, v9}, Lblu$a;->a(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    .line 196
    :cond_2
    invoke-virtual {v6}, Lblu$a;->a()Lblu;

    move-result-object v6

    .line 197
    invoke-virtual {v7, v6}, Lbma$a;->a(Lblu;)Lbma$a;

    .line 199
    invoke-static {}, Luh;->a()Luh;

    move-result-object v6

    const-string v9, "POST"

    new-instance v10, Lui;

    invoke-direct {v10}, Lui;-><init>()V

    const-string v11, "SnapchatServer"

    invoke-virtual/range {v6 .. v11}, Luh;->a(Lbma$a;Ljava/lang/String;Ljava/lang/String;Ltq;Ljava/lang/String;)Luh$a;

    move-result-object v6

    .line 202
    iget-object v0, v6, Luh$a;->mRequest:Lbma;

    move-object/from16 v33, v0

    .line 203
    iget-object v0, v6, Luh$a;->mUrl:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 204
    iget-object v0, v6, Luh$a;->mResponse:Lbmc;

    move-object/from16 v35, v0

    .line 205
    iget-object v0, v6, Luh$a;->mMigrationResult:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 206
    iget-object v6, v6, Luh$a;->mException:Ljava/io/IOException;

    .line 209
    if-eqz v6, :cond_6

    .line 210
    const-string v7, "migrationResult"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6

    .line 326
    :catch_0
    move-exception v6

    move v7, v14

    move-object/from16 v8, v16

    .line 327
    :goto_3
    const-string v9, "SnapchatServer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "There was a problem when sending the request POST:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lpc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v8, v10}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    const-string v8, "SnapchatServer"

    invoke-static {v8, v6}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v8, v30

    .line 332
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v11

    const-string v14, "POST"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, p0

    invoke-static/range {v11 .. v18}, Laaq;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 334
    instance-of v6, v6, Ljava/io/IOException;

    if-eqz v6, :cond_3

    .line 335
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v6

    invoke-virtual {v6}, Lbfr;->b()V

    .line 339
    :cond_3
    :goto_4
    :try_start_2
    const-string v6, "resultData"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-static {v6}, Lpc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    const-string v8, "SnapchatServer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SnapchatServer Returning result: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v6, v9}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    :goto_5
    const-string v6, "statusCode"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v6, "reachability"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-object v27

    .line 96
    :cond_4
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v6

    iget-object v6, v6, Lbfr;->mProxyEndpoint:Lajd;

    iget-object v6, v6, Lajd;->mBaseUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 158
    :cond_5
    :try_start_3
    sget-object v6, Ltl;->URL_ENCODED_FORM_MEDIA_TYPE:Lblw;

    invoke-static/range {p1 .. p1}, Lpc;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lbmb;->a(Lblw;Ljava/lang/String;)Lbmb;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v6

    goto/16 :goto_2

    .line 214
    :cond_6
    :try_start_4
    move-object/from16 v0, v35

    iget v11, v0, Lbmc;->c:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6

    .line 220
    const/16 v6, 0x1f3

    if-ne v11, v6, :cond_7

    if-eqz v34, :cond_7

    if-eqz v25, :cond_7

    .line 222
    :try_start_5
    invoke-virtual/range {v32 .. v32}, Llx;->c()V

    .line 223
    const-string v6, "SnapchatServer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Android ID token expired, retry: POST: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lpc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_7

    .line 225
    const/4 v6, 0x1

    move v14, v11

    move-object/from16 v9, v16

    goto/16 :goto_1

    .line 227
    :cond_7
    const/16 v24, 0x0

    .line 228
    const/4 v8, 0x0

    .line 229
    const/4 v7, 0x0

    .line 231
    :try_start_6
    new-instance v9, Lug;

    move-object/from16 v0, v35

    iget-object v6, v0, Lbmc;->f:Lblu;

    invoke-direct {v9, v6}, Lug;-><init>(Lblu;)V

    .line 233
    const-string v6, "X-Snapchat-Actions"

    invoke-virtual {v9, v6}, Lug;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 234
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 235
    const-string v14, "RESET_GAE_PROXY"

    invoke-static {v6, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 236
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v6

    invoke-virtual {v6}, Lbfr;->b()V

    .line 241
    :cond_9
    const-string v6, "X-Snapchat-Request-Id"

    invoke-virtual {v9, v6}, Lug;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 242
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 243
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v7, v6

    .line 251
    :cond_a
    const-string v6, "Age"

    invoke-virtual {v9, v6}, Lug;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 252
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7

    move-result v6

    if-nez v6, :cond_b

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v22, v7

    move/from16 v23, v6

    .line 258
    :goto_7
    :try_start_7
    move-object/from16 v0, v35

    iget-object v10, v0, Lbmc;->d:Ljava/lang/String;

    .line 259
    move-object/from16 v0, v35

    iget-object v0, v0, Lbmc;->g:Lbmd;

    move-object/from16 v37, v0

    .line 260
    move-object/from16 v0, v35

    iget-object v6, v0, Lbmc;->b:Lblz;

    if-nez v6, :cond_c

    const-string v6, ""

    move-object/from16 v17, v6

    .line 263
    :goto_8
    const-wide/16 v18, 0x0

    .line 264
    const-wide/16 v14, 0x0

    .line 266
    const-wide/16 v8, 0x0

    .line 267
    const-wide/16 v6, 0x0

    .line 269
    move-object/from16 v0, v33

    iget-object v0, v0, Lbma;->d:Lbmb;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 270
    move-object/from16 v0, v33

    iget-object v0, v0, Lbma;->d:Lbmb;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lbmb;->b()J

    move-result-wide v18

    move-wide/from16 v20, v18

    .line 273
    :goto_9
    if-eqz v37, :cond_f

    .line 274
    if-nez p2, :cond_e

    .line 277
    new-instance v6, Lbfl;

    const/16 v7, 0x400

    new-instance v8, Lbfl$b;

    invoke-direct {v8}, Lbfl$b;-><init>()V

    invoke-direct {v6, v7, v8}, Lbfl;-><init>(ILbfl$a;)V

    .line 279
    new-instance v7, Luo;

    invoke-direct {v7}, Luo;-><init>()V

    .line 280
    invoke-virtual/range {v37 .. v37}, Lbmd;->c()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Lbfl;->a(Ljava/io/InputStream;Lbfk$a;)I

    move-result v8

    int-to-long v8, v8

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v18, v14, v30

    .line 283
    new-instance v14, Ljava/lang/String;

    iget-object v15, v6, Lbfl;->mBuffer:[B

    const/16 v35, 0x0

    iget v6, v6, Lbfl;->mSize:I

    const-string v37, "UTF-8"

    invoke-static/range {v37 .. v37}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v37

    move/from16 v0, v35

    move-object/from16 v1, v37

    invoke-direct {v14, v15, v0, v6, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 285
    const-string v6, "resultData"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-boolean v6, v7, Luo;->mIsReceived:Z

    if-eqz v6, :cond_d

    .line 288
    iget-wide v14, v7, Luo;->mFirstByteReceivedElapsedRealtimeInMillis:J

    sub-long v14, v14, v30

    .line 290
    iget v6, v7, Luo;->mFirstByteSize:I

    int-to-long v6, v6

    move-wide/from16 v38, v14

    move-wide/from16 v14, v18

    move-wide/from16 v18, v8

    move-wide/from16 v8, v38

    .line 304
    :goto_a
    const-string v35, "hitCache"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    const-string v23, "firstByteDuration"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 306
    const-string v8, "duration"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 307
    const-string v8, "sentBytes"

    move-object/from16 v0, v27

    move-wide/from16 v1, v20

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 308
    const-string v8, "firstByteSize"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 309
    const-string v6, "receivedBytes"

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 310
    const-string v6, "protocol"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v6, "host"

    invoke-virtual/range {v33 .. v33}, Lbma;->a()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v6, "migrationResult"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, v28

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Ltj;->a(JJ)V

    .line 315
    const-string v8, "POST"

    move-object/from16 v7, v28

    move-object/from16 v9, p0

    invoke-virtual/range {v7 .. v15}, Ltj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 319
    const-string v6, "Finished Request: method: %s; url: %s; size: %d;  status: %s (%s); requestTime: %d; duration: %d; request-id: %s"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "POST"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v34, v7, v8

    const/4 v8, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object v10, v7, v8

    const/4 v8, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    aput-object v22, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lpc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    const-string v7, "SnapchatServer"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v6, v24

    move v14, v11

    move-object/from16 v9, v16

    .line 325
    goto/16 :goto_1

    .line 252
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 253
    :catch_1
    move-exception v6

    .line 254
    const-string v9, "SnapchatServer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "Exception when parsing headers: "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ", "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ", "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v6, v10}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v22, v7

    move/from16 v23, v8

    goto/16 :goto_7

    .line 260
    :cond_c
    move-object/from16 v0, v35

    iget-object v6, v0, Lbmc;->b:Lblz;

    invoke-virtual {v6}, Lblz;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    goto/16 :goto_8

    :cond_d
    move-wide v6, v8

    move-wide/from16 v14, v18

    move-wide/from16 v38, v18

    move-wide/from16 v18, v8

    move-wide/from16 v8, v38

    .line 295
    goto/16 :goto_a

    .line 297
    :cond_e
    move-object/from16 v0, v35

    iget-object v0, v0, Lbmc;->f:Lblu;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lpc$a;->a(Lblu;Lbmd;)V

    .line 298
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-wide v18

    sub-long v18, v18, v30

    move-wide/from16 v38, v18

    move-wide/from16 v18, v14

    move-wide/from16 v14, v38

    goto/16 :goto_a

    :cond_10
    move v7, v14

    .line 337
    goto/16 :goto_4

    .line 342
    :catch_2
    move-exception v6

    .line 343
    const-string v8, "SnapchatServer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception when returning result = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v6, v9}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 326
    :catch_3
    move-exception v6

    move v7, v14

    move-object v8, v9

    goto/16 :goto_3

    :catch_4
    move-exception v6

    move v7, v11

    move-object/from16 v8, v16

    goto/16 :goto_3

    :catch_5
    move-exception v6

    move v7, v14

    move-object v8, v9

    goto/16 :goto_3

    :catch_6
    move-exception v6

    move v7, v14

    move-object/from16 v8, v16

    goto/16 :goto_3

    :catch_7
    move-exception v6

    move v7, v11

    move-object/from16 v8, v16

    goto/16 :goto_3

    :cond_11
    move-wide/from16 v20, v18

    goto/16 :goto_9
.end method

.method private static a(Landroid/os/Bundle;)Lbmb;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 403
    new-instance v0, Lblx;

    invoke-direct {v0}, Lblx;-><init>()V

    sget-object v1, Lblx;->e:Lblw;

    invoke-virtual {v0, v1}, Lblx;->a(Lblw;)Lblx;

    move-result-object v2

    .line 404
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

    .line 405
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 406
    if-nez v1, :cond_0

    .line 407
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

    .line 409
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

    .line 410
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

    invoke-static {v4}, Lblu;->a([Ljava/lang/String;)Lblu;

    move-result-object v4

    .line 412
    sget-object v5, Ltl;->BYTE_STREAM_MEDIA_TYPE:Lblw;

    move-object v0, v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v5, v0}, Lbmb;->a(Lblw;[B)Lbmb;

    move-result-object v0

    .line 413
    invoke-virtual {v2, v4, v0}, Lblx;->a(Lblu;Lbmb;)Lblx;

    goto :goto_0

    .line 415
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

    invoke-static {v4}, Lblu;->a([Ljava/lang/String;)Lblu;

    move-result-object v0

    sget-object v4, Ltl;->STRING_MEDIA_TYPE:Lblw;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lbmb;->a(Lblw;Ljava/lang/String;)Lbmb;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lblx;->a(Lblu;Lbmb;)Lblx;

    goto/16 :goto_0

    .line 421
    :cond_3
    invoke-virtual {v2}, Lblx;->a()Lbmb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 456
    const/4 v1, 0x0

    .line 458
    :try_start_0
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Laku;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laku;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    :goto_0
    if-nez v0, :cond_0

    const-string v0, "ERROR: could not parse server response."

    :goto_1
    return-object v0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    :goto_2
    const-string v2, "SnapchatServer"

    invoke-static {v2, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {v0}, Laku;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 459
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 352
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

    .line 354
    invoke-static {p0}, Los;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_1
    return-object v0

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    :cond_2
    invoke-static {p0}, Los;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 426
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 428
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

    .line 429
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 434
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 437
    :cond_1
    invoke-static {v1}, Ltl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
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
