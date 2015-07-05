.class public Lcom/addlive/service/User;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private audioPublished:Z

.field private screenPublished:Z

.field private screenSinkId:Ljava/lang/String;

.field private userId:Ljava/lang/Long;

.field private videoPublished:Z

.field private videoSinkId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    :try_start_0
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addlive/service/User;->setUserId(Ljava/lang/Long;)V

    .line 79
    const-string v0, "videoPublished"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/addlive/service/User;->setVideoPublished(Z)V

    .line 80
    const-string v0, "audioPublished"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/addlive/service/User;->setAudioPublished(Z)V

    .line 81
    const-string v0, "screenPublished"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/addlive/service/User;->setScreenPublished(Z)V

    .line 82
    const-string v0, "videoSinkId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addlive/service/User;->setVideoSinkId(Ljava/lang/String;)V

    .line 83
    const-string v0, "screenSinkId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addlive/service/User;->setScreenSinkId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getScreenSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/addlive/service/User;->screenSinkId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/addlive/service/User;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public getVideoSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/addlive/service/User;->videoSinkId:Ljava/lang/String;

    return-object v0
.end method

.method public isAudioPublished()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/addlive/service/User;->audioPublished:Z

    return v0
.end method

.method public isScreenPublished()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/addlive/service/User;->screenPublished:Z

    return v0
.end method

.method public isVideoPublished()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/addlive/service/User;->videoPublished:Z

    return v0
.end method

.method public setAudioPublished(Z)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/addlive/service/User;->audioPublished:Z

    .line 141
    return-void
.end method

.method public setScreenPublished(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/addlive/service/User;->screenPublished:Z

    .line 159
    return-void
.end method

.method public setScreenSinkId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/addlive/service/User;->screenSinkId:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setUserId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/addlive/service/User;->userId:Ljava/lang/Long;

    .line 105
    return-void
.end method

.method public setVideoPublished(Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/addlive/service/User;->videoPublished:Z

    .line 123
    return-void
.end method

.method public setVideoSinkId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/addlive/service/User;->videoSinkId:Ljava/lang/String;

    .line 177
    return-void
.end method
