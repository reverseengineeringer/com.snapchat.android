.class public final Lbml;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbml$a;
    }
.end annotation


# instance fields
.field final a:Lbmz;

.field volatile b:Z

.field c:Lbnb;

.field d:Lbnx;

.field private e:Z


# direct methods
.method protected constructor <init>(Lbmz;Lbnb;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lbmz;

    invoke-direct {v0, p1}, Lbmz;-><init>(Lbmz;)V

    iget-object v1, v0, Lbmz;->j:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lbmz;->j:Ljava/net/ProxySelector;

    :cond_0
    iget-object v1, v0, Lbmz;->k:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lbmz;->k:Ljava/net/CookieHandler;

    :cond_1
    iget-object v1, v0, Lbmz;->m:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lbmz;->m:Ljavax/net/SocketFactory;

    :cond_2
    iget-object v1, v0, Lbmz;->n:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lbmz;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lbmz;->n:Ljavax/net/ssl/SSLSocketFactory;

    :cond_3
    iget-object v1, v0, Lbmz;->o:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    sget-object v1, Lbpb;->a:Lbpb;

    iput-object v1, v0, Lbmz;->o:Ljavax/net/ssl/HostnameVerifier;

    :cond_4
    iget-object v1, v0, Lbmz;->p:Lbmm;

    if-nez v1, :cond_5

    sget-object v1, Lbmm;->a:Lbmm;

    iput-object v1, v0, Lbmz;->p:Lbmm;

    :cond_5
    iget-object v1, v0, Lbmz;->q:Lbmi;

    if-nez v1, :cond_6

    sget-object v1, Lbnr;->a:Lbmi;

    iput-object v1, v0, Lbmz;->q:Lbmi;

    :cond_6
    iget-object v1, v0, Lbmz;->r:Lbmq;

    if-nez v1, :cond_7

    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object v1

    iput-object v1, v0, Lbmz;->r:Lbmq;

    :cond_7
    iget-object v1, v0, Lbmz;->f:Ljava/util/List;

    if-nez v1, :cond_8

    sget-object v1, Lbmz;->a:Ljava/util/List;

    iput-object v1, v0, Lbmz;->f:Ljava/util/List;

    :cond_8
    iget-object v1, v0, Lbmz;->g:Ljava/util/List;

    if-nez v1, :cond_9

    sget-object v1, Lbmz;->b:Ljava/util/List;

    iput-object v1, v0, Lbmz;->g:Ljava/util/List;

    :cond_9
    iget-object v1, v0, Lbmz;->s:Lbnm;

    if-nez v1, :cond_a

    sget-object v1, Lbnm;->a:Lbnm;

    iput-object v1, v0, Lbmz;->s:Lbnm;

    :cond_a
    iput-object v0, p0, Lbml;->a:Lbmz;

    .line 49
    iput-object p2, p0, Lbml;->c:Lbnb;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Lbnd;
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lbml;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 75
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lbml;->e:Z

    .line 76
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object v0, p0, Lbml;->a:Lbmz;

    iget-object v0, v0, Lbmz;->d:Lbmt;

    invoke-virtual {v0, p0}, Lbmt;->a(Lbml;)V

    .line 79
    new-instance v0, Lbml$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lbml;->c:Lbnb;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lbml$a;-><init>(Lbml;ILbnb;Z)V

    iget-object v1, p0, Lbml;->c:Lbnb;

    invoke-interface {v0, v1}, Lbmw$a;->a(Lbnb;)Lbnd;

    move-result-object v0

    .line 80
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lbml;->a:Lbmz;

    iget-object v1, v1, Lbmz;->d:Lbmt;

    invoke-virtual {v1, p0}, Lbmt;->b(Lbml;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lbml;->a:Lbmz;

    iget-object v1, v1, Lbmz;->d:Lbmt;

    invoke-virtual {v1, p0}, Lbmt;->b(Lbml;)V

    return-object v0
.end method

.method final a(Lbnb;Z)Lbnd;
    .locals 20

    .prologue
    .line 239
    move-object/from16 v0, p1

    iget-object v2, v0, Lbnb;->d:Lbnc;

    .line 240
    if-eqz v2, :cond_5a

    .line 241
    invoke-virtual/range {p1 .. p1}, Lbnb;->c()Lbnb$a;

    move-result-object v3

    .line 243
    invoke-virtual {v2}, Lbnc;->a()Lbmx;

    move-result-object v4

    .line 244
    if-eqz v4, :cond_0

    .line 245
    const-string v5, "Content-Type"

    invoke-virtual {v4}, Lbmx;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    .line 248
    :cond_0
    invoke-virtual {v2}, Lbnc;->b()J

    move-result-wide v4

    .line 249
    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    .line 250
    const-string v2, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    .line 251
    const-string v2, "Transfer-Encoding"

    invoke-virtual {v3, v2}, Lbnb$a;->b(Ljava/lang/String;)Lbnb$a;

    .line 257
    :goto_0
    invoke-virtual {v3}, Lbnb$a;->a()Lbnb;

    move-result-object v4

    .line 261
    :goto_1
    new-instance v2, Lbnx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbml;->a:Lbmz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lbnx;-><init>(Lbmz;Lbnb;ZZZLbmp;Lboe;Lbnd;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lbml;->d:Lbnx;

    .line 263
    const/4 v2, 0x0

    move v11, v2

    .line 265
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbml;->b:Z

    if-eqz v2, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lbml;->d:Lbnx;

    invoke-virtual {v2}, Lbnx;->e()V

    .line 267
    const/4 v10, 0x0

    .line 291
    :cond_1
    :goto_3
    return-object v10

    .line 253
    :cond_2
    const-string v2, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v3, v2, v4}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    .line 254
    const-string v2, "Content-Length"

    invoke-virtual {v3, v2}, Lbnb$a;->b(Ljava/lang/String;)Lbnb$a;

    goto :goto_0

    .line 271
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lbml;->d:Lbnx;

    iget-object v2, v9, Lbnx;->u:Lbnt;

    if-nez v2, :cond_2f

    iget-object v2, v9, Lbnx;->h:Lboh;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :catch_0
    move-exception v2

    move-object v12, v2

    .line 274
    move-object/from16 v0, p0

    iget-object v10, v0, Lbml;->d:Lbnx;

    iget-object v2, v10, Lbnx;->e:Lboe;

    if-eqz v2, :cond_4

    iget-object v2, v10, Lbnx;->c:Lbmp;

    if-eqz v2, :cond_4

    iget-object v2, v10, Lbnx;->e:Lboe;

    sget-object v3, Lbnj;->b:Lbnj;

    iget-object v4, v10, Lbnx;->c:Lbmp;

    invoke-virtual {v3, v4}, Lbnj;->b(Lbmp;)I

    move-result v3

    if-gtz v3, :cond_4

    iget-object v3, v10, Lbnx;->c:Lbmp;

    iget-object v3, v3, Lbmp;->b:Lbnf;

    invoke-virtual {v2, v3, v12}, Lboe;->a(Lbnf;Ljava/io/IOException;)V

    :cond_4
    iget-object v2, v10, Lbnx;->e:Lboe;

    if-nez v2, :cond_5

    iget-object v2, v10, Lbnx;->c:Lbmp;

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, v10, Lbnx;->e:Lboe;

    if-eqz v2, :cond_7

    iget-object v2, v10, Lbnx;->e:Lboe;

    invoke-virtual {v2}, Lboe;->d()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lboe;->b()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lboe;->a()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lboe;->e()Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_6
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, v10, Lbnx;->b:Lbmz;

    iget-boolean v2, v2, Lbmz;->v:Z

    if-nez v2, :cond_45

    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_4a

    :cond_8
    const/4 v2, 0x0

    .line 275
    :goto_6
    if-eqz v2, :cond_4b

    .line 276
    move-object/from16 v0, p0

    iput-object v2, v0, Lbml;->d:Lbnx;

    goto/16 :goto_2

    .line 271
    :cond_9
    :try_start_1
    iget-object v2, v9, Lbnx;->l:Lbnb;

    invoke-virtual {v2}, Lbnb;->c()Lbnb$a;

    move-result-object v3

    const-string v4, "Host"

    invoke-virtual {v2, v4}, Lbnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v4, "Host"

    invoke-virtual {v2}, Lbnb;->a()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lbnx;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    :cond_a
    iget-object v4, v9, Lbnx;->c:Lbmp;

    if-eqz v4, :cond_b

    iget-object v4, v9, Lbnx;->c:Lbmp;

    iget-object v4, v4, Lbmp;->g:Lbna;

    sget-object v5, Lbna;->a:Lbna;

    if-eq v4, v5, :cond_c

    :cond_b
    const-string v4, "Connection"

    invoke-virtual {v2, v4}, Lbnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    :cond_c
    const-string v4, "Accept-Encoding"

    invoke-virtual {v2, v4}, Lbnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    iput-boolean v4, v9, Lbnx;->j:Z

    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    :cond_d
    iget-object v4, v9, Lbnx;->b:Lbmz;

    iget-object v4, v4, Lbmz;->k:Ljava/net/CookieHandler;

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lbnb$a;->a()Lbnb;

    move-result-object v5

    iget-object v5, v5, Lbnb;->c:Lbmv;

    invoke-static {v5}, Lboa;->b(Lbmv;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lbnb;->b()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lboa;->a(Lbnb$a;Ljava/util/Map;)V

    :cond_e
    const-string v4, "User-Agent"

    invoke-virtual {v2, v4}, Lbnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const-string v2, "User-Agent"

    const-string v4, "okhttp/2.3.0"

    invoke-virtual {v3, v2, v4}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    :cond_f
    invoke-virtual {v3}, Lbnb$a;->a()Lbnb;

    move-result-object v10

    sget-object v2, Lbnj;->b:Lbnj;

    iget-object v3, v9, Lbnx;->b:Lbmz;

    invoke-virtual {v2, v3}, Lbnj;->a(Lbmz;)Lbnk;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-interface {v12, v10}, Lbnk;->a(Lbnb;)Lbnd;

    move-result-object v2

    move-object v8, v2

    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v13, Lbnt$a;

    invoke-direct {v13, v2, v3, v10, v8}, Lbnt$a;-><init>(JLbnb;Lbnd;)V

    iget-object v2, v13, Lbnt$a;->c:Lbnd;

    if-nez v2, :cond_14

    new-instance v2, Lbnt;

    iget-object v3, v13, Lbnt$a;->b:Lbnb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbnt;-><init>(Lbnb;Lbnd;B)V

    :goto_8
    iget-object v3, v2, Lbnt;->a:Lbnb;

    if-eqz v3, :cond_10

    iget-object v3, v13, Lbnt$a;->b:Lbnb;

    invoke-virtual {v3}, Lbnb;->d()Lbmk;

    move-result-object v3

    iget-boolean v3, v3, Lbmk;->k:Z

    if-eqz v3, :cond_10

    new-instance v2, Lbnt;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbnt;-><init>(Lbnb;Lbnd;B)V

    :cond_10
    iput-object v2, v9, Lbnx;->u:Lbnt;

    iget-object v2, v9, Lbnx;->u:Lbnt;

    iget-object v2, v2, Lbnt;->a:Lbnb;

    iput-object v2, v9, Lbnx;->m:Lbnb;

    iget-object v2, v9, Lbnx;->u:Lbnt;

    iget-object v2, v2, Lbnt;->b:Lbnd;

    iput-object v2, v9, Lbnx;->n:Lbnd;

    if-eqz v12, :cond_11

    iget-object v2, v9, Lbnx;->u:Lbnt;

    invoke-interface {v12, v2}, Lbnk;->a(Lbnt;)V

    :cond_11
    if-eqz v8, :cond_12

    iget-object v2, v9, Lbnx;->n:Lbnd;

    if-nez v2, :cond_12

    iget-object v2, v8, Lbnd;->g:Lbne;

    invoke-static {v2}, Lbnq;->a(Ljava/io/Closeable;)V

    :cond_12
    iget-object v2, v9, Lbnx;->m:Lbnb;

    if-eqz v2, :cond_32

    iget-object v2, v9, Lbnx;->c:Lbmp;

    if-nez v2, :cond_2d

    iget-object v2, v9, Lbnx;->c:Lbmp;

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_13
    const/4 v2, 0x0

    move-object v8, v2

    goto :goto_7

    :cond_14
    iget-object v2, v13, Lbnt$a;->b:Lbnb;

    invoke-virtual {v2}, Lbnb;->e()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v13, Lbnt$a;->c:Lbnd;

    iget-object v2, v2, Lbnd;->e:Lbmu;

    if-nez v2, :cond_15

    new-instance v2, Lbnt;

    iget-object v3, v13, Lbnt$a;->b:Lbnb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbnt;-><init>(Lbnb;Lbnd;B)V

    goto :goto_8

    :cond_15
    iget-object v2, v13, Lbnt$a;->c:Lbnd;

    iget-object v3, v13, Lbnt$a;->b:Lbnb;

    invoke-static {v2, v3}, Lbnt;->a(Lbnd;Lbnb;)Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Lbnt;

    iget-object v3, v13, Lbnt$a;->b:Lbnb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbnt;-><init>(Lbnb;Lbnd;B)V

    goto :goto_8

    :cond_16
    iget-object v2, v13, Lbnt$a;->b:Lbnb;

    invoke-virtual {v2}, Lbnb;->d()Lbmk;

    move-result-object v14

    iget-boolean v2, v14, Lbmk;->c:Z

    if-nez v2, :cond_17

    iget-object v2, v13, Lbnt$a;->b:Lbnb;

    invoke-static {v2}, Lbnt$a;->a(Lbnb;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    new-instance v2, Lbnt;

    iget-object v3, v13, Lbnt$a;->b:Lbnb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbnt;-><init>(Lbnb;Lbnd;B)V

    goto/16 :goto_8

    :cond_18
    iget-object v2, v13, Lbnt$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_1e

    const-wide/16 v2, 0x0

    iget-wide v4, v13, Lbnt$a;->j:J

    iget-object v6, v13, Lbnt$a;->d:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_9
    iget v4, v13, Lbnt$a;->l:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, v13, Lbnt$a;->l:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_19
    iget-wide v4, v13, Lbnt$a;->j:J

    iget-wide v6, v13, Lbnt$a;->i:J

    sub-long/2addr v4, v6

    iget-wide v6, v13, Lbnt$a;->a:J

    iget-wide v0, v13, Lbnt$a;->j:J

    move-wide/from16 v16, v0

    sub-long v6, v6, v16

    add-long/2addr v2, v4

    add-long v16, v2, v6

    iget-object v2, v13, Lbnt$a;->c:Lbnd;

    invoke-virtual {v2}, Lbnd;->g()Lbmk;

    move-result-object v2

    iget v3, v2, Lbmk;->e:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v2, v2, Lbmk;->e:I

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1a
    :goto_a
    iget v4, v14, Lbmk;->e:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_59

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, v14, Lbmk;->e:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v6, v2

    :goto_b
    const-wide/16 v2, 0x0

    iget v4, v14, Lbmk;->j:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_58

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v14, Lbmk;->j:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    move-wide v4, v2

    :goto_c
    const-wide/16 v2, 0x0

    iget-object v15, v13, Lbnt$a;->c:Lbnd;

    invoke-virtual {v15}, Lbnd;->g()Lbmk;

    move-result-object v15

    iget-boolean v0, v15, Lbmk;->h:Z

    move/from16 v18, v0

    if-nez v18, :cond_1b

    iget v0, v14, Lbmk;->i:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v14, Lbmk;->i:I

    int-to-long v0, v3

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1b
    iget-boolean v14, v15, Lbmk;->c:Z

    if-nez v14, :cond_26

    add-long v14, v16, v4

    add-long/2addr v2, v6

    cmp-long v2, v14, v2

    if-gez v2, :cond_26

    iget-object v2, v13, Lbnt$a;->c:Lbnd;

    invoke-virtual {v2}, Lbnd;->d()Lbnd$a;

    move-result-object v3

    add-long v4, v4, v16

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1c

    const-string v2, "Warning"

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v3, v2, v4}, Lbnd$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbnd$a;

    :cond_1c
    const-wide/32 v4, 0x5265c00

    cmp-long v2, v16, v4

    if-lez v2, :cond_1d

    iget-object v2, v13, Lbnt$a;->c:Lbnd;

    invoke-virtual {v2}, Lbnd;->g()Lbmk;

    move-result-object v2

    iget v2, v2, Lbmk;->e:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_25

    iget-object v2, v13, Lbnt$a;->h:Ljava/util/Date;

    if-nez v2, :cond_25

    const/4 v2, 0x1

    :goto_d
    if-eqz v2, :cond_1d

    const-string v2, "Warning"

    const-string v4, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v3, v2, v4}, Lbnd$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbnd$a;

    :cond_1d
    new-instance v2, Lbnt;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lbnd$a;->a()Lbnd;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lbnt;-><init>(Lbnb;Lbnd;B)V

    goto/16 :goto_8

    :cond_1e
    const-wide/16 v2, 0x0

    goto/16 :goto_9

    :cond_1f
    iget-object v2, v13, Lbnt$a;->h:Ljava/util/Date;

    if-eqz v2, :cond_21

    iget-object v2, v13, Lbnt$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_20

    iget-object v2, v13, Lbnt$a;->d:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_e
    iget-object v4, v13, Lbnt$a;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1a

    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_20
    iget-wide v2, v13, Lbnt$a;->j:J

    goto :goto_e

    :cond_21
    iget-object v2, v13, Lbnt$a;->f:Ljava/util/Date;

    if-eqz v2, :cond_24

    iget-object v2, v13, Lbnt$a;->c:Lbnd;

    iget-object v2, v2, Lbnd;->a:Lbnb;

    invoke-virtual {v2}, Lbnb;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    iget-object v2, v13, Lbnt$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_22

    iget-object v2, v13, Lbnt$a;->d:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_f
    iget-object v4, v13, Lbnt$a;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_23

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    goto/16 :goto_a

    :cond_22
    iget-wide v2, v13, Lbnt$a;->i:J

    goto :goto_f

    :cond_23
    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_24
    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_25
    const/4 v2, 0x0

    goto :goto_d

    :cond_26
    iget-object v2, v13, Lbnt$a;->b:Lbnb;

    invoke-virtual {v2}, Lbnb;->c()Lbnb$a;

    move-result-object v2

    iget-object v3, v13, Lbnt$a;->k:Ljava/lang/String;

    if-eqz v3, :cond_28

    const-string v3, "If-None-Match"

    iget-object v4, v13, Lbnt$a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    :cond_27
    :goto_10
    invoke-virtual {v2}, Lbnb$a;->a()Lbnb;

    move-result-object v3

    invoke-static {v3}, Lbnt$a;->a(Lbnb;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Lbnt;

    iget-object v4, v13, Lbnt$a;->c:Lbnd;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbnt;-><init>(Lbnb;Lbnd;B)V

    goto/16 :goto_8

    :cond_28
    iget-object v3, v13, Lbnt$a;->f:Ljava/util/Date;

    if-eqz v3, :cond_29

    const-string v3, "If-Modified-Since"

    iget-object v4, v13, Lbnt$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    goto :goto_10

    :cond_29
    iget-object v3, v13, Lbnt$a;->d:Ljava/util/Date;

    if-eqz v3, :cond_27

    const-string v3, "If-Modified-Since"

    iget-object v4, v13, Lbnt$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    goto :goto_10

    :cond_2a
    new-instance v2, Lbnt;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbnt;-><init>(Lbnb;Lbnd;B)V

    goto/16 :goto_8

    :cond_2b
    iget-object v2, v9, Lbnx;->e:Lboe;

    if-nez v2, :cond_2c

    iget-object v2, v9, Lbnx;->b:Lbmz;

    iget-object v3, v9, Lbnx;->m:Lbnb;

    invoke-static {v2, v3}, Lbnx;->a(Lbmz;Lbnb;)Lbmh;

    move-result-object v2

    iput-object v2, v9, Lbnx;->d:Lbmh;

    iget-object v2, v9, Lbnx;->d:Lbmh;

    iget-object v3, v9, Lbnx;->m:Lbnb;

    iget-object v4, v9, Lbnx;->b:Lbmz;

    new-instance v5, Lboe;

    invoke-virtual {v3}, Lbnb;->b()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v2, v6, v4, v3}, Lboe;-><init>(Lbmh;Ljava/net/URI;Lbmz;Lbnb;)V

    iput-object v5, v9, Lbnx;->e:Lboe;

    :cond_2c
    invoke-virtual {v9}, Lbnx;->a()Lbmp;

    move-result-object v2

    sget-object v3, Lbnj;->b:Lbnj;

    iget-object v4, v9, Lbnx;->b:Lbmz;

    iget-object v5, v9, Lbnx;->m:Lbnb;

    invoke-virtual {v3, v4, v2, v9, v5}, Lbnj;->a(Lbmz;Lbmp;Lbnx;Lbnb;)V

    iput-object v2, v9, Lbnx;->c:Lbmp;

    iget-object v2, v9, Lbnx;->c:Lbmp;

    iget-object v2, v2, Lbmp;->b:Lbnf;

    iput-object v2, v9, Lbnx;->f:Lbnf;

    :cond_2d
    sget-object v2, Lbnj;->b:Lbnj;

    iget-object v3, v9, Lbnx;->c:Lbmp;

    invoke-virtual {v2, v3, v9}, Lbnj;->a(Lbmp;Lbnx;)Lboh;

    move-result-object v2

    iput-object v2, v9, Lbnx;->h:Lboh;

    iget-boolean v2, v9, Lbnx;->r:Z

    if-eqz v2, :cond_2f

    invoke-virtual {v9}, Lbnx;->c()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v9, Lbnx;->p:Lcbj;

    if-nez v2, :cond_2f

    invoke-static {v10}, Lboa;->a(Lbnb;)J

    move-result-wide v2

    iget-boolean v4, v9, Lbnx;->k:Z

    if-eqz v4, :cond_31

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_2e

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_30

    iget-object v4, v9, Lbnx;->h:Lboh;

    iget-object v5, v9, Lbnx;->m:Lbnb;

    invoke-interface {v4, v5}, Lboh;->a(Lbnb;)V

    new-instance v4, Lbod;

    long-to-int v2, v2

    invoke-direct {v4, v2}, Lbod;-><init>(I)V

    iput-object v4, v9, Lbnx;->p:Lcbj;

    .line 272
    :cond_2f
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lbml;->d:Lbnx;

    iget-object v2, v3, Lbnx;->o:Lbnd;

    if-nez v2, :cond_37

    iget-object v2, v3, Lbnx;->m:Lbnb;

    if-nez v2, :cond_35

    iget-object v2, v3, Lbnx;->n:Lbnd;

    if-nez v2, :cond_35

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call sendRequest() first!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_30
    new-instance v2, Lbod;

    invoke-direct {v2}, Lbod;-><init>()V

    iput-object v2, v9, Lbnx;->p:Lcbj;

    goto :goto_11

    :cond_31
    iget-object v4, v9, Lbnx;->h:Lboh;

    iget-object v5, v9, Lbnx;->m:Lbnb;

    invoke-interface {v4, v5}, Lboh;->a(Lbnb;)V

    iget-object v4, v9, Lbnx;->h:Lboh;

    iget-object v5, v9, Lbnx;->m:Lbnb;

    invoke-interface {v4, v5, v2, v3}, Lboh;->a(Lbnb;J)Lcbj;

    move-result-object v2

    iput-object v2, v9, Lbnx;->p:Lcbj;

    goto :goto_11

    :cond_32
    iget-object v2, v9, Lbnx;->c:Lbmp;

    if-eqz v2, :cond_33

    sget-object v2, Lbnj;->b:Lbnj;

    iget-object v3, v9, Lbnx;->b:Lbmz;

    iget-object v3, v3, Lbmz;->r:Lbmq;

    iget-object v4, v9, Lbnx;->c:Lbmp;

    invoke-virtual {v2, v3, v4}, Lbnj;->a(Lbmq;Lbmp;)V

    const/4 v2, 0x0

    iput-object v2, v9, Lbnx;->c:Lbmp;

    :cond_33
    iget-object v2, v9, Lbnx;->n:Lbnd;

    if-eqz v2, :cond_34

    iget-object v2, v9, Lbnx;->n:Lbnd;

    invoke-virtual {v2}, Lbnd;->d()Lbnd$a;

    move-result-object v2

    iget-object v3, v9, Lbnx;->l:Lbnb;

    iput-object v3, v2, Lbnd$a;->a:Lbnb;

    iget-object v3, v9, Lbnx;->g:Lbnd;

    invoke-static {v3}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbnd$a;->c(Lbnd;)Lbnd$a;

    move-result-object v2

    iget-object v3, v9, Lbnx;->n:Lbnd;

    invoke-static {v3}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbnd$a;->b(Lbnd;)Lbnd$a;

    move-result-object v2

    invoke-virtual {v2}, Lbnd$a;->a()Lbnd;

    move-result-object v2

    iput-object v2, v9, Lbnx;->o:Lbnd;

    :goto_12
    iget-object v2, v9, Lbnx;->o:Lbnd;

    invoke-virtual {v9, v2}, Lbnx;->b(Lbnd;)Lbnd;

    move-result-object v2

    iput-object v2, v9, Lbnx;->o:Lbnd;

    goto :goto_11

    :cond_34
    new-instance v2, Lbnd$a;

    invoke-direct {v2}, Lbnd$a;-><init>()V

    iget-object v3, v9, Lbnx;->l:Lbnb;

    iput-object v3, v2, Lbnd$a;->a:Lbnb;

    iget-object v3, v9, Lbnx;->g:Lbnd;

    invoke-static {v3}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbnd$a;->c(Lbnd;)Lbnd$a;

    move-result-object v2

    sget-object v3, Lbna;->b:Lbna;

    iput-object v3, v2, Lbnd$a;->b:Lbna;

    const/16 v3, 0x1f8

    iput v3, v2, Lbnd$a;->c:I

    const-string v3, "Unsatisfiable Request (only-if-cached)"

    iput-object v3, v2, Lbnd$a;->d:Ljava/lang/String;

    sget-object v3, Lbnx;->a:Lbne;

    iput-object v3, v2, Lbnd$a;->g:Lbne;

    invoke-virtual {v2}, Lbnd$a;->a()Lbnd;

    move-result-object v2

    iput-object v2, v9, Lbnx;->o:Lbnd;

    goto :goto_12

    .line 272
    :cond_35
    iget-object v2, v3, Lbnx;->m:Lbnb;

    if-eqz v2, :cond_37

    iget-boolean v2, v3, Lbnx;->s:Z

    if-eqz v2, :cond_38

    iget-object v2, v3, Lbnx;->h:Lboh;

    iget-object v4, v3, Lbnx;->m:Lbnb;

    invoke-interface {v2, v4}, Lboh;->a(Lbnb;)V

    :cond_36
    :goto_13
    invoke-virtual {v3}, Lbnx;->g()Lbnd;

    move-result-object v2

    :goto_14
    iget-object v4, v2, Lbnd;->f:Lbmv;

    invoke-virtual {v3, v4}, Lbnx;->a(Lbmv;)V

    iget-object v4, v3, Lbnx;->n:Lbnd;

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lbnx;->n:Lbnd;

    invoke-static {v4, v2}, Lbnx;->a(Lbnd;Lbnd;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, v3, Lbnx;->n:Lbnd;

    invoke-virtual {v4}, Lbnd;->d()Lbnd$a;

    move-result-object v4

    iget-object v5, v3, Lbnx;->l:Lbnb;

    iput-object v5, v4, Lbnd$a;->a:Lbnb;

    iget-object v5, v3, Lbnx;->g:Lbnd;

    invoke-static {v5}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbnd$a;->c(Lbnd;)Lbnd$a;

    move-result-object v4

    iget-object v5, v3, Lbnx;->n:Lbnd;

    iget-object v5, v5, Lbnd;->f:Lbmv;

    iget-object v6, v2, Lbnd;->f:Lbmv;

    invoke-static {v5, v6}, Lbnx;->a(Lbmv;Lbmv;)Lbmv;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbnd$a;->a(Lbmv;)Lbnd$a;

    move-result-object v4

    iget-object v5, v3, Lbnx;->n:Lbnd;

    invoke-static {v5}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbnd$a;->b(Lbnd;)Lbnd$a;

    move-result-object v4

    invoke-static {v2}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbnd$a;->a(Lbnd;)Lbnd$a;

    move-result-object v4

    invoke-virtual {v4}, Lbnd$a;->a()Lbnd;

    move-result-object v4

    iput-object v4, v3, Lbnx;->o:Lbnd;

    iget-object v2, v2, Lbnd;->g:Lbne;

    invoke-virtual {v2}, Lbne;->close()V

    invoke-virtual {v3}, Lbnx;->e()V

    sget-object v2, Lbnj;->b:Lbnj;

    iget-object v4, v3, Lbnx;->b:Lbmz;

    invoke-virtual {v2, v4}, Lbnj;->a(Lbmz;)Lbnk;

    move-result-object v2

    invoke-interface {v2}, Lbnk;->a()V

    iget-object v4, v3, Lbnx;->n:Lbnd;

    iget-object v5, v3, Lbnx;->o:Lbnd;

    invoke-static {v5}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lbnk;->a(Lbnd;Lbnd;)V

    iget-object v2, v3, Lbnx;->o:Lbnd;

    invoke-virtual {v3, v2}, Lbnx;->b(Lbnd;)Lbnd;

    move-result-object v2

    iput-object v2, v3, Lbnx;->o:Lbnd;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    :cond_37
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lbml;->d:Lbnx;

    invoke-virtual {v2}, Lbnx;->d()Lbnd;

    move-result-object v10

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lbml;->d:Lbnx;

    iget-object v2, v3, Lbnx;->o:Lbnd;

    if-nez v2, :cond_4c

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 272
    :cond_38
    :try_start_2
    iget-boolean v2, v3, Lbnx;->r:Z

    if-nez v2, :cond_39

    new-instance v2, Lbnx$a;

    const/4 v4, 0x0

    iget-object v5, v3, Lbnx;->m:Lbnb;

    invoke-direct {v2, v3, v4, v5}, Lbnx$a;-><init>(Lbnx;ILbnb;)V

    iget-object v4, v3, Lbnx;->m:Lbnb;

    invoke-virtual {v2, v4}, Lbnx$a;->a(Lbnb;)Lbnd;

    move-result-object v2

    goto/16 :goto_14

    :cond_39
    iget-object v2, v3, Lbnx;->q:Lcaw;

    if-eqz v2, :cond_3a

    iget-object v2, v3, Lbnx;->q:Lcaw;

    invoke-interface {v2}, Lcaw;->b()Lcav;

    move-result-object v2

    iget-wide v4, v2, Lcav;->b:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3a

    iget-object v2, v3, Lbnx;->q:Lcaw;

    invoke-interface {v2}, Lcaw;->c()Lcaw;

    :cond_3a
    iget-wide v4, v3, Lbnx;->i:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_3c

    iget-object v2, v3, Lbnx;->m:Lbnb;

    invoke-static {v2}, Lboa;->a(Lbnb;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_3b

    iget-object v2, v3, Lbnx;->p:Lcbj;

    instance-of v2, v2, Lbod;

    if-eqz v2, :cond_3b

    iget-object v2, v3, Lbnx;->p:Lcbj;

    check-cast v2, Lbod;

    iget-object v2, v2, Lbod;->a:Lcav;

    iget-wide v4, v2, Lcav;->b:J

    iget-object v2, v3, Lbnx;->m:Lbnb;

    invoke-virtual {v2}, Lbnb;->c()Lbnb$a;

    move-result-object v2

    const-string v6, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    move-result-object v2

    invoke-virtual {v2}, Lbnb$a;->a()Lbnb;

    move-result-object v2

    iput-object v2, v3, Lbnx;->m:Lbnb;

    :cond_3b
    iget-object v2, v3, Lbnx;->h:Lboh;

    iget-object v4, v3, Lbnx;->m:Lbnb;

    invoke-interface {v2, v4}, Lboh;->a(Lbnb;)V

    :cond_3c
    iget-object v2, v3, Lbnx;->p:Lcbj;

    if-eqz v2, :cond_36

    iget-object v2, v3, Lbnx;->q:Lcaw;

    if-eqz v2, :cond_3d

    iget-object v2, v3, Lbnx;->q:Lcaw;

    invoke-interface {v2}, Lcaw;->close()V

    :goto_16
    iget-object v2, v3, Lbnx;->p:Lcbj;

    instance-of v2, v2, Lbod;

    if-eqz v2, :cond_36

    iget-object v4, v3, Lbnx;->h:Lboh;

    iget-object v2, v3, Lbnx;->p:Lcbj;

    check-cast v2, Lbod;

    invoke-interface {v4, v2}, Lboh;->a(Lbod;)V

    goto/16 :goto_13

    :cond_3d
    iget-object v2, v3, Lbnx;->p:Lcbj;

    invoke-interface {v2}, Lcbj;->close()V

    goto :goto_16

    :cond_3e
    iget-object v4, v3, Lbnx;->n:Lbnd;

    iget-object v4, v4, Lbnd;->g:Lbne;

    invoke-static {v4}, Lbnq;->a(Ljava/io/Closeable;)V

    :cond_3f
    invoke-virtual {v2}, Lbnd;->d()Lbnd$a;

    move-result-object v4

    iget-object v5, v3, Lbnx;->l:Lbnb;

    iput-object v5, v4, Lbnd$a;->a:Lbnb;

    iget-object v5, v3, Lbnx;->g:Lbnd;

    invoke-static {v5}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbnd$a;->c(Lbnd;)Lbnd$a;

    move-result-object v4

    iget-object v5, v3, Lbnx;->n:Lbnd;

    invoke-static {v5}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbnd$a;->b(Lbnd;)Lbnd$a;

    move-result-object v4

    invoke-static {v2}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v2

    invoke-virtual {v4, v2}, Lbnd$a;->a(Lbnd;)Lbnd$a;

    move-result-object v2

    invoke-virtual {v2}, Lbnd$a;->a()Lbnd;

    move-result-object v2

    iput-object v2, v3, Lbnx;->o:Lbnd;

    iget-object v2, v3, Lbnx;->o:Lbnd;

    invoke-static {v2}, Lbnx;->c(Lbnd;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Lbnj;->b:Lbnj;

    iget-object v4, v3, Lbnx;->b:Lbmz;

    invoke-virtual {v2, v4}, Lbnj;->a(Lbmz;)Lbnk;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v4, v3, Lbnx;->o:Lbnd;

    iget-object v5, v3, Lbnx;->m:Lbnb;

    invoke-static {v4, v5}, Lbnt;->a(Lbnd;Lbnb;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, v3, Lbnx;->m:Lbnb;

    iget-object v4, v4, Lbnb;->b:Ljava/lang/String;

    invoke-static {v4}, Lbny;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-eqz v4, :cond_40

    :try_start_3
    iget-object v4, v3, Lbnx;->m:Lbnb;

    invoke-interface {v2, v4}, Lbnk;->b(Lbnb;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_40
    :goto_17
    :try_start_4
    iget-object v4, v3, Lbnx;->t:Lbns;

    iget-object v2, v3, Lbnx;->o:Lbnd;

    if-nez v4, :cond_43

    :cond_41
    :goto_18
    invoke-virtual {v3, v2}, Lbnx;->b(Lbnd;)Lbnd;

    move-result-object v2

    iput-object v2, v3, Lbnx;->o:Lbnd;

    goto/16 :goto_15

    :cond_42
    iget-object v4, v3, Lbnx;->o:Lbnd;

    invoke-static {v4}, Lbnx;->a(Lbnd;)Lbnd;

    move-result-object v4

    invoke-interface {v2, v4}, Lbnk;->a(Lbnd;)Lbns;

    move-result-object v2

    iput-object v2, v3, Lbnx;->t:Lbns;

    goto :goto_17

    :cond_43
    invoke-interface {v4}, Lbns;->b()Lcbj;

    move-result-object v5

    if-eqz v5, :cond_41

    iget-object v6, v2, Lbnd;->g:Lbne;

    invoke-virtual {v6}, Lbne;->b()Lcax;

    move-result-object v6

    invoke-static {v5}, Lcbe;->a(Lcbj;)Lcaw;

    move-result-object v5

    new-instance v7, Lbnx$2;

    invoke-direct {v7, v3, v6, v4, v5}, Lbnx$2;-><init>(Lbnx;Lcax;Lbns;Lcaw;)V

    invoke-virtual {v2}, Lbnd;->d()Lbnd$a;

    move-result-object v4

    new-instance v5, Lbob;

    iget-object v2, v2, Lbnd;->f:Lbmv;

    invoke-static {v7}, Lcbe;->a(Lcbk;)Lcax;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lbob;-><init>(Lbmv;Lcax;)V

    iput-object v5, v4, Lbnd$a;->g:Lbne;

    invoke-virtual {v4}, Lbnd$a;->a()Lbnd;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto :goto_18

    .line 274
    :cond_44
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_45
    instance-of v2, v12, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_46

    instance-of v2, v12, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_47

    invoke-virtual {v12}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_47

    :cond_46
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_47
    instance-of v2, v12, Ljava/net/ProtocolException;

    if-eqz v2, :cond_48

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_48
    instance-of v2, v12, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_49

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_49
    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_4a
    invoke-virtual {v10}, Lbnx;->f()Lbmp;

    move-result-object v8

    new-instance v2, Lbnx;

    iget-object v3, v10, Lbnx;->b:Lbmz;

    iget-object v4, v10, Lbnx;->l:Lbnb;

    iget-boolean v5, v10, Lbnx;->k:Z

    iget-boolean v6, v10, Lbnx;->r:Z

    iget-boolean v7, v10, Lbnx;->s:Z

    iget-object v9, v10, Lbnx;->e:Lboe;

    iget-object v10, v10, Lbnx;->g:Lbnd;

    invoke-direct/range {v2 .. v10}, Lbnx;-><init>(Lbmz;Lbnb;ZZZLbmp;Lboe;Lbnd;)V

    goto/16 :goto_6

    .line 281
    :cond_4b
    throw v12

    .line 285
    :cond_4c
    iget-object v2, v3, Lbnx;->f:Lbnf;

    if-eqz v2, :cond_4e

    iget-object v2, v3, Lbnx;->f:Lbnf;

    iget-object v2, v2, Lbnf;->b:Ljava/net/Proxy;

    :goto_19
    iget-object v4, v3, Lbnx;->o:Lbnd;

    iget v4, v4, Lbnd;->c:I

    sparse-switch v4, :sswitch_data_0

    :cond_4d
    const/4 v4, 0x0

    .line 287
    :goto_1a
    if-nez v4, :cond_55

    .line 288
    if-nez p2, :cond_1

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lbml;->d:Lbnx;

    invoke-virtual {v2}, Lbnx;->e()V

    goto/16 :goto_3

    .line 285
    :cond_4e
    iget-object v2, v3, Lbnx;->b:Lbmz;

    iget-object v2, v2, Lbmz;->e:Ljava/net/Proxy;

    goto :goto_19

    :sswitch_0
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_4f

    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4f
    :sswitch_1
    iget-object v4, v3, Lbnx;->b:Lbmz;

    iget-object v4, v4, Lbmz;->q:Lbmi;

    iget-object v3, v3, Lbnx;->o:Lbnd;

    invoke-static {v4, v3, v2}, Lboa;->a(Lbmi;Lbnd;Ljava/net/Proxy;)Lbnb;

    move-result-object v4

    goto :goto_1a

    :sswitch_2
    iget-object v2, v3, Lbnx;->l:Lbnb;

    iget-object v2, v2, Lbnb;->b:Ljava/lang/String;

    const-string v4, "GET"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, v3, Lbnx;->l:Lbnb;

    iget-object v2, v2, Lbnb;->b:Ljava/lang/String;

    const-string v4, "HEAD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_50
    :sswitch_3
    iget-object v2, v3, Lbnx;->b:Lbmz;

    iget-boolean v2, v2, Lbmz;->u:Z

    if-eqz v2, :cond_4d

    iget-object v2, v3, Lbnx;->o:Lbnd;

    const-string v4, "Location"

    invoke-virtual {v2, v4}, Lbnd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    new-instance v4, Ljava/net/URL;

    iget-object v5, v3, Lbnx;->l:Lbnb;

    invoke-virtual {v5}, Lbnb;->a()Ljava/net/URL;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v5, "http"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_51
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v3, Lbnx;->l:Lbnb;

    invoke-virtual {v5}, Lbnb;->a()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, v3, Lbnx;->b:Lbmz;

    iget-boolean v2, v2, Lbmz;->t:Z

    if-eqz v2, :cond_4d

    :cond_52
    iget-object v2, v3, Lbnx;->l:Lbnb;

    invoke-virtual {v2}, Lbnb;->c()Lbnb$a;

    move-result-object v2

    iget-object v5, v3, Lbnx;->l:Lbnb;

    iget-object v5, v5, Lbnb;->b:Ljava/lang/String;

    invoke-static {v5}, Lbny;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    const-string v5, "GET"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbnb$a;->a(Ljava/lang/String;Lbnc;)Lbnb$a;

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v2, v5}, Lbnb$a;->b(Ljava/lang/String;)Lbnb$a;

    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Lbnb$a;->b(Ljava/lang/String;)Lbnb$a;

    const-string v5, "Content-Type"

    invoke-virtual {v2, v5}, Lbnb$a;->b(Ljava/lang/String;)Lbnb$a;

    :cond_53
    invoke-virtual {v3, v4}, Lbnx;->b(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Lbnb$a;->b(Ljava/lang/String;)Lbnb$a;

    :cond_54
    invoke-virtual {v2, v4}, Lbnb$a;->a(Ljava/net/URL;)Lbnb$a;

    move-result-object v2

    invoke-virtual {v2}, Lbnb$a;->a()Lbnb;

    move-result-object v4

    goto/16 :goto_1a

    .line 294
    :cond_55
    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0x14

    if-le v11, v2, :cond_56

    .line 295
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Too many follow-up requests: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    :cond_56
    move-object/from16 v0, p0

    iget-object v2, v0, Lbml;->d:Lbnx;

    invoke-virtual {v4}, Lbnb;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbnx;->b(Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lbml;->d:Lbnx;

    invoke-virtual {v2}, Lbnx;->e()V

    .line 302
    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lbml;->d:Lbnx;

    invoke-virtual {v2}, Lbnx;->f()Lbmp;

    move-result-object v8

    .line 304
    new-instance v2, Lbnx;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbml;->a:Lbmz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lbnx;-><init>(Lbmz;Lbnb;ZZZLbmp;Lboe;Lbnd;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lbml;->d:Lbnx;

    goto/16 :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_17

    :cond_58
    move-wide v4, v2

    goto/16 :goto_c

    :cond_59
    move-wide v6, v2

    goto/16 :goto_b

    :cond_5a
    move-object/from16 v4, p1

    goto/16 :goto_1

    .line 285
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method
