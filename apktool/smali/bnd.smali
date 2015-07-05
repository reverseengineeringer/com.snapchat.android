.class public final Lbnd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lblg;

.field final b:Ljava/net/URI;

.field final c:Lbmo;

.field d:Ljava/net/Proxy;

.field e:Ljava/net/InetSocketAddress;

.field f:Lblq;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblq;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbme;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lbml;

.field private final o:Lbly;

.field private final p:Lbma;


# direct methods
.method public constructor <init>(Lblg;Ljava/net/URI;Lbly;Lbma;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbnd;->g:Ljava/util/List;

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbnd;->i:Ljava/util/List;

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbnd;->k:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnd;->m:Ljava/util/List;

    .line 77
    iput-object p1, p0, Lbnd;->a:Lblg;

    .line 78
    iput-object p2, p0, Lbnd;->b:Ljava/net/URI;

    .line 79
    iput-object p3, p0, Lbnd;->o:Lbly;

    .line 80
    sget-object v0, Lbmi;->b:Lbmi;

    invoke-virtual {v0, p3}, Lbmi;->b(Lbly;)Lbmo;

    move-result-object v0

    iput-object v0, p0, Lbnd;->c:Lbmo;

    .line 81
    sget-object v0, Lbmi;->b:Lbmi;

    invoke-virtual {v0, p3}, Lbmi;->c(Lbly;)Lbml;

    move-result-object v0

    iput-object v0, p0, Lbnd;->n:Lbml;

    .line 82
    iput-object p4, p0, Lbnd;->p:Lbma;

    .line 84
    iget-object v0, p1, Lblg;->a:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbnd;->g:Ljava/util/List;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lbnd;->h:I

    .line 85
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnd;->g:Ljava/util/List;

    iget-object v0, p0, Lbnd;->o:Lbly;

    iget-object v0, v0, Lbly;->j:Ljava/net/ProxySelector;

    invoke-virtual {v0, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbnd;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lbnd;->g:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbnd;->g:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lbme;Ljava/io/IOException;)V
    .locals 6

    .prologue
    .line 141
    iget-object v0, p1, Lbme;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbnd;->a:Lblg;

    iget-object v0, v0, Lblg;->k:Ljava/net/ProxySelector;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lbnd;->a:Lblg;

    iget-object v0, v0, Lblg;->k:Ljava/net/ProxySelector;

    iget-object v1, p0, Lbnd;->b:Ljava/net/URI;

    iget-object v2, p1, Lbme;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lbnd;->c:Lbmo;

    invoke-virtual {v0, p1}, Lbmo;->a(Lbme;)V

    .line 151
    instance-of v0, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljavax/net/ssl/SSLProtocolException;

    if-nez v0, :cond_1

    .line 152
    :goto_0
    iget v0, p0, Lbnd;->l:I

    iget-object v1, p0, Lbnd;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lbnd;->k:Ljava/util/List;

    iget v1, p0, Lbnd;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbnd;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lblq;

    .line 155
    invoke-virtual {p0, v4}, Lbnd;->a(Lblq;)Z

    move-result v5

    .line 156
    new-instance v0, Lbme;

    iget-object v1, p0, Lbnd;->a:Lblg;

    iget-object v2, p0, Lbnd;->d:Ljava/net/Proxy;

    iget-object v3, p0, Lbnd;->e:Ljava/net/InetSocketAddress;

    invoke-direct/range {v0 .. v5}, Lbme;-><init>(Lblg;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lblq;Z)V

    .line 158
    iget-object v1, p0, Lbnd;->c:Lbmo;

    invoke-virtual {v1, v0}, Lbmo;->a(Lbme;)V

    goto :goto_0

    .line 161
    :cond_1
    return-void
.end method

.method final a(Ljava/net/Proxy;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnd;->i:Ljava/util/List;

    .line 204
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_2

    .line 205
    :cond_0
    iget-object v0, p0, Lbnd;->a:Lblg;

    iget-object v1, v0, Lblg;->b:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lbnd;->b:Ljava/net/URI;

    invoke-static {v0}, Lbmp;->a(Ljava/net/URI;)I

    move-result v0

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 218
    :goto_0
    if-lez v1, :cond_1

    const v3, 0xffff

    if-le v1, v3, :cond_5

    .line 219
    :cond_1
    new-instance v2, Ljava/net/SocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No route to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; port is out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 209
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_3
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 214
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_1
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 224
    :cond_5
    iget-object v3, p0, Lbnd;->n:Lbml;

    invoke-interface {v3, v0}, Lbml;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    .line 225
    iget-object v6, p0, Lbnd;->i:Ljava/util/List;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, v5, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    :cond_6
    iput v2, p0, Lbnd;->j:I

    .line 228
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lbnd;->h:I

    iget-object v1, p0, Lbnd;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lblq;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lbnd;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 133
    iget-boolean v1, p1, Lblq;->d:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lbnd;->j:I

    iget-object v1, p0, Lbnd;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnd;->k:Ljava/util/List;

    .line 267
    iget-object v0, p0, Lbnd;->a:Lblg;

    iget-object v3, v0, Lblg;->j:Ljava/util/List;

    .line 268
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    .line 269
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblq;

    .line 270
    iget-object v5, p0, Lbnd;->p:Lbma;

    invoke-virtual {v5}, Lbma;->e()Z

    move-result v5

    iget-boolean v6, v0, Lblq;->d:Z

    if-ne v5, v6, :cond_0

    .line 271
    iget-object v5, p0, Lbnd;->k:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 274
    :cond_1
    iput v2, p0, Lbnd;->l:I

    .line 275
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lbnd;->l:I

    iget-object v1, p0, Lbnd;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lbnd;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
