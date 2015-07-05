.class public final Lafi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lafi;


# instance fields
.field public a:Laqr;

.field public b:Lbpd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lafi;

    invoke-direct {v0}, Lafi;-><init>()V

    sput-object v0, Lafi;->c:Lafi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lafi;->a:Laqr;

    .line 19
    iput-object v0, p0, Lafi;->b:Lbpd;

    return-void
.end method

.method public static a()Lafi;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lafi;->c:Lafi;

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
    new-instance v0, Laqr;

    invoke-direct {v0, v1}, Laqr;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lafi;->a:Laqr;

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
    new-instance v3, Lbpd$a;

    invoke-direct {v3, p1}, Lbpd$a;-><init>(Landroid/content/Context;)V

    new-instance v4, Lbow;

    invoke-direct {v4, v0}, Lbow;-><init>(I)V

    iget-object v0, v3, Lbpd$a;->b:Lbom;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Memory cache already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v4, v3, Lbpd$a;->b:Lbom;

    new-instance v0, Laqp;

    invoke-direct {v0, v1}, Laqp;-><init>(Landroid/content/ContentResolver;)V

    iget-object v1, v3, Lbpd$a;->d:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Lbpd$a;->d:Ljava/util/List;

    :cond_1
    iget-object v1, v3, Lbpd$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestHandler already registered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v3, Lbpd$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lauh;->THUMBNAIL_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor service must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, v3, Lbpd$a;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Executor service already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object v0, v3, Lbpd$a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v3}, Lbpd$a;->a()Lbpd;

    move-result-object v0

    iput-object v0, p0, Lafi;->b:Lbpd;

    .line 56
    const/4 v0, 0x0

    :goto_0
    int-to-double v4, v0

    iget-object v1, p0, Lafi;->a:Laqr;

    iget-object v1, v1, Laqr;->a:[Laqr$a;

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
    iget-object v1, p0, Lafi;->a:Laqr;

    invoke-virtual {v1, v0}, Laqr;->a(I)Laqr$a;

    move-result-object v1

    iget-object v3, v1, Laqr$a;->c:Ljava/io/File;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lafi;->b:Lbpd;

    iget-object v1, v1, Laqr$a;->c:Ljava/io/File;

    invoke-virtual {v3, v1}, Lbpd;->a(Ljava/io/File;)Lbph;

    move-result-object v1

    invoke-virtual {v1}, Lbph;->a()V

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_5
    iget-object v3, p0, Lafi;->b:Lbpd;

    iget-object v1, v1, Laqr$a;->b:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Lbpd;->a(Landroid/net/Uri;)Lbph;

    move-result-object v1

    invoke-virtual {v1}, Lbph;->a()V

    goto :goto_1

    .line 59
    :cond_6
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lafi;->b:Lbpd;

    if-eqz v0, :cond_3

    .line 36
    iget-object v1, p0, Lafi;->b:Lbpd;

    sget-object v0, Lbpd;->b:Lbpd;

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Default singleton instance cannot be shutdown."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, v1, Lbpd;->p:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lbpd;->h:Lbom;

    invoke-interface {v0}, Lbom;->c()V

    iget-object v0, v1, Lbpd;->d:Lbpd$b;

    invoke-virtual {v0}, Lbpd$b;->interrupt()V

    iget-object v0, v1, Lbpd;->i:Lbpk;

    iget-object v0, v0, Lbpk;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, v1, Lbpd;->g:Lbor;

    iget-object v2, v0, Lbor;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v2, v2, Lbpf;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lbor;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    iget-object v2, v0, Lbor;->d:Lbos;

    invoke-interface {v2}, Lbos;->a()V

    iget-object v2, v0, Lbor;->a:Lbor$b;

    invoke-virtual {v2}, Lbor$b;->quit()Z

    sget-object v2, Lbpd;->a:Landroid/os/Handler;

    new-instance v3, Lbor$1;

    invoke-direct {v3, v0}, Lbor$1;-><init>(Lbor;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, v1, Lbpd;->k:Ljava/util/Map;

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

    check-cast v0, Lboq;

    invoke-virtual {v0}, Lboq;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lbpd;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lbpd;->p:Z

    .line 38
    :cond_3
    return-void
.end method
