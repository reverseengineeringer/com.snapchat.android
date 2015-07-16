.class public Lbmz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbna;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbmr;",
            ">;"
        }
    .end annotation
.end field

.field private static z:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private A:Lbmj;

.field final c:Lbnp;

.field d:Lbmt;

.field public e:Ljava/net/Proxy;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbna;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbmr;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbmw;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbmw;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/net/ProxySelector;

.field public k:Ljava/net/CookieHandler;

.field l:Lbnk;

.field public m:Ljavax/net/SocketFactory;

.field public n:Ljavax/net/ssl/SSLSocketFactory;

.field public o:Ljavax/net/ssl/HostnameVerifier;

.field public p:Lbmm;

.field public q:Lbmi;

.field public r:Lbmq;

.field s:Lbnm;

.field public t:Z

.field public u:Z

.field public v:Z

.field w:I

.field public x:I

.field y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v5, [Lbna;

    sget-object v1, Lbna;->d:Lbna;

    aput-object v1, v0, v2

    sget-object v1, Lbna;->c:Lbna;

    aput-object v1, v0, v3

    sget-object v1, Lbna;->b:Lbna;

    aput-object v1, v0, v4

    invoke-static {v0}, Lbnq;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbmz;->a:Ljava/util/List;

    .line 56
    new-array v0, v5, [Lbmr;

    sget-object v1, Lbmr;->a:Lbmr;

    aput-object v1, v0, v2

    sget-object v1, Lbmr;->b:Lbmr;

    aput-object v1, v0, v3

    sget-object v1, Lbmr;->c:Lbmr;

    aput-object v1, v0, v4

    invoke-static {v0}, Lbnq;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbmz;->b:Ljava/util/List;

    .line 60
    new-instance v0, Lbmz$1;

    invoke-direct {v0}, Lbmz$1;-><init>()V

    sput-object v0, Lbnj;->b:Lbnj;

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmz;->h:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmz;->i:Ljava/util/List;

    .line 166
    iput-boolean v1, p0, Lbmz;->t:Z

    .line 167
    iput-boolean v1, p0, Lbmz;->u:Z

    .line 168
    iput-boolean v1, p0, Lbmz;->v:Z

    .line 174
    new-instance v0, Lbnp;

    invoke-direct {v0}, Lbnp;-><init>()V

    iput-object v0, p0, Lbmz;->c:Lbnp;

    .line 175
    new-instance v0, Lbmt;

    invoke-direct {v0}, Lbmt;-><init>()V

    iput-object v0, p0, Lbmz;->d:Lbmt;

    .line 176
    return-void
.end method

.method constructor <init>(Lbmz;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmz;->h:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmz;->i:Ljava/util/List;

    .line 166
    iput-boolean v1, p0, Lbmz;->t:Z

    .line 167
    iput-boolean v1, p0, Lbmz;->u:Z

    .line 168
    iput-boolean v1, p0, Lbmz;->v:Z

    .line 179
    iget-object v0, p1, Lbmz;->c:Lbnp;

    iput-object v0, p0, Lbmz;->c:Lbnp;

    .line 180
    iget-object v0, p1, Lbmz;->d:Lbmt;

    iput-object v0, p0, Lbmz;->d:Lbmt;

    .line 181
    iget-object v0, p1, Lbmz;->e:Ljava/net/Proxy;

    iput-object v0, p0, Lbmz;->e:Ljava/net/Proxy;

    .line 182
    iget-object v0, p1, Lbmz;->f:Ljava/util/List;

    iput-object v0, p0, Lbmz;->f:Ljava/util/List;

    .line 183
    iget-object v0, p1, Lbmz;->g:Ljava/util/List;

    iput-object v0, p0, Lbmz;->g:Ljava/util/List;

    .line 184
    iget-object v0, p0, Lbmz;->h:Ljava/util/List;

    iget-object v1, p1, Lbmz;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lbmz;->i:Ljava/util/List;

    iget-object v1, p1, Lbmz;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v0, p1, Lbmz;->j:Ljava/net/ProxySelector;

    iput-object v0, p0, Lbmz;->j:Ljava/net/ProxySelector;

    .line 187
    iget-object v0, p1, Lbmz;->k:Ljava/net/CookieHandler;

    iput-object v0, p0, Lbmz;->k:Ljava/net/CookieHandler;

    .line 188
    iget-object v0, p1, Lbmz;->A:Lbmj;

    iput-object v0, p0, Lbmz;->A:Lbmj;

    .line 189
    iget-object v0, p0, Lbmz;->A:Lbmj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmz;->A:Lbmj;

    iget-object v0, v0, Lbmj;->a:Lbnk;

    :goto_0
    iput-object v0, p0, Lbmz;->l:Lbnk;

    .line 190
    iget-object v0, p1, Lbmz;->m:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lbmz;->m:Ljavax/net/SocketFactory;

    .line 191
    iget-object v0, p1, Lbmz;->n:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lbmz;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 192
    iget-object v0, p1, Lbmz;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lbmz;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 193
    iget-object v0, p1, Lbmz;->p:Lbmm;

    iput-object v0, p0, Lbmz;->p:Lbmm;

    .line 194
    iget-object v0, p1, Lbmz;->q:Lbmi;

    iput-object v0, p0, Lbmz;->q:Lbmi;

    .line 195
    iget-object v0, p1, Lbmz;->r:Lbmq;

    iput-object v0, p0, Lbmz;->r:Lbmq;

    .line 196
    iget-object v0, p1, Lbmz;->s:Lbnm;

    iput-object v0, p0, Lbmz;->s:Lbnm;

    .line 197
    iget-boolean v0, p1, Lbmz;->t:Z

    iput-boolean v0, p0, Lbmz;->t:Z

    .line 198
    iget-boolean v0, p1, Lbmz;->u:Z

    iput-boolean v0, p0, Lbmz;->u:Z

    .line 199
    iget-boolean v0, p1, Lbmz;->v:Z

    iput-boolean v0, p0, Lbmz;->v:Z

    .line 200
    iget v0, p1, Lbmz;->w:I

    iput v0, p0, Lbmz;->w:I

    .line 201
    iget v0, p1, Lbmz;->x:I

    iput v0, p0, Lbmz;->x:I

    .line 202
    iget v0, p1, Lbmz;->y:I

    iput v0, p0, Lbmz;->y:I

    .line 203
    return-void

    .line 189
    :cond_0
    iget-object v0, p1, Lbmz;->l:Lbnk;

    goto :goto_0
.end method

.method static synthetic a(Lbmz;)Lbnm;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbmz;->s:Lbnm;

    return-object v0
.end method

.method private c()Lbmz;
    .locals 1

    .prologue
    .line 652
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmz;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 654
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()Lbmj;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lbmz;->A:Lbmj;

    return-object v0
.end method

.method public final a(Lbnb;)Lbml;
    .locals 1

    .prologue
    .line 571
    new-instance v0, Lbml;

    invoke-direct {v0, p0, p1}, Lbml;-><init>(Lbmz;Lbnb;)V

    return-object v0
.end method

.method public final a(Lbmj;)Lbmz;
    .locals 1

    .prologue
    .line 323
    iput-object p1, p0, Lbmz;->A:Lbmj;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lbmz;->l:Lbnk;

    .line 325
    return-object p0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 212
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 215
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lbmz;->w:I

    .line 218
    return-void
.end method

.method public final a(Ljava/util/concurrent/TimeUnit;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x4e20

    const-wide/16 v4, 0x0

    .line 250
    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 253
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, v6, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lbmz;->y:I

    .line 256
    return-void
.end method

.method final declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    sget-object v0, Lbmz;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 639
    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 640
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 641
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lbmz;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    :cond_0
    :try_start_2
    sget-object v0, Lbmz;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 643
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 232
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 235
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lbmz;->x:I

    .line 238
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lbmz;->c()Lbmz;

    move-result-object v0

    return-object v0
.end method
