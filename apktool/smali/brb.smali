.class public final Lbrb;
.super Ljavax/net/ssl/SSLSocket;

# interfaces
.implements Lbrf;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocket;

.field private b:Lbum;

.field private c:Lbtx;

.field private final d:Ljava/util/Queue;

.field private e:Lbve;

.field private f:Lbvf;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Lbum;Lbtx;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbrb;->d:Ljava/util/Queue;

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iput-object p1, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    .line 77
    iput-object p2, p0, Lbrb;->b:Lbum;

    .line 78
    iput-object p3, p0, Lbrb;->c:Lbtx;

    .line 79
    return-void
.end method

.method private a(Z)Lbtc;
    .locals 2

    .prologue
    .line 484
    new-instance v0, Lbtc;

    invoke-direct {v0}, Lbtc;-><init>()V

    .line 485
    iget-object v1, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 486
    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v0, v1}, Lbtc;->a(Ljava/net/InetAddress;)V

    .line 490
    :cond_0
    if-eqz p1, :cond_1

    .line 491
    invoke-virtual {p0}, Lbrb;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lbtc;->a(I)V

    .line 494
    :cond_1
    sget-object v1, Lbus$a;->b:Lbus$a;

    invoke-virtual {v0, v1}, Lbtc;->a(Lbus$a;)V

    .line 496
    iget-object v1, p0, Lbrb;->c:Lbtx;

    if-eqz v1, :cond_2

    .line 497
    iget-object v1, p0, Lbrb;->c:Lbtx;

    invoke-virtual {v1}, Lbtx;->a()Lbsb;

    move-result-object v1

    iput-object v1, v0, Lbtc;->j:Lbsb;

    .line 499
    :cond_2
    invoke-static {}, Lbsd;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    invoke-static {}, Lbsd;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbtc;->a(Landroid/location/Location;)V

    .line 503
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a()Lbtc;
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbrb;->a(Z)Lbtc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbtc;)V
    .locals 2

    .prologue
    .line 508
    if-eqz p1, :cond_0

    .line 509
    iget-object v1, p0, Lbrb;->d:Ljava/util/Queue;

    monitor-enter v1

    .line 510
    :try_start_0
    iget-object v0, p0, Lbrb;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 511
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :cond_0
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 84
    return-void
.end method

.method public final b()Lbtc;
    .locals 2

    .prologue
    .line 517
    iget-object v1, p0, Lbrb;->d:Ljava/util/Queue;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v0, p0, Lbrb;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtc;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 196
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 203
    :try_start_0
    iget-object v0, p0, Lbrb;->f:Lbvf;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lbrb;->f:Lbvf;

    invoke-virtual {v0}, Lbvf;->d()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    throw v0

    .line 208
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    .line 224
    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 219
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public final getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lbrb;->f:Lbvf;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbrb;->f:Lbvf;

    invoke-virtual {v1, v0}, Lbvf;->a(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbrb;->f:Lbvf;

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    new-instance v1, Lbvf;

    iget-object v2, p0, Lbrb;->b:Lbum;

    invoke-direct {v1, p0, v0, v2}, Lbvf;-><init>(Lbrf;Ljava/io/InputStream;Lbum;)V

    iput-object v1, p0, Lbrb;->f:Lbvf;

    iget-object v0, p0, Lbrb;->f:Lbvf;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    throw v0

    .line 244
    :catch_1
    move-exception v1

    invoke-static {v1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getKeepAlive()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPort()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public final getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final getOOBInline()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lbrb;->e:Lbve;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbrb;->e:Lbve;

    invoke-virtual {v1, v0}, Lbve;->a(Ljava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbrb;->e:Lbve;

    .line 301
    :cond_0
    :goto_0
    return-object v0

    .line 294
    :cond_1
    new-instance v1, Lbve;

    invoke-direct {v1, p0, v0}, Lbve;-><init>(Lbrf;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lbrb;->e:Lbve;

    iget-object v0, p0, Lbrb;->e:Lbve;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    throw v0

    .line 297
    :catch_1
    move-exception v1

    invoke-static {v1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getPort()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public final getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public final getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getReuseAddress()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public final getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final getSoLinger()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public final getSoTimeout()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTcpNoDelay()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public final getTrafficClass()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public final getUseClientMode()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final getWantClientAuth()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isBound()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final isInputShutdown()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public final isOutputShutdown()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public final removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 134
    return-void
.end method

.method public final sendUrgentData(I)V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->sendUrgentData(I)V

    .line 397
    return-void
.end method

.method public final setEnableSessionCreation(Z)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 139
    return-void
.end method

.method public final setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public final setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final setKeepAlive(Z)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    .line 402
    return-void
.end method

.method public final setNeedClientAuth(Z)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 154
    return-void
.end method

.method public final setOOBInline(Z)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setOOBInline(Z)V

    .line 407
    return-void
.end method

.method public final setPerformancePreferences(III)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    .line 412
    return-void
.end method

.method public final setReceiveBufferSize(I)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V

    .line 417
    return-void
.end method

.method public final setReuseAddress(Z)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    .line 422
    return-void
.end method

.method public final setSendBufferSize(I)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V

    .line 427
    return-void
.end method

.method public final setSoLinger(ZI)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    .line 432
    return-void
.end method

.method public final setSoTimeout(I)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 437
    return-void
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    .line 442
    return-void
.end method

.method public final setTrafficClass(I)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    .line 447
    return-void
.end method

.method public final setUseClientMode(Z)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 159
    return-void
.end method

.method public final setWantClientAuth(Z)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 164
    return-void
.end method

.method public final shutdownInput()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->shutdownInput()V

    .line 452
    return-void
.end method

.method public final shutdownOutput()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->shutdownOutput()V

    .line 457
    return-void
.end method

.method public final startHandshake()V
    .locals 4

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lbrb;->a(Z)Lbtc;

    move-result-object v1

    invoke-virtual {v1}, Lbtc;->f()V

    invoke-static {v0}, Lbtb;->a(Ljava/lang/Throwable;)Lbtb;

    move-result-object v2

    iput-object v2, v1, Lbtc;->g:Lbtb;

    iget-object v2, p0, Lbrb;->b:Lbum;

    sget-object v3, Lbtc$a;->j:Lbtc$a;

    invoke-virtual {v2, v1, v3}, Lbum;->a(Lbtc;Lbtc$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 172
    :goto_0
    throw v0

    .line 171
    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lbrb;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
