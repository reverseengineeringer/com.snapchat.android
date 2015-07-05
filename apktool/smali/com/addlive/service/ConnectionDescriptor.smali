.class public Lcom/addlive/service/ConnectionDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/service/ConnectionDescriptor$ConnectionType;
    }
.end annotation


# instance fields
.field private applicationId:J

.field private authDetails:Lcom/addlive/service/AuthDetails;

.field private autopublishAudio:Z

.field private autopublishVideo:Z

.field private connectionType:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

.field private endpointDetails:Ljava/lang/String;

.field private scopeId:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private videoStream:Lcom/addlive/service/VideoStreamDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    .line 24
    iput-boolean v0, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/addlive/service/ConnectionDescriptor;->applicationId:J

    .line 29
    new-instance v0, Lcom/addlive/service/VideoStreamDescriptor;

    invoke-direct {v0}, Lcom/addlive/service/VideoStreamDescriptor;-><init>()V

    iput-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    .line 30
    new-instance v0, Lcom/addlive/service/AuthDetails;

    invoke-direct {v0}, Lcom/addlive/service/AuthDetails;-><init>()V

    iput-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->endpointDetails:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getApplicationId()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/addlive/service/ConnectionDescriptor;->applicationId:J

    return-wide v0
.end method

.method public getAuthDetails()Lcom/addlive/service/AuthDetails;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    return-object v0
.end method

.method public getConnectionType()Lcom/addlive/service/ConnectionDescriptor$ConnectionType;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->connectionType:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    return-object v0
.end method

.method public getEndpointDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->endpointDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoStream()Lcom/addlive/service/VideoStreamDescriptor;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    return-object v0
.end method

.method public isAutopublishAudio()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    return v0
.end method

.method public isAutopublishVideo()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    return v0
.end method

.method public setApplicationId(J)V
    .locals 1

    .prologue
    .line 187
    iput-wide p1, p0, Lcom/addlive/service/ConnectionDescriptor;->applicationId:J

    return-void
.end method

.method public setAuthDetails(Lcom/addlive/service/AuthDetails;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    .line 233
    return-void
.end method

.method public setAutopublishAudio(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    .line 140
    return-void
.end method

.method public setAutopublishVideo(Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    .line 127
    return-void
.end method

.method public setConnectionType(Lcom/addlive/service/ConnectionDescriptor$ConnectionType;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->connectionType:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    return-void
.end method

.method public setEndpointDetails(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->endpointDetails:Ljava/lang/String;

    return-void
.end method

.method public setScopeId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setVideoStream(Lcom/addlive/service/VideoStreamDescriptor;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    .line 209
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 261
    const-string v1, "scopeId"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v1, "autopublishAudio"

    iget-boolean v2, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 263
    const-string v1, "autopublishVideo"

    iget-boolean v2, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 264
    const-string v1, "url"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "videoStream"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    invoke-virtual {v2}, Lcom/addlive/service/VideoStreamDescriptor;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v1, "authDetails"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    invoke-virtual {v2}, Lcom/addlive/service/AuthDetails;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "endpointDetails"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->endpointDetails:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->connectionType:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    if-eqz v1, :cond_0

    const-string v1, "connectionType"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->connectionType:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_0
    iget-wide v2, p0, Lcom/addlive/service/ConnectionDescriptor;->applicationId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const-string v1, "applicationId"

    iget-wide v2, p0, Lcom/addlive/service/ConnectionDescriptor;->applicationId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 270
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionDescriptor{autopublishVideo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autopublishAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scopeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoStream=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    invoke-virtual {v1}, Lcom/addlive/service/VideoStreamDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    invoke-virtual {v1}, Lcom/addlive/service/AuthDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endpointDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->endpointDetails:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->connectionType:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/addlive/service/ConnectionDescriptor;->applicationId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
