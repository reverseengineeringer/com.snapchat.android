.class public final Lbps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbps$c;,
        Lbps$b;,
        Lbps$a;
    }
.end annotation


# instance fields
.field public final a:Lbps$b;

.field final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lbpt;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbpm;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lbpk;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lbpk;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroid/os/Handler;

.field final j:Landroid/os/Handler;

.field final k:Lbpn;

.field final l:Lbql;

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbpm;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lbps$c;

.field final o:Z

.field p:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lbpt;Lbpn;Lbql;)V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lbps$b;

    invoke-direct {v0}, Lbps$b;-><init>()V

    iput-object v0, p0, Lbps;->a:Lbps$b;

    .line 102
    iget-object v0, p0, Lbps;->a:Lbps$b;

    invoke-virtual {v0}, Lbps$b;->start()V

    .line 103
    iget-object v0, p0, Lbps;->a:Lbps$b;

    invoke-virtual {v0}, Lbps$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lbqp;->a(Landroid/os/Looper;)V

    .line 104
    iput-object p1, p0, Lbps;->b:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lbps;->c:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbps;->e:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lbps;->f:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lbps;->g:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbps;->h:Ljava/util/Set;

    .line 110
    new-instance v0, Lbps$a;

    iget-object v1, p0, Lbps;->a:Lbps$b;

    invoke-virtual {v1}, Lbps$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lbps$a;-><init>(Landroid/os/Looper;Lbps;)V

    iput-object v0, p0, Lbps;->i:Landroid/os/Handler;

    .line 111
    iput-object p4, p0, Lbps;->d:Lbpt;

    .line 112
    iput-object p3, p0, Lbps;->j:Landroid/os/Handler;

    .line 113
    iput-object p5, p0, Lbps;->k:Lbpn;

    .line 114
    iput-object p6, p0, Lbps;->l:Lbql;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbps;->m:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lbps;->b:Landroid/content/Context;

    invoke-static {v0}, Lbqp;->d(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lbps;->p:Z

    .line 117
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lbqp;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbps;->o:Z

    .line 118
    new-instance v0, Lbps$c;

    invoke-direct {v0, p0}, Lbps$c;-><init>(Lbps;)V

    iput-object v0, p0, Lbps;->n:Lbps$c;

    .line 119
    iget-object v0, p0, Lbps;->n:Lbps$c;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lbps$c;->a:Lbps;

    iget-boolean v2, v2, Lbps;->o:Z

    if-eqz v2, :cond_0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lbps$c;->a:Lbps;

    iget-object v2, v2, Lbps;->b:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method private a(Lbpk;)V
    .locals 2

    .prologue
    .line 439
    invoke-virtual {p1}, Lbpk;->c()Ljava/lang/Object;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_0

    .line 441
    const/4 v1, 0x1

    iput-boolean v1, p1, Lbpk;->k:Z

    .line 442
    iget-object v1, p0, Lbps;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_0
    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbpm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpm;

    .line 459
    iget-object v0, v0, Lbpm;->b:Lbqe;

    .line 460
    iget-boolean v0, v0, Lbqe;->o:Z

    if-eqz v0, :cond_0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpm;

    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_2
    invoke-static {v0}, Lbqp;->a(Lbpm;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 466
    :cond_3
    const-string v0, "Dispatcher"

    const-string v2, "delivered"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lbpm;)V
    .locals 4

    .prologue
    .line 424
    iget-object v0, p1, Lbpm;->k:Lbpk;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0, v0}, Lbps;->a(Lbpk;)V

    .line 428
    :cond_0
    iget-object v2, p1, Lbpm;->l:Ljava/util/List;

    .line 429
    if-eqz v2, :cond_1

    .line 431
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 432
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpk;

    .line 433
    invoke-direct {p0, v0}, Lbps;->a(Lbpk;)V

    .line 431
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 436
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Landroid/net/NetworkInfo;)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    .line 400
    iget-object v0, p0, Lbps;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lbqg;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lbps;->c:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lbqg;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    invoke-virtual {v0, v2}, Lbqg;->a(I)V

    .line 404
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p0, Lbps;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbps;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpk;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, v0, Lbpk;->a:Lbqe;

    iget-boolean v2, v2, Lbqe;->o:Z

    if-eqz v2, :cond_2

    const-string v2, "Dispatcher"

    const-string v3, "replaying"

    iget-object v4, v0, Lbpk;->b:Lbqh;

    invoke-virtual {v4}, Lbqh;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lbps;->a(Lbpk;Z)V

    goto :goto_1

    .line 401
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {v0, v2}, Lbqg;->a(I)V

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lbqg;->a(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v0, v2}, Lbqg;->a(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v2}, Lbqg;->a(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbqg;->a(I)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbqg;->a(I)V

    goto :goto_0

    .line 407
    :cond_4
    return-void

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final a(Lbpk;Z)V
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lbps;->h:Ljava/util/Set;

    iget-object v1, p1, Lbpk;->j:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lbps;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lbpk;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p1, Lbpk;->a:Lbqe;

    iget-boolean v0, v0, Lbqe;->o:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "Dispatcher"

    const-string v1, "paused"

    iget-object v2, p1, Lbpk;->b:Lbqh;

    invoke-virtual {v2}, Lbqh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "because tag \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    iget-object v4, p1, Lbpk;->j:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is paused"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v0, v1, v2, v3}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lbps;->e:Ljava/util/Map;

    iget-object v1, p1, Lbpk;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpm;

    .line 189
    if-eqz v0, :cond_7

    .line 190
    iget-object v1, v0, Lbpm;->b:Lbqe;

    iget-boolean v1, v1, Lbqe;->o:Z

    iget-object v2, p1, Lbpk;->b:Lbqh;

    iget-object v3, v0, Lbpm;->k:Lbpk;

    if-nez v3, :cond_4

    iput-object p1, v0, Lbpm;->k:Lbpk;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbpm;->l:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lbpm;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "Hunter"

    const-string v1, "joined"

    invoke-virtual {v2}, Lbqh;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "to empty hunter"

    invoke-static {v0, v1, v2, v3}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "Hunter"

    const-string v3, "joined"

    invoke-virtual {v2}, Lbqh;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "to "

    invoke-static {v0, v4}, Lbqp;->a(Lbpm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v2, v0}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lbpm;->l:Ljava/util/List;

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lbpm;->l:Ljava/util/List;

    :cond_5
    iget-object v3, v0, Lbpm;->l:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    const-string v1, "Hunter"

    const-string v3, "joined"

    invoke-virtual {v2}, Lbqh;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "to "

    invoke-static {v0, v4}, Lbqp;->a(Lbpm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p1, Lbpk;->b:Lbqh;

    iget v1, v1, Lbqh;->r:I

    add-int/lit8 v2, v1, -0x1

    iget v3, v0, Lbpm;->s:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_0

    iput v1, v0, Lbpm;->s:I

    goto :goto_0

    .line 194
    :cond_7
    iget-object v0, p0, Lbps;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 195
    iget-object v0, p1, Lbpk;->a:Lbqe;

    iget-boolean v0, v0, Lbqe;->o:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "Dispatcher"

    const-string v1, "ignored"

    iget-object v2, p1, Lbpk;->b:Lbqh;

    invoke-virtual {v2}, Lbqh;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "because shut down"

    invoke-static {v0, v1, v2, v3}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_8
    iget-object v0, p1, Lbpk;->a:Lbqe;

    iget-object v1, p0, Lbps;->k:Lbpn;

    iget-object v2, p0, Lbps;->l:Lbql;

    invoke-static {v0, p0, v1, v2, p1}, Lbpm;->a(Lbqe;Lbps;Lbpn;Lbql;Lbpk;)Lbpm;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lbps;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lbpm;->n:Ljava/util/concurrent/Future;

    .line 203
    iget-object v1, p0, Lbps;->e:Ljava/util/Map;

    iget-object v2, p1, Lbpk;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    if-eqz p2, :cond_9

    .line 205
    iget-object v0, p0, Lbps;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lbpk;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_9
    iget-object v0, p1, Lbpk;->a:Lbqe;

    iget-boolean v0, v0, Lbqe;->o:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "Dispatcher"

    const-string v1, "enqueued"

    iget-object v2, p1, Lbpk;->b:Lbqh;

    invoke-virtual {v2}, Lbqh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method final a(Lbpm;)V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lbps;->i:Landroid/os/Handler;

    iget-object v1, p0, Lbps;->i:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    return-void
.end method

.method final a(Lbpm;Z)V
    .locals 5

    .prologue
    .line 387
    iget-object v0, p1, Lbpm;->b:Lbqe;

    iget-boolean v0, v0, Lbqe;->o:Z

    if-eqz v0, :cond_0

    .line 388
    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {p1}, Lbqp;->a(Lbpm;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "for error"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v0, " (will replay)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lbps;->e:Ljava/util/Map;

    iget-object v1, p1, Lbpm;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-virtual {p0, p1}, Lbps;->d(Lbpm;)V

    .line 393
    return-void

    .line 388
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 299
    iget-object v0, p0, Lbps;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lbps;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpk;

    .line 306
    iget-object v3, v0, Lbpk;->j:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    if-nez v1, :cond_3

    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 315
    :cond_4
    if-eqz v1, :cond_0

    .line 316
    iget-object v0, p0, Lbps;->j:Landroid/os/Handler;

    iget-object v2, p0, Lbps;->j:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method final b(Lbpm;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lbps;->i:Landroid/os/Handler;

    iget-object v1, p0, Lbps;->i:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    return-void
.end method

.method final c(Lbpm;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p1}, Lbpm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lbps;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {p0, p1, v2}, Lbps;->a(Lbpm;Z)V

    goto :goto_0

    .line 328
    :cond_2
    const/4 v0, 0x0

    .line 329
    iget-boolean v3, p0, Lbps;->o:Z

    if-eqz v3, :cond_c

    .line 330
    iget-object v0, p0, Lbps;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-static {v0, v3}, Lbqp;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v4, v0

    .line 334
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 335
    :goto_2
    iget v3, p1, Lbpm;->r:I

    if-lez v3, :cond_4

    move v3, v1

    :goto_3
    if-nez v3, :cond_5

    move v3, v2

    .line 336
    :goto_4
    iget-object v4, p1, Lbpm;->j:Lbqj;

    invoke-virtual {v4}, Lbqj;->b()Z

    move-result v4

    .line 338
    if-nez v3, :cond_7

    .line 340
    iget-boolean v0, p0, Lbps;->o:Z

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 341
    :goto_5
    invoke-virtual {p0, p1, v1}, Lbps;->a(Lbpm;Z)V

    .line 342
    if-eqz v1, :cond_0

    .line 343
    invoke-direct {p0, p1}, Lbps;->e(Lbpm;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 334
    goto :goto_2

    :cond_4
    move v3, v2

    .line 335
    goto :goto_3

    :cond_5
    iget v3, p1, Lbpm;->r:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lbpm;->r:I

    iget-object v3, p1, Lbpm;->j:Lbqj;

    invoke-virtual {v3, v4}, Lbqj;->a(Landroid/net/NetworkInfo;)Z

    move-result v3

    goto :goto_4

    :cond_6
    move v1, v2

    .line 340
    goto :goto_5

    .line 349
    :cond_7
    iget-boolean v1, p0, Lbps;->o:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_b

    .line 350
    :cond_8
    iget-object v0, p1, Lbpm;->b:Lbqe;

    iget-boolean v0, v0, Lbqe;->o:Z

    if-eqz v0, :cond_9

    .line 351
    const-string v0, "Dispatcher"

    const-string v1, "retrying"

    invoke-static {p1}, Lbqp;->a(Lbpm;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_9
    iget-object v0, p1, Lbpm;->p:Ljava/lang/Exception;

    instance-of v0, v0, Lbqc$a;

    if-eqz v0, :cond_a

    .line 355
    iget v0, p1, Lbpm;->i:I

    sget-object v1, Lbqb;->a:Lbqb;

    iget v1, v1, Lbqb;->d:I

    or-int/2addr v0, v1

    iput v0, p1, Lbpm;->i:I

    .line 357
    :cond_a
    iget-object v0, p0, Lbps;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lbpm;->n:Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 361
    :cond_b
    invoke-virtual {p0, p1, v4}, Lbps;->a(Lbpm;Z)V

    .line 363
    if-eqz v4, :cond_0

    .line 364
    invoke-direct {p0, p1}, Lbps;->e(Lbpm;)V

    goto/16 :goto_0

    :cond_c
    move-object v4, v0

    goto :goto_1
.end method

.method final d(Lbpm;)V
    .locals 4

    .prologue
    const/4 v1, 0x7

    .line 447
    invoke-virtual {p1}, Lbpm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lbps;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lbps;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lbps;->i:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
