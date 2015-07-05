.class public Lcom/addlive/service/listener/MediaIssueEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isActive:Z

.field private issueCode:I

.field private mediaType:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private scopeId:Ljava/lang/String;

.field private userId:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "scopeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->scopeId:Ljava/lang/String;

    .line 45
    const-string v0, "mediaType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->mediaType:Ljava/lang/String;

    .line 46
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->userId:J

    .line 49
    :cond_0
    const-string v0, "isActive"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->isActive:Z

    .line 50
    const-string v0, "issueCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->issueCode:I

    .line 51
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->message:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getMediaIssueType()Lcom/addlive/service/MediaIssueCode;
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->issueCode:I

    invoke-static {v0}, Lcom/addlive/service/MediaIssueCode;->_fromInt(I)Lcom/addlive/service/MediaIssueCode;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Lcom/addlive/service/MediaType;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->mediaType:Ljava/lang/String;

    invoke-static {v0}, Lcom/addlive/service/MediaType;->fromString(Ljava/lang/String;)Lcom/addlive/service/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->scopeId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->userId:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/addlive/service/listener/MediaIssueEvent;->isActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaIssueEvent{scopeId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/addlive/service/listener/MediaIssueEvent;->scopeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/MediaIssueEvent;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/addlive/service/listener/MediaIssueEvent;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/addlive/service/listener/MediaIssueEvent;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", issueCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/addlive/service/listener/MediaIssueEvent;->issueCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/MediaIssueEvent;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
