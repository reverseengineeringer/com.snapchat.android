.class public Lcom/addlive/service/listener/MediaConnTypeChangedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private connectionType:Ljava/lang/String;

.field private mediaType:Ljava/lang/String;

.field private scopeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "scopeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;->scopeId:Ljava/lang/String;

    .line 41
    const-string v0, "mediaType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;->mediaType:Ljava/lang/String;

    .line 42
    const-string v0, "connectionType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;->connectionType:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getConnectionType()Lcom/addlive/service/ConnectionType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;->connectionType:Ljava/lang/String;

    invoke-static {v0}, Lcom/addlive/service/ConnectionType;->fromString(Ljava/lang/String;)Lcom/addlive/service/ConnectionType;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Lcom/addlive/service/MediaType;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;->mediaType:Ljava/lang/String;

    invoke-static {v0}, Lcom/addlive/service/MediaType;->fromString(Ljava/lang/String;)Lcom/addlive/service/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getScopeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;->scopeId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaConnTypeChangedEvent{scopeId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;->scopeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
