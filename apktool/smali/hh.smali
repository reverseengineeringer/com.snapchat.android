.class public final Lhh;
.super Llt;
.source "SourceFile"


# instance fields
.field public dsnapId:Ljava/lang/String;

.field public editionId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;

.field private exitEvent:Lhl;

.field public fullView:Ljava/lang/Boolean;

.field private mediaDisplayTimeSec:Ljava/lang/Double;

.field public mediaType:Lhy;

.field public publisherId:Ljava/lang/String;

.field public snapIndexCount:Ljava/lang/Long;

.field public snapIndexPos:Ljava/lang/Long;

.field private snapTimeSec:Ljava/lang/Double;

.field public source:Lld;

.field public timeViewed:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Llt;-><init>()V

    .line 112
    const-string v0, "DISCOVER_SNAP_VIEW"

    iput-object v0, p0, Lhh;->eventName:Ljava/lang/String;

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
    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v1, "event_name"

    const-string v2, "DISCOVER_SNAP_VIEW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lhh;->dsnapId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "dsnap_id"

    iget-object v2, p0, Lhh;->dsnapId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    iget-object v1, p0, Lhh;->editionId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "edition_id"

    iget-object v2, p0, Lhh;->editionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_1
    iget-object v1, p0, Lhh;->exitEvent:Lhl;

    if-eqz v1, :cond_2

    const-string v1, "exit_event"

    iget-object v2, p0, Lhh;->exitEvent:Lhl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_2
    iget-object v1, p0, Lhh;->fullView:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const-string v1, "full_view"

    iget-object v2, p0, Lhh;->fullView:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_3
    iget-object v1, p0, Lhh;->mediaDisplayTimeSec:Ljava/lang/Double;

    if-eqz v1, :cond_4

    const-string v1, "media_display_time_sec"

    iget-object v2, p0, Lhh;->mediaDisplayTimeSec:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_4
    iget-object v1, p0, Lhh;->mediaType:Lhy;

    if-eqz v1, :cond_5

    const-string v1, "media_type"

    iget-object v2, p0, Lhh;->mediaType:Lhy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_5
    iget-object v1, p0, Lhh;->publisherId:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "publisher_id"

    iget-object v2, p0, Lhh;->publisherId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_6
    iget-object v1, p0, Lhh;->snapIndexCount:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v1, "snap_index_count"

    iget-object v2, p0, Lhh;->snapIndexCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_7
    iget-object v1, p0, Lhh;->snapIndexPos:Ljava/lang/Long;

    if-eqz v1, :cond_8

    const-string v1, "snap_index_pos"

    iget-object v2, p0, Lhh;->snapIndexPos:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_8
    iget-object v1, p0, Lhh;->snapTimeSec:Ljava/lang/Double;

    if-eqz v1, :cond_9

    const-string v1, "snap_time_sec"

    iget-object v2, p0, Lhh;->snapTimeSec:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_9
    iget-object v1, p0, Lhh;->source:Lld;

    if-eqz v1, :cond_a

    const-string v1, "source"

    iget-object v2, p0, Lhh;->source:Lld;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_a
    iget-object v1, p0, Lhh;->timeViewed:Ljava/lang/Double;

    if-eqz v1, :cond_b

    const-string v1, "time_viewed"

    iget-object v2, p0, Lhh;->timeViewed:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_b
    invoke-super {p0}, Llt;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    if-ne p0, p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 142
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

    .line 143
    :cond_3
    invoke-super {p0, p1}, Llt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 145
    :cond_4
    check-cast p1, Lhh;

    .line 147
    iget-object v2, p0, Lhh;->dsnapId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lhh;->dsnapId:Ljava/lang/String;

    iget-object v3, p1, Lhh;->dsnapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lhh;->dsnapId:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 148
    :cond_7
    iget-object v2, p0, Lhh;->editionId:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lhh;->editionId:Ljava/lang/String;

    iget-object v3, p1, Lhh;->editionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lhh;->editionId:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 149
    :cond_a
    iget-object v2, p0, Lhh;->exitEvent:Lhl;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lhh;->exitEvent:Lhl;

    iget-object v3, p1, Lhh;->exitEvent:Lhl;

    invoke-virtual {v2, v3}, Lhl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lhh;->exitEvent:Lhl;

    if-nez v2, :cond_b

    .line 150
    :cond_d
    iget-object v2, p0, Lhh;->fullView:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lhh;->fullView:Ljava/lang/Boolean;

    iget-object v3, p1, Lhh;->fullView:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Lhh;->fullView:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    .line 151
    :cond_10
    iget-object v2, p0, Lhh;->mediaDisplayTimeSec:Ljava/lang/Double;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lhh;->mediaDisplayTimeSec:Ljava/lang/Double;

    iget-object v3, p1, Lhh;->mediaDisplayTimeSec:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Lhh;->mediaDisplayTimeSec:Ljava/lang/Double;

    if-nez v2, :cond_11

    .line 152
    :cond_13
    iget-object v2, p0, Lhh;->mediaType:Lhy;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lhh;->mediaType:Lhy;

    iget-object v3, p1, Lhh;->mediaType:Lhy;

    invoke-virtual {v2, v3}, Lhy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Lhh;->mediaType:Lhy;

    if-nez v2, :cond_14

    .line 153
    :cond_16
    iget-object v2, p0, Lhh;->publisherId:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lhh;->publisherId:Ljava/lang/String;

    iget-object v3, p1, Lhh;->publisherId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Lhh;->publisherId:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 154
    :cond_19
    iget-object v2, p0, Lhh;->snapIndexCount:Ljava/lang/Long;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lhh;->snapIndexCount:Ljava/lang/Long;

    iget-object v3, p1, Lhh;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Lhh;->snapIndexCount:Ljava/lang/Long;

    if-nez v2, :cond_1a

    .line 155
    :cond_1c
    iget-object v2, p0, Lhh;->snapIndexPos:Ljava/lang/Long;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lhh;->snapIndexPos:Ljava/lang/Long;

    iget-object v3, p1, Lhh;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p1, Lhh;->snapIndexPos:Ljava/lang/Long;

    if-nez v2, :cond_1d

    .line 156
    :cond_1f
    iget-object v2, p0, Lhh;->snapTimeSec:Ljava/lang/Double;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lhh;->snapTimeSec:Ljava/lang/Double;

    iget-object v3, p1, Lhh;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_20
    move v0, v1

    goto/16 :goto_0

    :cond_21
    iget-object v2, p1, Lhh;->snapTimeSec:Ljava/lang/Double;

    if-nez v2, :cond_20

    .line 157
    :cond_22
    iget-object v2, p0, Lhh;->source:Lld;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lhh;->source:Lld;

    iget-object v3, p1, Lhh;->source:Lld;

    invoke-virtual {v2, v3}, Lld;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v0, v1

    goto/16 :goto_0

    :cond_24
    iget-object v2, p1, Lhh;->source:Lld;

    if-nez v2, :cond_23

    .line 158
    :cond_25
    iget-object v2, p0, Lhh;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lhh;->timeViewed:Ljava/lang/Double;

    iget-object v3, p1, Lhh;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_26
    iget-object v2, p1, Lhh;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-super {p0}, Llt;->hashCode()I

    move-result v0

    .line 165
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->dsnapId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhh;->dsnapId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 166
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->editionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhh;->editionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 167
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->exitEvent:Lhl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhh;->exitEvent:Lhl;

    invoke-virtual {v0}, Lhl;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->fullView:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lhh;->fullView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 169
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->mediaDisplayTimeSec:Ljava/lang/Double;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhh;->mediaDisplayTimeSec:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->mediaType:Lhy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lhh;->mediaType:Lhy;

    invoke-virtual {v0}, Lhy;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 171
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->publisherId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lhh;->publisherId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 172
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->snapIndexCount:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhh;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 173
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->snapIndexPos:Ljava/lang/Long;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lhh;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 174
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->snapTimeSec:Ljava/lang/Double;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lhh;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 175
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhh;->source:Lld;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lhh;->source:Lld;

    invoke-virtual {v0}, Lld;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lhh;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lhh;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 177
    return v0

    :cond_1
    move v0, v1

    .line 165
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 166
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 167
    goto :goto_2

    :cond_4
    move v0, v1

    .line 168
    goto :goto_3

    :cond_5
    move v0, v1

    .line 169
    goto :goto_4

    :cond_6
    move v0, v1

    .line 170
    goto :goto_5

    :cond_7
    move v0, v1

    .line 171
    goto :goto_6

    :cond_8
    move v0, v1

    .line 172
    goto :goto_7

    :cond_9
    move v0, v1

    .line 173
    goto :goto_8

    :cond_a
    move v0, v1

    .line 174
    goto :goto_9

    :cond_b
    move v0, v1

    .line 175
    goto :goto_a
.end method
