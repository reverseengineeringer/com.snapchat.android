.class public final Lchv;
.super Lchj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchv$c;,
        Lchv$b;,
        Lchv$a;
    }
.end annotation


# static fields
.field static final E:Lcgq;

.field private static final H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcgk;",
            "Ljava/util/ArrayList",
            "<",
            "Lchv;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field F:Lcie;

.field G:Lcib;

.field private I:Lcgq;

.field private J:J

.field private K:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Lcgq;

    const-wide v2, -0xb1d069b5400L

    invoke-direct {v0, v2, v3}, Lcgq;-><init>(J)V

    sput-object v0, Lchv;->E:Lcgq;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lchv;->H:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcgf;Lcie;Lcib;Lcgq;)V
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-direct {p0, p1, v0}, Lchj;-><init>(Lcgf;Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method private constructor <init>(Lcie;Lcib;Lcgq;)V
    .locals 3

    .prologue
    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lchj;-><init>(Lcgf;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method static a(JLcgf;Lcgf;)J
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p2}, Lcgf;->E()Lcgh;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcgh;->a(J)I

    move-result v0

    invoke-virtual {p2}, Lcgf;->C()Lcgh;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcgh;->a(J)I

    move-result v1

    invoke-virtual {p2}, Lcgf;->u()Lcgh;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcgh;->a(J)I

    move-result v2

    invoke-virtual {p2}, Lcgf;->e()Lcgh;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcgh;->a(J)I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lcgf;->a(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lchv;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lchv;->K:J

    return-wide v0
.end method

.method public static a(Lcgk;J)Lchv;
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lchv;->E:Lcgq;

    iget-wide v0, v0, Lcgq;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 255
    :goto_0
    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lchv;->a(Lcgk;Lcgz;I)Lchv;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Lcgq;

    invoke-direct {v0, p1, p2}, Lcgq;-><init>(J)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Lcgk;Lcgz;I)Lchv;
    .locals 8

    .prologue
    .line 190
    const-class v4, Lchv;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcgj;->a(Lcgk;)Lcgk;

    move-result-object v5

    .line 192
    if-nez p1, :cond_1

    .line 193
    sget-object v0, Lchv;->E:Lcgq;

    move-object v3, v0

    .line 203
    :goto_0
    sget-object v6, Lchv;->H:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    sget-object v0, Lchv;->H:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 205
    if-nez v0, :cond_2

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    sget-object v1, Lchv;->H:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    sget-object v1, Lcgk;->a:Lcgk;

    if-ne v5, v1, :cond_3

    .line 219
    new-instance v1, Lchv;

    invoke-static {v5, p2}, Lcie;->a(Lcgk;I)Lcie;

    move-result-object v2

    invoke-static {v5, p2}, Lcib;->a(Lcgk;I)Lcib;

    move-result-object v5

    invoke-direct {v1, v2, v5, v3}, Lchv;-><init>(Lcie;Lcib;Lcgq;)V

    .line 231
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :goto_2
    monitor-exit v4

    return-object v1

    .line 195
    :cond_1
    :try_start_2
    invoke-interface {p1}, Lcgz;->b()Lcgq;

    move-result-object v0

    .line 196
    new-instance v1, Lcgr;

    iget-wide v2, v0, Lcgq;->a:J

    invoke-static {v5}, Lcib;->b(Lcgk;)Lcib;

    move-result-object v6

    invoke-direct {v1, v2, v3, v6}, Lcgr;-><init>(JLcgf;)V

    .line 197
    iget-object v2, v1, Lcgr;->b:Lcgf;

    invoke-virtual {v2}, Lcgf;->E()Lcgh;

    move-result-object v2

    iget-wide v6, v1, Lcgr;->a:J

    invoke-virtual {v2, v6, v7}, Lcgh;->a(J)I

    move-result v1

    if-gtz v1, :cond_5

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cutover too early. Must be on or after 0001-01-01."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 209
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_0

    .line 210
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchv;

    .line 211
    iget-object v7, v1, Lchv;->G:Lcib;

    iget v7, v7, Lchl;->E:I

    if-ne p2, v7, :cond_4

    iget-object v7, v1, Lchv;->I:Lcgq;

    invoke-virtual {v3, v7}, Lcgq;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 214
    monitor-exit v6

    goto :goto_2

    .line 232
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    :cond_3
    :try_start_5
    sget-object v1, Lcgk;->a:Lcgk;

    invoke-static {v1, v3, p2}, Lchv;->a(Lcgk;Lcgz;I)Lchv;

    move-result-object v2

    .line 225
    new-instance v1, Lchv;

    invoke-static {v2, v5}, Lcig;->a(Lcgf;Lcgk;)Lcig;

    move-result-object v3

    iget-object v5, v2, Lchv;->F:Lcie;

    iget-object v7, v2, Lchv;->G:Lcib;

    iget-object v2, v2, Lchv;->I:Lcgq;

    invoke-direct {v1, v3, v5, v7, v2}, Lchv;-><init>(Lcgf;Lcie;Lcib;Lcgq;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move-object v3, v0

    goto/16 :goto_0
.end method

.method static b(JLcgf;Lcgf;)J
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p3}, Lcgf;->z()Lcgh;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Lcgf;->z()Lcgh;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcgh;->a(J)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcgh;->b(JI)J

    move-result-wide v0

    .line 97
    invoke-virtual {p3}, Lcgf;->x()Lcgh;

    move-result-object v2

    invoke-virtual {p2}, Lcgf;->x()Lcgh;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcgh;->a(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcgh;->b(JI)J

    move-result-wide v0

    .line 98
    invoke-virtual {p3}, Lcgf;->t()Lcgh;

    move-result-object v2

    invoke-virtual {p2}, Lcgf;->t()Lcgh;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcgh;->a(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcgh;->b(JI)J

    move-result-wide v0

    .line 99
    invoke-virtual {p3}, Lcgf;->e()Lcgh;

    move-result-object v2

    invoke-virtual {p2}, Lcgf;->e()Lcgh;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcgh;->a(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcgh;->b(JI)J

    move-result-wide v0

    .line 100
    return-wide v0
.end method

.method public static b(Lcgk;)Lchv;
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lchv;->a(Lcgk;Lcgz;I)Lchv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lchv;)Lcib;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lchv;->G:Lcib;

    return-object v0
.end method


# virtual methods
.method public final a(IIII)J
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lchj;->a:Lcgf;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0, p1, p2, p3, p4}, Lcgf;->a(IIII)J

    move-result-wide v0

    .line 350
    :cond_0
    return-wide v0

    .line 339
    :cond_1
    iget-object v0, p0, Lchv;->G:Lcib;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcib;->a(IIII)J

    move-result-wide v0

    .line 341
    iget-wide v2, p0, Lchv;->J:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 343
    iget-object v0, p0, Lchv;->F:Lcie;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcie;->a(IIII)J

    move-result-wide v0

    .line 345
    iget-wide v2, p0, Lchv;->J:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified date does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(IIIIIII)J
    .locals 9

    .prologue
    .line 359
    iget-object v0, p0, Lchj;->a:Lcgf;

    if-eqz v0, :cond_1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 360
    invoke-virtual/range {v0 .. v7}, Lcgf;->a(IIIIIII)J

    move-result-wide v0

    .line 392
    :cond_0
    return-wide v0

    .line 368
    :cond_1
    :try_start_0
    iget-object v0, p0, Lchv;->G:Lcib;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcib;->a(IIIIIII)J
    :try_end_0
    .catch Lcgo; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 382
    :cond_2
    iget-wide v2, p0, Lchv;->J:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 384
    iget-object v0, p0, Lchv;->F:Lcie;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcie;->a(IIIIIII)J

    move-result-wide v0

    .line 387
    iget-wide v2, p0, Lchv;->J:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified date does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 372
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    const/16 v0, 0x1d

    if-eq p3, v0, :cond_4

    .line 373
    :cond_3
    throw v8

    .line 375
    :cond_4
    iget-object v0, p0, Lchv;->G:Lcib;

    const/16 v3, 0x1c

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcib;->a(IIIIIII)J

    move-result-wide v0

    .line 378
    iget-wide v2, p0, Lchv;->J:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 379
    throw v8
.end method

.method final a(J)J
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lchv;->F:Lcie;

    iget-object v1, p0, Lchv;->G:Lcib;

    invoke-static {p1, p2, v0, v1}, Lchv;->a(JLcgf;Lcgf;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcgk;)Lcgf;
    .locals 2

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    invoke-static {}, Lcgk;->a()Lcgk;

    move-result-object p1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lchv;->a()Lcgk;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 326
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lchv;->I:Lcgq;

    iget-object v1, p0, Lchv;->G:Lcib;

    iget v1, v1, Lchl;->E:I

    invoke-static {p1, v0, v1}, Lchv;->a(Lcgk;Lcgz;I)Lchv;

    move-result-object p0

    goto :goto_0
.end method

.method public final a()Lcgk;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lchj;->a:Lcgf;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcgf;->a()Lcgk;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcgk;->a:Lcgk;

    goto :goto_0
.end method

.method protected final a(Lchj$a;)V
    .locals 10

    .prologue
    .line 478
    iget-object v0, p0, Lchj;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 480
    const/4 v1, 0x0

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lcie;

    .line 481
    const/4 v1, 0x1

    aget-object v1, v0, v1

    move-object v6, v1

    check-cast v6, Lcib;

    .line 482
    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcgq;

    .line 483
    iget-wide v2, v0, Lcgq;->a:J

    iput-wide v2, p0, Lchv;->J:J

    .line 485
    iput-object v9, p0, Lchv;->F:Lcie;

    .line 486
    iput-object v6, p0, Lchv;->G:Lcib;

    .line 487
    iput-object v0, p0, Lchv;->I:Lcgq;

    .line 489
    iget-object v0, p0, Lchj;->a:Lcgf;

    if-eqz v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 493
    :cond_0
    iget v0, v9, Lchl;->E:I

    iget v1, v6, Lchl;->E:I

    if-eq v0, v1, :cond_1

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 498
    :cond_1
    iget-wide v0, p0, Lchv;->J:J

    iget-wide v2, p0, Lchv;->J:J

    invoke-virtual {p0, v2, v3}, Lchv;->a(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lchv;->K:J

    .line 504
    invoke-virtual {p1, v6}, Lchj$a;->a(Lcgf;)V

    .line 510
    iget-object v0, v6, Lchj;->i:Lcgh;

    iget-wide v2, p0, Lchv;->J:J

    invoke-virtual {v0, v2, v3}, Lcgh;->a(J)I

    move-result v0

    if-nez v0, :cond_2

    .line 514
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->h:Lcgh;

    iget-object v3, p1, Lchj$a;->m:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->m:Lcgh;

    .line 515
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->i:Lcgh;

    iget-object v3, p1, Lchj$a;->n:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->n:Lcgh;

    .line 516
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->j:Lcgh;

    iget-object v3, p1, Lchj$a;->o:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->o:Lcgh;

    .line 517
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->k:Lcgh;

    iget-object v3, p1, Lchj$a;->p:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->p:Lcgh;

    .line 518
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->l:Lcgh;

    iget-object v3, p1, Lchj$a;->q:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->q:Lcgh;

    .line 519
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->m:Lcgh;

    iget-object v3, p1, Lchj$a;->r:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->r:Lcgh;

    .line 520
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->n:Lcgh;

    iget-object v3, p1, Lchj$a;->s:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->s:Lcgh;

    .line 521
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->p:Lcgh;

    iget-object v3, p1, Lchj$a;->u:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->u:Lcgh;

    .line 522
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->o:Lcgh;

    iget-object v3, p1, Lchj$a;->t:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->t:Lcgh;

    .line 523
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->q:Lcgh;

    iget-object v3, p1, Lchj$a;->v:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->v:Lcgh;

    .line 525
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->r:Lcgh;

    iget-object v3, p1, Lchj$a;->w:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->w:Lcgh;

    .line 530
    :cond_2
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->D:Lcgh;

    iget-object v3, p1, Lchj$a;->I:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->I:Lcgh;

    .line 539
    iget-object v0, v6, Lchj;->z:Lcgh;

    iget-wide v2, p0, Lchv;->J:J

    invoke-virtual {v0, v2, v3}, Lcgh;->e(J)J

    move-result-wide v4

    .line 540
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->u:Lcgh;

    iget-object v3, p1, Lchj$a;->z:Lcgh;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->z:Lcgh;

    .line 545
    iget-object v0, v6, Lchj;->w:Lcgh;

    iget-wide v2, p0, Lchv;->J:J

    invoke-virtual {v0, v2, v3}, Lcgh;->e(J)J

    move-result-wide v4

    .line 546
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->v:Lcgh;

    iget-object v3, p1, Lchj$a;->A:Lcgh;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;JZ)V

    iput-object v0, p1, Lchj$a;->A:Lcgh;

    .line 554
    new-instance v0, Lchv$b;

    iget-object v2, v9, Lchj;->z:Lcgh;

    iget-object v3, p1, Lchj$a;->E:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$b;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->E:Lcgh;

    .line 556
    iget-object v0, p1, Lchj$a;->E:Lcgh;

    invoke-virtual {v0}, Lcgh;->d()Lcgm;

    move-result-object v0

    iput-object v0, p1, Lchj$a;->j:Lcgm;

    .line 557
    new-instance v1, Lchv$b;

    iget-object v3, v9, Lchj;->A:Lcgh;

    iget-object v4, p1, Lchj$a;->F:Lcgh;

    iget-object v5, p1, Lchj$a;->j:Lcgm;

    iget-wide v6, p0, Lchv;->J:J

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lchv$b;-><init>(Lchv;Lcgh;Lcgh;Lcgm;J)V

    iput-object v1, p1, Lchj$a;->F:Lcgh;

    .line 559
    new-instance v1, Lchv$b;

    iget-object v3, v9, Lchj;->B:Lcgh;

    iget-object v4, p1, Lchj$a;->G:Lcgh;

    iget-object v5, p1, Lchj$a;->j:Lcgm;

    iget-wide v6, p0, Lchv;->J:J

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lchv$b;-><init>(Lchv;Lcgh;Lcgh;Lcgm;J)V

    iput-object v1, p1, Lchj$a;->G:Lcgh;

    .line 562
    new-instance v0, Lchv$b;

    iget-object v2, v9, Lchj;->C:Lcgh;

    iget-object v3, p1, Lchj$a;->H:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$b;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->H:Lcgh;

    .line 564
    iget-object v0, p1, Lchj$a;->H:Lcgh;

    invoke-virtual {v0}, Lcgh;->d()Lcgm;

    move-result-object v0

    iput-object v0, p1, Lchj$a;->k:Lcgm;

    .line 566
    new-instance v0, Lchv$b;

    iget-object v2, v9, Lchj;->y:Lcgh;

    iget-object v3, p1, Lchj$a;->D:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$b;-><init>(Lchv;Lcgh;Lcgh;J)V

    iput-object v0, p1, Lchj$a;->D:Lcgh;

    .line 568
    iget-object v0, p1, Lchj$a;->D:Lcgh;

    invoke-virtual {v0}, Lcgh;->d()Lcgm;

    move-result-object v0

    iput-object v0, p1, Lchj$a;->i:Lcgm;

    .line 570
    new-instance v1, Lchv$b;

    iget-object v3, v9, Lchj;->w:Lcgh;

    iget-object v4, p1, Lchj$a;->B:Lcgh;

    const/4 v5, 0x0

    iget-wide v6, p0, Lchv;->J:J

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lchv$b;-><init>(Lchv;Lcgh;Lcgh;Lcgm;JZ)V

    iput-object v1, p1, Lchj$a;->B:Lcgh;

    .line 572
    new-instance v1, Lchv$b;

    iget-object v3, v9, Lchj;->x:Lcgh;

    iget-object v4, p1, Lchj$a;->C:Lcgh;

    iget-object v5, p1, Lchj$a;->h:Lcgm;

    iget-wide v6, p0, Lchv;->J:J

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lchv$b;-><init>(Lchv;Lcgh;Lcgh;Lcgm;J)V

    iput-object v1, p1, Lchj$a;->C:Lcgh;

    .line 574
    iget-object v0, p1, Lchj$a;->B:Lcgh;

    invoke-virtual {v0}, Lcgh;->d()Lcgm;

    move-result-object v0

    iput-object v0, p1, Lchj$a;->h:Lcgm;

    .line 580
    new-instance v0, Lchv$a;

    iget-object v2, v9, Lchj;->t:Lcgh;

    iget-object v3, p1, Lchj$a;->y:Lcgh;

    iget-wide v4, p0, Lchv;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lchv$a;-><init>(Lchv;Lcgh;Lcgh;J)V

    .line 582
    iget-object v1, p1, Lchj$a;->i:Lcgm;

    iput-object v1, v0, Lchv$a;->f:Lcgm;

    .line 583
    iput-object v0, p1, Lchj$a;->y:Lcgh;

    goto/16 :goto_0
.end method

.method public final b()Lcgf;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcgk;->a:Lcgk;

    invoke-virtual {p0, v0}, Lchv;->a(Lcgk;)Lcgf;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 421
    if-ne p0, p1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    instance-of v2, p1, Lchv;

    if-eqz v2, :cond_3

    .line 425
    check-cast p1, Lchv;

    .line 426
    iget-wide v2, p0, Lchv;->J:J

    iget-wide v4, p1, Lchv;->J:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lchv;->G:Lcib;

    iget v2, v2, Lchl;->E:I

    iget-object v3, p1, Lchv;->G:Lcib;

    iget v3, v3, Lchl;->E:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lchv;->a()Lcgk;

    move-result-object v2

    invoke-virtual {p1}, Lchv;->a()Lcgk;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcgk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 430
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 440
    const-string v0, "GJ"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Lchv;->a()Lcgk;

    move-result-object v1

    invoke-virtual {v1}, Lcgk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lchv;->G:Lcib;

    iget v1, v1, Lchl;->E:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lchv;->I:Lcgq;

    invoke-virtual {v1}, Lcgq;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 452
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 453
    const-string v0, "GJChronology"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 455
    invoke-virtual {p0}, Lchv;->a()Lcgk;

    move-result-object v0

    iget-object v0, v0, Lcgk;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    iget-wide v2, p0, Lchv;->J:J

    sget-object v0, Lchv;->E:Lcgq;

    iget-wide v4, v0, Lcgq;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 458
    const-string v0, ",cutover="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    sget-object v0, Lcgk;->a:Lcgk;

    invoke-virtual {p0, v0}, Lchv;->a(Lcgk;)Lcgf;

    move-result-object v0

    invoke-virtual {v0}, Lcgf;->v()Lcgh;

    move-result-object v0

    iget-wide v2, p0, Lchv;->J:J

    invoke-virtual {v0, v2, v3}, Lcgh;->i(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 461
    invoke-static {}, Lckc$a;->c()Lcjw;

    move-result-object v0

    .line 465
    :goto_0
    sget-object v2, Lcgk;->a:Lcgk;

    invoke-virtual {p0, v2}, Lchv;->a(Lcgk;)Lcgf;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcjw;->a(Lcgf;)Lcjw;

    move-result-object v0

    iget-wide v2, p0, Lchv;->J:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcjw;->a(Ljava/lang/StringBuffer;JLcgf;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lchv;->G:Lcib;

    iget v0, v0, Lchl;->E:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 469
    const-string v0, ",mdfw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    iget-object v0, p0, Lchv;->G:Lcib;

    iget v0, v0, Lchl;->E:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 472
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 474
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :cond_2
    invoke-static {}, Lckc$a;->b()Lcjw;

    move-result-object v0

    goto :goto_0
.end method
