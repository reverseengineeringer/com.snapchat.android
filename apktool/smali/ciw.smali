.class public final Lciw;
.super Lcik;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lciw$c;,
        Lciw$b;,
        Lciw$a;
    }
.end annotation


# static fields
.field static final E:Lchr;

.field private static final H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lchl;",
            "Ljava/util/ArrayList",
            "<",
            "Lciw;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field F:Lcjf;

.field G:Lcjc;

.field private I:Lchr;

.field private J:J

.field private K:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 106
    new-instance v0, Lchr;

    const-wide v2, -0xb1d069b5400L

    invoke-direct {v0, v2, v3}, Lchr;-><init>(J)V

    sput-object v0, Lciw;->E:Lchr;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lciw;->H:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lchg;Lcjf;Lcjc;Lchr;)V
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

    invoke-direct {p0, p1, v0}, Lcik;-><init>(Lchg;Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method private constructor <init>(Lcjf;Lcjc;Lchr;)V
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

    invoke-direct {p0, v0, v1}, Lcik;-><init>(Lchg;Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method static a(JLchg;Lchg;)J
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p2}, Lchg;->E()Lchi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lchi;->a(J)I

    move-result v0

    invoke-virtual {p2}, Lchg;->C()Lchi;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lchi;->a(J)I

    move-result v1

    invoke-virtual {p2}, Lchg;->u()Lchi;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lchi;->a(J)I

    move-result v2

    invoke-virtual {p2}, Lchg;->e()Lchi;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lchi;->a(J)I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lchg;->a(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lciw;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lciw;->K:J

    return-wide v0
.end method

.method public static a(Lchl;J)Lciw;
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lciw;->E:Lchr;

    iget-wide v0, v0, Lchr;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 255
    :goto_0
    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lciw;->a(Lchl;Lcia;I)Lciw;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Lchr;

    invoke-direct {v0, p1, p2}, Lchr;-><init>(J)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Lchl;Lcia;I)Lciw;
    .locals 8

    .prologue
    .line 190
    const-class v4, Lciw;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lchk;->a(Lchl;)Lchl;

    move-result-object v5

    .line 192
    if-nez p1, :cond_1

    .line 193
    sget-object v0, Lciw;->E:Lchr;

    move-object v3, v0

    .line 203
    :goto_0
    sget-object v6, Lciw;->H:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    sget-object v0, Lciw;->H:Ljava/util/Map;

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
    sget-object v1, Lciw;->H:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    sget-object v1, Lchl;->a:Lchl;

    if-ne v5, v1, :cond_3

    .line 219
    new-instance v1, Lciw;

    invoke-static {v5, p2}, Lcjf;->a(Lchl;I)Lcjf;

    move-result-object v2

    invoke-static {v5, p2}, Lcjc;->a(Lchl;I)Lcjc;

    move-result-object v5

    invoke-direct {v1, v2, v5, v3}, Lciw;-><init>(Lcjf;Lcjc;Lchr;)V

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
    invoke-interface {p1}, Lcia;->b()Lchr;

    move-result-object v0

    .line 196
    new-instance v1, Lchs;

    iget-wide v2, v0, Lchr;->a:J

    invoke-static {v5}, Lcjc;->b(Lchl;)Lcjc;

    move-result-object v6

    invoke-direct {v1, v2, v3, v6}, Lchs;-><init>(JLchg;)V

    .line 197
    iget-object v2, v1, Lchs;->b:Lchg;

    invoke-virtual {v2}, Lchg;->E()Lchi;

    move-result-object v2

    iget-wide v6, v1, Lchs;->a:J

    invoke-virtual {v2, v6, v7}, Lchi;->a(J)I

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

    check-cast v1, Lciw;

    .line 211
    iget-object v7, v1, Lciw;->G:Lcjc;

    iget v7, v7, Lcim;->E:I

    if-ne p2, v7, :cond_4

    iget-object v7, v1, Lciw;->I:Lchr;

    invoke-virtual {v3, v7}, Lchr;->equals(Ljava/lang/Object;)Z

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
    sget-object v1, Lchl;->a:Lchl;

    invoke-static {v1, v3, p2}, Lciw;->a(Lchl;Lcia;I)Lciw;

    move-result-object v2

    .line 225
    new-instance v1, Lciw;

    invoke-static {v2, v5}, Lcjh;->a(Lchg;Lchl;)Lcjh;

    move-result-object v3

    iget-object v5, v2, Lciw;->F:Lcjf;

    iget-object v7, v2, Lciw;->G:Lcjc;

    iget-object v2, v2, Lciw;->I:Lchr;

    invoke-direct {v1, v3, v5, v7, v2}, Lciw;-><init>(Lchg;Lcjf;Lcjc;Lchr;)V
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

.method static b(JLchg;Lchg;)J
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p3}, Lchg;->z()Lchi;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p2}, Lchg;->z()Lchi;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lchi;->a(J)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lchi;->b(JI)J

    move-result-wide v0

    .line 97
    invoke-virtual {p3}, Lchg;->x()Lchi;

    move-result-object v2

    invoke-virtual {p2}, Lchg;->x()Lchi;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lchi;->a(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lchi;->b(JI)J

    move-result-wide v0

    .line 98
    invoke-virtual {p3}, Lchg;->t()Lchi;

    move-result-object v2

    invoke-virtual {p2}, Lchg;->t()Lchi;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lchi;->a(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lchi;->b(JI)J

    move-result-wide v0

    .line 99
    invoke-virtual {p3}, Lchg;->e()Lchi;

    move-result-object v2

    invoke-virtual {p2}, Lchg;->e()Lchi;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lchi;->a(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lchi;->b(JI)J

    move-result-wide v0

    .line 100
    return-wide v0
.end method

.method public static b(Lchl;)Lciw;
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lciw;->a(Lchl;Lcia;I)Lciw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lciw;)Lcjc;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lciw;->G:Lcjc;

    return-object v0
.end method


# virtual methods
.method public final a(IIII)J
    .locals 4

    .prologue
    .line 334
    iget-object v0, p0, Lcik;->a:Lchg;

    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0, p1, p2, p3, p4}, Lchg;->a(IIII)J

    move-result-wide v0

    .line 350
    :cond_0
    return-wide v0

    .line 339
    :cond_1
    iget-object v0, p0, Lciw;->G:Lcjc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcjc;->a(IIII)J

    move-result-wide v0

    .line 341
    iget-wide v2, p0, Lciw;->J:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 343
    iget-object v0, p0, Lciw;->F:Lcjf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcjf;->a(IIII)J

    move-result-wide v0

    .line 345
    iget-wide v2, p0, Lciw;->J:J

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
    iget-object v0, p0, Lcik;->a:Lchg;

    if-eqz v0, :cond_1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 360
    invoke-virtual/range {v0 .. v7}, Lchg;->a(IIIIIII)J

    move-result-wide v0

    .line 392
    :cond_0
    return-wide v0

    .line 368
    :cond_1
    :try_start_0
    iget-object v0, p0, Lciw;->G:Lcjc;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcjc;->a(IIIIIII)J
    :try_end_0
    .catch Lchp; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 382
    :cond_2
    iget-wide v2, p0, Lciw;->J:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 384
    iget-object v0, p0, Lciw;->F:Lcjf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcjf;->a(IIIIIII)J

    move-result-wide v0

    .line 387
    iget-wide v2, p0, Lciw;->J:J

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
    iget-object v0, p0, Lciw;->G:Lcjc;

    const/16 v3, 0x1c

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcjc;->a(IIIIIII)J

    move-result-wide v0

    .line 378
    iget-wide v2, p0, Lciw;->J:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 379
    throw v8
.end method

.method final a(J)J
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lciw;->F:Lcjf;

    iget-object v1, p0, Lciw;->G:Lcjc;

    invoke-static {p1, p2, v0, v1}, Lciw;->a(JLchg;Lchg;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lchl;)Lchg;
    .locals 2

    .prologue
    .line 320
    if-nez p1, :cond_0

    .line 321
    invoke-static {}, Lchl;->a()Lchl;

    move-result-object p1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lciw;->a()Lchl;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 326
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lciw;->I:Lchr;

    iget-object v1, p0, Lciw;->G:Lcjc;

    iget v1, v1, Lcim;->E:I

    invoke-static {p1, v0, v1}, Lciw;->a(Lchl;Lcia;I)Lciw;

    move-result-object p0

    goto :goto_0
.end method

.method public final a()Lchl;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcik;->a:Lchg;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lchg;->a()Lchl;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lchl;->a:Lchl;

    goto :goto_0
.end method

.method protected final a(Lcik$a;)V
    .locals 10

    .prologue
    .line 478
    iget-object v0, p0, Lcik;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 480
    const/4 v1, 0x0

    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lcjf;

    .line 481
    const/4 v1, 0x1

    aget-object v1, v0, v1

    move-object v6, v1

    check-cast v6, Lcjc;

    .line 482
    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lchr;

    .line 483
    iget-wide v2, v0, Lchr;->a:J

    iput-wide v2, p0, Lciw;->J:J

    .line 485
    iput-object v9, p0, Lciw;->F:Lcjf;

    .line 486
    iput-object v6, p0, Lciw;->G:Lcjc;

    .line 487
    iput-object v0, p0, Lciw;->I:Lchr;

    .line 489
    iget-object v0, p0, Lcik;->a:Lchg;

    if-eqz v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 493
    :cond_0
    iget v0, v9, Lcim;->E:I

    iget v1, v6, Lcim;->E:I

    if-eq v0, v1, :cond_1

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 498
    :cond_1
    iget-wide v0, p0, Lciw;->J:J

    iget-wide v2, p0, Lciw;->J:J

    invoke-virtual {p0, v2, v3}, Lciw;->a(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lciw;->K:J

    .line 504
    invoke-virtual {p1, v6}, Lcik$a;->a(Lchg;)V

    .line 510
    iget-object v0, v6, Lcik;->i:Lchi;

    iget-wide v2, p0, Lciw;->J:J

    invoke-virtual {v0, v2, v3}, Lchi;->a(J)I

    move-result v0

    if-nez v0, :cond_2

    .line 514
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->h:Lchi;

    iget-object v3, p1, Lcik$a;->m:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->m:Lchi;

    .line 515
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->i:Lchi;

    iget-object v3, p1, Lcik$a;->n:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->n:Lchi;

    .line 516
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->j:Lchi;

    iget-object v3, p1, Lcik$a;->o:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->o:Lchi;

    .line 517
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->k:Lchi;

    iget-object v3, p1, Lcik$a;->p:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->p:Lchi;

    .line 518
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->l:Lchi;

    iget-object v3, p1, Lcik$a;->q:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->q:Lchi;

    .line 519
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->m:Lchi;

    iget-object v3, p1, Lcik$a;->r:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->r:Lchi;

    .line 520
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->n:Lchi;

    iget-object v3, p1, Lcik$a;->s:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->s:Lchi;

    .line 521
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->p:Lchi;

    iget-object v3, p1, Lcik$a;->u:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->u:Lchi;

    .line 522
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->o:Lchi;

    iget-object v3, p1, Lcik$a;->t:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->t:Lchi;

    .line 523
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->q:Lchi;

    iget-object v3, p1, Lcik$a;->v:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->v:Lchi;

    .line 525
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->r:Lchi;

    iget-object v3, p1, Lcik$a;->w:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->w:Lchi;

    .line 530
    :cond_2
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->D:Lchi;

    iget-object v3, p1, Lcik$a;->I:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->I:Lchi;

    .line 539
    iget-object v0, v6, Lcik;->z:Lchi;

    iget-wide v2, p0, Lciw;->J:J

    invoke-virtual {v0, v2, v3}, Lchi;->e(J)J

    move-result-wide v4

    .line 540
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->u:Lchi;

    iget-object v3, p1, Lcik$a;->z:Lchi;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->z:Lchi;

    .line 545
    iget-object v0, v6, Lcik;->w:Lchi;

    iget-wide v2, p0, Lciw;->J:J

    invoke-virtual {v0, v2, v3}, Lchi;->e(J)J

    move-result-wide v4

    .line 546
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->v:Lchi;

    iget-object v3, p1, Lcik$a;->A:Lchi;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lciw$a;-><init>(Lciw;Lchi;Lchi;JZ)V

    iput-object v0, p1, Lcik$a;->A:Lchi;

    .line 554
    new-instance v0, Lciw$b;

    iget-object v2, v9, Lcik;->z:Lchi;

    iget-object v3, p1, Lcik$a;->E:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$b;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->E:Lchi;

    .line 556
    iget-object v0, p1, Lcik$a;->E:Lchi;

    invoke-virtual {v0}, Lchi;->d()Lchn;

    move-result-object v0

    iput-object v0, p1, Lcik$a;->j:Lchn;

    .line 557
    new-instance v1, Lciw$b;

    iget-object v3, v9, Lcik;->A:Lchi;

    iget-object v4, p1, Lcik$a;->F:Lchi;

    iget-object v5, p1, Lcik$a;->j:Lchn;

    iget-wide v6, p0, Lciw;->J:J

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lciw$b;-><init>(Lciw;Lchi;Lchi;Lchn;J)V

    iput-object v1, p1, Lcik$a;->F:Lchi;

    .line 559
    new-instance v1, Lciw$b;

    iget-object v3, v9, Lcik;->B:Lchi;

    iget-object v4, p1, Lcik$a;->G:Lchi;

    iget-object v5, p1, Lcik$a;->j:Lchn;

    iget-wide v6, p0, Lciw;->J:J

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lciw$b;-><init>(Lciw;Lchi;Lchi;Lchn;J)V

    iput-object v1, p1, Lcik$a;->G:Lchi;

    .line 562
    new-instance v0, Lciw$b;

    iget-object v2, v9, Lcik;->C:Lchi;

    iget-object v3, p1, Lcik$a;->H:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$b;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->H:Lchi;

    .line 564
    iget-object v0, p1, Lcik$a;->H:Lchi;

    invoke-virtual {v0}, Lchi;->d()Lchn;

    move-result-object v0

    iput-object v0, p1, Lcik$a;->k:Lchn;

    .line 566
    new-instance v0, Lciw$b;

    iget-object v2, v9, Lcik;->y:Lchi;

    iget-object v3, p1, Lcik$a;->D:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$b;-><init>(Lciw;Lchi;Lchi;J)V

    iput-object v0, p1, Lcik$a;->D:Lchi;

    .line 568
    iget-object v0, p1, Lcik$a;->D:Lchi;

    invoke-virtual {v0}, Lchi;->d()Lchn;

    move-result-object v0

    iput-object v0, p1, Lcik$a;->i:Lchn;

    .line 570
    new-instance v1, Lciw$b;

    iget-object v3, v9, Lcik;->w:Lchi;

    iget-object v4, p1, Lcik$a;->B:Lchi;

    const/4 v5, 0x0

    iget-wide v6, p0, Lciw;->J:J

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lciw$b;-><init>(Lciw;Lchi;Lchi;Lchn;JZ)V

    iput-object v1, p1, Lcik$a;->B:Lchi;

    .line 572
    new-instance v1, Lciw$b;

    iget-object v3, v9, Lcik;->x:Lchi;

    iget-object v4, p1, Lcik$a;->C:Lchi;

    iget-object v5, p1, Lcik$a;->h:Lchn;

    iget-wide v6, p0, Lciw;->J:J

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lciw$b;-><init>(Lciw;Lchi;Lchi;Lchn;J)V

    iput-object v1, p1, Lcik$a;->C:Lchi;

    .line 574
    iget-object v0, p1, Lcik$a;->B:Lchi;

    invoke-virtual {v0}, Lchi;->d()Lchn;

    move-result-object v0

    iput-object v0, p1, Lcik$a;->h:Lchn;

    .line 580
    new-instance v0, Lciw$a;

    iget-object v2, v9, Lcik;->t:Lchi;

    iget-object v3, p1, Lcik$a;->y:Lchi;

    iget-wide v4, p0, Lciw;->J:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lciw$a;-><init>(Lciw;Lchi;Lchi;J)V

    .line 582
    iget-object v1, p1, Lcik$a;->i:Lchn;

    iput-object v1, v0, Lciw$a;->f:Lchn;

    .line 583
    iput-object v0, p1, Lcik$a;->y:Lchi;

    goto/16 :goto_0
.end method

.method public final b()Lchg;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lchl;->a:Lchl;

    invoke-virtual {p0, v0}, Lciw;->a(Lchl;)Lchg;

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
    instance-of v2, p1, Lciw;

    if-eqz v2, :cond_3

    .line 425
    check-cast p1, Lciw;

    .line 426
    iget-wide v2, p0, Lciw;->J:J

    iget-wide v4, p1, Lciw;->J:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lciw;->G:Lcjc;

    iget v2, v2, Lcim;->E:I

    iget-object v3, p1, Lciw;->G:Lcjc;

    iget v3, v3, Lcim;->E:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lciw;->a()Lchl;

    move-result-object v2

    invoke-virtual {p1}, Lciw;->a()Lchl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lchl;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lciw;->a()Lchl;

    move-result-object v1

    invoke-virtual {v1}, Lchl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lciw;->G:Lcjc;

    iget v1, v1, Lcim;->E:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lciw;->I:Lchr;

    invoke-virtual {v1}, Lchr;->hashCode()I

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
    invoke-virtual {p0}, Lciw;->a()Lchl;

    move-result-object v0

    iget-object v0, v0, Lchl;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    iget-wide v2, p0, Lciw;->J:J

    sget-object v0, Lciw;->E:Lchr;

    iget-wide v4, v0, Lchr;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 458
    const-string v0, ",cutover="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    sget-object v0, Lchl;->a:Lchl;

    invoke-virtual {p0, v0}, Lciw;->a(Lchl;)Lchg;

    move-result-object v0

    invoke-virtual {v0}, Lchg;->v()Lchi;

    move-result-object v0

    iget-wide v2, p0, Lciw;->J:J

    invoke-virtual {v0, v2, v3}, Lchi;->i(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 461
    invoke-static {}, Lcld$a;->c()Lckx;

    move-result-object v0

    .line 465
    :goto_0
    sget-object v2, Lchl;->a:Lchl;

    invoke-virtual {p0, v2}, Lciw;->a(Lchl;)Lchg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lckx;->a(Lchg;)Lckx;

    move-result-object v0

    iget-wide v2, p0, Lciw;->J:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lckx;->a(Ljava/lang/StringBuffer;JLchg;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lciw;->G:Lcjc;

    iget v0, v0, Lcim;->E:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 469
    const-string v0, ",mdfw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    iget-object v0, p0, Lciw;->G:Lcjc;

    iget v0, v0, Lcim;->E:I

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
    invoke-static {}, Lcld$a;->b()Lckx;

    move-result-object v0

    goto :goto_0
.end method
