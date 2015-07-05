.class public final Lbsp;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lbsp;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsp;->a:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lbsp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbss;

    .line 68
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_2

    .line 78
    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Lbrk;Lbsj;Ljava/lang/String;Lbqu;)V
    .locals 7

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lbrk;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    iget-object v0, p0, Lbsp;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lbrk;->a(Landroid/content/Context;)Lbrk;

    move-result-object v1

    iget-object v4, p0, Lbsp;->b:Landroid/content/Context;

    invoke-interface {p4}, Lbqu;->i()Lbtc;

    move-result-object v6

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lbsj;->a(Lbrk;Lbrk;Ljava/lang/String;Landroid/content/Context;Lbqu;Lbtc;)Lbsi;

    move-result-object v5

    new-instance v0, Lbsr;

    new-instance v2, Lbsl;

    iget-object v3, v1, Lbrk;->b:Ljava/lang/String;

    invoke-direct {v2, p3, v3}, Lbsl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lbsl;->a()Ljava/net/URL;

    move-result-object v4

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lbsr;-><init>(Lbrk;Lbrk;Lbqu;Ljava/net/URL;Lbsi;)V

    .line 37
    iget-object v1, p0, Lbsp;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
