.class final Lbmz$1;
.super Lbnj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lbnj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbmz;)Lbnk;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p1, Lbmz;->l:Lbnk;

    return-object v0
.end method

.method public final a(Lbmp;Lbnx;)Lboh;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p1, Lbmp;->f:Lbox;

    if-eqz v0, :cond_0

    new-instance v0, Lbof;

    iget-object v1, p1, Lbmp;->f:Lbox;

    invoke-direct {v0, p2, v1}, Lbof;-><init>(Lbnx;Lbox;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbnz;

    iget-object v1, p1, Lbmp;->e:Lbnv;

    invoke-direct {v0, p2, v1}, Lbnz;-><init>(Lbnx;Lbnv;)V

    goto :goto_0
.end method

.method public final a(Lbmp;Lbna;)V
    .locals 2

    .prologue
    .line 79
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p1, Lbmp;->g:Lbna;

    .line 80
    return-void
.end method

.method public final a(Lbmq;Lbmp;)V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p2}, Lbmp;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lbmp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lbmp;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lbmp;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbnq;->a(Ljava/net/Socket;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    invoke-static {}, Lbno;->a()Lbno;

    move-result-object v0

    iget-object v1, p2, Lbmp;->c:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lbno;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2}, Lbmq;->a(Lbmp;)V

    iget v0, p2, Lbmp;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lbmp;->j:I

    iget-object v0, p2, Lbmp;->f:Lbox;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Lbno;->a()Lbno;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to untagSocket(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbno;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lbmp;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbnq;->a(Ljava/net/Socket;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p2, Lbmp;->h:J

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Lbmv$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Lbmv$a;->a(Ljava/lang/String;)Lbmv$a;

    .line 92
    return-void
.end method

.method public final a(Lbmz;Lbmp;Lbnx;Lbnb;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/high16 v10, 0x10000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-virtual {p2, p3}, Lbmp;->a(Ljava/lang/Object;)V

    iget-boolean v0, p2, Lbmp;->d:Z

    if-nez v0, :cond_16

    iget-object v0, p2, Lbmp;->b:Lbnf;

    iget-object v1, v0, Lbnf;->a:Lbmh;

    iget-object v1, v1, Lbmh;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lbnf;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    iget v1, p1, Lbmz;->w:I

    iget v5, p1, Lbmz;->x:I

    iget v6, p1, Lbmz;->y:I

    iget-boolean v7, p2, Lbmp;->d:Z

    if-eqz v7, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lbnb;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lbnb;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lbnq;->a(Ljava/net/URL;)I

    move-result v5

    const-string v0, "https"

    invoke-static {v0}, Lbnq;->a(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_4

    move-object v0, v1

    :goto_2
    new-instance v6, Lbnb$a;

    invoke-direct {v6}, Lbnb$a;-><init>()V

    new-instance v7, Ljava/net/URL;

    const-string v8, "https"

    const-string v9, "/"

    invoke-direct {v7, v8, v1, v5, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lbnb$a;->a(Ljava/net/URL;)Lbnb$a;

    move-result-object v1

    const-string v5, "Host"

    invoke-virtual {v1, v5, v0}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v1, v5}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p4, v1}, Lbnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "User-Agent"

    invoke-virtual {v0, v5, v1}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    :cond_2
    const-string v1, "Proxy-Authorization"

    invoke-virtual {p4, v1}, Lbnb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "Proxy-Authorization"

    invoke-virtual {v0, v5, v1}, Lbnb$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbnb$a;

    :cond_3
    invoke-virtual {v0}, Lbnb$a;->a()Lbnb;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v7, p2, Lbmp;->b:Lbnf;

    iget-object v7, v7, Lbnf;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v7, v8, :cond_6

    iget-object v7, p2, Lbmp;->b:Lbnf;

    iget-object v7, v7, Lbnf;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_d

    :cond_6
    iget-object v7, p2, Lbmp;->b:Lbnf;

    iget-object v7, v7, Lbnf;->a:Lbmh;

    iget-object v7, v7, Lbmh;->d:Ljavax/net/SocketFactory;

    invoke-virtual {v7}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v7

    iput-object v7, p2, Lbmp;->c:Ljava/net/Socket;

    :goto_3
    iget-object v7, p2, Lbmp;->c:Ljava/net/Socket;

    invoke-virtual {v7, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {}, Lbno;->a()Lbno;

    move-result-object v7

    iget-object v8, p2, Lbmp;->c:Ljava/net/Socket;

    iget-object v9, p2, Lbmp;->b:Lbnf;

    iget-object v9, v9, Lbnf;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v8, v9, v1}, Lbno;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    iget-object v1, p2, Lbmp;->b:Lbnf;

    iget-object v1, v1, Lbnf;->a:Lbmh;

    iget-object v1, v1, Lbmh;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_13

    invoke-static {}, Lbno;->a()Lbno;

    move-result-object v7

    if-eqz v0, :cond_7

    invoke-virtual {p2, v0, v5, v6}, Lbmp;->a(Lbnb;II)V

    :cond_7
    iget-object v0, p2, Lbmp;->b:Lbnf;

    iget-object v0, v0, Lbnf;->a:Lbmh;

    iget-object v0, v0, Lbmh;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p2, Lbmp;->c:Ljava/net/Socket;

    iget-object v5, p2, Lbmp;->b:Lbnf;

    iget-object v5, v5, Lbnf;->a:Lbmh;

    iget-object v5, v5, Lbmh;->b:Ljava/lang/String;

    iget-object v6, p2, Lbmp;->b:Lbnf;

    iget-object v6, v6, Lbnf;->a:Lbmh;

    iget v6, v6, Lbmh;->c:I

    invoke-virtual {v0, v1, v5, v6, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p2, Lbmp;->c:Ljava/net/Socket;

    iget-object v0, p2, Lbmp;->c:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p2, Lbmp;->b:Lbnf;

    iget-object v5, v1, Lbnf;->d:Lbmr;

    iget-object v6, p2, Lbmp;->b:Lbnf;

    iget-object v1, v5, Lbmr;->e:[Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    iget-object v8, v5, Lbmr;->e:[Ljava/lang/String;

    invoke-static {v2, v8, v1}, Lbnq;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v2, v1

    :cond_8
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    const-class v8, Ljava/lang/String;

    iget-object v9, v5, Lbmr;->f:[Ljava/lang/String;

    invoke-static {v8, v9, v1}, Lbnq;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v8, Lbmr$a;

    invoke-direct {v8, v5}, Lbmr$a;-><init>(Lbmr;)V

    invoke-virtual {v8, v2}, Lbmr$a;->a([Ljava/lang/String;)Lbmr$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbmr$a;->b([Ljava/lang/String;)Lbmr$a;

    move-result-object v1

    invoke-virtual {v1}, Lbmr$a;->b()Lbmr;

    move-result-object v5

    iget-object v1, v5, Lbmr;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    iget-object v1, v5, Lbmr;->e:[Ljava/lang/String;

    iget-boolean v2, v6, Lbnf;->e:Z

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v8, "TLS_FALLBACK_SCSV"

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_e

    :goto_4
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    array-length v8, v1

    invoke-static {v1, v4, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    const-string v8, "TLS_FALLBACK_SCSV"

    aput-object v8, v2, v1

    move-object v1, v2

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lbno;->a()Lbno;

    move-result-object v1

    iget-boolean v2, v5, Lbmr;->g:Z

    if-eqz v2, :cond_b

    iget-object v2, v6, Lbnf;->a:Lbmh;

    iget-object v2, v2, Lbmh;->b:Ljava/lang/String;

    iget-object v5, v6, Lbnf;->a:Lbmh;

    iget-object v5, v5, Lbmh;->i:Ljava/util/List;

    invoke-virtual {v1, v0, v2, v5}, Lbno;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_b
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iget-object v1, p2, Lbmp;->b:Lbnf;

    iget-object v1, v1, Lbnf;->d:Lbmr;

    iget-boolean v1, v1, Lbmr;->g:Z

    if-eqz v1, :cond_c

    invoke-virtual {v7, v0}, Lbno;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lbna;->a(Ljava/lang/String;)Lbna;

    move-result-object v1

    iput-object v1, p2, Lbmp;->g:Lbna;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    invoke-virtual {v7, v0}, Lbno;->a(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {v1}, Lbmu;->a(Ljavax/net/ssl/SSLSession;)Lbmu;

    move-result-object v1

    iput-object v1, p2, Lbmp;->i:Lbmu;

    iget-object v1, p2, Lbmp;->b:Lbnf;

    iget-object v1, v1, Lbnf;->a:Lbmh;

    iget-object v1, v1, Lbmh;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p2, Lbmp;->b:Lbnf;

    iget-object v2, v2, Lbnf;->a:Lbmh;

    iget-object v2, v2, Lbmh;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Ljava/security/cert/X509Certificate;

    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hostname "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lbmp;->b:Lbnf;

    iget-object v3, v3, Lbnf;->a:Lbmh;

    iget-object v3, v3, Lbmh;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not verified:\n    certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lbmm;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    DN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    subjectAltNames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lbpb;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v7, Ljava/net/Socket;

    iget-object v8, p2, Lbmp;->b:Lbnf;

    iget-object v8, v8, Lbnf;->b:Ljava/net/Proxy;

    invoke-direct {v7, v8}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v7, p2, Lbmp;->c:Ljava/net/Socket;

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    invoke-virtual {v7, v0}, Lbno;->a(Ljavax/net/ssl/SSLSocket;)V

    throw v1

    :cond_f
    iget-object v1, p2, Lbmp;->b:Lbnf;

    iget-object v1, v1, Lbnf;->a:Lbmh;

    iget-object v1, v1, Lbmh;->g:Lbmm;

    iget-object v2, p2, Lbmp;->b:Lbnf;

    iget-object v2, v2, Lbnf;->a:Lbmh;

    iget-object v2, v2, Lbmh;->b:Ljava/lang/String;

    iget-object v5, p2, Lbmp;->i:Lbmu;

    iget-object v5, v5, Lbmu;->b:Ljava/util/List;

    invoke-virtual {v1, v2, v5}, Lbmm;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p2, Lbmp;->g:Lbna;

    sget-object v2, Lbna;->c:Lbna;

    if-eq v1, v2, :cond_10

    iget-object v1, p2, Lbmp;->g:Lbna;

    sget-object v2, Lbna;->d:Lbna;

    if-ne v1, v2, :cond_12

    :cond_10
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    new-instance v0, Lbox$a;

    iget-object v1, p2, Lbmp;->b:Lbnf;

    iget-object v1, v1, Lbnf;->a:Lbmh;

    iget-object v1, v1, Lbmh;->b:Ljava/lang/String;

    iget-object v2, p2, Lbmp;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lbox$a;-><init>(Ljava/lang/String;Ljava/net/Socket;)V

    iget-object v1, p2, Lbmp;->g:Lbna;

    iput-object v1, v0, Lbox$a;->d:Lbna;

    new-instance v1, Lbox;

    invoke-direct {v1, v0, v4}, Lbox;-><init>(Lbox$a;B)V

    iput-object v1, p2, Lbmp;->f:Lbox;

    iget-object v0, p2, Lbmp;->f:Lbox;

    iget-object v1, v0, Lbox;->i:Lbol;

    invoke-interface {v1}, Lbol;->a()V

    iget-object v1, v0, Lbox;->i:Lbol;

    iget-object v2, v0, Lbox;->e:Lbov;

    invoke-interface {v1, v2}, Lbol;->b(Lbov;)V

    iget-object v1, v0, Lbox;->e:Lbov;

    invoke-virtual {v1}, Lbov;->b()I

    move-result v1

    if-eq v1, v10, :cond_11

    iget-object v0, v0, Lbox;->i:Lbol;

    sub-int/2addr v1, v10

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lbol;->a(IJ)V

    :cond_11
    :goto_5
    iput-boolean v3, p2, Lbmp;->d:Z

    invoke-virtual {p2}, Lbmp;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, p1, Lbmz;->r:Lbmq;

    invoke-virtual {p2}, Lbmp;->e()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    new-instance v0, Lbnv;

    iget-object v1, p2, Lbmp;->a:Lbmq;

    iget-object v2, p2, Lbmp;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p2, v2}, Lbnv;-><init>(Lbmq;Lbmp;Ljava/net/Socket;)V

    iput-object v0, p2, Lbmp;->e:Lbnv;

    goto :goto_5

    :cond_13
    new-instance v0, Lbnv;

    iget-object v1, p2, Lbmp;->a:Lbmq;

    iget-object v2, p2, Lbmp;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p2, v2}, Lbnv;-><init>(Lbmq;Lbmp;Ljava/net/Socket;)V

    iput-object v0, p2, Lbmp;->e:Lbnv;

    goto :goto_5

    :cond_14
    invoke-virtual {p2}, Lbmp;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p2}, Lbmq;->a(Lbmp;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_15
    iget-object v0, p1, Lbmz;->c:Lbnp;

    iget-object v1, p2, Lbmp;->b:Lbnf;

    invoke-virtual {v0, v1}, Lbnp;->b(Lbnf;)V

    :cond_16
    iget v0, p1, Lbmz;->x:I

    iget v1, p1, Lbmz;->y:I

    iget-boolean v2, p2, Lbmp;->d:Z

    if-nez v2, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTimeouts - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_17
    iget-object v2, p2, Lbmp;->e:Lbnv;

    if-eqz v2, :cond_18

    iget-object v2, p2, Lbmp;->c:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p2, Lbmp;->e:Lbnv;

    invoke-virtual {v2, v0, v1}, Lbnv;->a(II)V

    .line 121
    :cond_18
    return-void
.end method

.method public final a(Lbmp;)Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p1}, Lbmp;->a()Z

    move-result v0

    return v0
.end method

.method public final b(Lbmp;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p1, Lbmp;->j:I

    return v0
.end method

.method public final b(Lbmz;)Lbnp;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p1, Lbmz;->c:Lbnp;

    return-object v0
.end method

.method public final b(Lbmp;Lbnx;)V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Lbmp;->a(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public final c(Lbmz;)Lbnm;
    .locals 1

    .prologue
    .line 111
    invoke-static {p1}, Lbmz;->a(Lbmz;)Lbnm;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lbmp;)Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p1, Lbmp;->e:Lbnv;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbmp;->e:Lbnv;

    invoke-virtual {v0}, Lbnv;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
