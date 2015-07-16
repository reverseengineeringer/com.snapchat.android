.class public final Lbuo;
.super Ljava/lang/Object;

# interfaces
.implements Lbun;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/os/ConditionVariable;

.field volatile b:J

.field private c:Ljava/util/List;

.field private d:Ljava/net/URL;

.field private e:J

.field private f:Landroid/os/ConditionVariable;

.field private g:Lbrv;

.field private volatile h:Z

.field private final i:Ljava/lang/Object;

.field private j:I


# direct methods
.method public constructor <init>(Lbrv;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbuo;-><init>(Lbrv;Ljava/net/URL;B)V

    .line 103
    return-void
.end method

.method private constructor <init>(Lbrv;Ljava/net/URL;B)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x2710

    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbuo;->c:Ljava/util/List;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lbuo;->d:Ljava/net/URL;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbuo;->e:J

    .line 69
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lbuo;->f:Landroid/os/ConditionVariable;

    .line 81
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lbuo;->a:Landroid/os/ConditionVariable;

    .line 88
    iput-boolean v2, p0, Lbuo;->h:Z

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbuo;->i:Ljava/lang/Object;

    .line 96
    iput v3, p0, Lbuo;->j:I

    .line 99
    iput-wide v4, p0, Lbuo;->b:J

    .line 117
    iput-object p1, p0, Lbuo;->g:Lbrv;

    .line 118
    iput-object p2, p0, Lbuo;->d:Ljava/net/URL;

    .line 119
    iput v3, p0, Lbuo;->j:I

    .line 120
    iput-wide v4, p0, Lbuo;->b:J

    .line 121
    return-void
.end method

.method private a()J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 237
    iget-wide v2, p0, Lbuo;->b:J

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lbuo;->e:J

    sub-long/2addr v4, v6

    .line 240
    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    .line 243
    sub-long/2addr v2, v4

    .line 245
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 250
    :goto_0
    iget-wide v2, p0, Lbuo;->b:J

    .line 253
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 296
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 297
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 298
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    const/16 v2, 0xca

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 304
    :catch_0
    move-exception v1

    goto :goto_0

    .line 301
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private b()Ljava/net/HttpURLConnection;
    .locals 5

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 270
    :try_start_0
    iget-object v0, p0, Lbuo;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/16 v1, 0x9c4

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 272
    const-string v1, "User-Agent"

    const-string v2, "4.5.4"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 275
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 277
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate URLConnection to APM server: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbue;->e()V

    goto :goto_0

    .line 276
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 313
    iget-boolean v0, p0, Lbuo;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbuo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lbuo;->j:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lbtc;)V
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0}, Lbuo;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lbuo;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    invoke-direct {p0}, Lbuo;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 333
    :cond_1
    :try_start_1
    iget-object v0, p0, Lbuo;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lbuo;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 335
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 135
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lbuo;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbuo;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lbuo;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v0, p0, Lbuo;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-direct {p0}, Lbuo;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lbuo;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbuo;->e:J

    invoke-direct {p0}, Lbuo;->b()Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbuo;->h:Z

    invoke-static {}, Lbue;->e()V

    .line 143
    :cond_1
    :goto_2
    return-void

    .line 135
    :cond_2
    iget-object v1, p0, Lbuo;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lbuo;->c:Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lbuo;->c:Ljava/util/List;

    iget-object v3, p0, Lbuo;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->close()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lbuo;->g:Lbrv;

    invoke-static {v1, v2}, Lbra;->a(Lbrv;Ljava/util/List;)Lbra;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbuo;->h:Z

    invoke-static {}, Lbue;->e()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 136
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exited APM send task due to: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 135
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0

    :cond_3
    iget-object v1, v1, Lbra;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lbuo;->a(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
