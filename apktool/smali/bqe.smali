.class public Lbqe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqe$d;,
        Lbqe$a;,
        Lbqe$b;,
        Lbqe$e;,
        Lbqe$f;,
        Lbqe$c;
    }
.end annotation


# static fields
.field public static final a:Landroid/os/Handler;

.field public static volatile b:Lbqe;


# instance fields
.field final c:Lbqe$f;

.field public final d:Lbqe$b;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbqj;",
            ">;"
        }
    .end annotation
.end field

.field final f:Landroid/content/Context;

.field public final g:Lbps;

.field public final h:Lbpn;

.field public final i:Lbql;

.field final j:Ljava/util/Map;
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

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lbpr;",
            ">;"
        }
    .end annotation
.end field

.field final l:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final m:Landroid/graphics/Bitmap$Config;

.field n:Z

.field volatile o:Z

.field public p:Z

.field private final q:Lbqe$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lbqe$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lbqe$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbqe;->a:Landroid/os/Handler;

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lbqe;->b:Lbqe;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lbps;Lbpn;Lbqe$c;Lbqe$f;Ljava/util/List;Lbql;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbps;",
            "Lbpn;",
            "Lbqe$c;",
            "Lbqe$f;",
            "Ljava/util/List",
            "<",
            "Lbqj;",
            ">;",
            "Lbql;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lbqe;->f:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lbqe;->g:Lbps;

    .line 169
    iput-object p3, p0, Lbqe;->h:Lbpn;

    .line 170
    iput-object p4, p0, Lbqe;->q:Lbqe$c;

    .line 171
    iput-object p5, p0, Lbqe;->c:Lbqe$f;

    .line 172
    iput-object p8, p0, Lbqe;->m:Landroid/graphics/Bitmap$Config;

    .line 174
    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    .line 176
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x7

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    new-instance v0, Lbqk;

    invoke-direct {v0, p1}, Lbqk;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    if-eqz p6, :cond_0

    .line 184
    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_0
    new-instance v0, Lbpp;

    invoke-direct {v0, p1}, Lbpp;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lbpz;

    invoke-direct {v0, p1}, Lbpz;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lbpq;

    invoke-direct {v0, p1}, Lbpq;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lbpl;

    invoke-direct {v0, p1}, Lbpl;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lbpv;

    invoke-direct {v0, p1}, Lbpv;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lbqc;

    iget-object v2, p2, Lbps;->d:Lbpt;

    invoke-direct {v0, v2, p7}, Lbqc;-><init>(Lbpt;Lbql;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbqe;->e:Ljava/util/List;

    .line 194
    iput-object p7, p0, Lbqe;->i:Lbql;

    .line 195
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lbqe;->j:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lbqe;->k:Ljava/util/Map;

    .line 197
    iput-boolean p9, p0, Lbqe;->n:Z

    .line 198
    iput-boolean p10, p0, Lbqe;->o:Z

    .line 199
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lbqe;->l:Ljava/lang/ref/ReferenceQueue;

    .line 200
    new-instance v0, Lbqe$b;

    iget-object v1, p0, Lbqe;->l:Ljava/lang/ref/ReferenceQueue;

    sget-object v2, Lbqe;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lbqe$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lbqe;->d:Lbqe$b;

    .line 201
    iget-object v0, p0, Lbqe;->d:Lbqe$b;

    invoke-virtual {v0}, Lbqe$b;->start()V

    .line 202
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lbqe;)V
    .locals 3

    .prologue
    .line 675
    const-class v1, Lbqe;

    monitor-enter v1

    .line 676
    :try_start_0
    sget-object v0, Lbqe;->b:Lbqe;

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Singleton instance already exists."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 679
    :cond_0
    :try_start_1
    sput-object p0, Lbqe;->b:Lbqe;

    .line 680
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic a(Lbqe;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lbqe;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lbqe;->h:Lbpn;

    invoke-interface {v0, p1}, Lbpn;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_0

    .line 486
    iget-object v1, p0, Lbqe;->i:Lbql;

    invoke-virtual {v1}, Lbql;->a()V

    .line 490
    :goto_0
    return-object v0

    .line 488
    :cond_0
    iget-object v1, p0, Lbqe;->i:Lbql;

    iget-object v1, v1, Lbql;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;)Lbqi;
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lbqi;

    invoke-direct {v0, p0, p1}, Lbqi;-><init>(Lbqe;Landroid/net/Uri;)V

    return-object v0
.end method

.method public final a(Ljava/io/File;)Lbqi;
    .locals 2

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Lbqi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbqi;-><init>(Lbqe;Landroid/net/Uri;)V

    .line 319
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbqe;->a(Landroid/net/Uri;)Lbqi;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Landroid/graphics/Bitmap;Lbqe$d;Lbpk;)V
    .locals 5

    .prologue
    .line 548
    iget-boolean v0, p3, Lbpk;->l:Z

    if-eqz v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-boolean v0, p3, Lbpk;->k:Z

    if-nez v0, :cond_2

    .line 552
    iget-object v0, p0, Lbqe;->j:Ljava/util/Map;

    invoke-virtual {p3}, Lbpk;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_2
    if-eqz p1, :cond_4

    .line 555
    if-nez p2, :cond_3

    .line 556
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LoadedFrom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 558
    :cond_3
    invoke-virtual {p3, p1, p2}, Lbpk;->a(Landroid/graphics/Bitmap;Lbqe$d;)V

    .line 559
    iget-boolean v0, p0, Lbqe;->o:Z

    if-eqz v0, :cond_0

    .line 560
    const-string v0, "Main"

    const-string v1, "completed"

    iget-object v2, p3, Lbpk;->b:Lbqh;

    invoke-virtual {v2}, Lbqh;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_4
    invoke-virtual {p3}, Lbpk;->a()V

    .line 564
    iget-boolean v0, p0, Lbqe;->o:Z

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "Main"

    const-string v1, "errored"

    iget-object v2, p3, Lbpk;->b:Lbqh;

    invoke-virtual {v2}, Lbqh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbqp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lbpk;)V
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p1}, Lbpk;->c()Ljava/lang/Object;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbqe;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 473
    invoke-virtual {p0, v0}, Lbqe;->a(Ljava/lang/Object;)V

    .line 474
    iget-object v1, p0, Lbqe;->j:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_0
    invoke-virtual {p0, p1}, Lbqe;->b(Lbpk;)V

    .line 477
    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 571
    invoke-static {}, Lbqp;->a()V

    .line 572
    iget-object v0, p0, Lbqe;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpk;

    .line 573
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lbpk;->b()V

    .line 575
    iget-object v1, p0, Lbqe;->g:Lbps;

    iget-object v2, v1, Lbps;->i:Landroid/os/Handler;

    iget-object v1, v1, Lbps;->i:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 577
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 578
    check-cast p1, Landroid/widget/ImageView;

    .line 579
    iget-object v0, p0, Lbqe;->k:Ljava/util/Map;

    .line 580
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpr;

    .line 581
    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {v0}, Lbpr;->a()V

    .line 585
    :cond_1
    return-void
.end method

.method final b(Lbpk;)V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lbqe;->g:Lbps;

    iget-object v1, v0, Lbps;->i:Landroid/os/Handler;

    iget-object v0, v0, Lbps;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    return-void
.end method
