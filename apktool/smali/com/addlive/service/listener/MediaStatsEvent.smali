.class public Lcom/addlive/service/listener/MediaStatsEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mediaType:Ljava/lang/String;

.field private remoteUserId:J

.field private scopeId:Ljava/lang/String;

.field private stats:Lcom/addlive/service/listener/MediaStats;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "scopeId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/MediaStatsEvent;->scopeId:Ljava/lang/String;

    .line 46
    const-string v0, "mediaType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addlive/service/listener/MediaStatsEvent;->mediaType:Ljava/lang/String;

    .line 47
    const-string v0, "remoteUserId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "remoteUserId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStatsEvent;->remoteUserId:J

    .line 52
    :goto_0
    new-instance v0, Lcom/addlive/service/listener/MediaStats;

    const-string v1, "stats"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/addlive/service/listener/MediaStats;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/addlive/service/listener/MediaStatsEvent;->stats:Lcom/addlive/service/listener/MediaStats;

    .line 53
    return-void

    .line 50
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStatsEvent;->remoteUserId:J

    goto :goto_0
.end method


# virtual methods
.method public getMediaType()Lcom/addlive/service/MediaType;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/addlive/service/listener/MediaStatsEvent;->mediaType:Ljava/lang/String;

    invoke-static {v0}, Lcom/addlive/service/MediaType;->fromString(Ljava/lang/String;)Lcom/addlive/service/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUserId()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStatsEvent;->remoteUserId:J

    return-wide v0
.end method

.method public getScopeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/addlive/service/listener/MediaStatsEvent;->scopeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStats()Lcom/addlive/service/listener/MediaStats;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/addlive/service/listener/MediaStatsEvent;->stats:Lcom/addlive/service/listener/MediaStats;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaStatsEvent{scopeId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/addlive/service/listener/MediaStatsEvent;->scopeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/MediaStatsEvent;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/addlive/service/listener/MediaStatsEvent;->remoteUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/listener/MediaStatsEvent;->stats:Lcom/addlive/service/listener/MediaStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
