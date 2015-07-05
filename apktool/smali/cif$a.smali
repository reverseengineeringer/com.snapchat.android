.class final Lcif$a;
.super Lcjd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcif;

.field private final c:Lcgm;

.field private final d:Lcgm;

.field private final e:Lcgm;


# direct methods
.method constructor <init>(Lcif;Lcgh;Lcgm;Lcgm;Lcgm;)V
    .locals 1

    .prologue
    .line 454
    iput-object p1, p0, Lcif$a;->a:Lcif;

    .line 455
    invoke-virtual {p2}, Lcgh;->a()Lcgi;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcjd;-><init>(Lcgh;Lcgi;)V

    .line 456
    iput-object p3, p0, Lcif$a;->c:Lcgm;

    .line 457
    iput-object p4, p0, Lcif$a;->d:Lcgm;

    .line 458
    iput-object p5, p0, Lcif$a;->e:Lcgm;

    .line 459
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->a(J)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1}, Lcgh;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public final a(JI)J
    .locals 5

    .prologue
    .line 477
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->a(JI)J

    move-result-wide v0

    .line 479
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 480
    return-wide v0
.end method

.method public final a(JJ)J
    .locals 5

    .prologue
    .line 484
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->a(JJ)J

    move-result-wide v0

    .line 486
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 487
    return-wide v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 5

    .prologue
    .line 517
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 519
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 520
    return-wide v0
.end method

.method public final a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JJ)I
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final b(JI)J
    .locals 5

    .prologue
    .line 510
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->b(JI)J

    move-result-wide v0

    .line 512
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 513
    return-wide v0
.end method

.method public final b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3}, Lcgh;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Z
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->b(J)Z

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->c(J)I

    move-result v0

    return v0
.end method

.method public final c(JJ)J
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgh;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)J
    .locals 5

    .prologue
    .line 546
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->d(J)J

    move-result-wide v0

    .line 548
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 549
    return-wide v0
.end method

.method public final d()Lcgm;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcif$a;->c:Lcgm;

    return-object v0
.end method

.method public final e(J)J
    .locals 5

    .prologue
    .line 553
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->e(J)J

    move-result-wide v0

    .line 555
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 556
    return-wide v0
.end method

.method public final e()Lcgm;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcif$a;->d:Lcgm;

    return-object v0
.end method

.method public final f(J)J
    .locals 5

    .prologue
    .line 560
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->f(J)J

    move-result-wide v0

    .line 562
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 563
    return-wide v0
.end method

.method public final f()Lcgm;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcif$a;->e:Lcgm;

    return-object v0
.end method

.method public final g(J)J
    .locals 5

    .prologue
    .line 567
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->g(J)J

    move-result-wide v0

    .line 569
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 570
    return-wide v0
.end method

.method public final h(J)J
    .locals 5

    .prologue
    .line 574
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->h(J)J

    move-result-wide v0

    .line 576
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 577
    return-wide v0
.end method

.method public final i(J)J
    .locals 5

    .prologue
    .line 581
    iget-object v0, p0, Lcif$a;->a:Lcif;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcif;->a(JLjava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcjd;->b:Lcgh;

    invoke-virtual {v0, p1, p2}, Lcgh;->i(J)J

    move-result-wide v0

    .line 583
    iget-object v2, p0, Lcif$a;->a:Lcif;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lcif;->a(JLjava/lang/String;)V

    .line 584
    return-wide v0
.end method
