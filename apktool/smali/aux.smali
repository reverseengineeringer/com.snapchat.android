.class public final Laux;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Laux;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public static a(F)F
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    .line 22
    :goto_0
    if-ge v0, p0, :cond_0

    .line 23
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return v0
.end method

.method public static a(Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 34
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 36
    div-int/lit8 v1, v0, 0x2

    .line 37
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 38
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    .line 42
    :goto_0
    return-wide v0

    .line 40
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 42
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/util/Random;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Laux;->sRandom:Ljava/util/Random;

    return-object v0
.end method

.method public static b(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 58
    :goto_0
    return-wide v0

    .line 55
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 56
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v2, v0

    goto :goto_0
.end method
