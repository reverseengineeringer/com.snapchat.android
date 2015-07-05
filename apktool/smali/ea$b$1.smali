.class final Lea$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lea$b;->a(Lec$b;)Lec$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lec$b;

.field final synthetic e:Lea$b;


# direct methods
.method constructor <init>(Lea$b;Lec$b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 594
    iput-object p1, p0, Lea$b$1;->e:Lea$b;

    iput-object p2, p0, Lea$b$1;->d:Lec$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput v0, p0, Lea$b$1;->a:I

    .line 596
    iput v0, p0, Lea$b$1;->b:I

    .line 597
    iput v0, p0, Lea$b$1;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 620
    iget v0, p0, Lea$b$1;->b:I

    if-lez v0, :cond_0

    .line 621
    iget v0, p0, Lea$b$1;->a:I

    iget-object v1, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v1}, Lea$b;->a(Lea$b;)Lea$a;

    move-result-object v1

    iget v1, v1, Lea$a;->s:I

    iget v2, p0, Lea$b$1;->b:I

    sub-int/2addr v1, v2

    shl-int/2addr v0, v1

    iget-object v1, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v1}, Lea$b;->a(Lea$b;)Lea$a;

    move-result-object v1

    iget v1, v1, Lea$a;->r:I

    and-int/2addr v0, v1

    .line 623
    iget-object v1, p0, Lea$b$1;->d:Lec$b;

    iget-object v2, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v2}, Lea$b;->a(Lea$b;)Lea$a;

    move-result-object v2

    iget-object v2, v2, Lea$a;->q:[C

    aget-char v0, v2, v0

    invoke-interface {v1, v0}, Lec$b;->a(C)V

    .line 624
    iget v0, p0, Lea$b$1;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lea$b$1;->c:I

    .line 625
    iget-object v0, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v0}, Lea$b;->b(Lea$b;)Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    :goto_0
    iget v0, p0, Lea$b$1;->c:I

    iget-object v1, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v1}, Lea$b;->a(Lea$b;)Lea$a;

    move-result-object v1

    iget v1, v1, Lea$a;->t:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lea$b$1;->d:Lec$b;

    iget-object v1, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v1}, Lea$b;->b(Lea$b;)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {v0, v1}, Lec$b;->a(C)V

    .line 628
    iget v0, p0, Lea$b$1;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lea$b$1;->c:I

    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

.method public final a(B)V
    .locals 3

    .prologue
    .line 601
    iget v0, p0, Lea$b$1;->a:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lea$b$1;->a:I

    .line 602
    iget v0, p0, Lea$b$1;->a:I

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lea$b$1;->a:I

    .line 603
    iget v0, p0, Lea$b$1;->b:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lea$b$1;->b:I

    .line 604
    :goto_0
    iget v0, p0, Lea$b$1;->b:I

    iget-object v1, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v1}, Lea$b;->a(Lea$b;)Lea$a;

    move-result-object v1

    iget v1, v1, Lea$a;->s:I

    if-lt v0, v1, :cond_0

    .line 605
    iget v0, p0, Lea$b$1;->a:I

    iget v1, p0, Lea$b$1;->b:I

    iget-object v2, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v2}, Lea$b;->a(Lea$b;)Lea$a;

    move-result-object v2

    iget v2, v2, Lea$a;->s:I

    sub-int/2addr v1, v2

    shr-int/2addr v0, v1

    iget-object v1, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v1}, Lea$b;->a(Lea$b;)Lea$a;

    move-result-object v1

    iget v1, v1, Lea$a;->r:I

    and-int/2addr v0, v1

    .line 607
    iget-object v1, p0, Lea$b$1;->d:Lec$b;

    iget-object v2, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v2}, Lea$b;->a(Lea$b;)Lea$a;

    move-result-object v2

    iget-object v2, v2, Lea$a;->q:[C

    aget-char v0, v2, v0

    invoke-interface {v1, v0}, Lec$b;->a(C)V

    .line 608
    iget v0, p0, Lea$b$1;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lea$b$1;->c:I

    .line 609
    iget v0, p0, Lea$b$1;->b:I

    iget-object v1, p0, Lea$b$1;->e:Lea$b;

    invoke-static {v1}, Lea$b;->a(Lea$b;)Lea$a;

    move-result-object v1

    iget v1, v1, Lea$a;->s:I

    sub-int/2addr v0, v1

    iput v0, p0, Lea$b$1;->b:I

    goto :goto_0

    .line 611
    :cond_0
    return-void
.end method
