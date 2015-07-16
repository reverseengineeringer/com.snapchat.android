.class public final Laio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqk$a;


# static fields
.field private static e:Laio;


# instance fields
.field public final a:Laiz;

.field public final b:Lakk;

.field public c:Landroid/location/Location;

.field public d:Ljava/lang/String;

.field private final f:Lain;

.field private final g:Lum;

.field private final h:Laip;

.field private i:Lcht;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Laio;

    invoke-direct {v0}, Laio;-><init>()V

    sput-object v0, Laio;->e:Laio;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 42
    invoke-static {}, Lain;->a()Lain;

    move-result-object v1

    invoke-static {}, Laiz;->a()Laiz;

    move-result-object v2

    new-instance v3, Lum;

    invoke-direct {v3}, Lum;-><init>()V

    invoke-static {}, Laip;->a()Laip;

    move-result-object v4

    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Laio;-><init>(Lain;Laiz;Lum;Laip;Lakk;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lain;Laiz;Lum;Laip;Lakk;)V
    .locals 2
    .param p1    # Lain;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laiz;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lum;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Laip;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lakk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Laio;->c:Landroid/location/Location;

    .line 38
    new-instance v0, Lcht;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcht;-><init>(B)V

    iput-object v0, p0, Laio;->i:Lcht;

    .line 39
    const-string v0, "{}"

    iput-object v0, p0, Laio;->d:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Laio;->f:Lain;

    .line 52
    iput-object p2, p0, Laio;->a:Laiz;

    .line 53
    iput-object p3, p0, Laio;->g:Lum;

    .line 54
    iput-object p4, p0, Laio;->h:Laip;

    .line 55
    iput-object p5, p0, Laio;->b:Lakk;

    .line 56
    return-void
.end method

.method public static c()Laio;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Laio;->e:Laio;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Laio;->a:Laiz;

    iget-object v0, v0, Laiz;->a:Laja;

    invoke-static {}, Lcht;->c()Lcht;

    move-result-object v1

    iget-object v2, v0, Laja;->e:Lcht;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcht;->b(I)Lcht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcht;->c(Lcic;)Z

    move-result v2

    iput-object v1, v0, Laja;->e:Lcht;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Laja;->a()V

    .line 177
    :cond_0
    return-void
.end method

.method public final a(Lakv;)V
    .locals 2
    .param p1    # Lakv;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lbhp;->b()V

    .line 150
    iget-object v0, p0, Laio;->h:Laip;

    iget-object v1, v0, Laip;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Laip;->b:Lakv;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 181
    new-instance v0, Laio$2;

    invoke-direct {v0, p0, p1}, Laio$2;-><init>(Laio;Ljava/lang/String;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lbhp;->b()V

    .line 157
    iget-object v1, p0, Laio;->a:Laiz;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedGeofiltersData "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Laiz;->a:Laja;

    invoke-virtual {v0}, Laja;->d()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    iget-object v3, v1, Laiz;->a:Laja;

    invoke-static {}, Lcht;->c()Lcht;

    move-result-object v4

    iput-object v4, v3, Laja;->e:Lcht;

    iget-object v3, v3, Laja;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v1, Laiz;->a:Laja;

    invoke-virtual {v0}, Laja;->a()V

    .line 159
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Laio$1;

    invoke-direct {v0, p0}, Laio$1;-><init>(Laio;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lbhp;->b()V

    .line 192
    iput-object p1, p0, Laio;->d:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Laio;->f:Lain;

    invoke-virtual {v0}, Lain;->d()Landroid/location/Location;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    iget-object v1, p0, Laio;->c:Landroid/location/Location;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Laio;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Laio;->d()V

    .line 198
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Laio;->b:Lakk;

    invoke-virtual {v0, p1}, Lakk;->a(Ljava/util/List;)V

    .line 164
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcbr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lbhp;->b()V

    .line 170
    iget-object v1, p0, Laio;->a:Laiz;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedCachableGeofiltersData "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    iget-object v3, v1, Laiz;->b:Laix;

    invoke-virtual {v3, v0}, Laix;->a(Lajr;)V

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method protected final declared-synchronized d()V
    .locals 9
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lbhp;->b()V

    .line 81
    iget-object v2, p0, Laio;->f:Lain;

    invoke-virtual {v2}, Lain;->d()Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 82
    if-nez v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :cond_1
    :try_start_1
    iget-object v2, p0, Laio;->i:Lcht;

    if-nez v2, :cond_4

    move v2, v0

    :goto_1
    if-nez v2, :cond_5

    move v2, v0

    :goto_2
    if-eqz v2, :cond_b

    iget-object v2, p0, Laio;->c:Landroid/location/Location;

    if-eqz v2, :cond_2

    if-nez v3, :cond_6

    :cond_2
    move v2, v1

    :goto_3
    if-eqz v2, :cond_b

    iget-object v2, p0, Laio;->c:Landroid/location/Location;

    if-eqz v2, :cond_3

    if-nez v3, :cond_9

    :cond_3
    move v2, v1

    :goto_4
    if-eqz v2, :cond_b

    :goto_5
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating request with location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v0, Lcht;

    invoke-direct {v0}, Lcht;-><init>()V

    iput-object v0, p0, Laio;->i:Lcht;

    .line 95
    iput-object v3, p0, Laio;->c:Landroid/location/Location;

    .line 97
    new-instance v0, Lqk;

    iget-object v1, p0, Laio;->d:Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Lqk;-><init>(Lqk$a;Landroid/location/Location;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lul;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_4
    :try_start_2
    new-instance v2, Lcht;

    invoke-direct {v2}, Lcht;-><init>()V

    iget-object v4, p0, Laio;->i:Lcht;

    iget-object v5, v4, Lcht;->b:Lchg;

    invoke-virtual {v5}, Lchg;->f()Lchn;

    move-result-object v5

    iget-wide v6, v4, Lcht;->a:J

    const/16 v8, 0x78

    invoke-virtual {v5, v6, v7, v8}, Lchn;->a(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcht;->a(J)Lcht;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Now: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " aged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Lcht;->b(Lcic;)Z

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Laio;->c:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    iget-object v4, p0, Laio;->c:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    cmpg-float v4, v2, v4

    if-lez v4, :cond_7

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_8

    :cond_7
    move v2, v0

    goto :goto_3

    :cond_8
    move v2, v1

    goto/16 :goto_3

    :cond_9
    iget-object v2, p0, Laio;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_a

    move v2, v0

    goto/16 :goto_4

    :cond_a
    move v2, v1

    goto/16 :goto_4

    :cond_b
    move v0, v1

    goto/16 :goto_5
.end method
