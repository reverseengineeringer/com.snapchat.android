.class final Lcom/snapchat/android/util/chat/SecureChatSession$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/chat/SecureChatSession;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/util/chat/SecureChatSession;B)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatSession$a;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-static {}, Layq;->a()Layq;

    move-result-object v0

    iget-object v0, v0, Layq;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 390
    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 393
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v2, v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 394
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    .line 395
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    invoke-static {}, Lcom/snapchat/android/util/chat/SecureChatSession;->g()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 397
    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 398
    invoke-interface {v3, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 396
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_2
    invoke-static {v3}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {v2, v0}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;)I

    move-result v0

    sget v1, Lcom/snapchat/android/util/chat/SecureChatSession$b;->CONNECTED$7133d94d:I

    if-eq v0, v1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->b(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->DISCONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->e(Lcom/snapchat/android/util/chat/SecureChatSession;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    iget-object v2, v0, Lakp;->mMessagingGatewayInfo:Lbjl;

    .line 440
    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {v2}, Lbjl;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v7

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 445
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 446
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 448
    invoke-virtual {v2}, Lbjl;->a()Lbjy;

    move-result-object v10

    .line 449
    if-eqz v10, :cond_0

    .line 454
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;J)J

    .line 455
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v2}, Lcom/snapchat/android/util/chat/SecureChatSession;->i(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 456
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v2}, Lcom/snapchat/android/util/chat/SecureChatSession;->j(Lcom/snapchat/android/util/chat/SecureChatSession;)Z

    .line 457
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->CONNECTING:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    invoke-static {v2, v3}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    .line 461
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession$a;->a(Ljava/lang/String;I)V

    .line 463
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    new-instance v1, Layi;

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v2}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    iget-object v3, v3, Lcom/snapchat/android/util/chat/SecureChatSession;->mGson:Laum;

    invoke-direct {v1, v2, v3}, Layi;-><init>(Ljava/io/InputStream;Laum;)V

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Layi;)Layi;

    .line 464
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    new-instance v1, Layj;

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v2}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    iget-object v3, v3, Lcom/snapchat/android/util/chat/SecureChatSession;->mGson:Laum;

    invoke-direct {v1, v2, v3}, Layj;-><init>(Ljava/io/OutputStream;Laum;)V

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Layj;)Layj;

    .line 466
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 467
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    .line 468
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->k(Lcom/snapchat/android/util/chat/SecureChatSession;)Layi;

    move-result-object v5

    .line 469
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->h(Lcom/snapchat/android/util/chat/SecureChatSession;)Layj;

    move-result-object v4

    .line 471
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->l(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v11

    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/chat/SecureChatSession$a$1;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljavax/net/ssl/SSLSocket;Layj;Layi;)V

    const-wide/16 v4, 0x4e20

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v11, v0, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 484
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->l(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$a$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$a$2;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession$a;)V

    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 496
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->e(Lcom/snapchat/android/util/chat/SecureChatSession;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/debug/ScApplicationInfo;->DEFAULT_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "unknown"

    move-object v1, v0

    :goto_1
    sget-object v0, Lbji$a;->CONNECT:Lbji$a;

    invoke-static {v0}, Laty;->b(Lbji$a;)Lbji;

    move-result-object v0

    check-cast v0, Lbij;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbij;->a(Ljava/lang/String;)Lbij;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Lbij;->b(Ljava/lang/String;)Lbij;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbij;->c(Ljava/lang/String;)Lbij;

    move-result-object v3

    invoke-virtual {v3, v1}, Lbij;->d(Ljava/lang/String;)Lbij;

    move-result-object v1

    invoke-virtual {v1, v10}, Lbij;->a(Lbjy;)Lbij;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CHAT-LOG: SecureChatSession writeConnectMessage: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->h(Lcom/snapchat/android/util/chat/SecureChatSession;)Layj;

    move-result-object v1

    invoke-virtual {v1, v0}, Layj;->a(Lbji;)V

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->k(Lcom/snapchat/android/util/chat/SecureChatSession;)Layi;

    move-result-object v0

    invoke-virtual {v0}, Layi;->a()Lbji;

    move-result-object v0

    .line 498
    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 499
    invoke-virtual {v0}, Lbji;->j()Lbji$a;

    move-result-object v1

    sget-object v2, Lbji$a;->CONNECT_RESPONSE:Lbji$a;

    if-ne v1, v2, :cond_8

    .line 500
    check-cast v0, Lbik;

    .line 501
    invoke-virtual {v0}, Lbik;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 502
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 503
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->n(Lcom/snapchat/android/util/chat/SecureChatSession;)Layl;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->k(Lcom/snapchat/android/util/chat/SecureChatSession;)Layi;

    move-result-object v1

    iget-object v0, v0, Layl;->mInputStreamQueue:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT-LOG: SecureChatSession DISCONNECT due to exception when attempting to connect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 536
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->f(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    invoke-static {v7, v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(ZJ)V

    goto/16 :goto_0

    .line 504
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->o(Lcom/snapchat/android/util/chat/SecureChatSession;)Layn;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->h(Lcom/snapchat/android/util/chat/SecureChatSession;)Layj;

    move-result-object v1

    iget-object v0, v0, Layn;->mOutputStreamQueue:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/SynchronousQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 538
    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v7, v2, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(ZJ)V

    throw v0

    .line 505
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->p(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 506
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->CONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    .line 507
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->q(Lcom/snapchat/android/util/chat/SecureChatSession;)I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(I)V

    .line 508
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->r(Lcom/snapchat/android/util/chat/SecureChatSession;)I

    .line 509
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->s(Lcom/snapchat/android/util/chat/SecureChatSession;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v6

    .line 538
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c(ZJ)V

    goto/16 :goto_0

    .line 512
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 514
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->f(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    move v0, v7

    goto :goto_2

    .line 517
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT-LOG: SecureChatSession DISCONNECT due to unsuccessful ConnectResponse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 520
    invoke-virtual {v0}, Lbik;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wrong_server"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 521
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->t(Lcom/snapchat/android/util/chat/SecureChatSession;)I

    .line 522
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-virtual {v0}, Lbik;->c()Lbjw;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession;Lbjw;)V

    :cond_6
    move v0, v7

    .line 525
    goto :goto_2

    .line 527
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 529
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession$a;->this$0:Lcom/snapchat/android/util/chat/SecureChatSession;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->f(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    move v0, v7

    goto :goto_2

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method
