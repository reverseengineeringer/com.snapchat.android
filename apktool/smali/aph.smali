.class public final Laph;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Laph;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lapf;

.field public c:Landroid/content/Context;

.field public final d:Landroid/util/SparseArray;
    .annotation runtime Lbxp;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Lapg;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 68
    const-string v0, "request_id"

    const-string v1, "from_pool"

    const-string v2, "CalledOnLoginOrOnResume"

    const-string v3, "FromNotification"

    invoke-static {v0, v1, v2, v3}, Ldr;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ldr;

    move-result-object v0

    sput-object v0, Laph;->e:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Laph;->g:Ljava/lang/Integer;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Laph;->d:Landroid/util/SparseArray;

    .line 93
    iput-object p1, p0, Laph;->a:Ljava/util/Map;

    .line 94
    invoke-direct {p0}, Laph;->h()V

    .line 95
    return-void
.end method

.method public static a(Lanh;)I
    .locals 3
    .param p0    # Lanh;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 126
    if-eqz p0, :cond_0

    .line 127
    invoke-interface {p0}, Lanh;->a()Landroid/content/Intent;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    const-string v2, "request_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 132
    :cond_0
    return v0
.end method

.method public static declared-synchronized a()Laph;
    .locals 3

    .prologue
    .line 98
    const-class v1, Laph;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laph;->f:Laph;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Laph;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Laph;-><init>(Ljava/util/Map;)V

    sput-object v0, Laph;->f:Laph;

    .line 101
    :cond_0
    sget-object v0, Laph;->f:Laph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 551
    if-eqz p0, :cond_0

    const-string v0, "request_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Intent;)I
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 558
    const-string v0, "request_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Lanh;)I
    .locals 3
    .param p0    # Lanh;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 643
    if-eqz p0, :cond_0

    .line 644
    invoke-interface {p0}, Lanh;->a()Landroid/content/Intent;

    move-result-object v1

    .line 645
    if-eqz v1, :cond_0

    .line 646
    const-string v2, "op_code"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 649
    :cond_0
    return v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 113
    const-class v1, Laph;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laph;->f:Laph;

    invoke-direct {v0}, Laph;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v1

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 13
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 594
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 595
    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 598
    :cond_0
    iget-object v5, p0, Laph;->a:Ljava/util/Map;

    monitor-enter v5

    .line 599
    :try_start_0
    sget-object v6, Laph;->e:Ljava/util/Set;

    .line 600
    iget-object v0, p0, Laph;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 601
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 602
    if-nez v8, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 603
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 604
    const/4 v3, 0x1

    .line 605
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 607
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 608
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    move v1, v2

    .line 628
    :goto_0
    if-eqz v1, :cond_1

    .line 629
    const-string v1, "request_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v5

    .line 634
    :goto_1
    return-object v0

    .line 613
    :cond_4
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 614
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 615
    if-nez v10, :cond_5

    .line 616
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "pending request id key ["

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "] has value null!"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    if-eqz v11, :cond_3

    move v1, v2

    .line 619
    goto :goto_0

    .line 621
    :cond_5
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 623
    goto :goto_0

    .line 633
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Laph;->g:Ljava/lang/Integer;

    .line 106
    iget-object v0, p0, Laph;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    new-instance v0, Lapf;

    invoke-direct {v0}, Lapf;-><init>()V

    iput-object v0, p0, Laph;->b:Lapf;

    .line 108
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 349
    const-string v1, "op_code"

    const/16 v2, 0x3ff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, p1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;I[B)I
    .locals 4

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 383
    const-string v1, "op_code"

    const/16 v2, 0x3f1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v1, "snapTagVersion"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v1, "snapTag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 387
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, p1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startCommand with op code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "op_code"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    iget-object v0, p0, Laph;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Laph;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Laph;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 465
    const-string v1, "request_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    invoke-direct {p0, p2}, Laph;->c(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v1

    .line 468
    if-nez v1, :cond_0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start service with the new request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v1, p0, Laph;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 476
    :goto_0
    return v0

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Do not start service if there is a pending operation with the request "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    iget-object v0, p0, Laph;->b:Lapf;

    invoke-virtual {v0, p2}, Lapf;->a(Landroid/content/Intent;)V

    .line 476
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 305
    const-string v1, "op_code"

    const/16 v2, 0x3f7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v1, "email"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, p1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 399
    invoke-virtual {p0, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 400
    const-string v1, "op_code"

    const/16 v2, 0x404

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string v1, "size"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "username_image"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0, p1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p4    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 259
    const-string v1, "op_code"

    const/16 v2, 0x3f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "param"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, p1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;ZZ)I
    .locals 3

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    const-string v1, "op_code"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v1, "use_cache"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    const-string v1, "only_new_contact"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, p1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lblr;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 268
    const-string v0, "op_code"

    const/16 v2, 0x408

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v0, "action"

    sget-object v2, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;->SAVE:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblr;

    .line 274
    new-instance v4, Labc;

    invoke-direct {v4}, Labc;-><init>()V

    sget-object v5, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->DEVICE_ID:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-virtual {v0}, Lblr;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->DEVICE_NAME:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-virtual {v0}, Lblr;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;->LAST_LOGIN:Lcom/snapchat/android/database/schema/VerifiedDeviceSchema;

    invoke-virtual {v0}, Lblr;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Labc;->a(Laav;J)Labc;

    move-result-object v0

    .line 279
    iget-object v0, v0, Labc;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_0
    const-string v0, "verified_devices"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final a(ZZ)I
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 442
    const-string v1, "op_code"

    const/16 v2, 0x402

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 443
    const-string v1, "FromNotification"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    const-string v1, "CalledOnLoginOrOnResume"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    iget-object v1, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;DDLjava/lang/Float;JLjava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 241
    const-string v1, "op_code"

    const/16 v2, 0x401

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string v1, "lat"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 243
    const-string v1, "long"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 244
    if-eqz p6, :cond_0

    .line 245
    const-string v1, "accuracyMeters"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 247
    :cond_0
    const-string v1, "totalPollingDurationMillis"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 248
    const-string v1, "action"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    return-object v0
.end method

.method public final a(ILapg;)V
    .locals 3
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerListener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    iget-object v1, p0, Laph;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-object v0, p0, Laph;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 488
    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 491
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v2, p0, Laph;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 493
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    const-string v1, "op_code"

    const/16 v2, 0x3f8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, p1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Laph;->b:Lapf;

    const-class v1, Lcom/snapchat/android/service/SnapchatService;

    invoke-virtual {v0, p1, v1}, Lapf;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILapg;)V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregisterListener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, Laph;->d:Landroid/util/SparseArray;

    monitor-enter v1

    .line 503
    :try_start_0
    iget-object v0, p0, Laph;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 504
    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 507
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 289
    const-string v1, "op_code"

    const/16 v2, 0x408

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v1, "action"

    sget-object v2, Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;->DELETE_ALL:Lcom/snapchat/android/operation/identity/UpdateVerifiedDeviceOperation$Action;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 393
    const-string v1, "op_code"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v1, "ImageId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, p1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 429
    const-string v1, "op_code"

    const/16 v2, 0x3f5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 436
    const-string v1, "op_code"

    const/16 v2, 0x3f6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    iget-object v1, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 449
    iget-object v0, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 450
    const-string v1, "op_code"

    const/16 v2, 0x403

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const-string v1, "FromNotification"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    const-string v1, "CalledOnLoginOrOnResume"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Laph;->c:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Laph;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
