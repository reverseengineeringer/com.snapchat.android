.class public final Lacg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lace;
.implements Lald;


# instance fields
.field final a:Ladj;

.field final b:Ladd;

.field final c:Lawp;

.field final d:Laco;

.field final e:Lacp;

.field final f:Lacq;

.field g:Lacf;

.field protected h:Ladj$b;

.field protected i:Ladj$b;

.field protected j:Ladj$b;

.field private final k:Lale;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 55
    invoke-static {}, Lale;->a()Lale;

    move-result-object v1

    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v2

    invoke-static {}, Ladd;->a()Ladd;

    move-result-object v3

    sget-object v4, Ladc;->b:Lawp;

    new-instance v5, Laco;

    invoke-direct {v5}, Laco;-><init>()V

    new-instance v6, Lacp;

    invoke-direct {v6}, Lacp;-><init>()V

    new-instance v7, Lacs;

    invoke-direct {v7}, Lacs;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lacg;-><init>(Lale;Ladj;Ladd;Lawp;Laco;Lacp;Lacq;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lale;Ladj;Ladd;Lawp;Laco;Lacp;Lacq;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lacf;

    invoke-direct {v0}, Lacf;-><init>()V

    iput-object v0, p0, Lacg;->g:Lacf;

    .line 139
    new-instance v0, Lacg$1;

    invoke-direct {v0, p0}, Lacg$1;-><init>(Lacg;)V

    iput-object v0, p0, Lacg;->h:Ladj$b;

    .line 169
    new-instance v0, Lacg$2;

    invoke-direct {v0, p0}, Lacg$2;-><init>(Lacg;)V

    iput-object v0, p0, Lacg;->i:Ladj$b;

    .line 197
    new-instance v0, Lacg$3;

    invoke-direct {v0, p0}, Lacg$3;-><init>(Lacg;)V

    iput-object v0, p0, Lacg;->j:Ladj$b;

    .line 68
    iput-object p1, p0, Lacg;->k:Lale;

    .line 69
    iput-object p2, p0, Lacg;->a:Ladj;

    .line 70
    iput-object p3, p0, Lacg;->b:Ladd;

    .line 71
    iput-object p4, p0, Lacg;->c:Lawp;

    .line 72
    iput-object p5, p0, Lacg;->d:Laco;

    .line 73
    iput-object p6, p0, Lacg;->e:Lacp;

    .line 74
    iput-object p7, p0, Lacg;->f:Lacq;

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lacg;->k:Lale;

    invoke-virtual {v0, p0}, Lale;->a(Lald;)V

    .line 80
    iget-object v0, p0, Lacg;->a:Ladj;

    iget-object v1, p0, Lacg;->j:Ladj$b;

    iget-object v2, v0, Ladj;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Ladj;->f:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lacf;)V
    .locals 0
    .param p1    # Lacf;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 86
    iput-object p1, p0, Lacg;->g:Lacf;

    .line 87
    return-void
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 4
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v0, p0, Lacg;->a:Ladj;

    const-string v1, "DiscoverRepository"

    const-string v2, "Manually triggering update of channel and dsnap lists."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Ladj;->g:Landroid/os/Handler;

    iget-object v0, v0, Ladj;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 102
    new-instance v0, Lacm;

    new-instance v1, Lacl;

    invoke-direct {v1, p1}, Lacl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lacm;-><init>(Laub;)V

    invoke-virtual {v0}, Lacm;->a()V

    .line 103
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lacg;->a:Ladj;

    const/4 v1, 0x1

    new-array v1, v1, [Ladj$b;

    const/4 v2, 0x0

    iget-object v3, p0, Lacg;->i:Ladj$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$b;)V

    .line 92
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lacg;->a:Ladj;

    const/4 v1, 0x1

    new-array v1, v1, [Ladj$b;

    const/4 v2, 0x0

    iget-object v3, p0, Lacg;->h:Ladj$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$b;)V

    .line 97
    return-void
.end method

.method public final d()Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->EDITION:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    return-object v0
.end method
