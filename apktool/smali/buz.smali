.class public final Lbuz;
.super Ljava/net/HttpURLConnection;


# instance fields
.field private a:Lbum;

.field private b:Ljava/net/HttpURLConnection;

.field private c:Lbtc;

.field private d:Lbtx;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;Lbum;Lbtx;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 70
    iput-boolean v1, p0, Lbuz;->e:Z

    .line 71
    iput-boolean v1, p0, Lbuz;->f:Z

    .line 80
    iput-object p1, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    .line 81
    iput-object p2, p0, Lbuz;->a:Lbum;

    .line 82
    iput-object p3, p0, Lbuz;->d:Lbtx;

    .line 83
    new-instance v0, Lbtc;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lbtc;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lbuz;->c:Lbtc;

    .line 84
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 88
    :try_start_0
    iget-boolean v0, p0, Lbuz;->f:Z

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbuz;->f:Z

    .line 90
    iget-object v0, p0, Lbuz;->c:Lbtc;

    iget-object v1, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lbtc;->f:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lbuz;->c:Lbtc;

    invoke-virtual {v0}, Lbtc;->c()V

    .line 92
    iget-object v0, p0, Lbuz;->c:Lbtc;

    iget-object v1, p0, Lbuz;->d:Lbtx;

    invoke-virtual {v1}, Lbtx;->a()Lbsb;

    move-result-object v1

    iput-object v1, v0, Lbtc;->j:Lbsb;

    .line 93
    invoke-static {}, Lbsd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lbuz;->c:Lbtc;

    invoke-static {}, Lbsd;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbtc;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    throw v0

    .line 99
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-boolean v0, p0, Lbuz;->e:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbuz;->e:Z

    .line 117
    iget-object v0, p0, Lbuz;->c:Lbtc;

    invoke-virtual {v0}, Lbtc;->d()V

    .line 118
    iget-object v0, p0, Lbuz;->c:Lbtc;

    invoke-static {p1}, Lbtb;->a(Ljava/lang/Throwable;)Lbtb;

    move-result-object v1

    iput-object v1, v0, Lbtc;->g:Lbtb;

    .line 119
    iget-object v0, p0, Lbuz;->a:Lbum;

    iget-object v1, p0, Lbuz;->c:Lbtc;

    invoke-virtual {v0, v1}, Lbum;->a(Lbtc;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    throw v0

    .line 123
    :catch_1
    move-exception v0

    invoke-static {p1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 8

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v1, 0x1

    .line 130
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v2, p0, Lbuz;->e:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lbuz;->e:Z

    iget-object v2, p0, Lbuz;->c:Lbtc;

    invoke-virtual {v2}, Lbtc;->d()V

    iget-object v2, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lbux;

    iget-object v3, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lbux;-><init>(Ljava/util/Map;)V

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lbux;->b(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v0, p0, Lbuz;->c:Lbtc;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lbtc;->b(J)V

    move v0, v1

    :cond_0
    const-string v1, "X-Android-Sent-Millis"

    invoke-virtual {v2, v1}, Lbux;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "X-Android-Received-Millis"

    invoke-virtual {v2, v1}, Lbux;->a(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbuz;->c:Lbtc;

    invoke-virtual {v1, v4, v5}, Lbtc;->e(J)V

    iget-object v1, p0, Lbuz;->c:Lbtc;

    invoke-virtual {v1, v2, v3}, Lbtc;->f(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lbuz;->c:Lbtc;

    iget-object v2, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v1, Lbtc;->e:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lbuz;->a:Lbum;

    iget-object v1, p0, Lbuz;->c:Lbtc;

    invoke-virtual {v0, v1}, Lbum;->a(Lbtc;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    :cond_2
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v0

    throw v0

    .line 133
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 209
    return-void
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 494
    :try_start_0
    iget-boolean v0, p0, Lbuz;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbuz;->c:Lbtc;

    iget-boolean v0, v0, Lbtc;->b:Z

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lbuz;->a:Lbum;

    iget-object v1, p0, Lbuz;->c:Lbtc;

    invoke-virtual {v0, v1}, Lbum;->a(Lbtc;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    throw v0

    .line 499
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lbuz;->a()V

    .line 223
    :try_start_0
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 224
    invoke-direct {p0}, Lbuz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-direct {p0, v0}, Lbuz;->a(Ljava/lang/Throwable;)V

    .line 227
    throw v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lbuz;->a()V

    .line 241
    :try_start_0
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    invoke-direct {p0}, Lbuz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-object v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-direct {p0, v0}, Lbuz;->a(Ljava/lang/Throwable;)V

    .line 245
    throw v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lbuz;->a()V

    .line 254
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-direct {p0}, Lbuz;->b()V

    .line 256
    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Lbuz;->a()V

    .line 267
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-direct {p0}, Lbuz;->b()V

    .line 269
    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 511
    invoke-direct {p0}, Lbuz;->a()V

    .line 514
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 515
    invoke-direct {p0}, Lbuz;->b()V

    .line 517
    if-eqz v1, :cond_0

    .line 519
    :try_start_0
    new-instance v0, Lbvb;

    iget-object v2, p0, Lbuz;->a:Lbum;

    iget-object v3, p0, Lbuz;->c:Lbtc;

    invoke-direct {v0, v1, v2, v3}, Lbvb;-><init>(Ljava/io/InputStream;Lbum;Lbtc;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 527
    :goto_0
    return-object v0

    .line 520
    :catch_0
    move-exception v0

    throw v0

    .line 522
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getExpiration()J
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lbuz;->a()V

    .line 300
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-direct {p0}, Lbuz;->b()V

    .line 302
    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Lbuz;->a()V

    .line 326
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-direct {p0}, Lbuz;->b()V

    .line 328
    return-object v0
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 333
    invoke-direct {p0}, Lbuz;->a()V

    .line 334
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    .line 335
    invoke-direct {p0}, Lbuz;->b()V

    .line 336
    return-wide v0
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Lbuz;->a()V

    .line 342
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    .line 343
    invoke-direct {p0}, Lbuz;->b()V

    .line 344
    return v0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lbuz;->a()V

    .line 350
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-direct {p0}, Lbuz;->b()V

    .line 352
    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lbuz;->a()V

    .line 308
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 309
    invoke-direct {p0}, Lbuz;->b()V

    .line 310
    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 362
    invoke-direct {p0}, Lbuz;->a()V

    .line 367
    :try_start_0
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 368
    invoke-direct {p0}, Lbuz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    if-eqz v1, :cond_0

    .line 376
    :try_start_1
    new-instance v0, Lbvb;

    iget-object v2, p0, Lbuz;->a:Lbum;

    iget-object v3, p0, Lbuz;->c:Lbtc;

    invoke-direct {v0, v1, v2, v3}, Lbvb;-><init>(Ljava/io/InputStream;Lbum;Lbtc;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 384
    :goto_0
    return-object v0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    invoke-direct {p0, v0}, Lbuz;->a(Ljava/lang/Throwable;)V

    .line 371
    throw v0

    .line 377
    :catch_1
    move-exception v0

    throw v0

    .line 379
    :catch_2
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_0

    .line 398
    :try_start_0
    new-instance v0, Lbvc;

    iget-object v2, p0, Lbuz;->c:Lbtc;

    invoke-direct {v0, v1, v2}, Lbvc;-><init>(Ljava/io/OutputStream;Lbtc;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    :goto_0
    return-object v0

    .line 399
    :catch_0
    move-exception v0

    throw v0

    .line 401
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lbuz;->a()V

    .line 542
    :try_start_0
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 543
    invoke-direct {p0}, Lbuz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    return v0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    invoke-direct {p0, v0}, Lbuz;->a(Ljava/lang/Throwable;)V

    .line 546
    throw v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    invoke-direct {p0}, Lbuz;->a()V

    .line 559
    :try_start_0
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-direct {p0}, Lbuz;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    return-object v0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    invoke-direct {p0, v0}, Lbuz;->a(Ljava/lang/Throwable;)V

    .line 563
    throw v0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 432
    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 592
    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 467
    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 437
    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 442
    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 447
    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 587
    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 452
    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 582
    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 477
    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 462
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lbuz;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
