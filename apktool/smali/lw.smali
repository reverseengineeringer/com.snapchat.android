.class public final Llw;
.super Lml;
.source "SourceFile"


# instance fields
.field private adIndexCount:Ljava/lang/Long;

.field private adIndexPos:Ljava/lang/Long;

.field public adsnapId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;

.field private fullView:Ljava/lang/Boolean;

.field public geoFence:Ljava/lang/String;

.field public posterId:Ljava/lang/String;

.field private snapIndexCount:Ljava/lang/Long;

.field private snapIndexPos:Ljava/lang/Long;

.field public snapTime:Ljava/lang/Double;

.field private sponsor:Ljava/lang/String;

.field private storySnapId:Ljava/lang/String;

.field public storyType:Lmj;

.field private timeViewed:Ljava/lang/Double;

.field private viewLocation:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lml;-><init>()V

    .line 124
    const-string v0, "STORY_AD_SCREENSHOT"

    iput-object v0, p0, Llw;->eventName:Ljava/lang/String;

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
    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    const-string v1, "event_name"

    const-string v2, "STORY_AD_SCREENSHOT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Llw;->adIndexCount:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "ad_index_count"

    iget-object v2, p0, Llw;->adIndexCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    iget-object v1, p0, Llw;->adIndexPos:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, "ad_index_pos"

    iget-object v2, p0, Llw;->adIndexPos:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    iget-object v1, p0, Llw;->adsnapId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "adsnap_id"

    iget-object v2, p0, Llw;->adsnapId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_2
    iget-object v1, p0, Llw;->fullView:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const-string v1, "full_view"

    iget-object v2, p0, Llw;->fullView:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_3
    iget-object v1, p0, Llw;->geoFence:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "geo_fence"

    iget-object v2, p0, Llw;->geoFence:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_4
    iget-object v1, p0, Llw;->posterId:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, "poster_id"

    iget-object v2, p0, Llw;->posterId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_5
    iget-object v1, p0, Llw;->snapIndexCount:Ljava/lang/Long;

    if-eqz v1, :cond_6

    const-string v1, "snap_index_count"

    iget-object v2, p0, Llw;->snapIndexCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_6
    iget-object v1, p0, Llw;->snapIndexPos:Ljava/lang/Long;

    if-eqz v1, :cond_7

    const-string v1, "snap_index_pos"

    iget-object v2, p0, Llw;->snapIndexPos:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_7
    iget-object v1, p0, Llw;->snapTime:Ljava/lang/Double;

    if-eqz v1, :cond_8

    const-string v1, "snap_time"

    iget-object v2, p0, Llw;->snapTime:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_8
    iget-object v1, p0, Llw;->sponsor:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "sponsor"

    iget-object v2, p0, Llw;->sponsor:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_9
    iget-object v1, p0, Llw;->storySnapId:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, "story_snap_id"

    iget-object v2, p0, Llw;->storySnapId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_a
    iget-object v1, p0, Llw;->storyType:Lmj;

    if-eqz v1, :cond_b

    const-string v1, "story_type"

    iget-object v2, p0, Llw;->storyType:Lmj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_b
    iget-object v1, p0, Llw;->timeViewed:Ljava/lang/Double;

    if-eqz v1, :cond_c

    const-string v1, "time_viewed"

    iget-object v2, p0, Llw;->timeViewed:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_c
    iget-object v1, p0, Llw;->viewLocation:Ljava/lang/Long;

    if-eqz v1, :cond_d

    const-string v1, "view_location"

    iget-object v2, p0, Llw;->viewLocation:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_d
    invoke-super {p0}, Lml;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 150
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    if-ne p0, p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 156
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

    .line 157
    :cond_3
    invoke-super {p0, p1}, Lml;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 159
    :cond_4
    check-cast p1, Llw;

    .line 161
    iget-object v2, p0, Llw;->adIndexCount:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Llw;->adIndexCount:Ljava/lang/Long;

    iget-object v3, p1, Llw;->adIndexCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Llw;->adIndexCount:Ljava/lang/Long;

    if-nez v2, :cond_5

    .line 162
    :cond_7
    iget-object v2, p0, Llw;->adIndexPos:Ljava/lang/Long;

    if-eqz v2, :cond_9

    iget-object v2, p0, Llw;->adIndexPos:Ljava/lang/Long;

    iget-object v3, p1, Llw;->adIndexPos:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    iget-object v2, p1, Llw;->adIndexPos:Ljava/lang/Long;

    if-nez v2, :cond_8

    .line 163
    :cond_a
    iget-object v2, p0, Llw;->adsnapId:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Llw;->adsnapId:Ljava/lang/String;

    iget-object v3, p1, Llw;->adsnapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p1, Llw;->adsnapId:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 164
    :cond_d
    iget-object v2, p0, Llw;->fullView:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    iget-object v2, p0, Llw;->fullView:Ljava/lang/Boolean;

    iget-object v3, p1, Llw;->fullView:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p1, Llw;->fullView:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    .line 165
    :cond_10
    iget-object v2, p0, Llw;->geoFence:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Llw;->geoFence:Ljava/lang/String;

    iget-object v3, p1, Llw;->geoFence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_11
    move v0, v1

    goto :goto_0

    :cond_12
    iget-object v2, p1, Llw;->geoFence:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 166
    :cond_13
    iget-object v2, p0, Llw;->posterId:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Llw;->posterId:Ljava/lang/String;

    iget-object v3, p1, Llw;->posterId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v2, p1, Llw;->posterId:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 167
    :cond_16
    iget-object v2, p0, Llw;->snapIndexCount:Ljava/lang/Long;

    if-eqz v2, :cond_18

    iget-object v2, p0, Llw;->snapIndexCount:Ljava/lang/Long;

    iget-object v3, p1, Llw;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Llw;->snapIndexCount:Ljava/lang/Long;

    if-nez v2, :cond_17

    .line 168
    :cond_19
    iget-object v2, p0, Llw;->snapIndexPos:Ljava/lang/Long;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Llw;->snapIndexPos:Ljava/lang/Long;

    iget-object v3, p1, Llw;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p1, Llw;->snapIndexPos:Ljava/lang/Long;

    if-nez v2, :cond_1a

    .line 169
    :cond_1c
    iget-object v2, p0, Llw;->snapTime:Ljava/lang/Double;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Llw;->snapTime:Ljava/lang/Double;

    iget-object v3, p1, Llw;->snapTime:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-object v2, p1, Llw;->snapTime:Ljava/lang/Double;

    if-nez v2, :cond_1d

    .line 170
    :cond_1f
    iget-object v2, p0, Llw;->sponsor:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v2, p0, Llw;->sponsor:Ljava/lang/String;

    iget-object v3, p1, Llw;->sponsor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_20
    move v0, v1

    goto/16 :goto_0

    :cond_21
    iget-object v2, p1, Llw;->sponsor:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 171
    :cond_22
    iget-object v2, p0, Llw;->storySnapId:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, p0, Llw;->storySnapId:Ljava/lang/String;

    iget-object v3, p1, Llw;->storySnapId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v0, v1

    goto/16 :goto_0

    :cond_24
    iget-object v2, p1, Llw;->storySnapId:Ljava/lang/String;

    if-nez v2, :cond_23

    .line 172
    :cond_25
    iget-object v2, p0, Llw;->storyType:Lmj;

    if-eqz v2, :cond_27

    iget-object v2, p0, Llw;->storyType:Lmj;

    iget-object v3, p1, Llw;->storyType:Lmj;

    invoke-virtual {v2, v3}, Lmj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_26
    move v0, v1

    goto/16 :goto_0

    :cond_27
    iget-object v2, p1, Llw;->storyType:Lmj;

    if-nez v2, :cond_26

    .line 173
    :cond_28
    iget-object v2, p0, Llw;->timeViewed:Ljava/lang/Double;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Llw;->timeViewed:Ljava/lang/Double;

    iget-object v3, p1, Llw;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_29
    move v0, v1

    goto/16 :goto_0

    :cond_2a
    iget-object v2, p1, Llw;->timeViewed:Ljava/lang/Double;

    if-nez v2, :cond_29

    .line 174
    :cond_2b
    iget-object v2, p0, Llw;->viewLocation:Ljava/lang/Long;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Llw;->viewLocation:Ljava/lang/Long;

    iget-object v3, p1, Llw;->viewLocation:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_2c
    iget-object v2, p1, Llw;->viewLocation:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0}, Lml;->hashCode()I

    move-result v0

    .line 181
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->adIndexCount:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llw;->adIndexCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 182
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->adIndexPos:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llw;->adIndexPos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 183
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->adsnapId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Llw;->adsnapId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 184
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->fullView:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llw;->fullView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 185
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->geoFence:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Llw;->geoFence:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 186
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->posterId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Llw;->posterId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 187
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->snapIndexCount:Ljava/lang/Long;

    if-eqz v0, :cond_7

    iget-object v0, p0, Llw;->snapIndexCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 188
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->snapIndexPos:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Llw;->snapIndexPos:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 189
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->snapTime:Ljava/lang/Double;

    if-eqz v0, :cond_9

    iget-object v0, p0, Llw;->snapTime:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 190
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->sponsor:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Llw;->sponsor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 191
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->storySnapId:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Llw;->storySnapId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 192
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->storyType:Lmj;

    if-eqz v0, :cond_c

    iget-object v0, p0, Llw;->storyType:Lmj;

    invoke-virtual {v0}, Lmj;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Llw;->timeViewed:Ljava/lang/Double;

    if-eqz v0, :cond_d

    iget-object v0, p0, Llw;->timeViewed:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Llw;->viewLocation:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Llw;->viewLocation:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 195
    return v0

    :cond_1
    move v0, v1

    .line 181
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 182
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 183
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 184
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 185
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 186
    goto :goto_5

    :cond_7
    move v0, v1

    .line 187
    goto :goto_6

    :cond_8
    move v0, v1

    .line 188
    goto :goto_7

    :cond_9
    move v0, v1

    .line 189
    goto :goto_8

    :cond_a
    move v0, v1

    .line 190
    goto :goto_9

    :cond_b
    move v0, v1

    .line 191
    goto :goto_a

    :cond_c
    move v0, v1

    .line 192
    goto :goto_b

    :cond_d
    move v0, v1

    .line 193
    goto :goto_c
.end method
