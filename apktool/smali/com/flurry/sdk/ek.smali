.class public Lcom/flurry/sdk/ek;
.super Lcom/flurry/sdk/fd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ek$3;,
        Lcom/flurry/sdk/ek$a;,
        Lcom/flurry/sdk/ek$b;,
        Lcom/flurry/sdk/ek$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/flurry/sdk/ek$a;

.field private d:I

.field private e:I

.field private f:Z

.field private final i:Lcom/flurry/sdk/ds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ds",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/flurry/sdk/ek$c;

.field private k:Ljava/net/HttpURLConnection;

.field private l:Lorg/apache/http/client/HttpClient;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/Exception;

.field private p:I

.field private final q:Lcom/flurry/sdk/ds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ds",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/flurry/sdk/ek;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/flurry/sdk/fd;-><init>()V

    .line 138
    const/16 v0, 0x2710

    iput v0, p0, Lcom/flurry/sdk/ek;->d:I

    .line 139
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/flurry/sdk/ek;->e:I

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ek;->f:Z

    .line 141
    new-instance v0, Lcom/flurry/sdk/ds;

    invoke-direct {v0}, Lcom/flurry/sdk/ds;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ek;->i:Lcom/flurry/sdk/ds;

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/ek;->p:I

    .line 151
    new-instance v0, Lcom/flurry/sdk/ds;

    invoke-direct {v0}, Lcom/flurry/sdk/ds;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ek;->q:Lcom/flurry/sdk/ds;

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ek;->r:Ljava/lang/Object;

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ek;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ek;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/flurry/sdk/ek;->j:Lcom/flurry/sdk/ek$c;

    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ek;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    if-eqz p1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/flurry/sdk/ek;->j:Lcom/flurry/sdk/ek$c;

    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/ek$c;->a(Lcom/flurry/sdk/ek;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/flurry/sdk/ek;->j:Lcom/flurry/sdk/ek$c;

    if-nez v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ek;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    if-eqz p1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/flurry/sdk/ek;->j:Lcom/flurry/sdk/ek$c;

    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/ek$c;->a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/flurry/sdk/ek;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method private m()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->n:Z

    if-eqz v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 290
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    .line 291
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/ek;->d:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 292
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/ek;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 293
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/ek$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lcom/flurry/sdk/ek;->f:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 295
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    sget-object v1, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v3, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v1, v3}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 296
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 299
    iget-object v0, p0, Lcom/flurry/sdk/ek;->i:Lcom/flurry/sdk/ds;

    invoke-virtual {v0}, Lcom/flurry/sdk/ds;->b()Ljava/util/Collection;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 301
    iget-object v4, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 370
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V

    throw v0

    .line 305
    :cond_1
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 370
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V

    goto/16 :goto_0

    .line 315
    :cond_3
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    :try_start_3
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 322
    :try_start_4
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 325
    :try_start_5
    invoke-direct {p0, v1}, Lcom/flurry/sdk/ek;->a(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 328
    :try_start_6
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 329
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/ek;->p:I

    .line 337
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 338
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 341
    iget-object v5, p0, Lcom/flurry/sdk/ek;->q:Lcom/flurry/sdk/ds;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/flurry/sdk/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 328
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 329
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    .line 346
    :cond_6
    sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    .line 370
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V

    goto/16 :goto_0

    .line 351
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->n:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_8

    .line 370
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V

    goto/16 :goto_0

    .line 360
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v1

    .line 361
    :try_start_9
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 364
    :try_start_a
    invoke-direct {p0, v3}, Lcom/flurry/sdk/ek;->a(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 366
    :try_start_b
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 367
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 370
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V

    goto/16 :goto_0

    .line 366
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_c
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 367
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 366
    :catchall_3
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_4

    .line 328
    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private n()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 376
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->n:Z

    if-eqz v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    .line 384
    iget-object v0, p0, Lcom/flurry/sdk/ek;->i:Lcom/flurry/sdk/ds;

    invoke-virtual {v0}, Lcom/flurry/sdk/ds;->b()Ljava/util/Collection;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 390
    :cond_1
    sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    const-string v0, "Accept-Encoding"

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->removeHeaders(Ljava/lang/String;)V

    .line 395
    :cond_2
    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    .line 396
    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lcom/flurry/sdk/ek$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ek$1;-><init>(Lcom/flurry/sdk/ek;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 440
    :cond_3
    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 441
    iget v1, p0, Lcom/flurry/sdk/ek;->d:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 442
    iget v1, p0, Lcom/flurry/sdk/ek;->e:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 443
    const-string v1, "http.protocol.handle-redirects"

    iget-boolean v5, p0, Lcom/flurry/sdk/ek;->f:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 446
    invoke-static {v0}, Lcom/flurry/sdk/eh;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ek;->l:Lorg/apache/http/client/HttpClient;

    .line 447
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 450
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->n:Z

    if-eqz v0, :cond_4

    .line 451
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request cancelled"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V

    throw v0

    .line 455
    :cond_4
    if-eqz v2, :cond_9

    .line 457
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/ek;->p:I

    .line 460
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 461
    if-eqz v5, :cond_6

    .line 462
    array-length v6, v5

    move v1, v4

    :goto_2
    if-ge v1, v6, :cond_6

    aget-object v0, v5, v1

    .line 463
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v7

    array-length v8, v7

    move v0, v4

    :goto_3
    if-ge v0, v8, :cond_5

    aget-object v9, v7, v0

    .line 464
    iget-object v10, p0, Lcom/flurry/sdk/ek;->q:Lcom/flurry/sdk/ds;

    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lcom/flurry/sdk/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 462
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 470
    :cond_6
    sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/ek$a;->c:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    .line 499
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V

    goto/16 :goto_0

    .line 475
    :cond_7
    :try_start_2
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->n:Z

    if-eqz v0, :cond_8

    .line 476
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Request cancelled"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_8
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 481
    if-eqz v0, :cond_9

    .line 487
    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 488
    :try_start_4
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 491
    :try_start_5
    invoke-direct {p0, v1}, Lcom/flurry/sdk/ek;->a(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 493
    :try_start_6
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 494
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 499
    :cond_9
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->p()V

    goto/16 :goto_0

    .line 493
    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_4
    :try_start_7
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    .line 494
    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 493
    :catchall_2
    move-exception v0

    move-object v1, v3

    move-object v3, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4
.end method

.method private o()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/flurry/sdk/ek;->j:Lcom/flurry/sdk/ek$c;

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ek;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/flurry/sdk/ek;->j:Lcom/flurry/sdk/ek$c;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/ek$c;->a(Lcom/flurry/sdk/ek;)V

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->m:Z

    if-eqz v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ek;->m:Z

    .line 554
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->m:Z

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ek;->m:Z

    .line 571
    iget-object v0, p0, Lcom/flurry/sdk/ek;->k:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/ek;->l:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 572
    :cond_2
    new-instance v0, Lcom/flurry/sdk/ek$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ek$2;-><init>(Lcom/flurry/sdk/ek;)V

    .line 583
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ek;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->o()V

    .line 272
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network not available, aborting http request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/ek;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->o()V

    goto :goto_0

    .line 252
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/ek$a;->a:Lcom/flurry/sdk/ek$a;

    iget-object v1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ek$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    :cond_2
    sget-object v0, Lcom/flurry/sdk/ek$a;->b:Lcom/flurry/sdk/ek$a;

    iput-object v0, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    .line 258
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    .line 259
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->m()V

    .line 264
    :goto_1
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/flurry/sdk/ek;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ek;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->o()V

    goto :goto_0

    .line 261
    :cond_4
    :try_start_3
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->n()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const/4 v1, 0x4

    :try_start_4
    sget-object v2, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/flurry/sdk/ek;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/ek;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ek;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during http request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/ek;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    iput-object v0, p0, Lcom/flurry/sdk/ek;->o:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->o()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/flurry/sdk/ek;->o()V

    throw v0
.end method

.method public a(Lcom/flurry/sdk/ek$a;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/flurry/sdk/ek;->c:Lcom/flurry/sdk/ek$a;

    .line 169
    return-void
.end method

.method public a(Lcom/flurry/sdk/ek$c;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/flurry/sdk/ek;->j:Lcom/flurry/sdk/ek$c;

    .line 191
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/flurry/sdk/ek;->b:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/flurry/sdk/ek;->i:Lcom/flurry/sdk/ds;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ds;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/flurry/sdk/ek;->f:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ek;->q:Lcom/flurry/sdk/ds;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ds;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 194
    iget-object v1, p0, Lcom/flurry/sdk/ek;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ek;->n:Z

    monitor-exit v1

    return v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/flurry/sdk/ek;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/ek;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcom/flurry/sdk/ek;->p:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/flurry/sdk/ek;->p:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/flurry/sdk/ek;->p:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/flurry/sdk/ek;->o:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lcom/flurry/sdk/ek;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/flurry/sdk/ek;->n:Z

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-direct {p0}, Lcom/flurry/sdk/ek;->q()V

    .line 237
    return-void

    .line 234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 0

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/flurry/sdk/ek;->g()V

    .line 278
    return-void
.end method
