.class public final Lbj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbj$a;
    }
.end annotation


# static fields
.field private static l:I


# instance fields
.field public a:Lbl;

.field public b:Z

.field final c:Ljava/lang/String;

.field public final d:Lbj$a;

.field final e:Lbj$a;

.field final f:Lbj$a;

.field g:D

.field public h:D

.field i:Z

.field j:Lbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbh",
            "<",
            "Lbn;",
            ">;"
        }
    .end annotation
.end field

.field k:D

.field private m:D

.field private n:D

.field private final o:Lbf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lbj;->l:I

    return-void
.end method

.method constructor <init>(Lbf;)V
    .locals 4

    .prologue
    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lbj$a;

    invoke-direct {v0, v1}, Lbj$a;-><init>(B)V

    iput-object v0, p0, Lbj;->d:Lbj$a;

    .line 38
    new-instance v0, Lbj$a;

    invoke-direct {v0, v1}, Lbj$a;-><init>(B)V

    iput-object v0, p0, Lbj;->e:Lbj$a;

    .line 39
    new-instance v0, Lbj$a;

    invoke-direct {v0, v1}, Lbj$a;-><init>(B)V

    iput-object v0, p0, Lbj;->f:Lbj$a;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbj;->i:Z

    .line 44
    iput-wide v2, p0, Lbj;->m:D

    .line 45
    iput-wide v2, p0, Lbj;->n:D

    .line 46
    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    iput-object v0, p0, Lbj;->j:Lbh;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbj;->k:D

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lbj;->o:Lbf;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spring:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lbj;->l:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lbj;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbj;->c:Ljava/lang/String;

    .line 60
    sget-object v0, Lbl;->c:Lbl;

    invoke-virtual {p0, v0}, Lbj;->a(Lbl;)Lbj;

    .line 61
    return-void
.end method


# virtual methods
.method public final a(D)Lbj;
    .locals 3

    .prologue
    .line 110
    iput-wide p1, p0, Lbj;->g:D

    .line 111
    iget-object v0, p0, Lbj;->d:Lbj$a;

    iput-wide p1, v0, Lbj$a;->a:D

    .line 112
    iget-object v0, p0, Lbj;->j:Lbh;

    invoke-virtual {v0}, Lbh;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbn;

    .line 113
    invoke-interface {v0, p0}, Lbn;->a(Lbj;)V

    goto :goto_0

    .line 115
    :cond_0
    return-object p0
.end method

.method public final a(Lbl;)Lbj;
    .locals 2

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springConfig is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lbj;->a:Lbl;

    .line 91
    return-object p0
.end method

.method public final a(Lbn;)Lbj;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lbj;->j:Lbh;

    invoke-virtual {v0, p1}, Lbh;->a(Ljava/lang/Object;)V

    .line 478
    return-object p0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lbj;->j:Lbh;

    invoke-virtual {v0}, Lbh;->a()V

    .line 70
    iget-object v0, p0, Lbj;->o:Lbf;

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spring is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, v0, Lbf;->b:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lbf;->a:Ljava/util/Map;

    iget-object v1, p0, Lbj;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public final b(D)Lbj;
    .locals 5

    .prologue
    .line 157
    iget-wide v0, p0, Lbj;->h:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    return-object p0

    .line 160
    :cond_1
    iget-object v0, p0, Lbj;->d:Lbj$a;

    iget-wide v0, v0, Lbj$a;->a:D

    iput-wide v0, p0, Lbj;->g:D

    .line 161
    iput-wide p1, p0, Lbj;->h:D

    .line 162
    iget-object v1, p0, Lbj;->o:Lbf;

    iget-object v2, p0, Lbj;->c:Ljava/lang/String;

    iget-object v0, v1, Lbf;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "springId "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not reference a registered spring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lbf;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lbf;->d:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, v1, Lbf;->d:Z

    iget-object v0, v1, Lbf;->c:Lbo;

    invoke-virtual {v0}, Lbo;->a()V

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lbj;->j:Lbh;

    invoke-virtual {v0}, Lbh;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lbj;->d:Lbj$a;

    iget-wide v0, v0, Lbj$a;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lbj;->m:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lbj;->d:Lbj$a;

    iget-wide v2, p0, Lbj;->h:D

    iget-wide v0, v0, Lbj$a;->a:D

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lbj;->n:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(D)Lbj;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lbj;->d:Lbj$a;

    iput-wide p1, v0, Lbj$a;->b:D

    .line 183
    return-object p0
.end method
