.class public final Lgz;
.super Lml;
.source "SourceFile"


# instance fields
.field public adIndexCount:Ljava/lang/Long;

.field public adIndexPos:Ljava/lang/Long;

.field public adsnapId:Ljava/lang/String;

.field public editionId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;

.field public mediaType:Lih;

.field public publisherId:Ljava/lang/String;

.field public snapIndexCount:Ljava/lang/Long;

.field public snapIndexPos:Ljava/lang/Long;

.field public source:Llv;

.field public timeViewed:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lml;-><init>()V

    .line 93
    const-string v0, "DISCOVER_AD_SHARE_DENY"

    iput-object v0, p0, Lgz;->eventName:Ljava/lang/String;

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
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    const-string v1, "event_name"

    const-string v2, "DISCOVER_AD_SHARE_DENY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lgz;->adIndexCount:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "ad_index_count"

    iget-object v2, p0, Lgz;->adIndexCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    iget-object v1, p0, Lgz;->adIndexPos:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "ad_index_pos"

    iget-object v2, p0, Lgz;->adIndexPos:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1
    iget-object v1, p0, Lgz;->adsnapId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "adsnap_id"

    iget-object v2, p0, Lgz;->adsnapId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    iget-object v1, p0, Lgz;->editionId:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "edition_id"

    iget-object v2, p0, Lgz;->editionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_3
    iget-object v1, p0, Lgz;->mediaType:Lih;

    if-eqz v1, :cond_4

    const-string v1, "media_type"

    iget-object v2, p0, Lgz;->mediaType:Lih;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_4
    iget-object v1, p0, Lgz;->publisherId:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "publisher_id"

    iget-object v2, p0, Lgz;->publisherId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_5
    iget-object v1, p0, Lgz;->snapIndexCount:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const-string v1, "snap_index_count"

    iget-object v2, p0, Lgz;->snapIndexCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_6
    iget-object v1, p0, Lgz;->snapIndexPos:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v1, "snap_index_pos"

    iget-object v2, p0, Lgz;->snapIndexPos:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_7
    iget-object v1, p0, Lgz;->source:Llv;

    if-eqz v1, :cond_8

    const-string v1, "source"

    iget-object v2, p0, Lgz;->source:Llv;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_8
    iget-object v1, p0, Lgz;->timeViewed:Ljava/lang/Double;

    if-eqz v1, :cond_9

    const-string v1, "time_viewed"

    iget-object v2, p0, Lgz;->timeViewed:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_9
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 115
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 121
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

    .line 122
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 124
    :cond_4
    check-cast p1, Lgz;

    .line 126
    iget-object v2, p0, Lgz;->adIndexCount:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lgz;->adIndexCount:Ljava/lang/Long;

    iget-object v3, p1, Lgz;->adIndexCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lgz;->adIndexCount:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 127
    :cond_7
    iget-object v2, p0, Lgz;->adIndexPos:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lgz;->adIndexPos:Ljava/lang/Long;

    iget-object v3, p1, Lgz;->adIndexPos:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lgz;->adIndexPos:Ljava/lang/Long;

    if-nez v2, :cond_8

    .line 128
    :cond_a
    iget-object v2, p0, Lgz;->adsnapId:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lgz;->adsnapId:Ljava/lang/String;

    iget-object v3, p1, Lgz;->adsnapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lgz;->adsnapId:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 129
    :cond_d
    iget-object v2, p0, Lgz;->editionId:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lgz;->editionId:Ljava/lang/String;

    iget-object v3, p1, Lgz;->editionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Lgz;->editionId:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 130
    :cond_10
    iget-object v2, p0, Lgz;->mediaType:Lih;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lgz;->mediaType:Lih;

    iget-object v3, p1, Lgz;->mediaType:Lih;

    invoke-virtual {v2, v3}, Lih;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Lgz;->mediaType:Lih;

    if-nez v2, :cond_11

    .line 131
    :cond_13
    iget-object v2, p0, Lgz;->publisherId:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lgz;->publisherId:Ljava/lang/String;

    iget-object v3, p1, Lgz;->publisherId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Lgz;->publisherId:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 132
    :cond_16
    iget-object v2, p0, Lgz;->snapIndexCount:Ljava/lang/Long;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lgz;->snapIndexCount:Ljava/lang/Long;

    iget-object v3, p1, Lgz;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Lgz;->snapIndexCount:Ljava/lang/Long;

    if-nez v2, :cond_17

    .line 133
    :cond_19
    iget-object v2, p0, Lgz;->snapIndexPos:Ljava/lang/Long;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lgz;->snapIndexPos:Ljava/lang/Long;

    iget-object v3, p1, Lgz;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Lgz;->snapIndexPos:Ljava/lang/Long;

    if-nez v2, :cond_1a

    .line 134
    :cond_1c
    iget-object v2, p0, Lgz;->source:Llv;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lgz;->source:Llv;

    iget-object v3, p1, Lgz;->source:Llv;

    invoke-virtual {v2, v3}, Llv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p1, Lgz;->source:Llv;

    if-nez v2, :cond_1d

    .line 135
    :cond_1f
    iget-object v2, p0, Lgz;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lgz;->timeViewed:Ljava/lang/Double;

    iget-object v3, p1, Lgz;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_20
    iget-object v2, p1, Lgz;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 142
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgz;->adIndexCount:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgz;->adIndexCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgz;->adIndexPos:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgz;->adIndexPos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgz;->adsnapId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgz;->adsnapId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgz;->editionId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgz;->editionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 146
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgz;->mediaType:Lih;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgz;->mediaType:Lih;

    invoke-virtual {v0}, Lih;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgz;->publisherId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lgz;->publisherId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgz;->snapIndexCount:Ljava/lang/Long;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lgz;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 149
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgz;->snapIndexPos:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgz;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 150
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgz;->source:Llv;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgz;->source:Llv;

    invoke-virtual {v0}, Llv;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgz;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lgz;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 152
    return v0

    :cond_1
    move v0, v1

    .line 142
    goto :goto_0

    :cond_2
    move v0, v1

    .line 143
    goto :goto_1

    :cond_3
    move v0, v1

    .line 144
    goto :goto_2

    :cond_4
    move v0, v1

    .line 145
    goto :goto_3

    :cond_5
    move v0, v1

    .line 146
    goto :goto_4

    :cond_6
    move v0, v1

    .line 147
    goto :goto_5

    :cond_7
    move v0, v1

    .line 148
    goto :goto_6

    :cond_8
    move v0, v1

    .line 149
    goto :goto_7

    :cond_9
    move v0, v1

    .line 150
    goto :goto_8
.end method
