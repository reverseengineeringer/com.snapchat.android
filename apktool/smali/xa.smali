.class public final Lxa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Laue;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Laue;

.field protected final b:Lws;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 44
    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "XT1080"

    aput-object v0, v3, v1

    const-string v0, "XT1056"

    aput-object v0, v3, v9

    const/4 v0, 0x2

    const-string v4, "XT1058"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "XT1052"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "XT1053"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "XT1055"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "XT1050"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "XT1060"

    aput-object v4, v3, v0

    move v0, v1

    .line 45
    :goto_0
    if-ge v0, v10, :cond_0

    aget-object v4, v3, v0

    .line 46
    new-array v5, v9, [Laue;

    new-instance v6, Laue;

    const/16 v7, 0x354

    const/16 v8, 0x1e0

    invoke-direct {v6, v7, v8}, Laue;-><init>(II)V

    aput-object v6, v5, v1

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lxa;->c:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public constructor <init>(Laue;)V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lxa;-><init>(Laue;Lws;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Laue;Lws;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lxa;->a:Laue;

    .line 58
    iput-object p2, p0, Lxa;->b:Lws;

    .line 59
    return-void
.end method

.method private static a(Laue;I)F
    .locals 2

    .prologue
    .line 97
    int-to-float v0, p1

    invoke-virtual {p0}, Laue;->d()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static a(ILjava/util/SortedSet;)Laue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/SortedSet",
            "<",
            "Laue;",
            ">;)",
            "Laue;"
        }
    .end annotation

    .annotation build Lr;
    .end annotation

    .prologue
    .line 84
    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laue;

    .line 89
    invoke-static {v0, p0}, Lxa;->a(Laue;I)F

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {p1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laue;

    goto :goto_0
.end method

.method private a(Ljava/util/SortedSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Laue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v1, Ljava/util/TreeSet;

    new-instance v0, Lauf;

    invoke-direct {v0}, Lauf;-><init>()V

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 134
    iget-object v0, p0, Lxa;->a:Laue;

    const-wide v2, 0x3fd99999a0000000L    # 0.4000000059604645

    invoke-virtual {v0, v2, v3}, Laue;->a(D)Laue;

    move-result-object v2

    .line 135
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laue;

    .line 136
    iget-object v4, p0, Lxa;->a:Laue;

    invoke-virtual {v4, v0}, Laue;->b(Laue;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Laue;->b(Laue;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 143
    sget-object v0, Lxa;->c:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 144
    if-eqz v0, :cond_3

    .line 145
    invoke-interface {p1, v0}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 147
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)Laue;
    .locals 11
    .annotation build Lr;
    .end annotation

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 63
    iget-object v0, p0, Lxa;->b:Lws;

    iget-object v0, v0, Lws;->a:Ljava/util/Set;

    new-instance v2, Ljava/util/TreeSet;

    new-instance v1, Lauf;

    invoke-direct {v1}, Lauf;-><init>()V

    invoke-direct {v2, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lxa;->a:Laue;

    invoke-virtual {v1}, Laue;->a()I

    move-result v1

    int-to-double v4, v1

    iget-object v1, p0, Lxa;->a:Laue;

    invoke-virtual {v1}, Laue;->b()I

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

    check-cast v0, Laue;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    invoke-virtual {v0}, Laue;->b()I

    move-result v1

    invoke-virtual {v0}, Laue;->b()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v4

    div-double/2addr v6, v8

    double-to-int v0, v6

    mul-int/lit8 v0, v0, 0x2

    :goto_1
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    new-instance v6, Laue;

    invoke-direct {v6, v0, v1}, Laue;-><init>(II)V

    invoke-interface {v2, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Laue;->a()I

    move-result v1

    invoke-virtual {v0}, Laue;->a()I

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
    invoke-direct {p0, v2}, Lxa;->a(Ljava/util/SortedSet;)V

    invoke-static {p1, v2}, Lxa;->a(ILjava/util/SortedSet;)Laue;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    const-string v1, "TranscodingResolutionProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting bitrate to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Laue;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Laue;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bitrateperPixel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, p1}, Lxa;->a(Laue;I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
