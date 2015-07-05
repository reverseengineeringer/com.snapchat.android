.class public Lbly;
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
            "Lblz;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblq;",
            ">;"
        }
    .end annotation
.end field

.field private static z:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private A:Lbli;

.field final c:Lbmo;

.field d:Lbls;

.field public e:Ljava/net/Proxy;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblz;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblq;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblv;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblv;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/net/ProxySelector;

.field public k:Ljava/net/CookieHandler;

.field l:Lbmj;

.field public m:Ljavax/net/SocketFactory;

.field public n:Ljavax/net/ssl/SSLSocketFactory;

.field public o:Ljavax/net/ssl/HostnameVerifier;

.field public p:Lbll;

.field public q:Lblh;

.field public r:Lblp;

.field s:Lbml;

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
    new-array v0, v5, [Lblz;

    sget-object v1, Lblz;->d:Lblz;

    aput-object v1, v0, v2

    sget-object v1, Lblz;->c:Lblz;

    aput-object v1, v0, v3

    sget-object v1, Lblz;->b:Lblz;

    aput-object v1, v0, v4

    invoke-static {v0}, Lbmp;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbly;->a:Ljava/util/List;

    .line 56
    new-array v0, v5, [Lblq;

    sget-object v1, Lblq;->a:Lblq;

    aput-object v1, v0, v2

    sget-object v1, Lblq;->b:Lblq;

    aput-object v1, v0, v3

    sget-object v1, Lblq;->c:Lblq;

    aput-object v1, v0, v4

    invoke-static {v0}, Lbmp;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbly;->b:Ljava/util/List;

    .line 60
    new-instance v0, Lbly$1;

    invoke-direct {v0}, Lbly$1;-><init>()V

    sput-object v0, Lbmi;->b:Lbmi;

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

    iput-object v0, p0, Lbly;->h:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbly;->i:Ljava/util/List;

    .line 166
    iput-boolean v1, p0, Lbly;->t:Z

    .line 167
    iput-boolean v1, p0, Lbly;->u:Z

    .line 168
    iput-boolean v1, p0, Lbly;->v:Z

    .line 174
    new-instance v0, Lbmo;

    invoke-direct {v0}, Lbmo;-><init>()V

    iput-object v0, p0, Lbly;->c:Lbmo;

    .line 175
    new-instance v0, Lbls;

    invoke-direct {v0}, Lbls;-><init>()V

    iput-object v0, p0, Lbly;->d:Lbls;

    .line 176
    return-void
.end method

.method constructor <init>(Lbly;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbly;->h:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbly;->i:Ljava/util/List;

    .line 166
    iput-boolean v1, p0, Lbly;->t:Z

    .line 167
    iput-boolean v1, p0, Lbly;->u:Z

    .line 168
    iput-boolean v1, p0, Lbly;->v:Z

    .line 179
    iget-object v0, p1, Lbly;->c:Lbmo;

    iput-object v0, p0, Lbly;->c:Lbmo;

    .line 180
    iget-object v0, p1, Lbly;->d:Lbls;

    iput-object v0, p0, Lbly;->d:Lbls;

    .line 181
    iget-object v0, p1, Lbly;->e:Ljava/net/Proxy;

    iput-object v0, p0, Lbly;->e:Ljava/net/Proxy;

    .line 182
    iget-object v0, p1, Lbly;->f:Ljava/util/List;

    iput-object v0, p0, Lbly;->f:Ljava/util/List;

    .line 183
    iget-object v0, p1, Lbly;->g:Ljava/util/List;

    iput-object v0, p0, Lbly;->g:Ljava/util/List;

    .line 184
    iget-object v0, p0, Lbly;->h:Ljava/util/List;

    iget-object v1, p1, Lbly;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v0, p0, Lbly;->i:Ljava/util/List;

    iget-object v1, p1, Lbly;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v0, p1, Lbly;->j:Ljava/net/ProxySelector;

    iput-object v0, p0, Lbly;->j:Ljava/net/ProxySelector;

    .line 187
    iget-object v0, p1, Lbly;->k:Ljava/net/CookieHandler;

    iput-object v0, p0, Lbly;->k:Ljava/net/CookieHandler;

    .line 188
    iget-object v0, p1, Lbly;->A:Lbli;

    iput-object v0, p0, Lbly;->A:Lbli;

    .line 189
    iget-object v0, p0, Lbly;->A:Lbli;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbly;->A:Lbli;

    iget-object v0, v0, Lbli;->a:Lbmj;

    :goto_0
    iput-object v0, p0, Lbly;->l:Lbmj;

    .line 190
    iget-object v0, p1, Lbly;->m:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lbly;->m:Ljavax/net/SocketFactory;

    .line 191
    iget-object v0, p1, Lbly;->n:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lbly;->n:Ljavax/net/ssl/SSLSocketFactory;

    .line 192
    iget-object v0, p1, Lbly;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lbly;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 193
    iget-object v0, p1, Lbly;->p:Lbll;

    iput-object v0, p0, Lbly;->p:Lbll;

    .line 194
    iget-object v0, p1, Lbly;->q:Lblh;

    iput-object v0, p0, Lbly;->q:Lblh;

    .line 195
    iget-object v0, p1, Lbly;->r:Lblp;

    iput-object v0, p0, Lbly;->r:Lblp;

    .line 196
    iget-object v0, p1, Lbly;->s:Lbml;

    iput-object v0, p0, Lbly;->s:Lbml;

    .line 197
    iget-boolean v0, p1, Lbly;->t:Z

    iput-boolean v0, p0, Lbly;->t:Z

    .line 198
    iget-boolean v0, p1, Lbly;->u:Z

    iput-boolean v0, p0, Lbly;->u:Z

    .line 199
    iget-boolean v0, p1, Lbly;->v:Z

    iput-boolean v0, p0, Lbly;->v:Z

    .line 200
    iget v0, p1, Lbly;->w:I

    iput v0, p0, Lbly;->w:I

    .line 201
    iget v0, p1, Lbly;->x:I

    iput v0, p0, Lbly;->x:I

    .line 202
    iget v0, p1, Lbly;->y:I

    iput v0, p0, Lbly;->y:I

    .line 203
    return-void

    .line 189
    :cond_0
    iget-object v0, p1, Lbly;->l:Lbmj;

    goto :goto_0
.end method

.method static synthetic a(Lbly;)Lbml;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lbly;->s:Lbml;

    return-object v0
.end method

.method private c()Lbly;
    .locals 1

    .prologue
    .line 652
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbly;
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
.method public final a()Lbli;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lbly;->A:Lbli;

    return-object v0
.end method

.method public final a(Lbma;)Lblk;
    .locals 1

    .prologue
    .line 571
    new-instance v0, Lblk;

    invoke-direct {v0, p0, p1}, Lblk;-><init>(Lbly;Lbma;)V

    return-object v0
.end method

.method public final a(Lbli;)Lbly;
    .locals 1

    .prologue
    .line 323
    iput-object p1, p0, Lbly;->A:Lbli;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lbly;->l:Lbmj;

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

    iput v0, p0, Lbly;->w:I

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

    iput v0, p0, Lbly;->y:I

    .line 256
    return-void
.end method

.method final declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    sget-object v0, Lbly;->z:Ljavax/net/ssl/SSLSocketFactory;
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

    sput-object v0, Lbly;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    :cond_0
    :try_start_2
    sget-object v0, Lbly;->z:Ljavax/net/ssl/SSLSocketFactory;
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

    iput v0, p0, Lbly;->x:I

    .line 238
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lbly;->c()Lbly;

    move-result-object v0

    return-object v0
.end method
