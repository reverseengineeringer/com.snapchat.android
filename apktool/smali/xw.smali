.class public final Lxw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lavc;

.field protected final b:Lxv;


# direct methods
.method public constructor <init>(Lavc;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lxv;->a()Lxv;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lxw;-><init>(Lavc;Lxv;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lavc;Lxv;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lxw;->a:Lavc;

    .line 39
    iput-object p2, p0, Lxw;->b:Lxv;

    .line 40
    return-void
.end method

.method private static a(Lavc;I)F
    .locals 2

    .prologue
    .line 78
    int-to-float v0, p1

    invoke-virtual {p0}, Lavc;->d()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static a(ILjava/util/SortedSet;)Lavc;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/SortedSet",
            "<",
            "Lavc;",
            ">;)",
            "Lavc;"
        }
    .end annotation

    .annotation build Lr;
    .end annotation

    .prologue
    .line 65
    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 69
    :cond_0
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavc;

    .line 70
    invoke-static {v0, p0}, Lxw;->a(Lavc;I)F

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {p1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavc;

    goto :goto_0
.end method

.method private a(Ljava/util/SortedSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lavc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v1, Ljava/util/TreeSet;

    new-instance v0, Lavd;

    invoke-direct {v0}, Lavd;-><init>()V

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 115
    iget-object v0, p0, Lxw;->a:Lavc;

    const-wide v2, 0x3fd99999a0000000L    # 0.4000000059604645

    invoke-virtual {v0, v2, v3}, Lavc;->a(D)Lavc;

    move-result-object v2

    .line 116
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavc;

    .line 117
    iget-object v4, p0, Lxw;->a:Lavc;

    invoke-virtual {v4, v0}, Lavc;->b(Lavc;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Lavc;->b(Lavc;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 124
    invoke-static {p1}, Lxv;->a(Ljava/util/Set;)V

    .line 125
    return-void
.end method


# virtual methods
.method public final a(I)Lavc;
    .locals 11
    .annotation build Lr;
    .end annotation

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 44
    iget-object v0, p0, Lxw;->b:Lxv;

    iget-object v0, v0, Lxv;->a:Ljava/util/Set;

    new-instance v2, Ljava/util/TreeSet;

    new-instance v1, Lavd;

    invoke-direct {v1}, Lavd;-><init>()V

    invoke-direct {v2, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lxw;->a:Lavc;

    invoke-virtual {v1}, Lavc;->a()I

    move-result v1

    int-to-double v4, v1

    iget-object v1, p0, Lxw;->a:Lavc;

    invoke-virtual {v1}, Lavc;->b()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v4, v6

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavc;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lavc;->b()I

    move-result v1

    invoke-virtual {v0}, Lavc;->b()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v4

    div-double/2addr v6, v8

    double-to-int v0, v6

    mul-int/lit8 v0, v0, 0x2

    :goto_1
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    new-instance v6, Lavc;

    invoke-direct {v6, v0, v1}, Lavc;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lavc;->a()I

    move-result v1

    invoke-virtual {v0}, Lavc;->a()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v6, v4

    div-double/2addr v6, v8

    double-to-int v0, v6

    mul-int/lit8 v0, v0, 0x2

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lxw;->a(Ljava/util/SortedSet;)V

    invoke-static {p1, v2}, Lxw;->a(ILjava/util/SortedSet;)Lavc;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting bitrate to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resolution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lavc;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lavc;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitrateperPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p1}, Lxw;->a(Lavc;I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
