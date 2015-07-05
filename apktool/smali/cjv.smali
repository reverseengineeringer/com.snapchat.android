.class public final Lcjv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcjw;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Lcjw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcjv$1;

    invoke-direct {v0}, Lcjv$1;-><init>()V

    sput-object v0, Lcjv;->a:Ljava/util/Map;

    .line 160
    const/16 v0, 0x19

    new-array v0, v0, [Lcjw;

    sput-object v0, Lcjv;->b:[Lcjw;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcjw;
    .locals 1

    .prologue
    .line 181
    invoke-static {p0}, Lcjv;->c(Ljava/lang/String;)Lcjw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x61

    const/16 v9, 0x5a

    const/16 v8, 0x41

    const/16 v7, 0x27

    const/4 v1, 0x0

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    aget v2, p1, v1

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 590
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 591
    if-lt v0, v8, :cond_0

    if-le v0, v9, :cond_1

    :cond_0
    if-lt v0, v10, :cond_2

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_2

    .line 594
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v4, :cond_8

    .line 597
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 598
    if-ne v5, v0, :cond_8

    .line 599
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    add-int/lit8 v2, v2, 0x1

    .line 604
    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 611
    :goto_1
    if-ge v2, v4, :cond_8

    .line 612
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 614
    if-ne v5, v7, :cond_5

    .line 615
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v4, :cond_3

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3

    .line 617
    add-int/lit8 v2, v2, 0x1

    .line 618
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 620
    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    .line 622
    :cond_5
    if-nez v0, :cond_9

    if-lt v5, v8, :cond_6

    if-le v5, v9, :cond_7

    :cond_6
    if-lt v5, v10, :cond_9

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_9

    .line 624
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 632
    :cond_8
    aput v2, p1, v1

    .line 633
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 627
    :cond_9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static a(Lcjx;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 411
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 412
    new-array v5, v2, [I

    move v0, v1

    .line 414
    :goto_0
    if-ge v0, v4, :cond_a

    .line 415
    aput v0, v5, v1

    .line 416
    invoke-static {p1, v5}, Lcjv;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 417
    aget v6, v5, v1

    .line 419
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 420
    if-eqz v3, :cond_a

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 425
    sparse-switch v7, :sswitch_data_0

    .line 570
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal pattern component: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :sswitch_0
    invoke-static {}, Lcgi;->w()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcjx;->a(Lcgi;)Lcjx;

    .line 414
    :goto_1
    add-int/lit8 v0, v6, 0x1

    goto :goto_0

    .line 430
    :sswitch_1
    invoke-static {}, Lcgi;->v()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3}, Lcjx;->b(Lcgi;II)Lcjx;

    goto :goto_1

    .line 435
    :sswitch_2
    if-ne v3, v10, :cond_0

    .line 439
    add-int/lit8 v0, v6, 0x1

    if-ge v0, v4, :cond_c

    .line 440
    aget v0, v5, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, v5, v1

    .line 441
    invoke-static {p1, v5}, Lcjv;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcjv;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 447
    :goto_2
    aget v3, v5, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, v5, v1

    .line 451
    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 459
    new-instance v3, Lcgg;

    invoke-direct {v3}, Lcgg;-><init>()V

    invoke-virtual {v3}, Lcgg;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1e

    new-instance v7, Lcjx$m;

    invoke-static {}, Lcgi;->s()Lcgi;

    move-result-object v8

    invoke-direct {v7, v8, v3, v0}, Lcjx$m;-><init>(Lcgi;IZ)V

    invoke-virtual {p0, v7}, Lcjx;->a(Ljava/lang/Object;)Lcjx;

    goto :goto_1

    .line 453
    :pswitch_0
    new-instance v3, Lcgg;

    invoke-direct {v3}, Lcgg;-><init>()V

    invoke-virtual {v3}, Lchd;->d()Lcgf;

    move-result-object v7

    invoke-virtual {v7}, Lcgf;->z()Lcgh;

    move-result-object v7

    invoke-virtual {v3}, Lchd;->c()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcgh;->a(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1e

    new-instance v7, Lcjx$m;

    invoke-static {}, Lcgi;->p()Lcgi;

    move-result-object v8

    invoke-direct {v7, v8, v3, v0}, Lcjx$m;-><init>(Lcgi;IZ)V

    invoke-virtual {p0, v7}, Lcjx;->a(Ljava/lang/Object;)Lcjx;

    goto :goto_1

    .line 464
    :cond_0
    const/16 v0, 0x9

    .line 467
    add-int/lit8 v8, v6, 0x1

    if-ge v8, v4, :cond_2

    .line 468
    aget v8, v5, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v1

    .line 469
    invoke-static {p1, v5}, Lcjv;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcjv;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v3

    .line 473
    :cond_1
    aget v8, v5, v1

    add-int/lit8 v8, v8, -0x1

    aput v8, v5, v1

    .line 476
    :cond_2
    sparse-switch v7, :sswitch_data_1

    goto/16 :goto_1

    .line 484
    :sswitch_3
    invoke-static {}, Lcgi;->t()Lcgi;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v0}, Lcjx;->a(Lcgi;II)Lcjx;

    goto/16 :goto_1

    .line 478
    :sswitch_4
    invoke-virtual {p0, v3, v0}, Lcjx;->b(II)Lcjx;

    goto/16 :goto_1

    .line 481
    :sswitch_5
    invoke-virtual {p0, v3, v0}, Lcjx;->c(II)Lcjx;

    goto/16 :goto_1

    .line 490
    :sswitch_6
    const/4 v0, 0x3

    if-lt v3, v0, :cond_4

    .line 491
    if-lt v3, v11, :cond_3

    .line 492
    invoke-static {}, Lcgi;->r()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcjx;->a(Lcgi;)Lcjx;

    goto/16 :goto_1

    .line 494
    :cond_3
    invoke-static {}, Lcgi;->r()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcjx;->b(Lcgi;)Lcjx;

    goto/16 :goto_1

    .line 497
    :cond_4
    invoke-virtual {p0, v3}, Lcjx;->h(I)Lcjx;

    goto/16 :goto_1

    .line 501
    :sswitch_7
    invoke-virtual {p0, v3}, Lcjx;->e(I)Lcjx;

    goto/16 :goto_1

    .line 504
    :sswitch_8
    invoke-static {}, Lcgi;->k()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcjx;->a(Lcgi;)Lcjx;

    goto/16 :goto_1

    .line 507
    :sswitch_9
    invoke-static {}, Lcgi;->j()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v10}, Lcjx;->a(Lcgi;II)Lcjx;

    goto/16 :goto_1

    .line 510
    :sswitch_a
    invoke-virtual {p0, v3}, Lcjx;->c(I)Lcjx;

    goto/16 :goto_1

    .line 513
    :sswitch_b
    invoke-static {}, Lcgi;->h()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v10}, Lcjx;->a(Lcgi;II)Lcjx;

    goto/16 :goto_1

    .line 516
    :sswitch_c
    invoke-static {}, Lcgi;->i()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v10}, Lcjx;->a(Lcgi;II)Lcjx;

    goto/16 :goto_1

    .line 519
    :sswitch_d
    invoke-virtual {p0, v3}, Lcjx;->b(I)Lcjx;

    goto/16 :goto_1

    .line 522
    :sswitch_e
    invoke-virtual {p0, v3}, Lcjx;->a(I)Lcjx;

    goto/16 :goto_1

    .line 525
    :sswitch_f
    invoke-virtual {p0, v3, v3}, Lcjx;->a(II)Lcjx;

    goto/16 :goto_1

    .line 528
    :sswitch_10
    invoke-virtual {p0, v3}, Lcjx;->d(I)Lcjx;

    goto/16 :goto_1

    .line 531
    :sswitch_11
    if-lt v3, v11, :cond_5

    .line 532
    invoke-static {}, Lcgi;->l()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcjx;->a(Lcgi;)Lcjx;

    goto/16 :goto_1

    .line 534
    :cond_5
    invoke-static {}, Lcgi;->l()Lcgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcjx;->b(Lcgi;)Lcjx;

    goto/16 :goto_1

    .line 538
    :sswitch_12
    invoke-virtual {p0, v3}, Lcjx;->f(I)Lcjx;

    goto/16 :goto_1

    .line 541
    :sswitch_13
    invoke-virtual {p0, v3}, Lcjx;->g(I)Lcjx;

    goto/16 :goto_1

    .line 544
    :sswitch_14
    if-lt v3, v11, :cond_6

    .line 545
    new-instance v0, Lcjx$k;

    invoke-direct {v0, v1}, Lcjx$k;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcjx;->a(Lcka;Lcjy;)Lcjx;

    goto/16 :goto_1

    .line 547
    :cond_6
    new-instance v0, Lcjx$k;

    invoke-direct {v0, v2}, Lcjx$k;-><init>(I)V

    invoke-virtual {p0, v0, v0}, Lcjx;->a(Lcka;Lcjy;)Lcjx;

    goto/16 :goto_1

    .line 551
    :sswitch_15
    if-ne v3, v2, :cond_7

    .line 552
    const-string v0, "Z"

    invoke-virtual {p0, v0, v1}, Lcjx;->a(Ljava/lang/String;Z)Lcjx;

    goto/16 :goto_1

    .line 553
    :cond_7
    if-ne v3, v10, :cond_8

    .line 554
    const-string v0, "Z"

    invoke-virtual {p0, v0, v2}, Lcjx;->a(Ljava/lang/String;Z)Lcjx;

    goto/16 :goto_1

    .line 556
    :cond_8
    sget-object v0, Lcjx$j;->a:Lcjx$j;

    sget-object v3, Lcjx$j;->a:Lcjx$j;

    invoke-virtual {p0, v0, v3}, Lcjx;->a(Lcka;Lcjy;)Lcjx;

    goto/16 :goto_1

    .line 560
    :sswitch_16
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_9

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcjx;->a(C)Lcjx;

    goto/16 :goto_1

    .line 566
    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcjx;->a(Ljava/lang/String;)Lcjx;

    goto/16 :goto_1

    .line 574
    :cond_a
    return-void

    :cond_b
    move v0, v2

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_3

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_16
        0x43 -> :sswitch_1
        0x44 -> :sswitch_12
        0x45 -> :sswitch_11
        0x47 -> :sswitch_0
        0x48 -> :sswitch_a
        0x4b -> :sswitch_c
        0x4d -> :sswitch_6
        0x53 -> :sswitch_f
        0x59 -> :sswitch_2
        0x5a -> :sswitch_15
        0x61 -> :sswitch_8
        0x64 -> :sswitch_7
        0x65 -> :sswitch_10
        0x68 -> :sswitch_9
        0x6b -> :sswitch_b
        0x6d -> :sswitch_d
        0x73 -> :sswitch_e
        0x77 -> :sswitch_13
        0x78 -> :sswitch_2
        0x79 -> :sswitch_2
        0x7a -> :sswitch_14
    .end sparse-switch

    .line 451
    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
    .end packed-switch

    .line 476
    :sswitch_data_1
    .sparse-switch
        0x59 -> :sswitch_3
        0x78 -> :sswitch_4
        0x79 -> :sswitch_5
    .end sparse-switch
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 643
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 644
    if-lez v2, :cond_0

    .line 645
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 646
    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 673
    :goto_0
    :sswitch_0
    return v0

    .line 667
    :sswitch_1
    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 646
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4b -> :sswitch_0
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
        0x57 -> :sswitch_0
        0x59 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6b -> :sswitch_0
        0x6d -> :sswitch_0
        0x73 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_0
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private static c(Ljava/lang/String;)Lcjw;
    .locals 3

    .prologue
    .line 685
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 686
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pattern specification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_1
    sget-object v1, Lcjv;->a:Ljava/util/Map;

    monitor-enter v1

    .line 690
    :try_start_0
    sget-object v0, Lcjv;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjw;

    .line 691
    if-nez v0, :cond_2

    .line 692
    new-instance v0, Lcjx;

    invoke-direct {v0}, Lcjx;-><init>()V

    .line 693
    invoke-static {v0, p0}, Lcjv;->a(Lcjx;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Lcjx;->a()Lcjw;

    move-result-object v0

    .line 696
    sget-object v2, Lcjv;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_2
    monitor-exit v1

    .line 699
    return-object v0

    .line 698
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
