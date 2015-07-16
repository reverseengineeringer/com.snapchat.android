.class public final Ladg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lade;
.implements Lalz;


# instance fields
.field final a:Laej;

.field final b:Laed;

.field final c:Laxn;

.field final d:Lado;

.field final e:Ladp;

.field final f:Ladq;

.field g:Ladf;

.field protected h:Laej$b;

.field protected i:Laej$b;

.field protected j:Laej$b;

.field private final k:Lama;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 55
    invoke-static {}, Lama;->a()Lama;

    move-result-object v1

    invoke-static {}, Laej;->a()Laej;

    move-result-object v2

    invoke-static {}, Laed;->a()Laed;

    move-result-object v3

    sget-object v4, Laec;->b:Laxn;

    new-instance v5, Lado;

    invoke-direct {v5}, Lado;-><init>()V

    new-instance v6, Ladp;

    invoke-direct {v6}, Ladp;-><init>()V

    new-instance v7, Lads;

    invoke-direct {v7}, Lads;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ladg;-><init>(Lama;Laej;Laed;Laxn;Lado;Ladp;Ladq;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Lama;Laej;Laed;Laxn;Lado;Ladp;Ladq;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ladf;

    invoke-direct {v0}, Ladf;-><init>()V

    iput-object v0, p0, Ladg;->g:Ladf;

    .line 139
    new-instance v0, Ladg$1;

    invoke-direct {v0, p0}, Ladg$1;-><init>(Ladg;)V

    iput-object v0, p0, Ladg;->h:Laej$b;

    .line 169
    new-instance v0, Ladg$2;

    invoke-direct {v0, p0}, Ladg$2;-><init>(Ladg;)V

    iput-object v0, p0, Ladg;->i:Laej$b;

    .line 197
    new-instance v0, Ladg$3;

    invoke-direct {v0, p0}, Ladg$3;-><init>(Ladg;)V

    iput-object v0, p0, Ladg;->j:Laej$b;

    .line 68
    iput-object p1, p0, Ladg;->k:Lama;

    .line 69
    iput-object p2, p0, Ladg;->a:Laej;

    .line 70
    iput-object p3, p0, Ladg;->b:Laed;

    .line 71
    iput-object p4, p0, Ladg;->c:Laxn;

    .line 72
    iput-object p5, p0, Ladg;->d:Lado;

    .line 73
    iput-object p6, p0, Ladg;->e:Ladp;

    .line 74
    iput-object p7, p0, Ladg;->f:Ladq;

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Ladg;->k:Lama;

    invoke-virtual {v0, p0}, Lama;->a(Lalz;)V

    .line 80
    iget-object v0, p0, Ladg;->a:Laej;

    iget-object v1, p0, Ladg;->j:Laej$b;

    iget-object v2, v0, Laej;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Laej;->f:Ljava/util/Set;

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

.method public final a(Ladf;)V
    .locals 0
    .param p1    # Ladf;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 86
    iput-object p1, p0, Ladg;->g:Ladf;

    .line 87
    return-void
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v0, p0, Ladg;->a:Laej;

    invoke-virtual {v0}, Laej;->b()V

    .line 120
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 102
    new-instance v0, Ladm;

    new-instance v1, Ladl;

    invoke-direct {v1, p1}, Ladl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ladm;-><init>(Lauz;)V

    invoke-virtual {v0}, Ladm;->a()V

    .line 103
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Ladg;->a:Laej;

    const/4 v1, 0x1

    new-array v1, v1, [Laej$b;

    const/4 v2, 0x0

    iget-object v3, p0, Ladg;->i:Laej$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Laej;->a([Laej$b;)V

    .line 92
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Ladg;->a:Laej;

    const/4 v1, 0x1

    new-array v1, v1, [Laej$b;

    const/4 v2, 0x0

    iget-object v3, p0, Ladg;->h:Laej$b;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Laej;->a([Laej$b;)V

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
