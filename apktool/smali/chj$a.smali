.class public final Lchj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:Lcgh;

.field public B:Lcgh;

.field public C:Lcgh;

.field public D:Lcgh;

.field public E:Lcgh;

.field public F:Lcgh;

.field public G:Lcgh;

.field public H:Lcgh;

.field public I:Lcgh;

.field public a:Lcgm;

.field public b:Lcgm;

.field public c:Lcgm;

.field public d:Lcgm;

.field public e:Lcgm;

.field public f:Lcgm;

.field public g:Lcgm;

.field public h:Lcgm;

.field public i:Lcgm;

.field public j:Lcgm;

.field public k:Lcgm;

.field public l:Lcgm;

.field public m:Lcgh;

.field public n:Lcgh;

.field public o:Lcgh;

.field public p:Lcgh;

.field public q:Lcgh;

.field public r:Lcgh;

.field public s:Lcgh;

.field public t:Lcgh;

.field public u:Lcgh;

.field public v:Lcgh;

.field public w:Lcgh;

.field public x:Lcgh;

.field public y:Lcgh;

.field public z:Lcgh;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method private static a(Lcgh;)Z
    .locals 1

    .prologue
    .line 562
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcgh;->c()Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Lcgm;)Z
    .locals 1

    .prologue
    .line 558
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcgm;->b()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcgf;)V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p1}, Lcgf;->c()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iput-object v0, p0, Lchj$a;->a:Lcgm;

    .line 448
    :cond_0
    invoke-virtual {p1}, Lcgf;->f()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iput-object v0, p0, Lchj$a;->b:Lcgm;

    .line 451
    :cond_1
    invoke-virtual {p1}, Lcgf;->i()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    iput-object v0, p0, Lchj$a;->c:Lcgm;

    .line 454
    :cond_2
    invoke-virtual {p1}, Lcgf;->l()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    iput-object v0, p0, Lchj$a;->d:Lcgm;

    .line 457
    :cond_3
    invoke-virtual {p1}, Lcgf;->o()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 458
    iput-object v0, p0, Lchj$a;->e:Lcgm;

    .line 460
    :cond_4
    invoke-virtual {p1}, Lcgf;->s()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 461
    iput-object v0, p0, Lchj$a;->f:Lcgm;

    .line 463
    :cond_5
    invoke-virtual {p1}, Lcgf;->w()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    iput-object v0, p0, Lchj$a;->g:Lcgm;

    .line 466
    :cond_6
    invoke-virtual {p1}, Lcgf;->y()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 467
    iput-object v0, p0, Lchj$a;->h:Lcgm;

    .line 469
    :cond_7
    invoke-virtual {p1}, Lcgf;->B()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 470
    iput-object v0, p0, Lchj$a;->i:Lcgm;

    .line 472
    :cond_8
    invoke-virtual {p1}, Lcgf;->D()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 473
    iput-object v0, p0, Lchj$a;->j:Lcgm;

    .line 475
    :cond_9
    invoke-virtual {p1}, Lcgf;->H()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 476
    iput-object v0, p0, Lchj$a;->k:Lcgm;

    .line 478
    :cond_a
    invoke-virtual {p1}, Lcgf;->J()Lcgm;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgm;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 479
    iput-object v0, p0, Lchj$a;->l:Lcgm;

    .line 485
    :cond_b
    invoke-virtual {p1}, Lcgf;->d()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 486
    iput-object v0, p0, Lchj$a;->m:Lcgh;

    .line 488
    :cond_c
    invoke-virtual {p1}, Lcgf;->e()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 489
    iput-object v0, p0, Lchj$a;->n:Lcgh;

    .line 491
    :cond_d
    invoke-virtual {p1}, Lcgf;->g()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 492
    iput-object v0, p0, Lchj$a;->o:Lcgh;

    .line 494
    :cond_e
    invoke-virtual {p1}, Lcgf;->h()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 495
    iput-object v0, p0, Lchj$a;->p:Lcgh;

    .line 497
    :cond_f
    invoke-virtual {p1}, Lcgf;->j()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 498
    iput-object v0, p0, Lchj$a;->q:Lcgh;

    .line 500
    :cond_10
    invoke-virtual {p1}, Lcgf;->k()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 501
    iput-object v0, p0, Lchj$a;->r:Lcgh;

    .line 503
    :cond_11
    invoke-virtual {p1}, Lcgf;->m()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 504
    iput-object v0, p0, Lchj$a;->s:Lcgh;

    .line 506
    :cond_12
    invoke-virtual {p1}, Lcgf;->n()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 507
    iput-object v0, p0, Lchj$a;->t:Lcgh;

    .line 509
    :cond_13
    invoke-virtual {p1}, Lcgf;->p()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 510
    iput-object v0, p0, Lchj$a;->u:Lcgh;

    .line 512
    :cond_14
    invoke-virtual {p1}, Lcgf;->q()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 513
    iput-object v0, p0, Lchj$a;->v:Lcgh;

    .line 515
    :cond_15
    invoke-virtual {p1}, Lcgf;->r()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 516
    iput-object v0, p0, Lchj$a;->w:Lcgh;

    .line 518
    :cond_16
    invoke-virtual {p1}, Lcgf;->t()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 519
    iput-object v0, p0, Lchj$a;->x:Lcgh;

    .line 521
    :cond_17
    invoke-virtual {p1}, Lcgf;->u()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 522
    iput-object v0, p0, Lchj$a;->y:Lcgh;

    .line 524
    :cond_18
    invoke-virtual {p1}, Lcgf;->v()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 525
    iput-object v0, p0, Lchj$a;->z:Lcgh;

    .line 527
    :cond_19
    invoke-virtual {p1}, Lcgf;->x()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 528
    iput-object v0, p0, Lchj$a;->A:Lcgh;

    .line 530
    :cond_1a
    invoke-virtual {p1}, Lcgf;->z()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 531
    iput-object v0, p0, Lchj$a;->B:Lcgh;

    .line 533
    :cond_1b
    invoke-virtual {p1}, Lcgf;->A()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 534
    iput-object v0, p0, Lchj$a;->C:Lcgh;

    .line 536
    :cond_1c
    invoke-virtual {p1}, Lcgf;->C()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 537
    iput-object v0, p0, Lchj$a;->D:Lcgh;

    .line 539
    :cond_1d
    invoke-virtual {p1}, Lcgf;->E()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 540
    iput-object v0, p0, Lchj$a;->E:Lcgh;

    .line 542
    :cond_1e
    invoke-virtual {p1}, Lcgf;->F()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 543
    iput-object v0, p0, Lchj$a;->F:Lcgh;

    .line 545
    :cond_1f
    invoke-virtual {p1}, Lcgf;->G()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 546
    iput-object v0, p0, Lchj$a;->G:Lcgh;

    .line 548
    :cond_20
    invoke-virtual {p1}, Lcgf;->I()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 549
    iput-object v0, p0, Lchj$a;->H:Lcgh;

    .line 551
    :cond_21
    invoke-virtual {p1}, Lcgf;->K()Lcgh;

    move-result-object v0

    invoke-static {v0}, Lchj$a;->a(Lcgh;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 552
    iput-object v0, p0, Lchj$a;->I:Lcgh;

    .line 555
    :cond_22
    return-void
.end method
