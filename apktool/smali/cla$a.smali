.class final Lcla$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcla$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lchi;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lchi;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcla$a;->a:Lchi;

    .line 469
    iput p2, p0, Lcla$a;->b:I

    .line 470
    iput-object v0, p0, Lcla$a;->c:Ljava/lang/String;

    .line 471
    iput-object v0, p0, Lcla$a;->d:Ljava/util/Locale;

    .line 472
    return-void
.end method

.method constructor <init>(Lchi;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lcla$a;->a:Lchi;

    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lcla$a;->b:I

    .line 477
    iput-object p2, p0, Lcla$a;->c:Ljava/lang/String;

    .line 478
    iput-object p3, p0, Lcla$a;->d:Ljava/util/Locale;

    .line 479
    return-void
.end method


# virtual methods
.method public final a(Lcla$a;)I
    .locals 3

    .prologue
    .line 499
    iget-object v1, p1, Lcla$a;->a:Lchi;

    .line 500
    iget-object v0, p0, Lcla$a;->a:Lchi;

    invoke-virtual {v0}, Lchi;->e()Lchn;

    move-result-object v0

    invoke-virtual {v1}, Lchi;->e()Lchn;

    move-result-object v2

    invoke-static {v0, v2}, Lcla;->a(Lchn;Lchn;)I

    move-result v0

    .line 502
    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcla$a;->a:Lchi;

    invoke-virtual {v0}, Lchi;->d()Lchn;

    move-result-object v0

    invoke-virtual {v1}, Lchi;->d()Lchn;

    move-result-object v1

    invoke-static {v0, v1}, Lcla;->a(Lchn;Lchn;)I

    move-result v0

    goto :goto_0
.end method

.method final a(JZ)J
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcla$a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcla$a;->a:Lchi;

    iget v1, p0, Lcla$a;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lchi;->b(JI)J

    move-result-wide v0

    .line 487
    :goto_0
    if-eqz p3, :cond_0

    .line 488
    iget-object v2, p0, Lcla$a;->a:Lchi;

    invoke-virtual {v2, v0, v1}, Lchi;->d(J)J

    move-result-wide v0

    .line 490
    :cond_0
    return-wide v0

    .line 485
    :cond_1
    iget-object v0, p0, Lcla$a;->a:Lchi;

    iget-object v1, p0, Lcla$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcla$a;->d:Ljava/util/Locale;

    invoke-virtual {v0, p1, p2, v1, v2}, Lchi;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 461
    check-cast p1, Lcla$a;

    invoke-virtual {p0, p1}, Lcla$a;->a(Lcla$a;)I

    move-result v0

    return v0
.end method
