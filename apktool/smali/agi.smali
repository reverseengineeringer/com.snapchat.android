.class public final Lagi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lagi;


# instance fields
.field public a:Larq;

.field public b:Lbqe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lagi;

    invoke-direct {v0}, Lagi;-><init>()V

    sput-object v0, Lagi;->c:Lagi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lagi;->a:Larq;

    .line 19
    iput-object v0, p0, Lagi;->b:Lbqe;

    return-void
.end method

.method public static a()Lagi;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lagi;->c:Lagi;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 12

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 44
    new-instance v0, Larq;

    invoke-direct {v0, v1}, Larq;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lagi;->a:Larq;

    .line 46
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 47
    const/high16 v0, 0x100000

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    .line 49
    new-instance v3, Lbqe$a;

    invoke-direct {v3, p1}, Lbqe$a;-><init>(Landroid/content/Context;)V

    new-instance v4, Lbpx;

    invoke-direct {v4, v0}, Lbpx;-><init>(I)V

    iget-object v0, v3, Lbqe$a;->b:Lbpn;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Memory cache already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v4, v3, Lbqe$a;->b:Lbpn;

    new-instance v0, Laro;

    invoke-direct {v0, v1}, Laro;-><init>(Landroid/content/ContentResolver;)V

    iget-object v1, v3, Lbqe$a;->d:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lbqe$a;->d:Ljava/util/List;

    :cond_1
    iget-object v1, v3, Lbqe$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestHandler already registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v3, Lbqe$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lavf;->THUMBNAIL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor service must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, v3, Lbqe$a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Executor service already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object v0, v3, Lbqe$a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v3}, Lbqe$a;->a()Lbqe;

    move-result-object v0

    iput-object v0, p0, Lagi;->b:Lbqe;

    .line 56
    const/4 v0, 0x0

    :goto_0
    int-to-double v4, v0

    iget-object v1, p0, Lagi;->a:Larq;

    iget-object v1, v1, Larq;->a:[Larq$a;

    array-length v1, v1

    int-to-double v6, v1

    int-to-double v8, v2

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    cmpg-double v1, v4, v6

    if-gez v1, :cond_6

    .line 57
    iget-object v1, p0, Lagi;->a:Larq;

    invoke-virtual {v1, v0}, Larq;->a(I)Larq$a;

    move-result-object v1

    iget-object v3, v1, Larq$a;->c:Ljava/io/File;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lagi;->b:Lbqe;

    iget-object v1, v1, Larq$a;->c:Ljava/io/File;

    invoke-virtual {v3, v1}, Lbqe;->a(Ljava/io/File;)Lbqi;

    move-result-object v1

    invoke-virtual {v1}, Lbqi;->a()V

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_5
    iget-object v3, p0, Lagi;->b:Lbqe;

    iget-object v1, v1, Larq$a;->b:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Lbqe;->a(Landroid/net/Uri;)Lbqi;

    move-result-object v1

    invoke-virtual {v1}, Lbqi;->a()V

    goto :goto_1

    .line 59
    :cond_6
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lagi;->b:Lbqe;

    if-eqz v0, :cond_3

    .line 36
    iget-object v1, p0, Lagi;->b:Lbqe;

    sget-object v0, Lbqe;->b:Lbqe;

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Default singleton instance cannot be shutdown."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, v1, Lbqe;->p:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lbqe;->h:Lbpn;

    invoke-interface {v0}, Lbpn;->c()V

    iget-object v0, v1, Lbqe;->d:Lbqe$b;

    invoke-virtual {v0}, Lbqe$b;->interrupt()V

    iget-object v0, v1, Lbqe;->i:Lbql;

    iget-object v0, v0, Lbql;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, v1, Lbqe;->g:Lbps;

    iget-object v2, v0, Lbps;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v2, v2, Lbqg;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lbps;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    iget-object v2, v0, Lbps;->d:Lbpt;

    invoke-interface {v2}, Lbpt;->a()V

    iget-object v2, v0, Lbps;->a:Lbps$b;

    invoke-virtual {v2}, Lbps$b;->quit()Z

    sget-object v2, Lbqe;->a:Landroid/os/Handler;

    new-instance v3, Lbps$1;

    invoke-direct {v3, v0}, Lbps$1;-><init>(Lbps;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v1, Lbqe;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpr;

    invoke-virtual {v0}, Lbpr;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lbqe;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lbqe;->p:Z

    .line 38
    :cond_3
    return-void
.end method
