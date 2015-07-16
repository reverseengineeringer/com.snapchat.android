.class public final Lgp;
.super Lml;
.source "SourceFile"


# instance fields
.field private camera:Ljava/lang/Long;

.field private caption:Ljava/lang/Long;

.field private drawing:Ljava/lang/Boolean;

.field private final eventName:Ljava/lang/String;

.field private filter:Ljava/lang/String;

.field private filterGeofence:Ljava/lang/String;

.field private filterInfo:Lhv;

.field private filterSponsor:Ljava/lang/String;

.field private filterType:Lhw;

.field private filterVisual:Lhx;

.field private flash:Ljava/lang/Boolean;

.field public mediaType:Lih;

.field public snapId:Ljava/lang/String;

.field public snapTimeSec:Ljava/lang/Double;

.field private source:Llu;

.field private viewTimeSec:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lml;-><init>()V

    .line 132
    const-string v0, "DIRECT_SNAP_SCREENSHOT"

    iput-object v0, p0, Lgp;->eventName:Ljava/lang/String;

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
    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    const-string v1, "event_name"

    const-string v2, "DIRECT_SNAP_SCREENSHOT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lgp;->camera:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "camera"

    iget-object v2, p0, Lgp;->camera:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    iget-object v1, p0, Lgp;->caption:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "caption"

    iget-object v2, p0, Lgp;->caption:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    iget-object v1, p0, Lgp;->drawing:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const-string v1, "drawing"

    iget-object v2, p0, Lgp;->drawing:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2
    iget-object v1, p0, Lgp;->filter:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "filter"

    iget-object v2, p0, Lgp;->filter:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_3
    iget-object v1, p0, Lgp;->filterGeofence:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "filter_geofence"

    iget-object v2, p0, Lgp;->filterGeofence:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_4
    iget-object v1, p0, Lgp;->filterInfo:Lhv;

    if-eqz v1, :cond_5

    const-string v1, "filter_info"

    iget-object v2, p0, Lgp;->filterInfo:Lhv;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_5
    iget-object v1, p0, Lgp;->filterSponsor:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "filter_sponsor"

    iget-object v2, p0, Lgp;->filterSponsor:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_6
    iget-object v1, p0, Lgp;->filterType:Lhw;

    if-eqz v1, :cond_7

    const-string v1, "filter_type"

    iget-object v2, p0, Lgp;->filterType:Lhw;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_7
    iget-object v1, p0, Lgp;->filterVisual:Lhx;

    if-eqz v1, :cond_8

    const-string v1, "filter_visual"

    iget-object v2, p0, Lgp;->filterVisual:Lhx;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_8
    iget-object v1, p0, Lgp;->flash:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    const-string v1, "flash"

    iget-object v2, p0, Lgp;->flash:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_9
    iget-object v1, p0, Lgp;->mediaType:Lih;

    if-eqz v1, :cond_a

    const-string v1, "media_type"

    iget-object v2, p0, Lgp;->mediaType:Lih;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_a
    iget-object v1, p0, Lgp;->snapId:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, "snap_id"

    iget-object v2, p0, Lgp;->snapId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_b
    iget-object v1, p0, Lgp;->snapTimeSec:Ljava/lang/Double;

    if-eqz v1, :cond_c

    const-string v1, "snap_time_sec"

    iget-object v2, p0, Lgp;->snapTimeSec:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_c
    iget-object v1, p0, Lgp;->source:Llu;

    if-eqz v1, :cond_d

    const-string v1, "source"

    iget-object v2, p0, Lgp;->source:Llu;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_d
    iget-object v1, p0, Lgp;->viewTimeSec:Ljava/lang/Double;

    if-eqz v1, :cond_e

    const-string v1, "view_time_sec"

    iget-object v2, p0, Lgp;->viewTimeSec:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_e
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 159
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    if-ne p0, p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 165
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

    .line 166
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 168
    :cond_4
    check-cast p1, Lgp;

    .line 170
    iget-object v2, p0, Lgp;->camera:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lgp;->camera:Ljava/lang/Long;

    iget-object v3, p1, Lgp;->camera:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lgp;->camera:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 171
    :cond_7
    iget-object v2, p0, Lgp;->caption:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lgp;->caption:Ljava/lang/Long;

    iget-object v3, p1, Lgp;->caption:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lgp;->caption:Ljava/lang/Long;

    if-nez v2, :cond_8

    .line 172
    :cond_a
    iget-object v2, p0, Lgp;->drawing:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lgp;->drawing:Ljava/lang/Boolean;

    iget-object v3, p1, Lgp;->drawing:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lgp;->drawing:Ljava/lang/Boolean;

    if-nez v2, :cond_b

    .line 173
    :cond_d
    iget-object v2, p0, Lgp;->filter:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lgp;->filter:Ljava/lang/String;

    iget-object v3, p1, Lgp;->filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Lgp;->filter:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 174
    :cond_10
    iget-object v2, p0, Lgp;->filterGeofence:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lgp;->filterGeofence:Ljava/lang/String;

    iget-object v3, p1, Lgp;->filterGeofence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Lgp;->filterGeofence:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 175
    :cond_13
    iget-object v2, p0, Lgp;->filterInfo:Lhv;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lgp;->filterInfo:Lhv;

    iget-object v3, p1, Lgp;->filterInfo:Lhv;

    invoke-virtual {v2, v3}, Lhv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Lgp;->filterInfo:Lhv;

    if-nez v2, :cond_14

    .line 176
    :cond_16
    iget-object v2, p0, Lgp;->filterSponsor:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lgp;->filterSponsor:Ljava/lang/String;

    iget-object v3, p1, Lgp;->filterSponsor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Lgp;->filterSponsor:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 177
    :cond_19
    iget-object v2, p0, Lgp;->filterType:Lhw;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lgp;->filterType:Lhw;

    iget-object v3, p1, Lgp;->filterType:Lhw;

    invoke-virtual {v2, v3}, Lhw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Lgp;->filterType:Lhw;

    if-nez v2, :cond_1a

    .line 178
    :cond_1c
    iget-object v2, p0, Lgp;->filterVisual:Lhx;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lgp;->filterVisual:Lhx;

    iget-object v3, p1, Lgp;->filterVisual:Lhx;

    invoke-virtual {v2, v3}, Lhx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p1, Lgp;->filterVisual:Lhx;

    if-nez v2, :cond_1d

    .line 179
    :cond_1f
    iget-object v2, p0, Lgp;->flash:Ljava/lang/Boolean;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lgp;->flash:Ljava/lang/Boolean;

    iget-object v3, p1, Lgp;->flash:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_20
    move v0, v1

    goto/16 :goto_0

    :cond_21
    iget-object v2, p1, Lgp;->flash:Ljava/lang/Boolean;

    if-nez v2, :cond_20

    .line 180
    :cond_22
    iget-object v2, p0, Lgp;->mediaType:Lih;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lgp;->mediaType:Lih;

    iget-object v3, p1, Lgp;->mediaType:Lih;

    invoke-virtual {v2, v3}, Lih;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v0, v1

    goto/16 :goto_0

    :cond_24
    iget-object v2, p1, Lgp;->mediaType:Lih;

    if-nez v2, :cond_23

    .line 181
    :cond_25
    iget-object v2, p0, Lgp;->snapId:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lgp;->snapId:Ljava/lang/String;

    iget-object v3, p1, Lgp;->snapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_26
    move v0, v1

    goto/16 :goto_0

    :cond_27
    iget-object v2, p1, Lgp;->snapId:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 182
    :cond_28
    iget-object v2, p0, Lgp;->snapTimeSec:Ljava/lang/Double;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lgp;->snapTimeSec:Ljava/lang/Double;

    iget-object v3, p1, Lgp;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_29
    move v0, v1

    goto/16 :goto_0

    :cond_2a
    iget-object v2, p1, Lgp;->snapTimeSec:Ljava/lang/Double;

    if-nez v2, :cond_29

    .line 183
    :cond_2b
    iget-object v2, p0, Lgp;->source:Llu;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lgp;->source:Llu;

    iget-object v3, p1, Lgp;->source:Llu;

    invoke-virtual {v2, v3}, Llu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2c
    move v0, v1

    goto/16 :goto_0

    :cond_2d
    iget-object v2, p1, Lgp;->source:Llu;

    if-nez v2, :cond_2c

    .line 184
    :cond_2e
    iget-object v2, p0, Lgp;->viewTimeSec:Ljava/lang/Double;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lgp;->viewTimeSec:Ljava/lang/Double;

    iget-object v3, p1, Lgp;->viewTimeSec:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_2f
    iget-object v2, p1, Lgp;->viewTimeSec:Ljava/lang/Double;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 191
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->camera:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgp;->camera:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 192
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->caption:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgp;->caption:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->drawing:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgp;->drawing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->filter:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgp;->filter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 195
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->filterGeofence:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgp;->filterGeofence:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 196
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->filterInfo:Lhv;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lgp;->filterInfo:Lhv;

    invoke-virtual {v0}, Lhv;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 197
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->filterSponsor:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lgp;->filterSponsor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 198
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->filterType:Lhw;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgp;->filterType:Lhw;

    invoke-virtual {v0}, Lhw;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 199
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->filterVisual:Lhx;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgp;->filterVisual:Lhx;

    invoke-virtual {v0}, Lhx;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 200
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->flash:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lgp;->flash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 201
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->mediaType:Lih;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lgp;->mediaType:Lih;

    invoke-virtual {v0}, Lih;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 202
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->snapId:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgp;->snapId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 203
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->snapTimeSec:Ljava/lang/Double;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lgp;->snapTimeSec:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 204
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lgp;->source:Llu;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgp;->source:Llu;

    invoke-virtual {v0}, Llu;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lgp;->viewTimeSec:Ljava/lang/Double;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lgp;->viewTimeSec:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 206
    return v0

    :cond_1
    move v0, v1

    .line 191
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 192
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 193
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 194
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 195
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 196
    goto/16 :goto_5

    :cond_7
    move v0, v1

    .line 197
    goto :goto_6

    :cond_8
    move v0, v1

    .line 198
    goto :goto_7

    :cond_9
    move v0, v1

    .line 199
    goto :goto_8

    :cond_a
    move v0, v1

    .line 200
    goto :goto_9

    :cond_b
    move v0, v1

    .line 201
    goto :goto_a

    :cond_c
    move v0, v1

    .line 202
    goto :goto_b

    :cond_d
    move v0, v1

    .line 203
    goto :goto_c

    :cond_e
    move v0, v1

    .line 204
    goto :goto_d
.end method
