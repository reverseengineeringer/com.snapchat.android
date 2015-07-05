.class public final Lgd;
.super Llt;
.source "SourceFile"


# instance fields
.field public camera:Ljava/lang/Long;

.field private caption:Ljava/lang/Long;

.field private drawing:Ljava/lang/Boolean;

.field private final eventName:Ljava/lang/String;

.field private filter:Ljava/lang/String;

.field private filterGeofence:Ljava/lang/String;

.field private filterInfo:Lhm;

.field private filterSponsor:Ljava/lang/String;

.field private filterType:Lhn;

.field private filterVisual:Lho;

.field public flash:Ljava/lang/Boolean;

.field public mediaType:Lhy;

.field public snapTimeSec:Ljava/lang/Double;

.field public source:Llc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Llt;-><init>()V

    .line 116
    const-string v0, "DIRECT_SNAP_CREATE"

    iput-object v0, p0, Lgd;->eventName:Ljava/lang/String;

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
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    const-string v1, "event_name"

    const-string v2, "DIRECT_SNAP_CREATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lgd;->camera:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "camera"

    iget-object v2, p0, Lgd;->camera:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_0
    iget-object v1, p0, Lgd;->caption:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "caption"

    iget-object v2, p0, Lgd;->caption:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    iget-object v1, p0, Lgd;->drawing:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const-string v1, "drawing"

    iget-object v2, p0, Lgd;->drawing:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_2
    iget-object v1, p0, Lgd;->filter:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "filter"

    iget-object v2, p0, Lgd;->filter:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_3
    iget-object v1, p0, Lgd;->filterGeofence:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "filter_geofence"

    iget-object v2, p0, Lgd;->filterGeofence:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_4
    iget-object v1, p0, Lgd;->filterInfo:Lhm;

    if-eqz v1, :cond_5

    const-string v1, "filter_info"

    iget-object v2, p0, Lgd;->filterInfo:Lhm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_5
    iget-object v1, p0, Lgd;->filterSponsor:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "filter_sponsor"

    iget-object v2, p0, Lgd;->filterSponsor:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_6
    iget-object v1, p0, Lgd;->filterType:Lhn;

    if-eqz v1, :cond_7

    const-string v1, "filter_type"

    iget-object v2, p0, Lgd;->filterType:Lhn;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_7
    iget-object v1, p0, Lgd;->filterVisual:Lho;

    if-eqz v1, :cond_8

    const-string v1, "filter_visual"

    iget-object v2, p0, Lgd;->filterVisual:Lho;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_8
    iget-object v1, p0, Lgd;->flash:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    const-string v1, "flash"

    iget-object v2, p0, Lgd;->flash:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_9
    iget-object v1, p0, Lgd;->mediaType:Lhy;

    if-eqz v1, :cond_a

    const-string v1, "media_type"

    iget-object v2, p0, Lgd;->mediaType:Lhy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_a
    iget-object v1, p0, Lgd;->snapTimeSec:Ljava/lang/Double;

    if-eqz v1, :cond_b

    const-string v1, "snap_time_sec"

    iget-object v2, p0, Lgd;->snapTimeSec:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_b
    iget-object v1, p0, Lgd;->source:Llc;

    if-eqz v1, :cond_c

    const-string v1, "source"

    iget-object v2, p0, Lgd;->source:Llc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_c
    invoke-super {p0}, Llt;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 141
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    if-ne p0, p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 147
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

    .line 148
    :cond_3
    invoke-super {p0, p1}, Llt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 150
    :cond_4
    check-cast p1, Lgd;

    .line 152
    iget-object v2, p0, Lgd;->camera:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lgd;->camera:Ljava/lang/Long;

    iget-object v3, p1, Lgd;->camera:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lgd;->camera:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 153
    :cond_7
    iget-object v2, p0, Lgd;->caption:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lgd;->caption:Ljava/lang/Long;

    iget-object v3, p1, Lgd;->caption:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lgd;->caption:Ljava/lang/Long;

    if-nez v2, :cond_8

    .line 154
    :cond_a
    iget-object v2, p0, Lgd;->drawing:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lgd;->drawing:Ljava/lang/Boolean;

    iget-object v3, p1, Lgd;->drawing:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lgd;->drawing:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    .line 155
    :cond_d
    iget-object v2, p0, Lgd;->filter:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lgd;->filter:Ljava/lang/String;

    iget-object v3, p1, Lgd;->filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Lgd;->filter:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 156
    :cond_10
    iget-object v2, p0, Lgd;->filterGeofence:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lgd;->filterGeofence:Ljava/lang/String;

    iget-object v3, p1, Lgd;->filterGeofence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Lgd;->filterGeofence:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 157
    :cond_13
    iget-object v2, p0, Lgd;->filterInfo:Lhm;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lgd;->filterInfo:Lhm;

    iget-object v3, p1, Lgd;->filterInfo:Lhm;

    invoke-virtual {v2, v3}, Lhm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Lgd;->filterInfo:Lhm;

    if-nez v2, :cond_14

    .line 158
    :cond_16
    iget-object v2, p0, Lgd;->filterSponsor:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lgd;->filterSponsor:Ljava/lang/String;

    iget-object v3, p1, Lgd;->filterSponsor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Lgd;->filterSponsor:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 159
    :cond_19
    iget-object v2, p0, Lgd;->filterType:Lhn;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lgd;->filterType:Lhn;

    iget-object v3, p1, Lgd;->filterType:Lhn;

    invoke-virtual {v2, v3}, Lhn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Lgd;->filterType:Lhn;

    if-nez v2, :cond_1a

    .line 160
    :cond_1c
    iget-object v2, p0, Lgd;->filterVisual:Lho;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lgd;->filterVisual:Lho;

    iget-object v3, p1, Lgd;->filterVisual:Lho;

    invoke-virtual {v2, v3}, Lho;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p1, Lgd;->filterVisual:Lho;

    if-nez v2, :cond_1d

    .line 161
    :cond_1f
    iget-object v2, p0, Lgd;->flash:Ljava/lang/Boolean;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lgd;->flash:Ljava/lang/Boolean;

    iget-object v3, p1, Lgd;->flash:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_20
    move v0, v1

    goto/16 :goto_0

    :cond_21
    iget-object v2, p1, Lgd;->flash:Ljava/lang/Boolean;

    if-nez v2, :cond_20

    .line 162
    :cond_22
    iget-object v2, p0, Lgd;->mediaType:Lhy;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lgd;->mediaType:Lhy;

    iget-object v3, p1, Lgd;->mediaType:Lhy;

    invoke-virtual {v2, v3}, Lhy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v0, v1

    goto/16 :goto_0

    :cond_24
    iget-object v2, p1, Lgd;->mediaType:Lhy;

    if-nez v2, :cond_23

    .line 163
    :cond_25
    iget-object v2, p0, Lgd;->snapTimeSec:Ljava/lang/Double;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lgd;->snapTimeSec:Ljava/lang/Double;

    iget-object v3, p1, Lgd;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_26
    move v0, v1

    goto/16 :goto_0

    :cond_27
    iget-object v2, p1, Lgd;->snapTimeSec:Ljava/lang/Double;

    if-nez v2, :cond_26

    .line 164
    :cond_28
    iget-object v2, p0, Lgd;->source:Llc;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lgd;->source:Llc;

    iget-object v3, p1, Lgd;->source:Llc;

    invoke-virtual {v2, v3}, Llc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_29
    iget-object v2, p1, Lgd;->source:Llc;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-super {p0}, Llt;->hashCode()I

    move-result v0

    .line 171
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->camera:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgd;->camera:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 172
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->caption:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgd;->caption:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 173
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->drawing:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgd;->drawing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 174
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->filter:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgd;->filter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 175
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->filterGeofence:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgd;->filterGeofence:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 176
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->filterInfo:Lhm;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lgd;->filterInfo:Lhm;

    invoke-virtual {v0}, Lhm;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 177
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->filterSponsor:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lgd;->filterSponsor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 178
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->filterType:Lhn;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgd;->filterType:Lhn;

    invoke-virtual {v0}, Lhn;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 179
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->filterVisual:Lho;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgd;->filterVisual:Lho;

    invoke-virtual {v0}, Lho;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 180
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->flash:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lgd;->flash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->mediaType:Lhy;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lgd;->mediaType:Lhy;

    invoke-virtual {v0}, Lhy;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 182
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgd;->snapTimeSec:Ljava/lang/Double;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgd;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 183
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgd;->source:Llc;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lgd;->source:Llc;

    invoke-virtual {v1}, Llc;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 184
    return v0

    :cond_1
    move v0, v1

    .line 171
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 172
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 173
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 174
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 175
    goto :goto_4

    :cond_6
    move v0, v1

    .line 176
    goto :goto_5

    :cond_7
    move v0, v1

    .line 177
    goto :goto_6

    :cond_8
    move v0, v1

    .line 178
    goto :goto_7

    :cond_9
    move v0, v1

    .line 179
    goto :goto_8

    :cond_a
    move v0, v1

    .line 180
    goto :goto_9

    :cond_b
    move v0, v1

    .line 181
    goto :goto_a

    :cond_c
    move v0, v1

    .line 182
    goto :goto_b
.end method
