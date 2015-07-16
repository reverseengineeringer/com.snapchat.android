.class public final Llx;
.super Lml;
.source "SourceFile"


# instance fields
.field private adIndexCount:Ljava/lang/Long;

.field public adIndexPos:Ljava/lang/Long;

.field public additionalInfo:Lfz;

.field public adsnapId:Ljava/lang/String;

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

.field private fullView:Ljava/lang/Boolean;

.field public geoFence:Ljava/lang/String;

.field private mediaType:Lih;

.field public posterId:Ljava/lang/String;

.field private skipInfo:Ljava/lang/String;

.field private snapIndexCount:Ljava/lang/Long;

.field private snapIndexPos:Ljava/lang/Long;

.field private snapTime:Ljava/lang/Double;

.field private source:Llu;

.field private sponsor:Ljava/lang/String;

.field public storySnapId:Ljava/lang/String;

.field public storyType:Lmj;

.field private timeViewed:Ljava/lang/Double;

.field public viewLocation:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lml;-><init>()V

    .line 236
    const-string v0, "STORY_AD_SKIP"

    iput-object v0, p0, Llx;->eventName:Ljava/lang/String;

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
    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    const-string v1, "event_name"

    const-string v2, "STORY_AD_SKIP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, p0, Llx;->adIndexCount:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "ad_index_count"

    iget-object v2, p0, Llx;->adIndexCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    iget-object v1, p0, Llx;->adIndexPos:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "ad_index_pos"

    iget-object v2, p0, Llx;->adIndexPos:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_1
    iget-object v1, p0, Llx;->additionalInfo:Lfz;

    if-eqz v1, :cond_2

    const-string v1, "additional_info"

    iget-object v2, p0, Llx;->additionalInfo:Lfz;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_2
    iget-object v1, p0, Llx;->adsnapId:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "adsnap_id"

    iget-object v2, p0, Llx;->adsnapId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_3
    iget-object v1, p0, Llx;->camera:Ljava/lang/Long;

    if-eqz v1, :cond_4

    const-string v1, "camera"

    iget-object v2, p0, Llx;->camera:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_4
    iget-object v1, p0, Llx;->caption:Ljava/lang/Long;

    if-eqz v1, :cond_5

    const-string v1, "caption"

    iget-object v2, p0, Llx;->caption:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_5
    iget-object v1, p0, Llx;->drawing:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const-string v1, "drawing"

    iget-object v2, p0, Llx;->drawing:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_6
    iget-object v1, p0, Llx;->filter:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "filter"

    iget-object v2, p0, Llx;->filter:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_7
    iget-object v1, p0, Llx;->filterGeofence:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "filter_geofence"

    iget-object v2, p0, Llx;->filterGeofence:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_8
    iget-object v1, p0, Llx;->filterInfo:Lhv;

    if-eqz v1, :cond_9

    const-string v1, "filter_info"

    iget-object v2, p0, Llx;->filterInfo:Lhv;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_9
    iget-object v1, p0, Llx;->filterSponsor:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, "filter_sponsor"

    iget-object v2, p0, Llx;->filterSponsor:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_a
    iget-object v1, p0, Llx;->filterType:Lhw;

    if-eqz v1, :cond_b

    const-string v1, "filter_type"

    iget-object v2, p0, Llx;->filterType:Lhw;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_b
    iget-object v1, p0, Llx;->filterVisual:Lhx;

    if-eqz v1, :cond_c

    const-string v1, "filter_visual"

    iget-object v2, p0, Llx;->filterVisual:Lhx;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_c
    iget-object v1, p0, Llx;->flash:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    const-string v1, "flash"

    iget-object v2, p0, Llx;->flash:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_d
    iget-object v1, p0, Llx;->fullView:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    const-string v1, "full_view"

    iget-object v2, p0, Llx;->fullView:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_e
    iget-object v1, p0, Llx;->geoFence:Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v1, "geo_fence"

    iget-object v2, p0, Llx;->geoFence:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_f
    iget-object v1, p0, Llx;->mediaType:Lih;

    if-eqz v1, :cond_10

    const-string v1, "media_type"

    iget-object v2, p0, Llx;->mediaType:Lih;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_10
    iget-object v1, p0, Llx;->posterId:Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v1, "poster_id"

    iget-object v2, p0, Llx;->posterId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_11
    iget-object v1, p0, Llx;->skipInfo:Ljava/lang/String;

    if-eqz v1, :cond_12

    const-string v1, "skip_info"

    iget-object v2, p0, Llx;->skipInfo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_12
    iget-object v1, p0, Llx;->snapIndexCount:Ljava/lang/Long;

    if-eqz v1, :cond_13

    const-string v1, "snap_index_count"

    iget-object v2, p0, Llx;->snapIndexCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_13
    iget-object v1, p0, Llx;->snapIndexPos:Ljava/lang/Long;

    if-eqz v1, :cond_14

    const-string v1, "snap_index_pos"

    iget-object v2, p0, Llx;->snapIndexPos:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_14
    iget-object v1, p0, Llx;->snapTime:Ljava/lang/Double;

    if-eqz v1, :cond_15

    const-string v1, "snap_time"

    iget-object v2, p0, Llx;->snapTime:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_15
    iget-object v1, p0, Llx;->source:Llu;

    if-eqz v1, :cond_16

    const-string v1, "source"

    iget-object v2, p0, Llx;->source:Llu;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_16
    iget-object v1, p0, Llx;->sponsor:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v1, "sponsor"

    iget-object v2, p0, Llx;->sponsor:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_17
    iget-object v1, p0, Llx;->storySnapId:Ljava/lang/String;

    if-eqz v1, :cond_18

    const-string v1, "story_snap_id"

    iget-object v2, p0, Llx;->storySnapId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_18
    iget-object v1, p0, Llx;->storyType:Lmj;

    if-eqz v1, :cond_19

    const-string v1, "story_type"

    iget-object v2, p0, Llx;->storyType:Lmj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_19
    iget-object v1, p0, Llx;->timeViewed:Ljava/lang/Double;

    if-eqz v1, :cond_1a

    const-string v1, "time_viewed"

    iget-object v2, p0, Llx;->timeViewed:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_1a
    iget-object v1, p0, Llx;->viewLocation:Ljava/lang/Long;

    if-eqz v1, :cond_1b

    const-string v1, "view_location"

    iget-object v2, p0, Llx;->viewLocation:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_1b
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 276
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 281
    if-ne p0, p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 282
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

    .line 283
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 285
    :cond_4
    check-cast p1, Llx;

    .line 287
    iget-object v2, p0, Llx;->adIndexCount:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Llx;->adIndexCount:Ljava/lang/Long;

    iget-object v3, p1, Llx;->adIndexCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Llx;->adIndexCount:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 288
    :cond_7
    iget-object v2, p0, Llx;->adIndexPos:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Llx;->adIndexPos:Ljava/lang/Long;

    iget-object v3, p1, Llx;->adIndexPos:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Llx;->adIndexPos:Ljava/lang/Long;

    if-nez v2, :cond_8

    .line 289
    :cond_a
    iget-object v2, p0, Llx;->additionalInfo:Lfz;

    if-eqz v2, :cond_c

    iget-object v2, p0, Llx;->additionalInfo:Lfz;

    iget-object v3, p1, Llx;->additionalInfo:Lfz;

    invoke-virtual {v2, v3}, Lfz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Llx;->additionalInfo:Lfz;

    if-nez v2, :cond_b

    .line 290
    :cond_d
    iget-object v2, p0, Llx;->adsnapId:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Llx;->adsnapId:Ljava/lang/String;

    iget-object v3, p1, Llx;->adsnapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Llx;->adsnapId:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 291
    :cond_10
    iget-object v2, p0, Llx;->camera:Ljava/lang/Long;

    if-eqz v2, :cond_12

    iget-object v2, p0, Llx;->camera:Ljava/lang/Long;

    iget-object v3, p1, Llx;->camera:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Llx;->camera:Ljava/lang/Long;

    if-nez v2, :cond_11

    .line 292
    :cond_13
    iget-object v2, p0, Llx;->caption:Ljava/lang/Long;

    if-eqz v2, :cond_15

    iget-object v2, p0, Llx;->caption:Ljava/lang/Long;

    iget-object v3, p1, Llx;->caption:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Llx;->caption:Ljava/lang/Long;

    if-nez v2, :cond_14

    .line 293
    :cond_16
    iget-object v2, p0, Llx;->drawing:Ljava/lang/Boolean;

    if-eqz v2, :cond_18

    iget-object v2, p0, Llx;->drawing:Ljava/lang/Boolean;

    iget-object v3, p1, Llx;->drawing:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Llx;->drawing:Ljava/lang/Boolean;

    if-nez v2, :cond_17

    .line 294
    :cond_19
    iget-object v2, p0, Llx;->filter:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Llx;->filter:Ljava/lang/String;

    iget-object v3, p1, Llx;->filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Llx;->filter:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 295
    :cond_1c
    iget-object v2, p0, Llx;->filterGeofence:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Llx;->filterGeofence:Ljava/lang/String;

    iget-object v3, p1, Llx;->filterGeofence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p1, Llx;->filterGeofence:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 296
    :cond_1f
    iget-object v2, p0, Llx;->filterInfo:Lhv;

    if-eqz v2, :cond_21

    iget-object v2, p0, Llx;->filterInfo:Lhv;

    iget-object v3, p1, Llx;->filterInfo:Lhv;

    invoke-virtual {v2, v3}, Lhv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_20
    move v0, v1

    goto/16 :goto_0

    :cond_21
    iget-object v2, p1, Llx;->filterInfo:Lhv;

    if-nez v2, :cond_20

    .line 297
    :cond_22
    iget-object v2, p0, Llx;->filterSponsor:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Llx;->filterSponsor:Ljava/lang/String;

    iget-object v3, p1, Llx;->filterSponsor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v0, v1

    goto/16 :goto_0

    :cond_24
    iget-object v2, p1, Llx;->filterSponsor:Ljava/lang/String;

    if-nez v2, :cond_23

    .line 298
    :cond_25
    iget-object v2, p0, Llx;->filterType:Lhw;

    if-eqz v2, :cond_27

    iget-object v2, p0, Llx;->filterType:Lhw;

    iget-object v3, p1, Llx;->filterType:Lhw;

    invoke-virtual {v2, v3}, Lhw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_26
    move v0, v1

    goto/16 :goto_0

    :cond_27
    iget-object v2, p1, Llx;->filterType:Lhw;

    if-nez v2, :cond_26

    .line 299
    :cond_28
    iget-object v2, p0, Llx;->filterVisual:Lhx;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Llx;->filterVisual:Lhx;

    iget-object v3, p1, Llx;->filterVisual:Lhx;

    invoke-virtual {v2, v3}, Lhx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_29
    move v0, v1

    goto/16 :goto_0

    :cond_2a
    iget-object v2, p1, Llx;->filterVisual:Lhx;

    if-nez v2, :cond_29

    .line 300
    :cond_2b
    iget-object v2, p0, Llx;->flash:Ljava/lang/Boolean;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Llx;->flash:Ljava/lang/Boolean;

    iget-object v3, p1, Llx;->flash:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2c
    move v0, v1

    goto/16 :goto_0

    :cond_2d
    iget-object v2, p1, Llx;->flash:Ljava/lang/Boolean;

    if-nez v2, :cond_2c

    .line 301
    :cond_2e
    iget-object v2, p0, Llx;->fullView:Ljava/lang/Boolean;

    if-eqz v2, :cond_30

    iget-object v2, p0, Llx;->fullView:Ljava/lang/Boolean;

    iget-object v3, p1, Llx;->fullView:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    :cond_2f
    move v0, v1

    goto/16 :goto_0

    :cond_30
    iget-object v2, p1, Llx;->fullView:Ljava/lang/Boolean;

    if-nez v2, :cond_2f

    .line 302
    :cond_31
    iget-object v2, p0, Llx;->geoFence:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, p0, Llx;->geoFence:Ljava/lang/String;

    iget-object v3, p1, Llx;->geoFence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_32
    move v0, v1

    goto/16 :goto_0

    :cond_33
    iget-object v2, p1, Llx;->geoFence:Ljava/lang/String;

    if-nez v2, :cond_32

    .line 303
    :cond_34
    iget-object v2, p0, Llx;->mediaType:Lih;

    if-eqz v2, :cond_36

    iget-object v2, p0, Llx;->mediaType:Lih;

    iget-object v3, p1, Llx;->mediaType:Lih;

    invoke-virtual {v2, v3}, Lih;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_35
    move v0, v1

    goto/16 :goto_0

    :cond_36
    iget-object v2, p1, Llx;->mediaType:Lih;

    if-nez v2, :cond_35

    .line 304
    :cond_37
    iget-object v2, p0, Llx;->posterId:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v2, p0, Llx;->posterId:Ljava/lang/String;

    iget-object v3, p1, Llx;->posterId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    :cond_38
    move v0, v1

    goto/16 :goto_0

    :cond_39
    iget-object v2, p1, Llx;->posterId:Ljava/lang/String;

    if-nez v2, :cond_38

    .line 305
    :cond_3a
    iget-object v2, p0, Llx;->skipInfo:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Llx;->skipInfo:Ljava/lang/String;

    iget-object v3, p1, Llx;->skipInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_3b
    move v0, v1

    goto/16 :goto_0

    :cond_3c
    iget-object v2, p1, Llx;->skipInfo:Ljava/lang/String;

    if-nez v2, :cond_3b

    .line 306
    :cond_3d
    iget-object v2, p0, Llx;->snapIndexCount:Ljava/lang/Long;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Llx;->snapIndexCount:Ljava/lang/Long;

    iget-object v3, p1, Llx;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    :cond_3e
    move v0, v1

    goto/16 :goto_0

    :cond_3f
    iget-object v2, p1, Llx;->snapIndexCount:Ljava/lang/Long;

    if-nez v2, :cond_3e

    .line 307
    :cond_40
    iget-object v2, p0, Llx;->snapIndexPos:Ljava/lang/Long;

    if-eqz v2, :cond_42

    iget-object v2, p0, Llx;->snapIndexPos:Ljava/lang/Long;

    iget-object v3, p1, Llx;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    :cond_41
    move v0, v1

    goto/16 :goto_0

    :cond_42
    iget-object v2, p1, Llx;->snapIndexPos:Ljava/lang/Long;

    if-nez v2, :cond_41

    .line 308
    :cond_43
    iget-object v2, p0, Llx;->snapTime:Ljava/lang/Double;

    if-eqz v2, :cond_45

    iget-object v2, p0, Llx;->snapTime:Ljava/lang/Double;

    iget-object v3, p1, Llx;->snapTime:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    :cond_44
    move v0, v1

    goto/16 :goto_0

    :cond_45
    iget-object v2, p1, Llx;->snapTime:Ljava/lang/Double;

    if-nez v2, :cond_44

    .line 309
    :cond_46
    iget-object v2, p0, Llx;->source:Llu;

    if-eqz v2, :cond_48

    iget-object v2, p0, Llx;->source:Llu;

    iget-object v3, p1, Llx;->source:Llu;

    invoke-virtual {v2, v3}, Llu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    :cond_47
    move v0, v1

    goto/16 :goto_0

    :cond_48
    iget-object v2, p1, Llx;->source:Llu;

    if-nez v2, :cond_47

    .line 310
    :cond_49
    iget-object v2, p0, Llx;->sponsor:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Llx;->sponsor:Ljava/lang/String;

    iget-object v3, p1, Llx;->sponsor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    :cond_4a
    move v0, v1

    goto/16 :goto_0

    :cond_4b
    iget-object v2, p1, Llx;->sponsor:Ljava/lang/String;

    if-nez v2, :cond_4a

    .line 311
    :cond_4c
    iget-object v2, p0, Llx;->storySnapId:Ljava/lang/String;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Llx;->storySnapId:Ljava/lang/String;

    iget-object v3, p1, Llx;->storySnapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    :cond_4d
    move v0, v1

    goto/16 :goto_0

    :cond_4e
    iget-object v2, p1, Llx;->storySnapId:Ljava/lang/String;

    if-nez v2, :cond_4d

    .line 312
    :cond_4f
    iget-object v2, p0, Llx;->storyType:Lmj;

    if-eqz v2, :cond_51

    iget-object v2, p0, Llx;->storyType:Lmj;

    iget-object v3, p1, Llx;->storyType:Lmj;

    invoke-virtual {v2, v3}, Lmj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    :cond_50
    move v0, v1

    goto/16 :goto_0

    :cond_51
    iget-object v2, p1, Llx;->storyType:Lmj;

    if-nez v2, :cond_50

    .line 313
    :cond_52
    iget-object v2, p0, Llx;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_54

    iget-object v2, p0, Llx;->timeViewed:Ljava/lang/Double;

    iget-object v3, p1, Llx;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    :cond_53
    move v0, v1

    goto/16 :goto_0

    :cond_54
    iget-object v2, p1, Llx;->timeViewed:Ljava/lang/Double;

    if-nez v2, :cond_53

    .line 314
    :cond_55
    iget-object v2, p0, Llx;->viewLocation:Ljava/lang/Long;

    if-eqz v2, :cond_56

    iget-object v2, p0, Llx;->viewLocation:Ljava/lang/Long;

    iget-object v3, p1, Llx;->viewLocation:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_56
    iget-object v2, p1, Llx;->viewLocation:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 321
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->adIndexCount:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llx;->adIndexCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 322
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->adIndexPos:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llx;->adIndexPos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 323
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->additionalInfo:Lfz;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llx;->additionalInfo:Lfz;

    invoke-virtual {v0}, Lfz;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 324
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->adsnapId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llx;->adsnapId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 325
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->camera:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llx;->camera:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 326
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->caption:Ljava/lang/Long;

    if-eqz v0, :cond_6

    iget-object v0, p0, Llx;->caption:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 327
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->drawing:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Llx;->drawing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 328
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->filter:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Llx;->filter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 329
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->filterGeofence:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Llx;->filterGeofence:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 330
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->filterInfo:Lhv;

    if-eqz v0, :cond_a

    iget-object v0, p0, Llx;->filterInfo:Lhv;

    invoke-virtual {v0}, Lhv;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 331
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->filterSponsor:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Llx;->filterSponsor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 332
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->filterType:Lhw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Llx;->filterType:Lhw;

    invoke-virtual {v0}, Lhw;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 333
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->filterVisual:Lhx;

    if-eqz v0, :cond_d

    iget-object v0, p0, Llx;->filterVisual:Lhx;

    invoke-virtual {v0}, Lhx;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 334
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->flash:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Llx;->flash:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 335
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->fullView:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    iget-object v0, p0, Llx;->fullView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    .line 336
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->geoFence:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Llx;->geoFence:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    .line 337
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->mediaType:Lih;

    if-eqz v0, :cond_11

    iget-object v0, p0, Llx;->mediaType:Lih;

    invoke-virtual {v0}, Lih;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    .line 338
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->posterId:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Llx;->posterId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    .line 339
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->skipInfo:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Llx;->skipInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    .line 340
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->snapIndexCount:Ljava/lang/Long;

    if-eqz v0, :cond_14

    iget-object v0, p0, Llx;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    .line 341
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->snapIndexPos:Ljava/lang/Long;

    if-eqz v0, :cond_15

    iget-object v0, p0, Llx;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    .line 342
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->snapTime:Ljava/lang/Double;

    if-eqz v0, :cond_16

    iget-object v0, p0, Llx;->snapTime:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    .line 343
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->source:Llu;

    if-eqz v0, :cond_17

    iget-object v0, p0, Llx;->source:Llu;

    invoke-virtual {v0}, Llu;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v2

    .line 344
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->sponsor:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Llx;->sponsor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    .line 345
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->storySnapId:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Llx;->storySnapId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v2

    .line 346
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->storyType:Lmj;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Llx;->storyType:Lmj;

    invoke-virtual {v0}, Lmj;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    .line 347
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llx;->timeViewed:Ljava/lang/Double;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Llx;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v2

    .line 348
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llx;->viewLocation:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Llx;->viewLocation:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 349
    return v0

    :cond_1
    move v0, v1

    .line 321
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 322
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 323
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 324
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 325
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 326
    goto/16 :goto_5

    :cond_7
    move v0, v1

    .line 327
    goto/16 :goto_6

    :cond_8
    move v0, v1

    .line 328
    goto/16 :goto_7

    :cond_9
    move v0, v1

    .line 329
    goto/16 :goto_8

    :cond_a
    move v0, v1

    .line 330
    goto/16 :goto_9

    :cond_b
    move v0, v1

    .line 331
    goto/16 :goto_a

    :cond_c
    move v0, v1

    .line 332
    goto/16 :goto_b

    :cond_d
    move v0, v1

    .line 333
    goto/16 :goto_c

    :cond_e
    move v0, v1

    .line 334
    goto/16 :goto_d

    :cond_f
    move v0, v1

    .line 335
    goto/16 :goto_e

    :cond_10
    move v0, v1

    .line 336
    goto/16 :goto_f

    :cond_11
    move v0, v1

    .line 337
    goto/16 :goto_10

    :cond_12
    move v0, v1

    .line 338
    goto/16 :goto_11

    :cond_13
    move v0, v1

    .line 339
    goto/16 :goto_12

    :cond_14
    move v0, v1

    .line 340
    goto/16 :goto_13

    :cond_15
    move v0, v1

    .line 341
    goto/16 :goto_14

    :cond_16
    move v0, v1

    .line 342
    goto/16 :goto_15

    :cond_17
    move v0, v1

    .line 343
    goto/16 :goto_16

    :cond_18
    move v0, v1

    .line 344
    goto :goto_17

    :cond_19
    move v0, v1

    .line 345
    goto :goto_18

    :cond_1a
    move v0, v1

    .line 346
    goto :goto_19

    :cond_1b
    move v0, v1

    .line 347
    goto :goto_1a
.end method
