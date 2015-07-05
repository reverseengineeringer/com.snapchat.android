.class public abstract Lchg;
.super Lchd;
.source "SourceFile"

# interfaces
.implements Lcgx;
.implements Ljava/io/Serializable;


# instance fields
.field public volatile a:J

.field public volatile b:Lcgf;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcgj;->a()J

    move-result-wide v0

    invoke-static {}, Lcic;->M()Lcic;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lchg;-><init>(JLcgf;)V

    .line 62
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcic;->M()Lcic;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lchg;-><init>(JLcgf;)V

    .line 98
    return-void
.end method

.method public constructor <init>(JLcgf;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lchd;-><init>()V

    .line 125
    invoke-static {p3}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    iput-object v0, p0, Lchg;->b:Lcgf;

    .line 126
    iget-object v0, p0, Lchg;->b:Lcgf;

    iput-wide p1, p0, Lchg;->a:J

    .line 127
    return-void
.end method

.method public constructor <init>(JLcgk;)V
    .locals 1

    .prologue
    .line 110
    invoke-static {p3}, Lcic;->b(Lcgk;)Lcic;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lchg;-><init>(JLcgf;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcgf;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-direct {p0}, Lchd;-><init>()V

    .line 253
    invoke-static {p1}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    iput-object v0, p0, Lchg;->b:Lcgf;

    .line 254
    iget-object v0, p0, Lchg;->b:Lcgf;

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcgf;->a(IIIIIII)J

    move-result-wide v0

    .line 256
    iget-object v2, p0, Lchg;->b:Lcgf;

    iput-wide v0, p0, Lchg;->a:J

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 168
    invoke-direct {p0}, Lchd;-><init>()V

    .line 169
    invoke-static {}, Lcik;->a()Lcik;

    move-result-object v0

    iget-object v1, v0, Lcik;->a:Lcil;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcil;->a(Ljava/lang/Class;)Lcij;

    move-result-object v0

    check-cast v0, Lcio;

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0, p1}, Lcio;->b(Ljava/lang/Object;)Lcgf;

    move-result-object v1

    invoke-static {v1}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v1

    iput-object v1, p0, Lchg;->b:Lcgf;

    .line 171
    invoke-interface {v0, p1}, Lcio;->a(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object v2, p0, Lchg;->b:Lcgf;

    iput-wide v0, p0, Lchg;->a:J

    .line 172
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "No instant converter found for type: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lchg;->b:Lcgf;

    iput-wide p1, p0, Lchg;->a:J

    .line 318
    return-void
.end method

.method public a(Lcgf;)V
    .locals 1

    .prologue
    .line 329
    invoke-static {p1}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    iput-object v0, p0, Lchg;->b:Lcgf;

    .line 330
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lchg;->a:J

    return-wide v0
.end method

.method public final d()Lcgf;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lchg;->b:Lcgf;

    return-object v0
.end method
