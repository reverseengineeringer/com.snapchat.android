.class final Lcjz$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjz;
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
        "Lcjz$a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcgh;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcgh;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcjz$a;->a:Lcgh;

    .line 469
    iput p2, p0, Lcjz$a;->b:I

    .line 470
    iput-object v0, p0, Lcjz$a;->c:Ljava/lang/String;

    .line 471
    iput-object v0, p0, Lcjz$a;->d:Ljava/util/Locale;

    .line 472
    return-void
.end method

.method constructor <init>(Lcgh;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    iput-object p1, p0, Lcjz$a;->a:Lcgh;

    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lcjz$a;->b:I

    .line 477
    iput-object p2, p0, Lcjz$a;->c:Ljava/lang/String;

    .line 478
    iput-object p3, p0, Lcjz$a;->d:Ljava/util/Locale;

    .line 479
    return-void
.end method


# virtual methods
.method public final a(Lcjz$a;)I
    .locals 3

    .prologue
    .line 499
    iget-object v1, p1, Lcjz$a;->a:Lcgh;

    .line 500
    iget-object v0, p0, Lcjz$a;->a:Lcgh;

    invoke-virtual {v0}, Lcgh;->e()Lcgm;

    move-result-object v0

    invoke-virtual {v1}, Lcgh;->e()Lcgm;

    move-result-object v2

    invoke-static {v0, v2}, Lcjz;->a(Lcgm;Lcgm;)I

    move-result v0

    .line 502
    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcjz$a;->a:Lcgh;

    invoke-virtual {v0}, Lcgh;->d()Lcgm;

    move-result-object v0

    invoke-virtual {v1}, Lcgh;->d()Lcgm;

    move-result-object v1

    invoke-static {v0, v1}, Lcjz;->a(Lcgm;Lcgm;)I

    move-result v0

    goto :goto_0
.end method

.method final a(JZ)J
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcjz$a;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcjz$a;->a:Lcgh;

    iget v1, p0, Lcjz$a;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lcgh;->b(JI)J

    move-result-wide v0

    .line 487
    :goto_0
    if-eqz p3, :cond_0

    .line 488
    iget-object v2, p0, Lcjz$a;->a:Lcgh;

    invoke-virtual {v2, v0, v1}, Lcgh;->d(J)J

    move-result-wide v0

    .line 490
    :cond_0
    return-wide v0

    .line 485
    :cond_1
    iget-object v0, p0, Lcjz$a;->a:Lcgh;

    iget-object v1, p0, Lcjz$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcjz$a;->d:Ljava/util/Locale;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcgh;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 461
    check-cast p1, Lcjz$a;

    invoke-virtual {p0, p1}, Lcjz$a;->a(Lcjz$a;)I

    move-result v0

    return v0
.end method
