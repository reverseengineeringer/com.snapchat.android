.class public final Lbmw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lblv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbmw;

.field private final b:I

.field private final c:Lbma;

.field private d:I


# direct methods
.method public constructor <init>(Lbmw;ILbma;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lbmw$a;->a:Lbmw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput p2, p0, Lbmw$a;->b:I

    .line 767
    iput-object p3, p0, Lbmw$a;->c:Lbma;

    .line 768
    return-void
.end method


# virtual methods
.method public final a(Lbma;)Lbmc;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 779
    iget v0, p0, Lbmw$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmw$a;->d:I

    .line 781
    iget v0, p0, Lbmw$a;->b:I

    if-lez v0, :cond_2

    .line 782
    iget-object v0, p0, Lbmw$a;->a:Lbmw;

    iget-object v0, v0, Lbmw;->b:Lbly;

    iget-object v0, v0, Lbly;->i:Ljava/util/List;

    iget v1, p0, Lbmw$a;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblv;

    .line 783
    iget-object v1, p0, Lbmw$a;->a:Lbmw;

    invoke-static {v1}, Lbmw;->a(Lbmw;)Lblo;

    move-result-object v1

    iget-object v1, v1, Lblo;->b:Lbme;

    iget-object v1, v1, Lbme;->a:Lblg;

    .line 786
    invoke-virtual {p1}, Lbma;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lblg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    invoke-virtual {p1}, Lbma;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lbmp;->a(Ljava/net/URL;)I

    move-result v2

    iget v1, v1, Lblg;->c:I

    if-eq v2, v1, :cond_1

    .line 788
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must retain the same host and port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_1
    iget v1, p0, Lbmw$a;->d:I

    if-le v1, v4, :cond_2

    .line 794
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 799
    :cond_2
    iget v0, p0, Lbmw$a;->b:I

    iget-object v1, p0, Lbmw$a;->a:Lbmw;

    iget-object v1, v1, Lbmw;->b:Lbly;

    iget-object v1, v1, Lbly;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 801
    new-instance v2, Lbmw$a;

    iget-object v0, p0, Lbmw$a;->a:Lbmw;

    iget v1, p0, Lbmw$a;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v0, v1, p1}, Lbmw$a;-><init>(Lbmw;ILbma;)V

    .line 802
    iget-object v0, p0, Lbmw$a;->a:Lbmw;

    iget-object v0, v0, Lbmw;->b:Lbly;

    iget-object v0, v0, Lbly;->i:Ljava/util/List;

    iget v1, p0, Lbmw$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblv;

    .line 803
    invoke-interface {v0}, Lblv;->a()Lbmc;

    move-result-object v1

    .line 806
    iget v2, v2, Lbmw$a;->d:I

    if-eq v2, v4, :cond_3

    .line 807
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    .line 823
    :goto_0
    return-object v0

    .line 814
    :cond_4
    iget-object v0, p0, Lbmw$a;->a:Lbmw;

    invoke-static {v0}, Lbmw;->b(Lbmw;)Lbng;

    move-result-object v0

    invoke-interface {v0, p1}, Lbng;->a(Lbma;)V

    .line 816
    iget-object v0, p0, Lbmw$a;->a:Lbmw;

    invoke-virtual {v0}, Lbmw;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lbma;->d:Lbmb;

    if-eqz v0, :cond_5

    .line 817
    iget-object v0, p0, Lbmw$a;->a:Lbmw;

    invoke-static {v0}, Lbmw;->b(Lbmw;)Lbng;

    move-result-object v0

    iget-object v1, p1, Lbma;->d:Lbmb;

    invoke-virtual {v1}, Lbmb;->b()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lbng;->a(Lbma;J)Lcai;

    move-result-object v0

    .line 818
    invoke-static {v0}, Lcad;->a(Lcai;)Lbzv;

    move-result-object v0

    .line 819
    iget-object v1, p1, Lbma;->d:Lbmb;

    invoke-virtual {v1, v0}, Lbmb;->a(Lbzv;)V

    .line 820
    invoke-interface {v0}, Lbzv;->close()V

    .line 823
    :cond_5
    iget-object v0, p0, Lbmw$a;->a:Lbmw;

    invoke-static {v0}, Lbmw;->c(Lbmw;)Lbmc;

    move-result-object v0

    goto :goto_0
.end method
