.class public Lcom/addlive/service/listener/UserStateChangedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private audioPublished:Z

.field private isConnected:Z

.field private mediaType:Ljava/lang/String;

.field private scopeId:Ljava/lang/String;

.field private screenPublished:Z

.field private screenSinkId:Ljava/lang/String;

.field private userId:J

.field private videoPublished:Z

.field private videoSinkId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "scopeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->scopeId:Ljava/lang/String;

    .line 36
    const-string v0, "mediaType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->mediaType:Ljava/lang/String;

    .line 37
    const-string v0, "userDetails"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    const-string v1, "userId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->userId:J

    .line 39
    const-string v1, "isConnected"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected:Z

    .line 40
    const-string v1, "audioPublished"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->audioPublished:Z

    .line 41
    const-string v1, "videoPublished"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->videoPublished:Z

    .line 42
    const-string v1, "screenPublished"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->screenPublished:Z

    .line 43
    const-string v1, "videoSinkId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->videoSinkId:Ljava/lang/String;

    .line 44
    const-string v1, "screenSinkId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->screenSinkId:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getMediaType()Lcom/addlive/service/MediaType;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->mediaType:Ljava/lang/String;

    invoke-static {v0}, Lcom/addlive/service/MediaType;->fromString(Ljava/lang/String;)Lcom/addlive/service/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getScopeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->scopeId:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->screenSinkId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->userId:J

    return-wide v0
.end method

.method public getVideoSinkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->videoSinkId:Ljava/lang/String;

    return-object v0
.end method

.method public isAudioPublished()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->audioPublished:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected:Z

    return v0
.end method

.method public isScreenPublished()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->screenPublished:Z

    return v0
.end method

.method public isVideoPublished()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->videoPublished:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserStateChangedEvent{scopeId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->scopeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioPublished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->audioPublished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoPublished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->videoPublished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoSinkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->videoSinkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenSinkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->screenSinkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/UserStateChangedEvent;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
