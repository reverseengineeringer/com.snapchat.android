.class final Lbmj$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lbmv;

.field final c:Ljava/lang/String;

.field final d:Lbna;

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Lbmv;

.field final h:Lbmu;


# direct methods
.method public constructor <init>(Lbnd;)V
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iget-object v0, p1, Lbnd;->a:Lbnb;

    iget-object v0, v0, Lbnb;->a:Ljava/lang/String;

    iput-object v0, p0, Lbmj$c;->a:Ljava/lang/String;

    .line 547
    invoke-static {p1}, Lboa;->c(Lbnd;)Lbmv;

    move-result-object v0

    iput-object v0, p0, Lbmj$c;->b:Lbmv;

    .line 548
    iget-object v0, p1, Lbnd;->a:Lbnb;

    iget-object v0, v0, Lbnb;->b:Ljava/lang/String;

    iput-object v0, p0, Lbmj$c;->c:Ljava/lang/String;

    .line 549
    iget-object v0, p1, Lbnd;->b:Lbna;

    iput-object v0, p0, Lbmj$c;->d:Lbna;

    .line 550
    iget v0, p1, Lbnd;->c:I

    iput v0, p0, Lbmj$c;->e:I

    .line 551
    iget-object v0, p1, Lbnd;->d:Ljava/lang/String;

    iput-object v0, p0, Lbmj$c;->f:Ljava/lang/String;

    .line 552
    iget-object v0, p1, Lbnd;->f:Lbmv;

    iput-object v0, p0, Lbmj$c;->g:Lbmv;

    .line 553
    iget-object v0, p1, Lbnd;->e:Lbmu;

    iput-object v0, p0, Lbmj$c;->h:Lbmu;

    .line 554
    return-void
.end method

.method public constructor <init>(Lcbk;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    :try_start_0
    invoke-static {p1}, Lcbe;->a(Lcbk;)Lcax;

    move-result-object v2

    .line 508
    invoke-interface {v2}, Lcax;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbmj$c;->a:Ljava/lang/String;

    .line 509
    invoke-interface {v2}, Lcax;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbmj$c;->c:Ljava/lang/String;

    .line 510
    new-instance v3, Lbmv$a;

    invoke-direct {v3}, Lbmv$a;-><init>()V

    .line 511
    invoke-static {v2}, Lbmj;->a(Lcax;)I

    move-result v4

    move v1, v0

    .line 512
    :goto_0
    if-ge v1, v4, :cond_0

    .line 513
    invoke-interface {v2}, Lcax;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbmv$a;->a(Ljava/lang/String;)Lbmv$a;

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {v3}, Lbmv$a;->a()Lbmv;

    move-result-object v1

    iput-object v1, p0, Lbmj$c;->b:Lbmv;

    .line 517
    invoke-interface {v2}, Lcax;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbog;->a(Ljava/lang/String;)Lbog;

    move-result-object v1

    .line 518
    iget-object v3, v1, Lbog;->a:Lbna;

    iput-object v3, p0, Lbmj$c;->d:Lbna;

    .line 519
    iget v3, v1, Lbog;->b:I

    iput v3, p0, Lbmj$c;->e:I

    .line 520
    iget-object v1, v1, Lbog;->c:Ljava/lang/String;

    iput-object v1, p0, Lbmj$c;->f:Ljava/lang/String;

    .line 521
    new-instance v1, Lbmv$a;

    invoke-direct {v1}, Lbmv$a;-><init>()V

    .line 522
    invoke-static {v2}, Lbmj;->a(Lcax;)I

    move-result v3

    .line 523
    :goto_1
    if-ge v0, v3, :cond_1

    .line 524
    invoke-interface {v2}, Lcax;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lbmv$a;->a(Ljava/lang/String;)Lbmv$a;

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 526
    :cond_1
    invoke-virtual {v1}, Lbmv$a;->a()Lbmv;

    move-result-object v0

    iput-object v0, p0, Lbmj$c;->g:Lbmv;

    .line 528
    invoke-direct {p0}, Lbmj$c;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 529
    invoke-interface {v2}, Lcax;->n()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 531
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected \"\" but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcbk;->close()V

    throw v0

    .line 533
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcax;->n()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v2}, Lbmj$c;->a(Lcax;)Ljava/util/List;

    move-result-object v1

    .line 535
    invoke-static {v2}, Lbmj$c;->a(Lcax;)Ljava/util/List;

    move-result-object v2

    .line 536
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v3, Lbmu;

    invoke-static {v1}, Lbnq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Lbnq;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lbmu;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lbmj$c;->h:Lbmu;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :goto_2
    invoke-interface {p1}, Lcbk;->close()V

    .line 542
    return-void

    .line 538
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lbmj$c;->h:Lbmu;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static a(Lcax;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcax;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    invoke-static {p0}, Lbmj;->a(Lcax;)I

    move-result v2

    .line 599
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 610
    :cond_0
    return-object v0

    .line 602
    :cond_1
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 604
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 605
    invoke-interface {p0}, Lcax;->n()Ljava/lang/String;

    move-result-object v4

    .line 606
    new-instance v5, Lcav;

    invoke-direct {v5}, Lcav;-><init>()V

    .line 607
    invoke-static {v4}, Lcay;->b(Ljava/lang/String;)Lcay;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcav;->a(Lcay;)Lcav;

    .line 608
    invoke-virtual {v5}, Lcav;->e()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Lcaw;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcaw;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcaw;->j(J)Lcaw;

    .line 620
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lcaw;->g(I)Lcaw;

    .line 621
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 622
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 623
    invoke-static {v0}, Lcay;->a([B)Lcay;

    move-result-object v0

    iget-object v0, v0, Lcay;->c:[B

    invoke-static {v0}, Lcau;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-interface {p0, v0}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 625
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lcaw;->g(I)Lcaw;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 629
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lbmj$c;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lbnh$a;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0xa

    .line 557
    invoke-virtual {p1, v0}, Lbnh$a;->a(I)Lcbj;

    move-result-object v1

    invoke-static {v1}, Lcbe;->a(Lcbj;)Lcaw;

    move-result-object v2

    .line 559
    iget-object v1, p0, Lbmj$c;->a:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 560
    invoke-interface {v2, v6}, Lcaw;->g(I)Lcaw;

    .line 561
    iget-object v1, p0, Lbmj$c;->c:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 562
    invoke-interface {v2, v6}, Lcaw;->g(I)Lcaw;

    .line 563
    iget-object v1, p0, Lbmj$c;->b:Lbmv;

    iget-object v1, v1, Lbmv;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lcaw;->j(J)Lcaw;

    .line 564
    invoke-interface {v2, v6}, Lcaw;->g(I)Lcaw;

    .line 565
    iget-object v1, p0, Lbmj$c;->b:Lbmv;

    iget-object v1, v1, Lbmv;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v3, v1, 0x2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 566
    iget-object v4, p0, Lbmj$c;->b:Lbmv;

    invoke-virtual {v4, v1}, Lbmv;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 567
    const-string v4, ": "

    invoke-interface {v2, v4}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 568
    iget-object v4, p0, Lbmj$c;->b:Lbmv;

    invoke-virtual {v4, v1}, Lbmv;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 569
    invoke-interface {v2, v6}, Lcaw;->g(I)Lcaw;

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_0
    new-instance v1, Lbog;

    iget-object v3, p0, Lbmj$c;->d:Lbna;

    iget v4, p0, Lbmj$c;->e:I

    iget-object v5, p0, Lbmj$c;->f:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lbog;-><init>(Lbna;ILjava/lang/String;)V

    invoke-virtual {v1}, Lbog;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 573
    invoke-interface {v2, v6}, Lcaw;->g(I)Lcaw;

    .line 574
    iget-object v1, p0, Lbmj$c;->g:Lbmv;

    iget-object v1, v1, Lbmv;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lcaw;->j(J)Lcaw;

    .line 575
    invoke-interface {v2, v6}, Lcaw;->g(I)Lcaw;

    .line 576
    iget-object v1, p0, Lbmj$c;->g:Lbmv;

    iget-object v1, v1, Lbmv;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    if-ge v0, v1, :cond_1

    .line 577
    iget-object v3, p0, Lbmj$c;->g:Lbmv;

    invoke-virtual {v3, v0}, Lbmv;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 578
    const-string v3, ": "

    invoke-interface {v2, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 579
    iget-object v3, p0, Lbmj$c;->g:Lbmv;

    invoke-virtual {v3, v0}, Lbmv;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 580
    invoke-interface {v2, v6}, Lcaw;->g(I)Lcaw;

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 583
    :cond_1
    invoke-direct {p0}, Lbmj$c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    invoke-interface {v2, v6}, Lcaw;->g(I)Lcaw;

    .line 585
    iget-object v0, p0, Lbmj$c;->h:Lbmu;

    iget-object v0, v0, Lbmu;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcaw;->b(Ljava/lang/String;)Lcaw;

    .line 586
    invoke-interface {v2, v6}, Lcaw;->g(I)Lcaw;

    .line 587
    iget-object v0, p0, Lbmj$c;->h:Lbmu;

    iget-object v0, v0, Lbmu;->b:Ljava/util/List;

    invoke-static {v2, v0}, Lbmj$c;->a(Lcaw;Ljava/util/List;)V

    .line 588
    iget-object v0, p0, Lbmj$c;->h:Lbmu;

    iget-object v0, v0, Lbmu;->c:Ljava/util/List;

    invoke-static {v2, v0}, Lbmj$c;->a(Lcaw;Ljava/util/List;)V

    .line 590
    :cond_2
    invoke-interface {v2}, Lcaw;->close()V

    .line 591
    return-void
.end method
