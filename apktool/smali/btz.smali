.class public final Lbtz;
.super Ljavax/net/ssl/HttpsURLConnection;


# instance fields
.field private a:Lbtl;

.field private b:Ljavax/net/ssl/HttpsURLConnection;

.field private c:Lbsb;

.field private d:Lbsw;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;Lbtl;Lbsw;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 31
    iput-object v1, p0, Lbtz;->a:Lbtl;

    .line 33
    iput-object v1, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    .line 35
    iput-object v1, p0, Lbtz;->c:Lbsb;

    .line 37
    iput-object v1, p0, Lbtz;->d:Lbsw;

    .line 39
    iput-boolean v2, p0, Lbtz;->e:Z

    .line 40
    iput-boolean v2, p0, Lbtz;->f:Z

    .line 49
    iput-object p2, p0, Lbtz;->a:Lbtl;

    .line 50
    iput-object p1, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    .line 51
    iput-object p3, p0, Lbtz;->d:Lbsw;

    .line 52
    new-instance v0, Lbsb;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsb;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lbtz;->c:Lbsb;

    .line 54
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 55
    instance-of v1, v0, Lbqb;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lbqb;

    .line 57
    iget-object v1, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, v0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 59
    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 63
    :try_start_0
    iget-boolean v0, p0, Lbtz;->f:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtz;->f:Z

    .line 65
    iget-object v0, p0, Lbtz;->c:Lbsb;

    iget-object v1, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbsb;->f:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lbtz;->c:Lbsb;

    invoke-virtual {v0}, Lbsb;->c()V

    .line 67
    iget-object v0, p0, Lbtz;->c:Lbsb;

    iget-object v1, p0, Lbtz;->d:Lbsw;

    invoke-virtual {v1}, Lbsw;->a()Lbra;

    move-result-object v1

    iput-object v1, v0, Lbsb;->j:Lbra;

    .line 68
    invoke-static {}, Lbrc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lbtz;->c:Lbsb;

    invoke-static {}, Lbrc;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbsb;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    throw v0

    .line 74
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-boolean v0, p0, Lbtz;->e:Z

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtz;->e:Z

    .line 92
    iget-object v0, p0, Lbtz;->c:Lbsb;

    invoke-virtual {v0}, Lbsb;->d()V

    .line 93
    iget-object v0, p0, Lbtz;->c:Lbsb;

    invoke-static {p1}, Lbsa;->a(Ljava/lang/Throwable;)Lbsa;

    move-result-object v1

    iput-object v1, v0, Lbsb;->g:Lbsa;

    .line 94
    iget-object v0, p0, Lbtz;->a:Lbtl;

    iget-object v1, p0, Lbtz;->c:Lbsb;

    invoke-virtual {v0, v1}, Lbtl;->a(Lbsb;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    throw v0

    .line 97
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 8

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v1, 0x1

    .line 104
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v2, p0, Lbtz;->e:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lbtz;->e:Z

    iget-object v2, p0, Lbtz;->c:Lbsb;

    invoke-virtual {v2}, Lbsb;->d()V

    iget-object v2, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lbtw;

    iget-object v3, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lbtw;-><init>(Ljava/util/Map;)V

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lbtw;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v0, p0, Lbtz;->c:Lbsb;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lbsb;->b(J)V

    move v0, v1

    :cond_0
    const-string v1, "X-Android-Sent-Millis"

    invoke-virtual {v2, v1}, Lbtw;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "X-Android-Received-Millis"

    invoke-virtual {v2, v1}, Lbtw;->a(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbtz;->c:Lbsb;

    invoke-virtual {v1, v4, v5}, Lbsb;->e(J)V

    iget-object v1, p0, Lbtz;->c:Lbsb;

    invoke-virtual {v1, v2, v3}, Lbsb;->f(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lbtz;->c:Lbsb;

    iget-object v2, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v1, Lbsb;->e:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lbtz;->a:Lbtl;

    iget-object v1, p0, Lbtz;->c:Lbsb;

    invoke-virtual {v0, v1}, Lbtl;->a(Lbsb;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    :cond_2
    :goto_1
    return-void

    .line 105
    :catch_0
    move-exception v0

    throw v0

    .line 107
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 370
    return-void
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lbtz;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtz;->c:Lbsb;

    iget-boolean v0, v0, Lbsb;->b:Z

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lbtz;->a:Lbtl;

    iget-object v1, p0, Lbtz;->c:Lbsb;

    invoke-virtual {v0, v1}, Lbtl;->a(Lbsb;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    throw v0

    .line 251
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Lbtz;->a()V

    .line 389
    :try_start_0
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 390
    invoke-direct {p0}, Lbtz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    return-object v0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    invoke-direct {p0, v0}, Lbtz;->a(Ljava/lang/Throwable;)V

    .line 393
    throw v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    invoke-direct {p0}, Lbtz;->a()V

    .line 407
    :try_start_0
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 408
    invoke-direct {p0}, Lbtz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    return-object v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    invoke-direct {p0, v0}, Lbtz;->a(Ljava/lang/Throwable;)V

    .line 411
    throw v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    invoke-direct {p0}, Lbtz;->a()V

    .line 420
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-direct {p0}, Lbtz;->b()V

    .line 422
    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0}, Lbtz;->a()V

    .line 433
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-direct {p0}, Lbtz;->b()V

    .line 435
    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDate()J

    move-result-wide v0

    .line 441
    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 258
    invoke-direct {p0}, Lbtz;->a()V

    .line 262
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 264
    invoke-direct {p0}, Lbtz;->b()V

    .line 266
    if-eqz v1, :cond_0

    .line 268
    :try_start_0
    new-instance v0, Lbua;

    iget-object v2, p0, Lbtz;->a:Lbtl;

    iget-object v3, p0, Lbtz;->c:Lbsb;

    invoke-direct {v0, v1, v2, v3}, Lbua;-><init>(Ljava/io/InputStream;Lbtl;Lbsb;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v0

    throw v0

    .line 271
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getExpiration()J
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0}, Lbtz;->a()V

    .line 467
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-direct {p0}, Lbtz;->b()V

    .line 469
    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0}, Lbtz;->a()V

    .line 475
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-direct {p0}, Lbtz;->b()V

    .line 477
    return-object v0
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Lbtz;->a()V

    .line 282
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    .line 283
    invoke-direct {p0}, Lbtz;->b()V

    .line 285
    return-wide v0
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 482
    invoke-direct {p0}, Lbtz;->a()V

    .line 483
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    .line 484
    invoke-direct {p0}, Lbtz;->b()V

    .line 485
    return v0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    invoke-direct {p0}, Lbtz;->a()V

    .line 491
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-direct {p0}, Lbtz;->b()V

    .line 493
    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Lbtz;->a()V

    .line 499
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 500
    invoke-direct {p0}, Lbtz;->b()V

    .line 501
    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 511
    invoke-direct {p0}, Lbtz;->a()V

    .line 516
    :try_start_0
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 517
    invoke-direct {p0}, Lbtz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    if-eqz v1, :cond_0

    .line 525
    :try_start_1
    new-instance v0, Lbua;

    iget-object v2, p0, Lbtz;->a:Lbtl;

    iget-object v3, p0, Lbtz;->c:Lbsb;

    invoke-direct {v0, v1, v2, v3}, Lbua;-><init>(Ljava/io/InputStream;Lbtl;Lbsb;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 533
    :goto_0
    return-object v0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    invoke-direct {p0, v0}, Lbtz;->a(Ljava/lang/Throwable;)V

    .line 520
    throw v0

    .line 526
    :catch_1
    move-exception v0

    throw v0

    .line 528
    :catch_2
    move-exception v0

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_0

    .line 547
    :try_start_0
    new-instance v0, Lbub;

    iget-object v2, p0, Lbtz;->c:Lbsb;

    invoke-direct {v0, v1, v2}, Lbub;-><init>(Ljava/io/OutputStream;Lbsb;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 555
    :goto_0
    return-object v0

    .line 548
    :catch_0
    move-exception v0

    throw v0

    .line 550
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbtd;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0}, Lbtz;->a()V

    .line 310
    :try_start_0
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    .line 311
    invoke-direct {p0}, Lbtz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    invoke-direct {p0, v0}, Lbtz;->a(Ljava/lang/Throwable;)V

    .line 314
    throw v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lbtz;->a()V

    .line 327
    :try_start_0
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-direct {p0}, Lbtz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-object v0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-direct {p0, v0}, Lbtz;->a(Ljava/lang/Throwable;)V

    .line 331
    throw v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    .line 586
    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 340
    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 591
    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    .line 596
    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 601
    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 606
    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 345
    return-void
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 215
    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setIfModifiedSince(J)V

    .line 611
    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 350
    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 616
    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2

    .prologue
    .line 221
    .line 223
    :try_start_0
    instance-of v1, p1, Lbqb;

    if-eqz v1, :cond_0

    .line 228
    move-object v0, p1

    check-cast v0, Lbqb;

    move-object v1, v0

    .line 229
    iget-object p1, v1, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :cond_0
    :goto_0
    iget-object v1, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 239
    return-void

    .line 232
    :catch_0
    move-exception v1

    throw v1

    .line 234
    :catch_1
    move-exception v1

    invoke-static {v1}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setUseCaches(Z)V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 626
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lbtz;->b:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
