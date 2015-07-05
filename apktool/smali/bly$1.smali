.class final Lbly$1;
.super Lbmi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbly;
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
    invoke-direct {p0}, Lbmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbly;)Lbmj;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p1, Lbly;->l:Lbmj;

    return-object v0
.end method

.method public final a(Lblo;Lbmw;)Lbng;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p1, Lblo;->f:Lbnw;

    if-eqz v0, :cond_0

    new-instance v0, Lbne;

    iget-object v1, p1, Lblo;->f:Lbnw;

    invoke-direct {v0, p2, v1}, Lbne;-><init>(Lbmw;Lbnw;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbmy;

    iget-object v1, p1, Lblo;->e:Lbmu;

    invoke-direct {v0, p2, v1}, Lbmy;-><init>(Lbmw;Lbmu;)V

    goto :goto_0
.end method

.method public final a(Lblo;Lblz;)V
    .locals 2

    .prologue
    .line 79
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p1, Lblo;->g:Lblz;

    .line 80
    return-void
.end method

.method public final a(Lblp;Lblo;)V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p2}, Lblo;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lblo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lblo;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lblo;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbmp;->a(Ljava/net/Socket;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    iget-object v1, p2, Lblo;->c:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lbmn;->b(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2}, Lblp;->a(Lblo;)V

    iget v0, p2, Lblo;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lblo;->j:I

    iget-object v0, p2, Lblo;->f:Lbnw;

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

    invoke-static {}, Lbmn;->a()Lbmn;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to untagSocket(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbmn;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lblo;->c:Ljava/net/Socket;

    invoke-static {v0}, Lbmp;->a(Ljava/net/Socket;)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p2, Lblo;->h:J

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Lblu$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Lblu$a;->a(Ljava/lang/String;)Lblu$a;

    .line 92
    return-void
.end method

.method public final a(Lbly;Lblo;Lbmw;Lbma;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/high16 v10, 0x10000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 120
    invoke-virtual {p2, p3}, Lblo;->a(Ljava/lang/Object;)V

    iget-boolean v0, p2, Lblo;->d:Z

    if-nez v0, :cond_16

    iget-object v0, p2, Lblo;->b:Lbme;

    iget-object v1, v0, Lbme;->a:Lblg;

    iget-object v1, v1, Lblg;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lbme;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    iget v1, p1, Lbly;->w:I

    iget v5, p1, Lbly;->x:I

    iget v6, p1, Lbly;->y:I

    iget-boolean v7, p2, Lblo;->d:Z

    if-eqz v7, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Lbma;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lbma;->a()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lbmp;->a(Ljava/net/URL;)I

    move-result v5

    const-string v0, "https"

    invoke-static {v0}, Lbmp;->a(Ljava/lang/String;)I

    move-result v0

    if-ne v5, v0, :cond_4

    move-object v0, v1

    :goto_2
    new-instance v6, Lbma$a;

    invoke-direct {v6}, Lbma$a;-><init>()V

    new-instance v7, Ljava/net/URL;

    const-string v8, "https"

    const-string v9, "/"

    invoke-direct {v7, v8, v1, v5, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lbma$a;->a(Ljava/net/URL;)Lbma$a;

    move-result-object v1

    const-string v5, "Host"

    invoke-virtual {v1, v5, v0}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v1, v5}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p4, v1}, Lbma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "User-Agent"

    invoke-virtual {v0, v5, v1}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    :cond_2
    const-string v1, "Proxy-Authorization"

    invoke-virtual {p4, v1}, Lbma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "Proxy-Authorization"

    invoke-virtual {v0, v5, v1}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    :cond_3
    invoke-virtual {v0}, Lbma$a;->a()Lbma;

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
    iget-object v7, p2, Lblo;->b:Lbme;

    iget-object v7, v7, Lbme;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v7, v8, :cond_6

    iget-object v7, p2, Lblo;->b:Lbme;

    iget-object v7, v7, Lbme;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_d

    :cond_6
    iget-object v7, p2, Lblo;->b:Lbme;

    iget-object v7, v7, Lbme;->a:Lblg;

    iget-object v7, v7, Lblg;->d:Ljavax/net/SocketFactory;

    invoke-virtual {v7}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v7

    iput-object v7, p2, Lblo;->c:Ljava/net/Socket;

    :goto_3
    iget-object v7, p2, Lblo;->c:Ljava/net/Socket;

    invoke-virtual {v7, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v7

    iget-object v8, p2, Lblo;->c:Ljava/net/Socket;

    iget-object v9, p2, Lblo;->b:Lbme;

    iget-object v9, v9, Lbme;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v8, v9, v1}, Lbmn;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    iget-object v1, p2, Lblo;->b:Lbme;

    iget-object v1, v1, Lbme;->a:Lblg;

    iget-object v1, v1, Lblg;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_13

    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v7

    if-eqz v0, :cond_7

    invoke-virtual {p2, v0, v5, v6}, Lblo;->a(Lbma;II)V

    :cond_7
    iget-object v0, p2, Lblo;->b:Lbme;

    iget-object v0, v0, Lbme;->a:Lblg;

    iget-object v0, v0, Lblg;->e:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p2, Lblo;->c:Ljava/net/Socket;

    iget-object v5, p2, Lblo;->b:Lbme;

    iget-object v5, v5, Lbme;->a:Lblg;

    iget-object v5, v5, Lblg;->b:Ljava/lang/String;

    iget-object v6, p2, Lblo;->b:Lbme;

    iget-object v6, v6, Lbme;->a:Lblg;

    iget v6, v6, Lblg;->c:I

    invoke-virtual {v0, v1, v5, v6, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p2, Lblo;->c:Ljava/net/Socket;

    iget-object v0, p2, Lblo;->c:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v1, p2, Lblo;->b:Lbme;

    iget-object v5, v1, Lbme;->d:Lblq;

    iget-object v6, p2, Lblo;->b:Lbme;

    iget-object v1, v5, Lblq;->e:[Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    iget-object v8, v5, Lblq;->e:[Ljava/lang/String;

    invoke-static {v2, v8, v1}, Lbmp;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v2, v1

    :cond_8
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    const-class v8, Ljava/lang/String;

    iget-object v9, v5, Lblq;->f:[Ljava/lang/String;

    invoke-static {v8, v9, v1}, Lbmp;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    new-instance v8, Lblq$a;

    invoke-direct {v8, v5}, Lblq$a;-><init>(Lblq;)V

    invoke-virtual {v8, v2}, Lblq$a;->a([Ljava/lang/String;)Lblq$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lblq$a;->b([Ljava/lang/String;)Lblq$a;

    move-result-object v1

    invoke-virtual {v1}, Lblq$a;->b()Lblq;

    move-result-object v5

    iget-object v1, v5, Lblq;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    iget-object v1, v5, Lblq;->e:[Ljava/lang/String;

    iget-boolean v2, v6, Lbme;->e:Z

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
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v1

    iget-boolean v2, v5, Lblq;->g:Z

    if-eqz v2, :cond_b

    iget-object v2, v6, Lbme;->a:Lblg;

    iget-object v2, v2, Lblg;->b:Ljava/lang/String;

    iget-object v5, v6, Lbme;->a:Lblg;

    iget-object v5, v5, Lblg;->i:Ljava/util/List;

    invoke-virtual {v1, v0, v2, v5}, Lbmn;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_b
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iget-object v1, p2, Lblo;->b:Lbme;

    iget-object v1, v1, Lbme;->d:Lblq;

    iget-boolean v1, v1, Lblq;->g:Z

    if-eqz v1, :cond_c

    invoke-virtual {v7, v0}, Lbmn;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lblz;->a(Ljava/lang/String;)Lblz;

    move-result-object v1

    iput-object v1, p2, Lblo;->g:Lblz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    invoke-virtual {v7, v0}, Lbmn;->a(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {v1}, Lblt;->a(Ljavax/net/ssl/SSLSession;)Lblt;

    move-result-object v1

    iput-object v1, p2, Lblo;->i:Lblt;

    iget-object v1, p2, Lblo;->b:Lbme;

    iget-object v1, v1, Lbme;->a:Lblg;

    iget-object v1, v1, Lblg;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p2, Lblo;->b:Lbme;

    iget-object v2, v2, Lbme;->a:Lblg;

    iget-object v2, v2, Lblg;->b:Ljava/lang/String;

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

    iget-object v3, p2, Lblo;->b:Lbme;

    iget-object v3, v3, Lbme;->a:Lblg;

    iget-object v3, v3, Lblg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not verified:\n    certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lbll;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

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

    invoke-static {v0}, Lboa;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v7, Ljava/net/Socket;

    iget-object v8, p2, Lblo;->b:Lbme;

    iget-object v8, v8, Lbme;->b:Ljava/net/Proxy;

    invoke-direct {v7, v8}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v7, p2, Lblo;->c:Ljava/net/Socket;

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    invoke-virtual {v7, v0}, Lbmn;->a(Ljavax/net/ssl/SSLSocket;)V

    throw v1

    :cond_f
    iget-object v1, p2, Lblo;->b:Lbme;

    iget-object v1, v1, Lbme;->a:Lblg;

    iget-object v1, v1, Lblg;->g:Lbll;

    iget-object v2, p2, Lblo;->b:Lbme;

    iget-object v2, v2, Lbme;->a:Lblg;

    iget-object v2, v2, Lblg;->b:Ljava/lang/String;

    iget-object v5, p2, Lblo;->i:Lblt;

    iget-object v5, v5, Lblt;->b:Ljava/util/List;

    invoke-virtual {v1, v2, v5}, Lbll;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p2, Lblo;->g:Lblz;

    sget-object v2, Lblz;->c:Lblz;

    if-eq v1, v2, :cond_10

    iget-object v1, p2, Lblo;->g:Lblz;

    sget-object v2, Lblz;->d:Lblz;

    if-ne v1, v2, :cond_12

    :cond_10
    invoke-virtual {v0, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    new-instance v0, Lbnw$a;

    iget-object v1, p2, Lblo;->b:Lbme;

    iget-object v1, v1, Lbme;->a:Lblg;

    iget-object v1, v1, Lblg;->b:Ljava/lang/String;

    iget-object v2, p2, Lblo;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, v2}, Lbnw$a;-><init>(Ljava/lang/String;Ljava/net/Socket;)V

    iget-object v1, p2, Lblo;->g:Lblz;

    iput-object v1, v0, Lbnw$a;->d:Lblz;

    new-instance v1, Lbnw;

    invoke-direct {v1, v0, v4}, Lbnw;-><init>(Lbnw$a;B)V

    iput-object v1, p2, Lblo;->f:Lbnw;

    iget-object v0, p2, Lblo;->f:Lbnw;

    iget-object v1, v0, Lbnw;->i:Lbnk;

    invoke-interface {v1}, Lbnk;->a()V

    iget-object v1, v0, Lbnw;->i:Lbnk;

    iget-object v2, v0, Lbnw;->e:Lbnu;

    invoke-interface {v1, v2}, Lbnk;->b(Lbnu;)V

    iget-object v1, v0, Lbnw;->e:Lbnu;

    invoke-virtual {v1}, Lbnu;->b()I

    move-result v1

    if-eq v1, v10, :cond_11

    iget-object v0, v0, Lbnw;->i:Lbnk;

    sub-int/2addr v1, v10

    int-to-long v6, v1

    invoke-interface {v0, v4, v6, v7}, Lbnk;->a(IJ)V

    :cond_11
    :goto_5
    iput-boolean v3, p2, Lblo;->d:Z

    invoke-virtual {p2}, Lblo;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v1, p1, Lbly;->r:Lblp;

    invoke-virtual {p2}, Lblo;->e()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    new-instance v0, Lbmu;

    iget-object v1, p2, Lblo;->a:Lblp;

    iget-object v2, p2, Lblo;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p2, v2}, Lbmu;-><init>(Lblp;Lblo;Ljava/net/Socket;)V

    iput-object v0, p2, Lblo;->e:Lbmu;

    goto :goto_5

    :cond_13
    new-instance v0, Lbmu;

    iget-object v1, p2, Lblo;->a:Lblp;

    iget-object v2, p2, Lblo;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p2, v2}, Lbmu;-><init>(Lblp;Lblo;Ljava/net/Socket;)V

    iput-object v0, p2, Lblo;->e:Lbmu;

    goto :goto_5

    :cond_14
    invoke-virtual {p2}, Lblo;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p2}, Lblp;->a(Lblo;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_15
    iget-object v0, p1, Lbly;->c:Lbmo;

    iget-object v1, p2, Lblo;->b:Lbme;

    invoke-virtual {v0, v1}, Lbmo;->b(Lbme;)V

    :cond_16
    iget v0, p1, Lbly;->x:I

    iget v1, p1, Lbly;->y:I

    iget-boolean v2, p2, Lblo;->d:Z

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
    iget-object v2, p2, Lblo;->e:Lbmu;

    if-eqz v2, :cond_18

    iget-object v2, p2, Lblo;->c:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p2, Lblo;->e:Lbmu;

    invoke-virtual {v2, v0, v1}, Lbmu;->a(II)V

    .line 121
    :cond_18
    return-void
.end method

.method public final a(Lblo;)Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p1}, Lblo;->a()Z

    move-result v0

    return v0
.end method

.method public final b(Lblo;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p1, Lblo;->j:I

    return v0
.end method

.method public final b(Lbly;)Lbmo;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p1, Lbly;->c:Lbmo;

    return-object v0
.end method

.method public final b(Lblo;Lbmw;)V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p1, p2}, Lblo;->a(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public final c(Lbly;)Lbml;
    .locals 1

    .prologue
    .line 111
    invoke-static {p1}, Lbly;->a(Lbly;)Lbml;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lblo;)Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p1, Lblo;->e:Lbmu;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lblo;->e:Lbmu;

    invoke-virtual {v0}, Lbmu;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
