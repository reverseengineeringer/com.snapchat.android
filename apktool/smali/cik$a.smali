.class public final Lcik$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:Lchi;

.field public B:Lchi;

.field public C:Lchi;

.field public D:Lchi;

.field public E:Lchi;

.field public F:Lchi;

.field public G:Lchi;

.field public H:Lchi;

.field public I:Lchi;

.field public a:Lchn;

.field public b:Lchn;

.field public c:Lchn;

.field public d:Lchn;

.field public e:Lchn;

.field public f:Lchn;

.field public g:Lchn;

.field public h:Lchn;

.field public i:Lchn;

.field public j:Lchn;

.field public k:Lchn;

.field public l:Lchn;

.field public m:Lchi;

.field public n:Lchi;

.field public o:Lchi;

.field public p:Lchi;

.field public q:Lchi;

.field public r:Lchi;

.field public s:Lchi;

.field public t:Lchi;

.field public u:Lchi;

.field public v:Lchi;

.field public w:Lchi;

.field public x:Lchi;

.field public y:Lchi;

.field public z:Lchi;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method private static a(Lchi;)Z
    .locals 1

    .prologue
    .line 562
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lchi;->c()Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Lchn;)Z
    .locals 1

    .prologue
    .line 558
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lchn;->b()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lchg;)V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p1}, Lchg;->c()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iput-object v0, p0, Lcik$a;->a:Lchn;

    .line 448
    :cond_0
    invoke-virtual {p1}, Lchg;->f()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iput-object v0, p0, Lcik$a;->b:Lchn;

    .line 451
    :cond_1
    invoke-virtual {p1}, Lchg;->i()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    iput-object v0, p0, Lcik$a;->c:Lchn;

    .line 454
    :cond_2
    invoke-virtual {p1}, Lchg;->l()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    iput-object v0, p0, Lcik$a;->d:Lchn;

    .line 457
    :cond_3
    invoke-virtual {p1}, Lchg;->o()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 458
    iput-object v0, p0, Lcik$a;->e:Lchn;

    .line 460
    :cond_4
    invoke-virtual {p1}, Lchg;->s()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 461
    iput-object v0, p0, Lcik$a;->f:Lchn;

    .line 463
    :cond_5
    invoke-virtual {p1}, Lchg;->w()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    iput-object v0, p0, Lcik$a;->g:Lchn;

    .line 466
    :cond_6
    invoke-virtual {p1}, Lchg;->y()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 467
    iput-object v0, p0, Lcik$a;->h:Lchn;

    .line 469
    :cond_7
    invoke-virtual {p1}, Lchg;->B()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 470
    iput-object v0, p0, Lcik$a;->i:Lchn;

    .line 472
    :cond_8
    invoke-virtual {p1}, Lchg;->D()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 473
    iput-object v0, p0, Lcik$a;->j:Lchn;

    .line 475
    :cond_9
    invoke-virtual {p1}, Lchg;->H()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 476
    iput-object v0, p0, Lcik$a;->k:Lchn;

    .line 478
    :cond_a
    invoke-virtual {p1}, Lchg;->J()Lchn;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchn;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 479
    iput-object v0, p0, Lcik$a;->l:Lchn;

    .line 485
    :cond_b
    invoke-virtual {p1}, Lchg;->d()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 486
    iput-object v0, p0, Lcik$a;->m:Lchi;

    .line 488
    :cond_c
    invoke-virtual {p1}, Lchg;->e()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 489
    iput-object v0, p0, Lcik$a;->n:Lchi;

    .line 491
    :cond_d
    invoke-virtual {p1}, Lchg;->g()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 492
    iput-object v0, p0, Lcik$a;->o:Lchi;

    .line 494
    :cond_e
    invoke-virtual {p1}, Lchg;->h()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 495
    iput-object v0, p0, Lcik$a;->p:Lchi;

    .line 497
    :cond_f
    invoke-virtual {p1}, Lchg;->j()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 498
    iput-object v0, p0, Lcik$a;->q:Lchi;

    .line 500
    :cond_10
    invoke-virtual {p1}, Lchg;->k()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 501
    iput-object v0, p0, Lcik$a;->r:Lchi;

    .line 503
    :cond_11
    invoke-virtual {p1}, Lchg;->m()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 504
    iput-object v0, p0, Lcik$a;->s:Lchi;

    .line 506
    :cond_12
    invoke-virtual {p1}, Lchg;->n()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 507
    iput-object v0, p0, Lcik$a;->t:Lchi;

    .line 509
    :cond_13
    invoke-virtual {p1}, Lchg;->p()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 510
    iput-object v0, p0, Lcik$a;->u:Lchi;

    .line 512
    :cond_14
    invoke-virtual {p1}, Lchg;->q()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 513
    iput-object v0, p0, Lcik$a;->v:Lchi;

    .line 515
    :cond_15
    invoke-virtual {p1}, Lchg;->r()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 516
    iput-object v0, p0, Lcik$a;->w:Lchi;

    .line 518
    :cond_16
    invoke-virtual {p1}, Lchg;->t()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 519
    iput-object v0, p0, Lcik$a;->x:Lchi;

    .line 521
    :cond_17
    invoke-virtual {p1}, Lchg;->u()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 522
    iput-object v0, p0, Lcik$a;->y:Lchi;

    .line 524
    :cond_18
    invoke-virtual {p1}, Lchg;->v()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 525
    iput-object v0, p0, Lcik$a;->z:Lchi;

    .line 527
    :cond_19
    invoke-virtual {p1}, Lchg;->x()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 528
    iput-object v0, p0, Lcik$a;->A:Lchi;

    .line 530
    :cond_1a
    invoke-virtual {p1}, Lchg;->z()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 531
    iput-object v0, p0, Lcik$a;->B:Lchi;

    .line 533
    :cond_1b
    invoke-virtual {p1}, Lchg;->A()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 534
    iput-object v0, p0, Lcik$a;->C:Lchi;

    .line 536
    :cond_1c
    invoke-virtual {p1}, Lchg;->C()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 537
    iput-object v0, p0, Lcik$a;->D:Lchi;

    .line 539
    :cond_1d
    invoke-virtual {p1}, Lchg;->E()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 540
    iput-object v0, p0, Lcik$a;->E:Lchi;

    .line 542
    :cond_1e
    invoke-virtual {p1}, Lchg;->F()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 543
    iput-object v0, p0, Lcik$a;->F:Lchi;

    .line 545
    :cond_1f
    invoke-virtual {p1}, Lchg;->G()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 546
    iput-object v0, p0, Lcik$a;->G:Lchi;

    .line 548
    :cond_20
    invoke-virtual {p1}, Lchg;->I()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 549
    iput-object v0, p0, Lcik$a;->H:Lchi;

    .line 551
    :cond_21
    invoke-virtual {p1}, Lchg;->K()Lchi;

    move-result-object v0

    invoke-static {v0}, Lcik$a;->a(Lchi;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 552
    iput-object v0, p0, Lcik$a;->I:Lchi;

    .line 555
    :cond_22
    return-void
.end method
