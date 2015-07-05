.class public final Lbqb;
.super Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field a:Ljavax/net/ssl/SSLSocketFactory;

.field private b:Lbtl;

.field private c:Lbsw;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lbtl;Lbsw;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 28
    iput-object p1, p0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 30
    iput-object p2, p0, Lbqb;->b:Lbtl;

    .line 31
    iput-object p3, p0, Lbqb;->c:Lbsw;

    .line 32
    return-void
.end method

.method private a(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 5

    .prologue
    .line 54
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    new-instance v2, Lbqa;

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v1, v0

    iget-object v3, p0, Lbqb;->b:Lbtl;

    iget-object v4, p0, Lbqb;->c:Lbsw;

    invoke-direct {v2, v1, v3, v4}, Lbqa;-><init>(Ljavax/net/ssl/SSLSocket;Lbtl;Lbsw;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object p1, v2

    .line 61
    :cond_0
    :goto_0
    return-object p1

    .line 55
    :catch_0
    move-exception v1

    throw v1

    .line 57
    :catch_1
    move-exception v1

    invoke-static {v1}, Lbtd;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lbqb;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lbqb;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lbqb;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lbqb;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lbqb;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lbqb;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbqb;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
