.class public final Lcgq;
.super Lche;
.source "SourceFile"

# interfaces
.implements Lcgz;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lche;-><init>()V

    .line 109
    invoke-static {}, Lcgj;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcgq;->a:J

    .line 110
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lche;-><init>()V

    .line 119
    iput-wide p1, p0, Lcgq;->a:J

    .line 120
    return-void
.end method


# virtual methods
.method public final a()Lcgg;
    .locals 4

    .prologue
    .line 288
    new-instance v0, Lcgg;

    iget-wide v2, p0, Lcgq;->a:J

    invoke-static {}, Lcic;->M()Lcic;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcgg;-><init>(JLcgf;)V

    return-object v0
.end method

.method public final b()Lcgq;
    .locals 0

    .prologue
    .line 144
    return-object p0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lcgq;->a:J

    return-wide v0
.end method

.method public final d()Lcgf;
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lcic;->L()Lcic;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcgt;
    .locals 4

    .prologue
    .line 334
    new-instance v0, Lcgt;

    iget-wide v2, p0, Lcgq;->a:J

    invoke-static {}, Lcic;->M()Lcic;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcgt;-><init>(JLcgf;)V

    return-object v0
.end method
