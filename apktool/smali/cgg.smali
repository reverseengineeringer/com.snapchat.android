.class public final Lcgg;
.super Lchg;
.source "SourceFile"

# interfaces
.implements Lcgx;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcgg$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lchg;-><init>()V

    .line 156
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lchg;-><init>(J)V

    .line 194
    return-void
.end method

.method public constructor <init>(JLcgf;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0, p1, p2, p3}, Lchg;-><init>(JLcgf;)V

    .line 221
    return-void
.end method

.method public constructor <init>(JLcgk;)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lchg;-><init>(JLcgk;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lcgf;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lchg;-><init>(Lcgf;)V

    .line 518
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lchg;-><init>(Ljava/lang/Object;)V

    .line 242
    return-void
.end method


# virtual methods
.method public final F_()Lcgg;
    .locals 4

    .prologue
    .line 759
    new-instance v0, Lcgr;

    iget-wide v2, p0, Lchg;->a:J

    iget-object v1, p0, Lchg;->b:Lcgf;

    invoke-direct {v0, v2, v3, v1}, Lcgr;-><init>(JLcgf;)V

    invoke-virtual {p0}, Lche;->d()Lcgf;

    move-result-object v1

    invoke-virtual {v1}, Lcgf;->a()Lcgk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcgr;->a(Lcgk;)Lcgg;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcgg;
    .locals 0

    .prologue
    .line 527
    return-object p0
.end method

.method public final a_(J)Lcgg;
    .locals 3

    .prologue
    .line 582
    iget-wide v0, p0, Lchg;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcgg;

    iget-object v1, p0, Lchg;->b:Lcgf;

    invoke-direct {v0, p1, p2, v1}, Lcgg;-><init>(JLcgf;)V

    move-object p0, v0

    goto :goto_0
.end method
