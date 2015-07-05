.class public final Lgx;
.super Llt;
.source "SourceFile"


# instance fields
.field public dsnapId:Ljava/lang/String;

.field public editionId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;

.field public longformType:Lhy;

.field public mediaType:Lhy;

.field public publisherId:Ljava/lang/String;

.field public snapIndexCount:Ljava/lang/Long;

.field public snapIndexPos:Ljava/lang/Long;

.field private source:Lld;

.field public timeViewed:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Llt;-><init>()V

    .line 84
    const-string v0, "DISCOVER_SNAP_LONGFORM_SHARE_CREATE"

    iput-object v0, p0, Lgx;->eventName:Ljava/lang/String;

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
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string v1, "event_name"

    const-string v2, "DISCOVER_SNAP_LONGFORM_SHARE_CREATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lgx;->dsnapId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "dsnap_id"

    iget-object v2, p0, Lgx;->dsnapId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_0
    iget-object v1, p0, Lgx;->editionId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "edition_id"

    iget-object v2, p0, Lgx;->editionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    iget-object v1, p0, Lgx;->longformType:Lhy;

    if-eqz v1, :cond_2

    const-string v1, "longform_type"

    iget-object v2, p0, Lgx;->longformType:Lhy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2
    iget-object v1, p0, Lgx;->mediaType:Lhy;

    if-eqz v1, :cond_3

    const-string v1, "media_type"

    iget-object v2, p0, Lgx;->mediaType:Lhy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_3
    iget-object v1, p0, Lgx;->publisherId:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "publisher_id"

    iget-object v2, p0, Lgx;->publisherId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_4
    iget-object v1, p0, Lgx;->snapIndexCount:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const-string v1, "snap_index_count"

    iget-object v2, p0, Lgx;->snapIndexCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_5
    iget-object v1, p0, Lgx;->snapIndexPos:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const-string v1, "snap_index_pos"

    iget-object v2, p0, Lgx;->snapIndexPos:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_6
    iget-object v1, p0, Lgx;->source:Lld;

    if-eqz v1, :cond_7

    const-string v1, "source"

    iget-object v2, p0, Lgx;->source:Lld;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_7
    iget-object v1, p0, Lgx;->timeViewed:Ljava/lang/Double;

    if-eqz v1, :cond_8

    const-string v1, "time_viewed"

    iget-object v2, p0, Lgx;->timeViewed:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_8
    invoke-super {p0}, Llt;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 105
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 111
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

    .line 112
    :cond_3
    invoke-super {p0, p1}, Llt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 114
    :cond_4
    check-cast p1, Lgx;

    .line 116
    iget-object v2, p0, Lgx;->dsnapId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lgx;->dsnapId:Ljava/lang/String;

    iget-object v3, p1, Lgx;->dsnapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lgx;->dsnapId:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 117
    :cond_7
    iget-object v2, p0, Lgx;->editionId:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lgx;->editionId:Ljava/lang/String;

    iget-object v3, p1, Lgx;->editionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lgx;->editionId:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 118
    :cond_a
    iget-object v2, p0, Lgx;->longformType:Lhy;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lgx;->longformType:Lhy;

    iget-object v3, p1, Lgx;->longformType:Lhy;

    invoke-virtual {v2, v3}, Lhy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lgx;->longformType:Lhy;

    if-nez v2, :cond_b

    .line 119
    :cond_d
    iget-object v2, p0, Lgx;->mediaType:Lhy;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lgx;->mediaType:Lhy;

    iget-object v3, p1, Lgx;->mediaType:Lhy;

    invoke-virtual {v2, v3}, Lhy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Lgx;->mediaType:Lhy;

    if-nez v2, :cond_e

    .line 120
    :cond_10
    iget-object v2, p0, Lgx;->publisherId:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lgx;->publisherId:Ljava/lang/String;

    iget-object v3, p1, Lgx;->publisherId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Lgx;->publisherId:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 121
    :cond_13
    iget-object v2, p0, Lgx;->snapIndexCount:Ljava/lang/Long;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lgx;->snapIndexCount:Ljava/lang/Long;

    iget-object v3, p1, Lgx;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Lgx;->snapIndexCount:Ljava/lang/Long;

    if-nez v2, :cond_14

    .line 122
    :cond_16
    iget-object v2, p0, Lgx;->snapIndexPos:Ljava/lang/Long;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lgx;->snapIndexPos:Ljava/lang/Long;

    iget-object v3, p1, Lgx;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Lgx;->snapIndexPos:Ljava/lang/Long;

    if-nez v2, :cond_17

    .line 123
    :cond_19
    iget-object v2, p0, Lgx;->source:Lld;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lgx;->source:Lld;

    iget-object v3, p1, Lgx;->source:Lld;

    invoke-virtual {v2, v3}, Lld;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Lgx;->source:Lld;

    if-nez v2, :cond_1a

    .line 124
    :cond_1c
    iget-object v2, p0, Lgx;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lgx;->timeViewed:Ljava/lang/Double;

    iget-object v3, p1, Lgx;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p1, Lgx;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-super {p0}, Llt;->hashCode()I

    move-result v0

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgx;->dsnapId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgx;->dsnapId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgx;->editionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgx;->editionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgx;->longformType:Lhy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgx;->longformType:Lhy;

    invoke-virtual {v0}, Lhy;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgx;->mediaType:Lhy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgx;->mediaType:Lhy;

    invoke-virtual {v0}, Lhy;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgx;->publisherId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgx;->publisherId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgx;->snapIndexCount:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lgx;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgx;->snapIndexPos:Ljava/lang/Long;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lgx;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgx;->source:Lld;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgx;->source:Lld;

    invoke-virtual {v0}, Lld;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgx;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lgx;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 140
    return v0

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0

    :cond_2
    move v0, v1

    .line 132
    goto :goto_1

    :cond_3
    move v0, v1

    .line 133
    goto :goto_2

    :cond_4
    move v0, v1

    .line 134
    goto :goto_3

    :cond_5
    move v0, v1

    .line 135
    goto :goto_4

    :cond_6
    move v0, v1

    .line 136
    goto :goto_5

    :cond_7
    move v0, v1

    .line 137
    goto :goto_6

    :cond_8
    move v0, v1

    .line 138
    goto :goto_7
.end method
