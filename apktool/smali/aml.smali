.class public final Laml;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lawj;
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/PriorityQueue",
            "<",
            "Laly;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laly;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lalv;->a:Ljava/util/Set;

    invoke-direct {p0, v0}, Laml;-><init>(Ljava/util/Set;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laml;->c:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laml;->b:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Laml;->a:Ljava/util/Map;

    .line 36
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    iget-object v2, p0, Laml;->a:Ljava/util/Map;

    new-instance v3, Lalv;

    new-array v4, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v3, v4}, Lalv;-><init>([Ljava/lang/String;)V

    invoke-static {v6, v3}, Laml;->a(ILalv;)Ljava/util/PriorityQueue;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public static a(ILalv;)Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lalv;",
            ")",
            "Ljava/util/PriorityQueue",
            "<",
            "Laly;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-static {p1}, Lamk;->a(Lalv;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Laml;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lalv;Ljava/util/Set;)Laly;
    .locals 5
    .param p1    # Lalv;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalv;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Laly;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Laml;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0, p1}, Laml;->a(ILalv;)Ljava/util/PriorityQueue;

    move-result-object v2

    .line 63
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    iget-object v4, p0, Laml;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    .line 65
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 70
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laly;

    iget-object v0, v0, Laly;->h:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Laml;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laly;

    .line 74
    if-eqz v0, :cond_2

    .line 75
    iget-object v2, p0, Laml;->c:Ljava/util/Map;

    invoke-virtual {v0}, Laly;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_1
    monitor-exit v1

    .line 82
    :goto_2
    return-object v0

    .line 77
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Discrepency between request map and request queue map "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Laly;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82
    :cond_3
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Laly;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 123
    iget-object v2, p0, Laml;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    iget-object v0, p0, Laml;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laly;

    .line 127
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Laml;->a:Ljava/util/Map;

    iget-object v3, v0, Laly;->h:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Laml;->c:Ljava/util/Map;

    invoke-virtual {v0}, Laly;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    monitor-exit v2

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Laly;)V
    .locals 17

    .prologue
    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Laml;->b:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 97
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Laml;->c:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Laly;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Laly;

    move-object v15, v0

    .line 98
    if-eqz v15, :cond_3

    .line 102
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "other cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Laly;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Laly;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "keys for both requests do not match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Laly;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iget-object v3, v15, Laly;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/networkmanager/DownloadPriority;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Fallback priorities for both requests do not match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, v15, Laly;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-object/from16 v0, p1

    iget-object v3, v0, Laly;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/networkmanager/DownloadPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v5, v15, Laly;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    :goto_0
    iget-boolean v2, v15, Laly;->a:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-boolean v2, v0, Laly;->a:Z

    if-eqz v2, :cond_5

    const/4 v7, 0x1

    :goto_1
    iget-wide v2, v15, Laly;->j:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Laly;->j:J

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    new-instance v2, Laly;

    iget-object v3, v15, Laly;->d:Ljava/lang/String;

    iget-object v4, v15, Laly;->e:Ljava/lang/String;

    iget-object v6, v15, Laly;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iget-object v10, v15, Laly;->f:Ljava/lang/String;

    iget-object v11, v15, Laly;->h:Ljava/lang/String;

    iget-object v12, v15, Laly;->g:Lalv;

    iget-object v13, v15, Laly;->k:Lame;

    iget-object v14, v15, Laly;->i:Ljava/lang/Object;

    invoke-direct/range {v2 .. v14}, Laly;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJLjava/lang/String;Ljava/lang/String;Lalv;Lame;Ljava/lang/Object;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Laml;->a:Ljava/util/Map;

    iget-object v4, v15, Laly;->h:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/PriorityQueue;

    invoke-virtual {v3, v15}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Laml;->c:Ljava/util/Map;

    invoke-virtual {v15}, Laly;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p1, v2

    .line 110
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Laml;->c:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Laly;->a()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Laml;->a:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v3, v0, Laly;->h:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/PriorityQueue;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 112
    monitor-exit v16

    return-void

    .line 102
    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Laly;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method
