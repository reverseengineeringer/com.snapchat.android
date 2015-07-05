.class public final Lbmw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcaj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lbzw;

.field final synthetic c:Lbmr;

.field final synthetic d:Lbzv;

.field final synthetic e:Lbmw;


# direct methods
.method public constructor <init>(Lbmw;Lbzw;Lbmr;Lbzv;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lbmw$2;->e:Lbmw;

    iput-object p2, p0, Lbmw$2;->b:Lbzw;

    iput-object p3, p0, Lbmw$2;->c:Lbmr;

    iput-object p4, p0, Lbmw$2;->d:Lbzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final E_()Lcak;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lbmw$2;->b:Lbzw;

    invoke-interface {v0}, Lbzw;->E_()Lcak;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbzu;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 868
    :try_start_0
    iget-object v2, p0, Lbmw$2;->b:Lbzw;

    invoke-interface {v2, p1, p2, p3}, Lbzw;->a(Lbzu;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 877
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 878
    iget-boolean v2, p0, Lbmw$2;->a:Z

    if-nez v2, :cond_0

    .line 879
    iput-boolean v3, p0, Lbmw$2;->a:Z

    .line 880
    iget-object v2, p0, Lbmw$2;->d:Lbzv;

    invoke-interface {v2}, Lbzv;->close()V

    :cond_0
    move-wide v4, v0

    .line 887
    :goto_0
    return-wide v4

    .line 869
    :catch_0
    move-exception v0

    .line 870
    iget-boolean v1, p0, Lbmw$2;->a:Z

    if-nez v1, :cond_1

    .line 871
    iput-boolean v3, p0, Lbmw$2;->a:Z

    .line 872
    iget-object v1, p0, Lbmw$2;->c:Lbmr;

    invoke-interface {v1}, Lbmr;->a()V

    .line 874
    :cond_1
    throw v0

    .line 885
    :cond_2
    iget-object v0, p0, Lbmw$2;->d:Lbzv;

    invoke-interface {v0}, Lbzv;->b()Lbzu;

    move-result-object v1

    iget-wide v2, p1, Lbzu;->b:J

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lbzu;->a(Lbzu;JJ)Lbzu;

    .line 886
    iget-object v0, p0, Lbmw$2;->d:Lbzv;

    invoke-interface {v0}, Lbzv;->q()Lbzv;

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Lbmw$2;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 896
    invoke-static {p0, v0}, Lbmp;->a(Lcaj;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbmw$2;->a:Z

    .line 898
    iget-object v0, p0, Lbmw$2;->c:Lbmr;

    invoke-interface {v0}, Lbmr;->a()V

    .line 900
    :cond_0
    iget-object v0, p0, Lbmw$2;->b:Lbzw;

    invoke-interface {v0}, Lbzw;->close()V

    .line 901
    return-void
.end method
