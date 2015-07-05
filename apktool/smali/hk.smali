.class public Lhk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appVersion:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field public clientTs:Ljava/lang/Double;

.field public clientUploadTs:Ljava/lang/Double;

.field public country:Ljava/lang/String;

.field private deviceConnectivity:Lgc;

.field private deviceModel:Ljava/lang/String;

.field private eventTime:Ljava/lang/Double;

.field private eventTs:Ljava/lang/Double;

.field public friendCount:Ljava/lang/Long;

.field private osType:Lia;

.field private osVersion:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private sequenceId:Ljava/lang/Long;

.field private serverTs:Ljava/lang/Double;

.field public sessionId:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
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
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    iget-object v1, p0, Lhk;->appVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "app_version"

    iget-object v2, p0, Lhk;->appVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    iget-object v1, p0, Lhk;->city:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "city"

    iget-object v2, p0, Lhk;->city:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1
    iget-object v1, p0, Lhk;->clientTs:Ljava/lang/Double;

    if-eqz v1, :cond_2

    const-string v1, "client_ts"

    iget-object v2, p0, Lhk;->clientTs:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_2
    iget-object v1, p0, Lhk;->clientUploadTs:Ljava/lang/Double;

    if-eqz v1, :cond_3

    const-string v1, "client_upload_ts"

    iget-object v2, p0, Lhk;->clientUploadTs:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_3
    iget-object v1, p0, Lhk;->country:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "country"

    iget-object v2, p0, Lhk;->country:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_4
    iget-object v1, p0, Lhk;->deviceConnectivity:Lgc;

    if-eqz v1, :cond_5

    const-string v1, "device_connectivity"

    iget-object v2, p0, Lhk;->deviceConnectivity:Lgc;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_5
    iget-object v1, p0, Lhk;->deviceModel:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "device_model"

    iget-object v2, p0, Lhk;->deviceModel:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_6
    iget-object v1, p0, Lhk;->eventTime:Ljava/lang/Double;

    if-eqz v1, :cond_7

    const-string v1, "event_time"

    iget-object v2, p0, Lhk;->eventTime:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_7
    iget-object v1, p0, Lhk;->eventTs:Ljava/lang/Double;

    if-eqz v1, :cond_8

    const-string v1, "event_ts"

    iget-object v2, p0, Lhk;->eventTs:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_8
    iget-object v1, p0, Lhk;->friendCount:Ljava/lang/Long;

    if-eqz v1, :cond_9

    const-string v1, "friend_count"

    iget-object v2, p0, Lhk;->friendCount:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_9
    iget-object v1, p0, Lhk;->osType:Lia;

    if-eqz v1, :cond_a

    const-string v1, "os_type"

    iget-object v2, p0, Lhk;->osType:Lia;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_a
    iget-object v1, p0, Lhk;->osVersion:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, "os_version"

    iget-object v2, p0, Lhk;->osVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_b
    iget-object v1, p0, Lhk;->region:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, "region"

    iget-object v2, p0, Lhk;->region:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_c
    iget-object v1, p0, Lhk;->sequenceId:Ljava/lang/Long;

    if-eqz v1, :cond_d

    const-string v1, "sequence_id"

    iget-object v2, p0, Lhk;->sequenceId:Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_d
    iget-object v1, p0, Lhk;->serverTs:Ljava/lang/Double;

    if-eqz v1, :cond_e

    const-string v1, "server_ts"

    iget-object v2, p0, Lhk;->serverTs:Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_e
    iget-object v1, p0, Lhk;->sessionId:Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v1, "session_id"

    iget-object v2, p0, Lhk;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_f
    iget-object v1, p0, Lhk;->userAgent:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, "user_agent"

    iget-object v2, p0, Lhk;->userAgent:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_10
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    if-ne p0, p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 172
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

    .line 174
    :cond_3
    check-cast p1, Lhk;

    .line 176
    iget-object v2, p0, Lhk;->appVersion:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lhk;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lhk;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lhk;->appVersion:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 177
    :cond_6
    iget-object v2, p0, Lhk;->city:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lhk;->city:Ljava/lang/String;

    iget-object v3, p1, Lhk;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lhk;->city:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 178
    :cond_9
    iget-object v2, p0, Lhk;->clientTs:Ljava/lang/Double;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lhk;->clientTs:Ljava/lang/Double;

    iget-object v3, p1, Lhk;->clientTs:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lhk;->clientTs:Ljava/lang/Double;

    if-nez v2, :cond_a

    .line 179
    :cond_c
    iget-object v2, p0, Lhk;->clientUploadTs:Ljava/lang/Double;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lhk;->clientUploadTs:Ljava/lang/Double;

    iget-object v3, p1, Lhk;->clientUploadTs:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lhk;->clientUploadTs:Ljava/lang/Double;

    if-nez v2, :cond_d

    .line 180
    :cond_f
    iget-object v2, p0, Lhk;->country:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lhk;->country:Ljava/lang/String;

    iget-object v3, p1, Lhk;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lhk;->country:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 181
    :cond_12
    iget-object v2, p0, Lhk;->deviceConnectivity:Lgc;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lhk;->deviceConnectivity:Lgc;

    iget-object v3, p1, Lhk;->deviceConnectivity:Lgc;

    invoke-virtual {v2, v3}, Lgc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lhk;->deviceConnectivity:Lgc;

    if-nez v2, :cond_13

    .line 182
    :cond_15
    iget-object v2, p0, Lhk;->deviceModel:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lhk;->deviceModel:Ljava/lang/String;

    iget-object v3, p1, Lhk;->deviceModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p1, Lhk;->deviceModel:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 183
    :cond_18
    iget-object v2, p0, Lhk;->eventTime:Ljava/lang/Double;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lhk;->eventTime:Ljava/lang/Double;

    iget-object v3, p1, Lhk;->eventTime:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p1, Lhk;->eventTime:Ljava/lang/Double;

    if-nez v2, :cond_19

    .line 184
    :cond_1b
    iget-object v2, p0, Lhk;->eventTs:Ljava/lang/Double;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lhk;->eventTs:Ljava/lang/Double;

    iget-object v3, p1, Lhk;->eventTs:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p1, Lhk;->eventTs:Ljava/lang/Double;

    if-nez v2, :cond_1c

    .line 185
    :cond_1e
    iget-object v2, p0, Lhk;->friendCount:Ljava/lang/Long;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lhk;->friendCount:Ljava/lang/Long;

    iget-object v3, p1, Lhk;->friendCount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1f
    move v0, v1

    goto/16 :goto_0

    :cond_20
    iget-object v2, p1, Lhk;->friendCount:Ljava/lang/Long;

    if-nez v2, :cond_1f

    .line 186
    :cond_21
    iget-object v2, p0, Lhk;->osType:Lia;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lhk;->osType:Lia;

    iget-object v3, p1, Lhk;->osType:Lia;

    invoke-virtual {v2, v3}, Lia;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    goto/16 :goto_0

    :cond_23
    iget-object v2, p1, Lhk;->osType:Lia;

    if-nez v2, :cond_22

    .line 187
    :cond_24
    iget-object v2, p0, Lhk;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lhk;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lhk;->osVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_25
    move v0, v1

    goto/16 :goto_0

    :cond_26
    iget-object v2, p1, Lhk;->osVersion:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 188
    :cond_27
    iget-object v2, p0, Lhk;->region:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lhk;->region:Ljava/lang/String;

    iget-object v3, p1, Lhk;->region:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_28
    move v0, v1

    goto/16 :goto_0

    :cond_29
    iget-object v2, p1, Lhk;->region:Ljava/lang/String;

    if-nez v2, :cond_28

    .line 189
    :cond_2a
    iget-object v2, p0, Lhk;->sequenceId:Ljava/lang/Long;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lhk;->sequenceId:Ljava/lang/Long;

    iget-object v3, p1, Lhk;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_2b
    move v0, v1

    goto/16 :goto_0

    :cond_2c
    iget-object v2, p1, Lhk;->sequenceId:Ljava/lang/Long;

    if-nez v2, :cond_2b

    .line 190
    :cond_2d
    iget-object v2, p0, Lhk;->serverTs:Ljava/lang/Double;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lhk;->serverTs:Ljava/lang/Double;

    iget-object v3, p1, Lhk;->serverTs:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    :cond_2e
    move v0, v1

    goto/16 :goto_0

    :cond_2f
    iget-object v2, p1, Lhk;->serverTs:Ljava/lang/Double;

    if-nez v2, :cond_2e

    .line 191
    :cond_30
    iget-object v2, p0, Lhk;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lhk;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lhk;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    :cond_31
    move v0, v1

    goto/16 :goto_0

    :cond_32
    iget-object v2, p1, Lhk;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_31

    .line 192
    :cond_33
    iget-object v2, p0, Lhk;->userAgent:Ljava/lang/String;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lhk;->userAgent:Ljava/lang/String;

    iget-object v3, p1, Lhk;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_34
    iget-object v2, p1, Lhk;->userAgent:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lhk;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhk;->appVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x0

    .line 200
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->city:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhk;->city:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 201
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->clientTs:Ljava/lang/Double;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhk;->clientTs:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 202
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->clientUploadTs:Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lhk;->clientUploadTs:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 203
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->country:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhk;->country:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 204
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->deviceConnectivity:Lgc;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lhk;->deviceConnectivity:Lgc;

    invoke-virtual {v0}, Lgc;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 205
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->deviceModel:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lhk;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 206
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->eventTime:Ljava/lang/Double;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhk;->eventTime:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->eventTs:Ljava/lang/Double;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lhk;->eventTs:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 208
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->friendCount:Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lhk;->friendCount:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 209
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->osType:Lia;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lhk;->osType:Lia;

    invoke-virtual {v0}, Lia;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 210
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lhk;->osVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 211
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->region:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lhk;->region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 212
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->sequenceId:Ljava/lang/Long;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lhk;->sequenceId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 213
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->serverTs:Ljava/lang/Double;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lhk;->serverTs:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    .line 214
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lhk;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lhk;->sessionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lhk;->userAgent:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lhk;->userAgent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 216
    return v0

    :cond_1
    move v0, v1

    .line 198
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 200
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 201
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 202
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 203
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 204
    goto/16 :goto_5

    :cond_7
    move v0, v1

    .line 205
    goto/16 :goto_6

    :cond_8
    move v0, v1

    .line 206
    goto/16 :goto_7

    :cond_9
    move v0, v1

    .line 207
    goto/16 :goto_8

    :cond_a
    move v0, v1

    .line 208
    goto :goto_9

    :cond_b
    move v0, v1

    .line 209
    goto :goto_a

    :cond_c
    move v0, v1

    .line 210
    goto :goto_b

    :cond_d
    move v0, v1

    .line 211
    goto :goto_c

    :cond_e
    move v0, v1

    .line 212
    goto :goto_d

    :cond_f
    move v0, v1

    .line 213
    goto :goto_e

    :cond_10
    move v0, v1

    .line 214
    goto :goto_f
.end method
