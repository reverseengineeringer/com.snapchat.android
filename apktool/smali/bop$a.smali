.class final Lbop$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcbk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:Lcax;


# direct methods
.method public constructor <init>(Lcax;)V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lbop$a;->f:Lcax;

    .line 606
    return-void
.end method


# virtual methods
.method public final E_()Lcbl;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lbop$a;->f:Lcax;

    invoke-interface {v0}, Lcax;->E_()Lcbl;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcav;J)J
    .locals 10

    .prologue
    const/4 v9, 0x1

    const-wide/16 v0, -0x1

    const/4 v8, 0x0

    .line 609
    :cond_0
    iget v2, p0, Lbop$a;->d:I

    if-nez v2, :cond_5

    .line 610
    iget-object v2, p0, Lbop$a;->f:Lcax;

    iget-short v3, p0, Lbop$a;->e:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lcax;->f(J)V

    .line 611
    iput-short v8, p0, Lbop$a;->e:S

    .line 612
    iget-byte v2, p0, Lbop$a;->b:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 620
    :cond_1
    :goto_0
    return-wide v0

    .line 613
    :cond_2
    iget v2, p0, Lbop$a;->c:I

    iget-object v3, p0, Lbop$a;->f:Lcax;

    invoke-static {v3}, Lbop;->a(Lcax;)I

    move-result v3

    iput v3, p0, Lbop$a;->d:I

    iput v3, p0, Lbop$a;->a:I

    iget-object v3, p0, Lbop$a;->f:Lcax;

    invoke-interface {v3}, Lcax;->f()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, p0, Lbop$a;->f:Lcax;

    invoke-interface {v4}, Lcax;->f()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    iput-byte v4, p0, Lbop$a;->b:B

    invoke-static {}, Lbop;->b()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lbop;->b()Ljava/util/logging/Logger;

    move-result-object v4

    iget v5, p0, Lbop$a;->c:I

    iget v6, p0, Lbop$a;->a:I

    iget-byte v7, p0, Lbop$a;->b:B

    invoke-static {v9, v5, v6, v3, v7}, Lbop$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lbop$a;->f:Lcax;

    invoke-interface {v4}, Lcax;->h()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iput v4, p0, Lbop$a;->c:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    const-string v0, "%s != TYPE_CONTINUATION"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lbop;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    iget v3, p0, Lbop$a;->c:I

    if-eq v3, v2, :cond_0

    const-string v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbop;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 617
    :cond_5
    iget-object v2, p0, Lbop$a;->f:Lcax;

    iget v3, p0, Lbop$a;->d:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lcax;->a(Lcav;J)J

    move-result-wide v2

    .line 618
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    .line 619
    iget v0, p0, Lbop$a;->d:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lbop$a;->d:I

    move-wide v0, v2

    .line 620
    goto/16 :goto_0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 628
    return-void
.end method
