.class public final Lchh;
.super Lcih;
.source "SourceFile"

# interfaces
.implements Lchy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchh$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcih;-><init>()V

    .line 156
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcih;-><init>(J)V

    .line 194
    return-void
.end method

.method public constructor <init>(JLchg;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lcih;-><init>(JLchg;)V

    .line 221
    return-void
.end method

.method public constructor <init>(JLchl;)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcih;-><init>(JLchl;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lchg;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcih;-><init>(Lchg;)V

    .line 518
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcih;-><init>(Ljava/lang/Object;)V

    .line 242
    return-void
.end method


# virtual methods
.method public final F_()Lchh;
    .locals 4

    .prologue
    .line 759
    new-instance v0, Lchs;

    iget-wide v2, p0, Lcih;->a:J

    iget-object v1, p0, Lcih;->b:Lchg;

    invoke-direct {v0, v2, v3, v1}, Lchs;-><init>(JLchg;)V

    invoke-virtual {p0}, Lcif;->d()Lchg;

    move-result-object v1

    invoke-virtual {v1}, Lchg;->a()Lchl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchs;->a(Lchl;)Lchh;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lchh;
    .locals 0

    .prologue
    .line 527
    return-object p0
.end method

.method public final a(I)Lchh;
    .locals 8

    .prologue
    .line 1356
    if-nez p1, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return-object p0

    .line 1359
    :cond_1
    iget-object v0, p0, Lcih;->b:Lchg;

    invoke-virtual {v0}, Lchg;->s()Lchn;

    move-result-object v0

    iget-wide v2, p0, Lcih;->a:J

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_3

    int-to-long v4, p1

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Long.MIN_VALUE cannot be negated"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    neg-long v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lchn;->a(JJ)J

    move-result-wide v0

    .line 1360
    :goto_1
    iget-wide v2, p0, Lcih;->a:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lchh;

    iget-object v3, p0, Lcih;->b:Lchg;

    invoke-direct {v2, v0, v1, v3}, Lchh;-><init>(JLchg;)V

    move-object p0, v2

    goto :goto_0

    .line 1359
    :cond_3
    neg-int v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lchn;->a(JI)J

    move-result-wide v0

    goto :goto_1
.end method
