.class public final Lblk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lblk$a;
    }
.end annotation


# instance fields
.field final a:Lbly;

.field volatile b:Z

.field c:Lbma;

.field d:Lbmw;

.field private e:Z


# direct methods
.method protected constructor <init>(Lbly;Lbma;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lbly;

    invoke-direct {v0, p1}, Lbly;-><init>(Lbly;)V

    iget-object v1, v0, Lbly;->j:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lbly;->j:Ljava/net/ProxySelector;

    :cond_0
    iget-object v1, v0, Lbly;->k:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lbly;->k:Ljava/net/CookieHandler;

    :cond_1
    iget-object v1, v0, Lbly;->m:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lbly;->m:Ljavax/net/SocketFactory;

    :cond_2
    iget-object v1, v0, Lbly;->n:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lbly;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lbly;->n:Ljavax/net/ssl/SSLSocketFactory;

    :cond_3
    iget-object v1, v0, Lbly;->o:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    sget-object v1, Lboa;->a:Lboa;

    iput-object v1, v0, Lbly;->o:Ljavax/net/ssl/HostnameVerifier;

    :cond_4
    iget-object v1, v0, Lbly;->p:Lbll;

    if-nez v1, :cond_5

    sget-object v1, Lbll;->a:Lbll;

    iput-object v1, v0, Lbly;->p:Lbll;

    :cond_5
    iget-object v1, v0, Lbly;->q:Lblh;

    if-nez v1, :cond_6

    sget-object v1, Lbmq;->a:Lblh;

    iput-object v1, v0, Lbly;->q:Lblh;

    :cond_6
    iget-object v1, v0, Lbly;->r:Lblp;

    if-nez v1, :cond_7

    invoke-static {}, Lblp;->a()Lblp;

    move-result-object v1

    iput-object v1, v0, Lbly;->r:Lblp;

    :cond_7
    iget-object v1, v0, Lbly;->f:Ljava/util/List;

    if-nez v1, :cond_8

    sget-object v1, Lbly;->a:Ljava/util/List;

    iput-object v1, v0, Lbly;->f:Ljava/util/List;

    :cond_8
    iget-object v1, v0, Lbly;->g:Ljava/util/List;

    if-nez v1, :cond_9

    sget-object v1, Lbly;->b:Ljava/util/List;

    iput-object v1, v0, Lbly;->g:Ljava/util/List;

    :cond_9
    iget-object v1, v0, Lbly;->s:Lbml;

    if-nez v1, :cond_a

    sget-object v1, Lbml;->a:Lbml;

    iput-object v1, v0, Lbly;->s:Lbml;

    :cond_a
    iput-object v0, p0, Lblk;->a:Lbly;

    .line 49
    iput-object p2, p0, Lblk;->c:Lbma;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Lbmc;
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lblk;->e:Z

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
    iput-boolean v0, p0, Lblk;->e:Z

    .line 76
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object v0, p0, Lblk;->a:Lbly;

    iget-object v0, v0, Lbly;->d:Lbls;

    invoke-virtual {v0, p0}, Lbls;->a(Lblk;)V

    .line 79
    new-instance v0, Lblk$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lblk;->c:Lbma;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lblk$a;-><init>(Lblk;ILbma;Z)V

    iget-object v1, p0, Lblk;->c:Lbma;

    invoke-interface {v0, v1}, Lblv$a;->a(Lbma;)Lbmc;

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

    iget-object v1, p0, Lblk;->a:Lbly;

    iget-object v1, v1, Lbly;->d:Lbls;

    invoke-virtual {v1, p0}, Lbls;->b(Lblk;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lblk;->a:Lbly;

    iget-object v1, v1, Lbly;->d:Lbls;

    invoke-virtual {v1, p0}, Lbls;->b(Lblk;)V

    return-object v0
.end method

.method final a(Lbma;Z)Lbmc;
    .locals 20

    .prologue
    .line 239
    move-object/from16 v0, p1

    iget-object v2, v0, Lbma;->d:Lbmb;

    .line 240
    if-eqz v2, :cond_5a

    .line 241
    invoke-virtual/range {p1 .. p1}, Lbma;->c()Lbma$a;

    move-result-object v3

    .line 243
    invoke-virtual {v2}, Lbmb;->a()Lblw;

    move-result-object v4

    .line 244
    if-eqz v4, :cond_0

    .line 245
    const-string v5, "Content-Type"

    invoke-virtual {v4}, Lblw;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    .line 248
    :cond_0
    invoke-virtual {v2}, Lbmb;->b()J

    move-result-wide v4

    .line 249
    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    .line 250
    const-string v2, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    .line 251
    const-string v2, "Transfer-Encoding"

    invoke-virtual {v3, v2}, Lbma$a;->b(Ljava/lang/String;)Lbma$a;

    .line 257
    :goto_0
    invoke-virtual {v3}, Lbma$a;->a()Lbma;

    move-result-object v4

    .line 261
    :goto_1
    new-instance v2, Lbmw;

    move-object/from16 v0, p0

    iget-object v3, v0, Lblk;->a:Lbly;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lbmw;-><init>(Lbly;Lbma;ZZZLblo;Lbnd;Lbmc;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lblk;->d:Lbmw;

    .line 263
    const/4 v2, 0x0

    move v11, v2

    .line 265
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lblk;->b:Z

    if-eqz v2, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lblk;->d:Lbmw;

    invoke-virtual {v2}, Lbmw;->e()V

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

    invoke-virtual {v3, v2, v4}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    .line 254
    const-string v2, "Content-Length"

    invoke-virtual {v3, v2}, Lbma$a;->b(Ljava/lang/String;)Lbma$a;

    goto :goto_0

    .line 271
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lblk;->d:Lbmw;

    iget-object v2, v9, Lbmw;->u:Lbms;

    if-nez v2, :cond_2f

    iget-object v2, v9, Lbmw;->h:Lbng;

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

    iget-object v10, v0, Lblk;->d:Lbmw;

    iget-object v2, v10, Lbmw;->e:Lbnd;

    if-eqz v2, :cond_4

    iget-object v2, v10, Lbmw;->c:Lblo;

    if-eqz v2, :cond_4

    iget-object v2, v10, Lbmw;->e:Lbnd;

    sget-object v3, Lbmi;->b:Lbmi;

    iget-object v4, v10, Lbmw;->c:Lblo;

    invoke-virtual {v3, v4}, Lbmi;->b(Lblo;)I

    move-result v3

    if-gtz v3, :cond_4

    iget-object v3, v10, Lbmw;->c:Lblo;

    iget-object v3, v3, Lblo;->b:Lbme;

    invoke-virtual {v2, v3, v12}, Lbnd;->a(Lbme;Ljava/io/IOException;)V

    :cond_4
    iget-object v2, v10, Lbmw;->e:Lbnd;

    if-nez v2, :cond_5

    iget-object v2, v10, Lbmw;->c:Lblo;

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, v10, Lbmw;->e:Lbnd;

    if-eqz v2, :cond_7

    iget-object v2, v10, Lbmw;->e:Lbnd;

    invoke-virtual {v2}, Lbnd;->d()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lbnd;->b()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lbnd;->a()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lbnd;->e()Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_6
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, v10, Lbmw;->b:Lbly;

    iget-boolean v2, v2, Lbly;->v:Z

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

    iput-object v2, v0, Lblk;->d:Lbmw;

    goto/16 :goto_2

    .line 271
    :cond_9
    :try_start_1
    iget-object v2, v9, Lbmw;->l:Lbma;

    invoke-virtual {v2}, Lbma;->c()Lbma$a;

    move-result-object v3

    const-string v4, "Host"

    invoke-virtual {v2, v4}, Lbma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v4, "Host"

    invoke-virtual {v2}, Lbma;->a()Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Lbmw;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    :cond_a
    iget-object v4, v9, Lbmw;->c:Lblo;

    if-eqz v4, :cond_b

    iget-object v4, v9, Lbmw;->c:Lblo;

    iget-object v4, v4, Lblo;->g:Lblz;

    sget-object v5, Lblz;->a:Lblz;

    if-eq v4, v5, :cond_c

    :cond_b
    const-string v4, "Connection"

    invoke-virtual {v2, v4}, Lbma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    :cond_c
    const-string v4, "Accept-Encoding"

    invoke-virtual {v2, v4}, Lbma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    iput-boolean v4, v9, Lbmw;->j:Z

    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v3, v4, v5}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    :cond_d
    iget-object v4, v9, Lbmw;->b:Lbly;

    iget-object v4, v4, Lbly;->k:Ljava/net/CookieHandler;

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lbma$a;->a()Lbma;

    move-result-object v5

    iget-object v5, v5, Lbma;->c:Lblu;

    invoke-static {v5}, Lbmz;->b(Lblu;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2}, Lbma;->b()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v3, v4}, Lbmz;->a(Lbma$a;Ljava/util/Map;)V

    :cond_e
    const-string v4, "User-Agent"

    invoke-virtual {v2, v4}, Lbma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const-string v2, "User-Agent"

    const-string v4, "okhttp/2.3.0"

    invoke-virtual {v3, v2, v4}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    :cond_f
    invoke-virtual {v3}, Lbma$a;->a()Lbma;

    move-result-object v10

    sget-object v2, Lbmi;->b:Lbmi;

    iget-object v3, v9, Lbmw;->b:Lbly;

    invoke-virtual {v2, v3}, Lbmi;->a(Lbly;)Lbmj;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-interface {v12, v10}, Lbmj;->a(Lbma;)Lbmc;

    move-result-object v2

    move-object v8, v2

    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v13, Lbms$a;

    invoke-direct {v13, v2, v3, v10, v8}, Lbms$a;-><init>(JLbma;Lbmc;)V

    iget-object v2, v13, Lbms$a;->c:Lbmc;

    if-nez v2, :cond_14

    new-instance v2, Lbms;

    iget-object v3, v13, Lbms$a;->b:Lbma;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbms;-><init>(Lbma;Lbmc;B)V

    :goto_8
    iget-object v3, v2, Lbms;->a:Lbma;

    if-eqz v3, :cond_10

    iget-object v3, v13, Lbms$a;->b:Lbma;

    invoke-virtual {v3}, Lbma;->d()Lblj;

    move-result-object v3

    iget-boolean v3, v3, Lblj;->k:Z

    if-eqz v3, :cond_10

    new-instance v2, Lbms;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbms;-><init>(Lbma;Lbmc;B)V

    :cond_10
    iput-object v2, v9, Lbmw;->u:Lbms;

    iget-object v2, v9, Lbmw;->u:Lbms;

    iget-object v2, v2, Lbms;->a:Lbma;

    iput-object v2, v9, Lbmw;->m:Lbma;

    iget-object v2, v9, Lbmw;->u:Lbms;

    iget-object v2, v2, Lbms;->b:Lbmc;

    iput-object v2, v9, Lbmw;->n:Lbmc;

    if-eqz v12, :cond_11

    iget-object v2, v9, Lbmw;->u:Lbms;

    invoke-interface {v12, v2}, Lbmj;->a(Lbms;)V

    :cond_11
    if-eqz v8, :cond_12

    iget-object v2, v9, Lbmw;->n:Lbmc;

    if-nez v2, :cond_12

    iget-object v2, v8, Lbmc;->g:Lbmd;

    invoke-static {v2}, Lbmp;->a(Ljava/io/Closeable;)V

    :cond_12
    iget-object v2, v9, Lbmw;->m:Lbma;

    if-eqz v2, :cond_32

    iget-object v2, v9, Lbmw;->c:Lblo;

    if-nez v2, :cond_2d

    iget-object v2, v9, Lbmw;->c:Lblo;

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_13
    const/4 v2, 0x0

    move-object v8, v2

    goto :goto_7

    :cond_14
    iget-object v2, v13, Lbms$a;->b:Lbma;

    invoke-virtual {v2}, Lbma;->e()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v13, Lbms$a;->c:Lbmc;

    iget-object v2, v2, Lbmc;->e:Lblt;

    if-nez v2, :cond_15

    new-instance v2, Lbms;

    iget-object v3, v13, Lbms$a;->b:Lbma;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbms;-><init>(Lbma;Lbmc;B)V

    goto :goto_8

    :cond_15
    iget-object v2, v13, Lbms$a;->c:Lbmc;

    iget-object v3, v13, Lbms$a;->b:Lbma;

    invoke-static {v2, v3}, Lbms;->a(Lbmc;Lbma;)Z

    move-result v2

    if-nez v2, :cond_16

    new-instance v2, Lbms;

    iget-object v3, v13, Lbms$a;->b:Lbma;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbms;-><init>(Lbma;Lbmc;B)V

    goto :goto_8

    :cond_16
    iget-object v2, v13, Lbms$a;->b:Lbma;

    invoke-virtual {v2}, Lbma;->d()Lblj;

    move-result-object v14

    iget-boolean v2, v14, Lblj;->c:Z

    if-nez v2, :cond_17

    iget-object v2, v13, Lbms$a;->b:Lbma;

    invoke-static {v2}, Lbms$a;->a(Lbma;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    new-instance v2, Lbms;

    iget-object v3, v13, Lbms$a;->b:Lbma;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbms;-><init>(Lbma;Lbmc;B)V

    goto/16 :goto_8

    :cond_18
    iget-object v2, v13, Lbms$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_1e

    const-wide/16 v2, 0x0

    iget-wide v4, v13, Lbms$a;->j:J

    iget-object v6, v13, Lbms$a;->d:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_9
    iget v4, v13, Lbms$a;->l:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, v13, Lbms$a;->l:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_19
    iget-wide v4, v13, Lbms$a;->j:J

    iget-wide v6, v13, Lbms$a;->i:J

    sub-long/2addr v4, v6

    iget-wide v6, v13, Lbms$a;->a:J

    iget-wide v0, v13, Lbms$a;->j:J

    move-wide/from16 v16, v0

    sub-long v6, v6, v16

    add-long/2addr v2, v4

    add-long v16, v2, v6

    iget-object v2, v13, Lbms$a;->c:Lbmc;

    invoke-virtual {v2}, Lbmc;->g()Lblj;

    move-result-object v2

    iget v3, v2, Lblj;->e:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v2, v2, Lblj;->e:I

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1a
    :goto_a
    iget v4, v14, Lblj;->e:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_59

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, v14, Lblj;->e:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v6, v2

    :goto_b
    const-wide/16 v2, 0x0

    iget v4, v14, Lblj;->j:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_58

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v14, Lblj;->j:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    move-wide v4, v2

    :goto_c
    const-wide/16 v2, 0x0

    iget-object v15, v13, Lbms$a;->c:Lbmc;

    invoke-virtual {v15}, Lbmc;->g()Lblj;

    move-result-object v15

    iget-boolean v0, v15, Lblj;->h:Z

    move/from16 v18, v0

    if-nez v18, :cond_1b

    iget v0, v14, Lblj;->i:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v14, Lblj;->i:I

    int-to-long v0, v3

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1b
    iget-boolean v14, v15, Lblj;->c:Z

    if-nez v14, :cond_26

    add-long v14, v16, v4

    add-long/2addr v2, v6

    cmp-long v2, v14, v2

    if-gez v2, :cond_26

    iget-object v2, v13, Lbms$a;->c:Lbmc;

    invoke-virtual {v2}, Lbmc;->d()Lbmc$a;

    move-result-object v3

    add-long v4, v4, v16

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1c

    const-string v2, "Warning"

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v3, v2, v4}, Lbmc$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbmc$a;

    :cond_1c
    const-wide/32 v4, 0x5265c00

    cmp-long v2, v16, v4

    if-lez v2, :cond_1d

    iget-object v2, v13, Lbms$a;->c:Lbmc;

    invoke-virtual {v2}, Lbmc;->g()Lblj;

    move-result-object v2

    iget v2, v2, Lblj;->e:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_25

    iget-object v2, v13, Lbms$a;->h:Ljava/util/Date;

    if-nez v2, :cond_25

    const/4 v2, 0x1

    :goto_d
    if-eqz v2, :cond_1d

    const-string v2, "Warning"

    const-string v4, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v3, v2, v4}, Lbmc$a;->b(Ljava/lang/String;Ljava/lang/String;)Lbmc$a;

    :cond_1d
    new-instance v2, Lbms;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lbmc$a;->a()Lbmc;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lbms;-><init>(Lbma;Lbmc;B)V

    goto/16 :goto_8

    :cond_1e
    const-wide/16 v2, 0x0

    goto/16 :goto_9

    :cond_1f
    iget-object v2, v13, Lbms$a;->h:Ljava/util/Date;

    if-eqz v2, :cond_21

    iget-object v2, v13, Lbms$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_20

    iget-object v2, v13, Lbms$a;->d:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_e
    iget-object v4, v13, Lbms$a;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1a

    const-wide/16 v2, 0x0

    goto/16 :goto_a

    :cond_20
    iget-wide v2, v13, Lbms$a;->j:J

    goto :goto_e

    :cond_21
    iget-object v2, v13, Lbms$a;->f:Ljava/util/Date;

    if-eqz v2, :cond_24

    iget-object v2, v13, Lbms$a;->c:Lbmc;

    iget-object v2, v2, Lbmc;->a:Lbma;

    invoke-virtual {v2}, Lbma;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    iget-object v2, v13, Lbms$a;->d:Ljava/util/Date;

    if-eqz v2, :cond_22

    iget-object v2, v13, Lbms$a;->d:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_f
    iget-object v4, v13, Lbms$a;->f:Ljava/util/Date;

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
    iget-wide v2, v13, Lbms$a;->i:J

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
    iget-object v2, v13, Lbms$a;->b:Lbma;

    invoke-virtual {v2}, Lbma;->c()Lbma$a;

    move-result-object v2

    iget-object v3, v13, Lbms$a;->k:Ljava/lang/String;

    if-eqz v3, :cond_28

    const-string v3, "If-None-Match"

    iget-object v4, v13, Lbms$a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    :cond_27
    :goto_10
    invoke-virtual {v2}, Lbma$a;->a()Lbma;

    move-result-object v3

    invoke-static {v3}, Lbms$a;->a(Lbma;)Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Lbms;

    iget-object v4, v13, Lbms$a;->c:Lbmc;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbms;-><init>(Lbma;Lbmc;B)V

    goto/16 :goto_8

    :cond_28
    iget-object v3, v13, Lbms$a;->f:Ljava/util/Date;

    if-eqz v3, :cond_29

    const-string v3, "If-Modified-Since"

    iget-object v4, v13, Lbms$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    goto :goto_10

    :cond_29
    iget-object v3, v13, Lbms$a;->d:Ljava/util/Date;

    if-eqz v3, :cond_27

    const-string v3, "If-Modified-Since"

    iget-object v4, v13, Lbms$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    goto :goto_10

    :cond_2a
    new-instance v2, Lbms;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lbms;-><init>(Lbma;Lbmc;B)V

    goto/16 :goto_8

    :cond_2b
    iget-object v2, v9, Lbmw;->e:Lbnd;

    if-nez v2, :cond_2c

    iget-object v2, v9, Lbmw;->b:Lbly;

    iget-object v3, v9, Lbmw;->m:Lbma;

    invoke-static {v2, v3}, Lbmw;->a(Lbly;Lbma;)Lblg;

    move-result-object v2

    iput-object v2, v9, Lbmw;->d:Lblg;

    iget-object v2, v9, Lbmw;->d:Lblg;

    iget-object v3, v9, Lbmw;->m:Lbma;

    iget-object v4, v9, Lbmw;->b:Lbly;

    new-instance v5, Lbnd;

    invoke-virtual {v3}, Lbma;->b()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v2, v6, v4, v3}, Lbnd;-><init>(Lblg;Ljava/net/URI;Lbly;Lbma;)V

    iput-object v5, v9, Lbmw;->e:Lbnd;

    :cond_2c
    invoke-virtual {v9}, Lbmw;->a()Lblo;

    move-result-object v2

    sget-object v3, Lbmi;->b:Lbmi;

    iget-object v4, v9, Lbmw;->b:Lbly;

    iget-object v5, v9, Lbmw;->m:Lbma;

    invoke-virtual {v3, v4, v2, v9, v5}, Lbmi;->a(Lbly;Lblo;Lbmw;Lbma;)V

    iput-object v2, v9, Lbmw;->c:Lblo;

    iget-object v2, v9, Lbmw;->c:Lblo;

    iget-object v2, v2, Lblo;->b:Lbme;

    iput-object v2, v9, Lbmw;->f:Lbme;

    :cond_2d
    sget-object v2, Lbmi;->b:Lbmi;

    iget-object v3, v9, Lbmw;->c:Lblo;

    invoke-virtual {v2, v3, v9}, Lbmi;->a(Lblo;Lbmw;)Lbng;

    move-result-object v2

    iput-object v2, v9, Lbmw;->h:Lbng;

    iget-boolean v2, v9, Lbmw;->r:Z

    if-eqz v2, :cond_2f

    invoke-virtual {v9}, Lbmw;->c()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v9, Lbmw;->p:Lcai;

    if-nez v2, :cond_2f

    invoke-static {v10}, Lbmz;->a(Lbma;)J

    move-result-wide v2

    iget-boolean v4, v9, Lbmw;->k:Z

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

    iget-object v4, v9, Lbmw;->h:Lbng;

    iget-object v5, v9, Lbmw;->m:Lbma;

    invoke-interface {v4, v5}, Lbng;->a(Lbma;)V

    new-instance v4, Lbnc;

    long-to-int v2, v2

    invoke-direct {v4, v2}, Lbnc;-><init>(I)V

    iput-object v4, v9, Lbmw;->p:Lcai;

    .line 272
    :cond_2f
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lblk;->d:Lbmw;

    iget-object v2, v3, Lbmw;->o:Lbmc;

    if-nez v2, :cond_37

    iget-object v2, v3, Lbmw;->m:Lbma;

    if-nez v2, :cond_35

    iget-object v2, v3, Lbmw;->n:Lbmc;

    if-nez v2, :cond_35

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call sendRequest() first!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_30
    new-instance v2, Lbnc;

    invoke-direct {v2}, Lbnc;-><init>()V

    iput-object v2, v9, Lbmw;->p:Lcai;

    goto :goto_11

    :cond_31
    iget-object v4, v9, Lbmw;->h:Lbng;

    iget-object v5, v9, Lbmw;->m:Lbma;

    invoke-interface {v4, v5}, Lbng;->a(Lbma;)V

    iget-object v4, v9, Lbmw;->h:Lbng;

    iget-object v5, v9, Lbmw;->m:Lbma;

    invoke-interface {v4, v5, v2, v3}, Lbng;->a(Lbma;J)Lcai;

    move-result-object v2

    iput-object v2, v9, Lbmw;->p:Lcai;

    goto :goto_11

    :cond_32
    iget-object v2, v9, Lbmw;->c:Lblo;

    if-eqz v2, :cond_33

    sget-object v2, Lbmi;->b:Lbmi;

    iget-object v3, v9, Lbmw;->b:Lbly;

    iget-object v3, v3, Lbly;->r:Lblp;

    iget-object v4, v9, Lbmw;->c:Lblo;

    invoke-virtual {v2, v3, v4}, Lbmi;->a(Lblp;Lblo;)V

    const/4 v2, 0x0

    iput-object v2, v9, Lbmw;->c:Lblo;

    :cond_33
    iget-object v2, v9, Lbmw;->n:Lbmc;

    if-eqz v2, :cond_34

    iget-object v2, v9, Lbmw;->n:Lbmc;

    invoke-virtual {v2}, Lbmc;->d()Lbmc$a;

    move-result-object v2

    iget-object v3, v9, Lbmw;->l:Lbma;

    iput-object v3, v2, Lbmc$a;->a:Lbma;

    iget-object v3, v9, Lbmw;->g:Lbmc;

    invoke-static {v3}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbmc$a;->c(Lbmc;)Lbmc$a;

    move-result-object v2

    iget-object v3, v9, Lbmw;->n:Lbmc;

    invoke-static {v3}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbmc$a;->b(Lbmc;)Lbmc$a;

    move-result-object v2

    invoke-virtual {v2}, Lbmc$a;->a()Lbmc;

    move-result-object v2

    iput-object v2, v9, Lbmw;->o:Lbmc;

    :goto_12
    iget-object v2, v9, Lbmw;->o:Lbmc;

    invoke-virtual {v9, v2}, Lbmw;->b(Lbmc;)Lbmc;

    move-result-object v2

    iput-object v2, v9, Lbmw;->o:Lbmc;

    goto :goto_11

    :cond_34
    new-instance v2, Lbmc$a;

    invoke-direct {v2}, Lbmc$a;-><init>()V

    iget-object v3, v9, Lbmw;->l:Lbma;

    iput-object v3, v2, Lbmc$a;->a:Lbma;

    iget-object v3, v9, Lbmw;->g:Lbmc;

    invoke-static {v3}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbmc$a;->c(Lbmc;)Lbmc$a;

    move-result-object v2

    sget-object v3, Lblz;->b:Lblz;

    iput-object v3, v2, Lbmc$a;->b:Lblz;

    const/16 v3, 0x1f8

    iput v3, v2, Lbmc$a;->c:I

    const-string v3, "Unsatisfiable Request (only-if-cached)"

    iput-object v3, v2, Lbmc$a;->d:Ljava/lang/String;

    sget-object v3, Lbmw;->a:Lbmd;

    iput-object v3, v2, Lbmc$a;->g:Lbmd;

    invoke-virtual {v2}, Lbmc$a;->a()Lbmc;

    move-result-object v2

    iput-object v2, v9, Lbmw;->o:Lbmc;

    goto :goto_12

    .line 272
    :cond_35
    iget-object v2, v3, Lbmw;->m:Lbma;

    if-eqz v2, :cond_37

    iget-boolean v2, v3, Lbmw;->s:Z

    if-eqz v2, :cond_38

    iget-object v2, v3, Lbmw;->h:Lbng;

    iget-object v4, v3, Lbmw;->m:Lbma;

    invoke-interface {v2, v4}, Lbng;->a(Lbma;)V

    :cond_36
    :goto_13
    invoke-virtual {v3}, Lbmw;->g()Lbmc;

    move-result-object v2

    :goto_14
    iget-object v4, v2, Lbmc;->f:Lblu;

    invoke-virtual {v3, v4}, Lbmw;->a(Lblu;)V

    iget-object v4, v3, Lbmw;->n:Lbmc;

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lbmw;->n:Lbmc;

    invoke-static {v4, v2}, Lbmw;->a(Lbmc;Lbmc;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, v3, Lbmw;->n:Lbmc;

    invoke-virtual {v4}, Lbmc;->d()Lbmc$a;

    move-result-object v4

    iget-object v5, v3, Lbmw;->l:Lbma;

    iput-object v5, v4, Lbmc$a;->a:Lbma;

    iget-object v5, v3, Lbmw;->g:Lbmc;

    invoke-static {v5}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbmc$a;->c(Lbmc;)Lbmc$a;

    move-result-object v4

    iget-object v5, v3, Lbmw;->n:Lbmc;

    iget-object v5, v5, Lbmc;->f:Lblu;

    iget-object v6, v2, Lbmc;->f:Lblu;

    invoke-static {v5, v6}, Lbmw;->a(Lblu;Lblu;)Lblu;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbmc$a;->a(Lblu;)Lbmc$a;

    move-result-object v4

    iget-object v5, v3, Lbmw;->n:Lbmc;

    invoke-static {v5}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbmc$a;->b(Lbmc;)Lbmc$a;

    move-result-object v4

    invoke-static {v2}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbmc$a;->a(Lbmc;)Lbmc$a;

    move-result-object v4

    invoke-virtual {v4}, Lbmc$a;->a()Lbmc;

    move-result-object v4

    iput-object v4, v3, Lbmw;->o:Lbmc;

    iget-object v2, v2, Lbmc;->g:Lbmd;

    invoke-virtual {v2}, Lbmd;->close()V

    invoke-virtual {v3}, Lbmw;->e()V

    sget-object v2, Lbmi;->b:Lbmi;

    iget-object v4, v3, Lbmw;->b:Lbly;

    invoke-virtual {v2, v4}, Lbmi;->a(Lbly;)Lbmj;

    move-result-object v2

    invoke-interface {v2}, Lbmj;->a()V

    iget-object v4, v3, Lbmw;->n:Lbmc;

    iget-object v5, v3, Lbmw;->o:Lbmc;

    invoke-static {v5}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lbmj;->a(Lbmc;Lbmc;)V

    iget-object v2, v3, Lbmw;->o:Lbmc;

    invoke-virtual {v3, v2}, Lbmw;->b(Lbmc;)Lbmc;

    move-result-object v2

    iput-object v2, v3, Lbmw;->o:Lbmc;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    :cond_37
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lblk;->d:Lbmw;

    invoke-virtual {v2}, Lbmw;->d()Lbmc;

    move-result-object v10

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lblk;->d:Lbmw;

    iget-object v2, v3, Lbmw;->o:Lbmc;

    if-nez v2, :cond_4c

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 272
    :cond_38
    :try_start_2
    iget-boolean v2, v3, Lbmw;->r:Z

    if-nez v2, :cond_39

    new-instance v2, Lbmw$a;

    const/4 v4, 0x0

    iget-object v5, v3, Lbmw;->m:Lbma;

    invoke-direct {v2, v3, v4, v5}, Lbmw$a;-><init>(Lbmw;ILbma;)V

    iget-object v4, v3, Lbmw;->m:Lbma;

    invoke-virtual {v2, v4}, Lbmw$a;->a(Lbma;)Lbmc;

    move-result-object v2

    goto/16 :goto_14

    :cond_39
    iget-object v2, v3, Lbmw;->q:Lbzv;

    if-eqz v2, :cond_3a

    iget-object v2, v3, Lbmw;->q:Lbzv;

    invoke-interface {v2}, Lbzv;->b()Lbzu;

    move-result-object v2

    iget-wide v4, v2, Lbzu;->b:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3a

    iget-object v2, v3, Lbmw;->q:Lbzv;

    invoke-interface {v2}, Lbzv;->c()Lbzv;

    :cond_3a
    iget-wide v4, v3, Lbmw;->i:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_3c

    iget-object v2, v3, Lbmw;->m:Lbma;

    invoke-static {v2}, Lbmz;->a(Lbma;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_3b

    iget-object v2, v3, Lbmw;->p:Lcai;

    instance-of v2, v2, Lbnc;

    if-eqz v2, :cond_3b

    iget-object v2, v3, Lbmw;->p:Lcai;

    check-cast v2, Lbnc;

    iget-object v2, v2, Lbnc;->a:Lbzu;

    iget-wide v4, v2, Lbzu;->b:J

    iget-object v2, v3, Lbmw;->m:Lbma;

    invoke-virtual {v2}, Lbma;->c()Lbma$a;

    move-result-object v2

    const-string v6, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    move-result-object v2

    invoke-virtual {v2}, Lbma$a;->a()Lbma;

    move-result-object v2

    iput-object v2, v3, Lbmw;->m:Lbma;

    :cond_3b
    iget-object v2, v3, Lbmw;->h:Lbng;

    iget-object v4, v3, Lbmw;->m:Lbma;

    invoke-interface {v2, v4}, Lbng;->a(Lbma;)V

    :cond_3c
    iget-object v2, v3, Lbmw;->p:Lcai;

    if-eqz v2, :cond_36

    iget-object v2, v3, Lbmw;->q:Lbzv;

    if-eqz v2, :cond_3d

    iget-object v2, v3, Lbmw;->q:Lbzv;

    invoke-interface {v2}, Lbzv;->close()V

    :goto_16
    iget-object v2, v3, Lbmw;->p:Lcai;

    instance-of v2, v2, Lbnc;

    if-eqz v2, :cond_36

    iget-object v4, v3, Lbmw;->h:Lbng;

    iget-object v2, v3, Lbmw;->p:Lcai;

    check-cast v2, Lbnc;

    invoke-interface {v4, v2}, Lbng;->a(Lbnc;)V

    goto/16 :goto_13

    :cond_3d
    iget-object v2, v3, Lbmw;->p:Lcai;

    invoke-interface {v2}, Lcai;->close()V

    goto :goto_16

    :cond_3e
    iget-object v4, v3, Lbmw;->n:Lbmc;

    iget-object v4, v4, Lbmc;->g:Lbmd;

    invoke-static {v4}, Lbmp;->a(Ljava/io/Closeable;)V

    :cond_3f
    invoke-virtual {v2}, Lbmc;->d()Lbmc$a;

    move-result-object v4

    iget-object v5, v3, Lbmw;->l:Lbma;

    iput-object v5, v4, Lbmc$a;->a:Lbma;

    iget-object v5, v3, Lbmw;->g:Lbmc;

    invoke-static {v5}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbmc$a;->c(Lbmc;)Lbmc$a;

    move-result-object v4

    iget-object v5, v3, Lbmw;->n:Lbmc;

    invoke-static {v5}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbmc$a;->b(Lbmc;)Lbmc$a;

    move-result-object v4

    invoke-static {v2}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v2

    invoke-virtual {v4, v2}, Lbmc$a;->a(Lbmc;)Lbmc$a;

    move-result-object v2

    invoke-virtual {v2}, Lbmc$a;->a()Lbmc;

    move-result-object v2

    iput-object v2, v3, Lbmw;->o:Lbmc;

    iget-object v2, v3, Lbmw;->o:Lbmc;

    invoke-static {v2}, Lbmw;->c(Lbmc;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Lbmi;->b:Lbmi;

    iget-object v4, v3, Lbmw;->b:Lbly;

    invoke-virtual {v2, v4}, Lbmi;->a(Lbly;)Lbmj;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v4, v3, Lbmw;->o:Lbmc;

    iget-object v5, v3, Lbmw;->m:Lbma;

    invoke-static {v4, v5}, Lbms;->a(Lbmc;Lbma;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, v3, Lbmw;->m:Lbma;

    iget-object v4, v4, Lbma;->b:Ljava/lang/String;

    invoke-static {v4}, Lbmx;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-eqz v4, :cond_40

    :try_start_3
    iget-object v4, v3, Lbmw;->m:Lbma;

    invoke-interface {v2, v4}, Lbmj;->b(Lbma;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_40
    :goto_17
    :try_start_4
    iget-object v4, v3, Lbmw;->t:Lbmr;

    iget-object v2, v3, Lbmw;->o:Lbmc;

    if-nez v4, :cond_43

    :cond_41
    :goto_18
    invoke-virtual {v3, v2}, Lbmw;->b(Lbmc;)Lbmc;

    move-result-object v2

    iput-object v2, v3, Lbmw;->o:Lbmc;

    goto/16 :goto_15

    :cond_42
    iget-object v4, v3, Lbmw;->o:Lbmc;

    invoke-static {v4}, Lbmw;->a(Lbmc;)Lbmc;

    move-result-object v4

    invoke-interface {v2, v4}, Lbmj;->a(Lbmc;)Lbmr;

    move-result-object v2

    iput-object v2, v3, Lbmw;->t:Lbmr;

    goto :goto_17

    :cond_43
    invoke-interface {v4}, Lbmr;->b()Lcai;

    move-result-object v5

    if-eqz v5, :cond_41

    iget-object v6, v2, Lbmc;->g:Lbmd;

    invoke-virtual {v6}, Lbmd;->b()Lbzw;

    move-result-object v6

    invoke-static {v5}, Lcad;->a(Lcai;)Lbzv;

    move-result-object v5

    new-instance v7, Lbmw$2;

    invoke-direct {v7, v3, v6, v4, v5}, Lbmw$2;-><init>(Lbmw;Lbzw;Lbmr;Lbzv;)V

    invoke-virtual {v2}, Lbmc;->d()Lbmc$a;

    move-result-object v4

    new-instance v5, Lbna;

    iget-object v2, v2, Lbmc;->f:Lblu;

    invoke-static {v7}, Lcad;->a(Lcaj;)Lbzw;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lbna;-><init>(Lblu;Lbzw;)V

    iput-object v5, v4, Lbmc$a;->g:Lbmd;

    invoke-virtual {v4}, Lbmc$a;->a()Lbmc;
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
    invoke-virtual {v10}, Lbmw;->f()Lblo;

    move-result-object v8

    new-instance v2, Lbmw;

    iget-object v3, v10, Lbmw;->b:Lbly;

    iget-object v4, v10, Lbmw;->l:Lbma;

    iget-boolean v5, v10, Lbmw;->k:Z

    iget-boolean v6, v10, Lbmw;->r:Z

    iget-boolean v7, v10, Lbmw;->s:Z

    iget-object v9, v10, Lbmw;->e:Lbnd;

    iget-object v10, v10, Lbmw;->g:Lbmc;

    invoke-direct/range {v2 .. v10}, Lbmw;-><init>(Lbly;Lbma;ZZZLblo;Lbnd;Lbmc;)V

    goto/16 :goto_6

    .line 281
    :cond_4b
    throw v12

    .line 285
    :cond_4c
    iget-object v2, v3, Lbmw;->f:Lbme;

    if-eqz v2, :cond_4e

    iget-object v2, v3, Lbmw;->f:Lbme;

    iget-object v2, v2, Lbme;->b:Ljava/net/Proxy;

    :goto_19
    iget-object v4, v3, Lbmw;->o:Lbmc;

    iget v4, v4, Lbmc;->c:I

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

    iget-object v2, v0, Lblk;->d:Lbmw;

    invoke-virtual {v2}, Lbmw;->e()V

    goto/16 :goto_3

    .line 285
    :cond_4e
    iget-object v2, v3, Lbmw;->b:Lbly;

    iget-object v2, v2, Lbly;->e:Ljava/net/Proxy;

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
    iget-object v4, v3, Lbmw;->b:Lbly;

    iget-object v4, v4, Lbly;->q:Lblh;

    iget-object v3, v3, Lbmw;->o:Lbmc;

    invoke-static {v4, v3, v2}, Lbmz;->a(Lblh;Lbmc;Ljava/net/Proxy;)Lbma;

    move-result-object v4

    goto :goto_1a

    :sswitch_2
    iget-object v2, v3, Lbmw;->l:Lbma;

    iget-object v2, v2, Lbma;->b:Ljava/lang/String;

    const-string v4, "GET"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, v3, Lbmw;->l:Lbma;

    iget-object v2, v2, Lbma;->b:Ljava/lang/String;

    const-string v4, "HEAD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_50
    :sswitch_3
    iget-object v2, v3, Lbmw;->b:Lbly;

    iget-boolean v2, v2, Lbly;->u:Z

    if-eqz v2, :cond_4d

    iget-object v2, v3, Lbmw;->o:Lbmc;

    const-string v4, "Location"

    invoke-virtual {v2, v4}, Lbmc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    new-instance v4, Ljava/net/URL;

    iget-object v5, v3, Lbmw;->l:Lbma;

    invoke-virtual {v5}, Lbma;->a()Ljava/net/URL;

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

    iget-object v5, v3, Lbmw;->l:Lbma;

    invoke-virtual {v5}, Lbma;->a()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, v3, Lbmw;->b:Lbly;

    iget-boolean v2, v2, Lbly;->t:Z

    if-eqz v2, :cond_4d

    :cond_52
    iget-object v2, v3, Lbmw;->l:Lbma;

    invoke-virtual {v2}, Lbma;->c()Lbma$a;

    move-result-object v2

    iget-object v5, v3, Lbmw;->l:Lbma;

    iget-object v5, v5, Lbma;->b:Ljava/lang/String;

    invoke-static {v5}, Lbmx;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    const-string v5, "GET"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lbma$a;->a(Ljava/lang/String;Lbmb;)Lbma$a;

    const-string v5, "Transfer-Encoding"

    invoke-virtual {v2, v5}, Lbma$a;->b(Ljava/lang/String;)Lbma$a;

    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Lbma$a;->b(Ljava/lang/String;)Lbma$a;

    const-string v5, "Content-Type"

    invoke-virtual {v2, v5}, Lbma$a;->b(Ljava/lang/String;)Lbma$a;

    :cond_53
    invoke-virtual {v3, v4}, Lbmw;->b(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "Authorization"

    invoke-virtual {v2, v3}, Lbma$a;->b(Ljava/lang/String;)Lbma$a;

    :cond_54
    invoke-virtual {v2, v4}, Lbma$a;->a(Ljava/net/URL;)Lbma$a;

    move-result-object v2

    invoke-virtual {v2}, Lbma$a;->a()Lbma;

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

    iget-object v2, v0, Lblk;->d:Lbmw;

    invoke-virtual {v4}, Lbma;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbmw;->b(Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lblk;->d:Lbmw;

    invoke-virtual {v2}, Lbmw;->e()V

    .line 302
    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lblk;->d:Lbmw;

    invoke-virtual {v2}, Lbmw;->f()Lblo;

    move-result-object v8

    .line 304
    new-instance v2, Lbmw;

    move-object/from16 v0, p0

    iget-object v3, v0, Lblk;->a:Lbly;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lbmw;-><init>(Lbly;Lbma;ZZZLblo;Lbnd;Lbmc;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lblk;->d:Lbmw;

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
