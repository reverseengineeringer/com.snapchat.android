.class final Lbox$b;
.super Lbnl;
.source "SourceFile"

# interfaces
.implements Lbok$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field b:Lbok;

.field final synthetic c:Lbox;


# direct methods
.method private constructor <init>(Lbox;)V
    .locals 4

    .prologue
    .line 562
    iput-object p1, p0, Lbox$b;->c:Lbox;

    .line 563
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lbox;->a(Lbox;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbnl;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    return-void
.end method

.method synthetic constructor <init>(Lbox;B)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lbox$b;-><init>(Lbox;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 567
    sget-object v0, Lboj;->g:Lboj;

    .line 568
    sget-object v2, Lboj;->g:Lboj;

    .line 570
    :try_start_0
    iget-object v1, p0, Lbox$b;->c:Lbox;

    iget-object v1, v1, Lbox;->g:Lboz;

    iget-object v3, p0, Lbox$b;->c:Lbox;

    iget-object v3, v3, Lbox;->h:Ljava/net/Socket;

    invoke-static {v3}, Lcbe;->b(Ljava/net/Socket;)Lcbk;

    move-result-object v3

    invoke-static {v3}, Lcbe;->a(Lcbk;)Lcax;

    move-result-object v3

    iget-object v4, p0, Lbox$b;->c:Lbox;

    iget-boolean v4, v4, Lbox;->b:Z

    invoke-interface {v1, v3, v4}, Lboz;->a(Lcax;Z)Lbok;

    move-result-object v1

    iput-object v1, p0, Lbox$b;->b:Lbok;

    .line 571
    iget-object v1, p0, Lbox$b;->c:Lbox;

    iget-boolean v1, v1, Lbox;->b:Z

    if-nez v1, :cond_0

    .line 572
    iget-object v1, p0, Lbox$b;->b:Lbok;

    invoke-interface {v1}, Lbok;->a()V

    .line 574
    :cond_0
    iget-object v1, p0, Lbox$b;->b:Lbok;

    invoke-interface {v1, p0}, Lbok;->a(Lbok$a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    sget-object v0, Lboj;->a:Lboj;

    .line 577
    sget-object v1, Lboj;->l:Lboj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :try_start_1
    iget-object v2, p0, Lbox$b;->c:Lbox;

    invoke-static {v2, v0, v1}, Lbox;->a(Lbox;Lboj;Lboj;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 586
    :goto_0
    iget-object v0, p0, Lbox$b;->b:Lbok;

    invoke-static {v0}, Lbnq;->a(Ljava/io/Closeable;)V

    .line 587
    :goto_1
    return-void

    .line 579
    :catch_0
    move-exception v1

    :try_start_2
    sget-object v1, Lboj;->b:Lboj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    :try_start_3
    sget-object v0, Lboj;->b:Lboj;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 583
    :try_start_4
    iget-object v2, p0, Lbox$b;->c:Lbox;

    invoke-static {v2, v1, v0}, Lbox;->a(Lbox;Lboj;Lboj;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 586
    :goto_2
    iget-object v0, p0, Lbox$b;->b:Lbok;

    invoke-static {v0}, Lbnq;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 582
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 583
    :goto_3
    :try_start_5
    iget-object v3, p0, Lbox$b;->c:Lbox;

    invoke-static {v3, v1, v2}, Lbox;->a(Lbox;Lboj;Lboj;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 586
    :goto_4
    iget-object v1, p0, Lbox$b;->b:Lbok;

    invoke-static {v1}, Lbnq;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_4

    .line 582
    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 4

    .prologue
    .line 754
    if-nez p1, :cond_1

    .line 755
    iget-object v1, p0, Lbox$b;->c:Lbox;

    monitor-enter v1

    .line 756
    :try_start_0
    iget-object v0, p0, Lbox$b;->c:Lbox;

    iget-wide v2, v0, Lbox;->d:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lbox;->d:J

    .line 757
    monitor-exit v1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 760
    :cond_1
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-virtual {v0, p1}, Lbox;->a(I)Lboy;

    move-result-object v1

    .line 761
    if-eqz v1, :cond_0

    .line 762
    monitor-enter v1

    .line 763
    :try_start_1
    invoke-virtual {v1, p2, p3}, Lboy;->a(J)V

    .line 764
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final a(ILboj;)V
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0, p1}, Lbox;->a(Lbox;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0, p1, p2}, Lbox;->a(Lbox;ILboj;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-virtual {v0, p1}, Lbox;->b(I)Lboy;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0, p2}, Lboy;->c(Lboj;)V

    goto :goto_0
.end method

.method public final a(ILcay;)V
    .locals 5

    .prologue
    .line 734
    iget-object v0, p2, Lcay;->c:[B

    .line 739
    iget-object v1, p0, Lbox$b;->c:Lbox;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0}, Lbox;->e(Lbox;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lbox$b;->c:Lbox;

    invoke-static {v2}, Lbox;->e(Lbox;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lboy;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lboy;

    .line 741
    iget-object v2, p0, Lbox$b;->c:Lbox;

    invoke-static {v2}, Lbox;->i(Lbox;)Z

    .line 742
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 746
    iget v4, v3, Lboy;->c:I

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Lboy;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    sget-object v4, Lboj;->k:Lboj;

    invoke-virtual {v3, v4}, Lboy;->c(Lboj;)V

    .line 748
    iget-object v4, p0, Lbox$b;->c:Lbox;

    iget v3, v3, Lboy;->c:I

    invoke-virtual {v4, v3}, Lbox;->b(I)Lboy;

    .line 745
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 751
    :cond_1
    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lbom;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0, p1, p2}, Lbox;->a(Lbox;ILjava/util/List;)V

    .line 777
    return-void
.end method

.method public final a(ZII)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 722
    if-eqz p1, :cond_3

    .line 723
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0, p2}, Lbox;->c(Lbox;I)Lbot;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_2

    .line 725
    iget-wide v2, v0, Lbot;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, v0, Lbot;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lbot;->c:J

    iget-object v0, v0, Lbot;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 731
    :cond_2
    :goto_0
    return-void

    .line 729
    :cond_3
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0, p2, p3}, Lbox;->a(Lbox;II)V

    goto :goto_0
.end method

.method public final a(ZILcax;I)V
    .locals 4

    .prologue
    .line 592
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0, p2}, Lbox;->a(Lbox;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0, p2, p3, p4, p1}, Lbox;->a(Lbox;ILcax;IZ)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-virtual {v0, p2}, Lbox;->a(I)Lboy;

    move-result-object v0

    .line 597
    if-nez v0, :cond_2

    .line 598
    iget-object v0, p0, Lbox$b;->c:Lbox;

    sget-object v1, Lboj;->c:Lboj;

    invoke-virtual {v0, p2, v1}, Lbox;->a(ILboj;)V

    .line 599
    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lcax;->f(J)V

    goto :goto_0

    .line 602
    :cond_2
    sget-boolean v1, Lboy;->i:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v1, v0, Lboy;->f:Lboy$b;

    int-to-long v2, p4

    invoke-virtual {v1, p3, v2, v3}, Lboy$b;->a(Lcax;J)V

    .line 603
    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {v0}, Lboy;->e()V

    goto :goto_0
.end method

.method public final a(ZLbov;)V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 676
    .line 677
    const/4 v0, 0x0

    .line 678
    iget-object v8, p0, Lbox$b;->c:Lbox;

    monitor-enter v8

    .line 679
    :try_start_0
    iget-object v2, p0, Lbox$b;->c:Lbox;

    iget-object v2, v2, Lbox;->f:Lbov;

    invoke-virtual {v2}, Lbov;->b()I

    move-result v3

    .line 680
    if-eqz p1, :cond_0

    iget-object v2, p0, Lbox$b;->c:Lbox;

    iget-object v2, v2, Lbox;->f:Lbov;

    const/4 v4, 0x0

    iput v4, v2, Lbov;->c:I

    iput v4, v2, Lbov;->b:I

    iput v4, v2, Lbov;->a:I

    iget-object v2, v2, Lbov;->d:[I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 681
    :cond_0
    iget-object v2, p0, Lbox$b;->c:Lbox;

    iget-object v4, v2, Lbox;->f:Lbov;

    move v2, v1

    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_2

    invoke-virtual {p2, v2}, Lbov;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2, v2}, Lbov;->b(I)I

    move-result v5

    iget-object v9, p2, Lbov;->d:[I

    aget v9, v9, v2

    invoke-virtual {v4, v2, v5, v9}, Lbov;->a(III)Lbov;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
    :cond_2
    iget-object v2, p0, Lbox$b;->c:Lbox;

    iget-object v2, v2, Lbox;->a:Lbna;

    sget-object v4, Lbna;->d:Lbna;

    if-ne v2, v4, :cond_3

    .line 683
    invoke-static {}, Lbox;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, Lbox$b$2;

    const-string v5, "OkHttp %s ACK Settings"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lbox$b;->c:Lbox;

    invoke-static {v11}, Lbox;->a(Lbox;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v4, p0, v5, v9, p2}, Lbox$b$2;-><init>(Lbox$b;Ljava/lang/String;[Ljava/lang/Object;Lbov;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 685
    :cond_3
    iget-object v2, p0, Lbox$b;->c:Lbox;

    iget-object v2, v2, Lbox;->f:Lbov;

    invoke-virtual {v2}, Lbov;->b()I

    move-result v2

    .line 686
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    if-eq v2, v3, :cond_7

    .line 687
    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 688
    iget-object v4, p0, Lbox$b;->c:Lbox;

    invoke-static {v4}, Lbox;->g(Lbox;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 689
    iget-object v4, p0, Lbox$b;->c:Lbox;

    iget-wide v10, v4, Lbox;->d:J

    add-long/2addr v10, v2

    iput-wide v10, v4, Lbox;->d:J

    .line 690
    iget-object v4, p0, Lbox$b;->c:Lbox;

    invoke-static {v4}, Lbox;->h(Lbox;)Z

    .line 692
    :cond_4
    iget-object v4, p0, Lbox$b;->c:Lbox;

    invoke-static {v4}, Lbox;->e(Lbox;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 693
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0}, Lbox;->e(Lbox;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lbox$b;->c:Lbox;

    invoke-static {v4}, Lbox;->e(Lbox;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lboy;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lboy;

    move-wide v4, v2

    move-object v2, v0

    .line 696
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    if-eqz v2, :cond_5

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 698
    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_5

    aget-object v1, v2, v0

    .line 699
    monitor-enter v1

    .line 700
    :try_start_1
    invoke-virtual {v1, v4, v5}, Lboy;->a(J)V

    .line 701
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 696
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 701
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 704
    :cond_5
    return-void

    :cond_6
    move-wide v4, v2

    move-object v2, v0

    goto :goto_1

    :cond_7
    move-object v2, v0

    move-wide v4, v6

    goto :goto_1
.end method

.method public final a(ZZILjava/util/List;Lbon;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/util/List",
            "<",
            "Lbom;",
            ">;",
            "Lbon;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 610
    iget-object v1, p0, Lbox$b;->c:Lbox;

    invoke-static {v1, p3}, Lbox;->a(Lbox;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0, p3, p4, p2}, Lbox;->a(Lbox;ILjava/util/List;Z)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v6, p0, Lbox$b;->c:Lbox;

    monitor-enter v6

    .line 617
    :try_start_0
    iget-object v1, p0, Lbox$b;->c:Lbox;

    invoke-static {v1}, Lbox;->b(Lbox;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 619
    :cond_2
    :try_start_1
    iget-object v1, p0, Lbox$b;->c:Lbox;

    invoke-virtual {v1, p3}, Lbox;->a(I)Lboy;

    move-result-object v3

    .line 621
    if-nez v3, :cond_8

    .line 623
    sget-object v1, Lbon;->b:Lbon;

    if-eq p5, v1, :cond_3

    sget-object v1, Lbon;->c:Lbon;

    if-ne p5, v1, :cond_4

    :cond_3
    move v2, v0

    :cond_4
    if-eqz v2, :cond_5

    .line 624
    iget-object v0, p0, Lbox$b;->c:Lbox;

    sget-object v1, Lboj;->c:Lboj;

    invoke-virtual {v0, p3, v1}, Lbox;->a(ILboj;)V

    .line 625
    monitor-exit v6

    goto :goto_0

    .line 629
    :cond_5
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-static {v0}, Lbox;->c(Lbox;)I

    move-result v0

    if-gt p3, v0, :cond_6

    monitor-exit v6

    goto :goto_0

    .line 632
    :cond_6
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lbox$b;->c:Lbox;

    invoke-static {v1}, Lbox;->d(Lbox;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_7

    monitor-exit v6

    goto :goto_0

    .line 635
    :cond_7
    new-instance v0, Lboy;

    iget-object v2, p0, Lbox$b;->c:Lbox;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lboy;-><init>(ILbox;ZZLjava/util/List;)V

    .line 637
    iget-object v1, p0, Lbox$b;->c:Lbox;

    invoke-static {v1, p3}, Lbox;->b(Lbox;I)I

    .line 638
    iget-object v1, p0, Lbox$b;->c:Lbox;

    invoke-static {v1}, Lbox;->e(Lbox;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-static {}, Lbox;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lbox$b$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lbox$b;->c:Lbox;

    invoke-static {v7}, Lbox;->a(Lbox;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lbox$b$1;-><init>(Lbox$b;Ljava/lang/String;[Ljava/lang/Object;Lboy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 648
    monitor-exit v6

    goto/16 :goto_0

    .line 650
    :cond_8
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    sget-object v1, Lbon;->a:Lbon;

    if-ne p5, v1, :cond_9

    move v1, v0

    :goto_1
    if-eqz v1, :cond_a

    .line 654
    sget-object v0, Lboj;->b:Lboj;

    invoke-virtual {v3, v0}, Lboy;->b(Lboj;)V

    .line 655
    iget-object v0, p0, Lbox$b;->c:Lbox;

    invoke-virtual {v0, p3}, Lbox;->b(I)Lboy;

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 653
    goto :goto_1

    .line 660
    :cond_a
    sget-boolean v1, Lboy;->i:Z

    if-nez v1, :cond_b

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    const/4 v1, 0x0

    monitor-enter v3

    :try_start_2
    iget-object v4, v3, Lboy;->e:Ljava/util/List;

    if-nez v4, :cond_f

    sget-object v4, Lbon;->c:Lbon;

    if-ne p5, v4, :cond_c

    move v2, v0

    :cond_c
    if-eqz v2, :cond_e

    sget-object v1, Lboj;->b:Lboj;

    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_12

    invoke-virtual {v3, v1}, Lboy;->b(Lboj;)V

    .line 661
    :cond_d
    :goto_3
    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lboy;->e()V

    goto/16 :goto_0

    .line 660
    :cond_e
    :try_start_3
    iput-object p4, v3, Lboy;->e:Ljava/util/List;

    invoke-virtual {v3}, Lboy;->a()Z

    move-result v0

    goto :goto_2

    :cond_f
    sget-object v4, Lbon;->b:Lbon;

    if-ne p5, v4, :cond_10

    move v2, v0

    :cond_10
    if-eqz v2, :cond_11

    sget-object v1, Lboj;->e:Lboj;

    goto :goto_2

    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v3, Lboy;->e:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v3, Lboy;->e:Ljava/util/List;

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_12
    if-nez v0, :cond_d

    iget-object v0, v3, Lboy;->d:Lbox;

    iget v1, v3, Lboy;->c:I

    invoke-virtual {v0, v1}, Lbox;->b(I)Lboy;

    goto :goto_3
.end method
