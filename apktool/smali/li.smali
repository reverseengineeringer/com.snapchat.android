.class public final Lli;
.super Llt;
.source "SourceFile"


# instance fields
.field private final eventName:Ljava/lang/String;

.field public posterId:Ljava/lang/String;

.field public storyCellCount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Llt;-><init>()V

    .line 28
    const-string v0, "STORY_CELL_VIEW"

    iput-object v0, p0, Lli;->eventName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    const-string v1, "event_name"

    const-string v2, "STORY_CELL_VIEW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lli;->posterId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "poster_id"

    iget-object v2, p0, Lli;->posterId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    iget-object v1, p0, Lli;->storyCellCount:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "story_cell_count"

    iget-object v2, p0, Lli;->storyCellCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    invoke-super {p0}, Llt;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 49
    :cond_3
    invoke-super {p0, p1}, Llt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 51
    :cond_4
    check-cast p1, Lli;

    .line 53
    iget-object v2, p0, Lli;->posterId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lli;->posterId:Ljava/lang/String;

    iget-object v3, p1, Lli;->posterId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lli;->posterId:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 54
    :cond_7
    iget-object v2, p0, Lli;->storyCellCount:Ljava/lang/Long;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lli;->storyCellCount:Ljava/lang/Long;

    iget-object v3, p1, Lli;->storyCellCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lli;->storyCellCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-super {p0}, Llt;->hashCode()I

    move-result v0

    .line 61
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lli;->posterId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lli;->posterId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lli;->storyCellCount:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lli;->storyCellCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 63
    return v0

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0
.end method
