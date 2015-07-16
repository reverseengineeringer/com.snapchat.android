.class public final Lapk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbam;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lbam;->a()Lbam;

    move-result-object v0

    invoke-direct {p0, v0}, Lapk;-><init>(Lbam;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Lbam;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lapk;->a:Lbam;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v5, 0x1

    .line 41
    iget-object v0, p0, Lapk;->a:Lbam;

    invoke-virtual {v0}, Lbam;->d()I

    move-result v0

    .line 42
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 43
    const/4 v0, 0x3

    move v1, v0

    .line 46
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    .line 95
    :goto_1
    return-object v0

    .line 53
    :cond_1
    invoke-interface {p1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 54
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    move-object v0, v6

    .line 58
    goto :goto_1

    .line 62
    :cond_2
    if-le v1, v12, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v12, :cond_4

    .line 63
    invoke-virtual {v0}, Lakl;->U()J

    move-result-wide v2

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    invoke-virtual {v0}, Lakl;->U()J

    move-result-wide v8

    .line 65
    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 67
    long-to-double v8, v8

    add-int/lit8 v0, v1, -0x1

    int-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-long v8, v8

    .line 68
    sub-long/2addr v2, v8

    move v4, v5

    .line 69
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_4

    .line 73
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 75
    invoke-virtual {v0}, Lakl;->U()J

    .line 76
    invoke-virtual {v0}, Lakl;->U()J

    .line 79
    invoke-virtual {v0}, Lakl;->U()J

    move-result-wide v10

    cmp-long v7, v10, v2

    if-gtz v7, :cond_3

    .line 80
    sub-long/2addr v2, v8

    .line 84
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 89
    :cond_4
    if-le v1, v5, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_5

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    const-string v0, "Selected too many stories for thumbnail! (%d/%s)"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v0, v6

    .line 95
    goto/16 :goto_1

    :cond_6
    move v1, v0

    goto/16 :goto_0
.end method
