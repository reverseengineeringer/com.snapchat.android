.class public Lcom/addlive/service/listener/MediaStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private audioDelay:J

.field private avOffset:J

.field private avgJitter:J

.field private bitRate:J

.field private cpu:J

.field private direction:I

.field private fps:J

.field private height:I

.field private layer:I

.field private loss:J

.field private maxJitter:J

.field private processingTime:I

.field private psnr:J

.field private quality:I

.field private queueDelay:J

.field private rtt:J

.field private ssrc:J

.field private timestamp:J

.field private totalCpu:J

.field private totalLoss:I

.field private totalVideoKbps:I

.field private width:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "direction"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/MediaStats;->direction:I

    .line 49
    const-string v0, "netBps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->bitRate:J

    .line 50
    const-string v0, "rtt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->rtt:J

    .line 51
    const-string v0, "cumulativePacketLoss"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/MediaStats;->totalLoss:I

    .line 52
    const-string v0, "fractionLoss"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->loss:J

    .line 53
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->timestamp:J

    .line 54
    const-string v0, "ssrc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->ssrc:J

    .line 55
    const-string v0, "interarrivalJitter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->avgJitter:J

    .line 57
    const-string v0, "layer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const-string v0, "layer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/MediaStats;->layer:I

    .line 60
    const-string v0, "fps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->fps:J

    .line 61
    const-string v0, "processingTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/MediaStats;->processingTime:I

    .line 62
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/MediaStats;->width:I

    .line 63
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/MediaStats;->height:I

    .line 65
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->direction:I

    if-nez v0, :cond_1

    .line 67
    const-string v0, "totalKbps"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/MediaStats;->totalVideoKbps:I

    .line 68
    const-string v0, "cpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->cpu:J

    .line 69
    const-string v0, "totalCpu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->totalCpu:J

    .line 70
    const-string v0, "psnr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->psnr:J

    .line 71
    const-string v0, "queueDelay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->queueDelay:J

    .line 72
    const-string v0, "quality"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/addlive/service/listener/MediaStats;->quality:I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v0, "avOffset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->avOffset:J

    goto :goto_0

    .line 77
    :cond_2
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 78
    const-string v0, "maxJitter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->maxJitter:J

    .line 79
    const-string v0, "audioDelay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->audioDelay:J

    goto :goto_0
.end method


# virtual methods
.method public getAudioDelay()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->audioDelay:J

    return-wide v0
.end method

.method public getAvOffset()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->avOffset:J

    return-wide v0
.end method

.method public getAvgJitter()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->avgJitter:J

    return-wide v0
.end method

.method public getBitRate()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->bitRate:J

    return-wide v0
.end method

.method public getCpu()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->cpu:J

    return-wide v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->direction:I

    return v0
.end method

.method public getFps()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->fps:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->height:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->layer:I

    return v0
.end method

.method public getLoss()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->loss:J

    return-wide v0
.end method

.method public getMaxJitter()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->maxJitter:J

    return-wide v0
.end method

.method public getProcessingTime()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->processingTime:I

    return v0
.end method

.method public getPsnr()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->psnr:J

    return-wide v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->quality:I

    return v0
.end method

.method public getQueueDelay()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->queueDelay:J

    return-wide v0
.end method

.method public getRtt()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->rtt:J

    return-wide v0
.end method

.method public getSsrc()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->ssrc:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->timestamp:J

    return-wide v0
.end method

.method public getTotalCpu()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/addlive/service/listener/MediaStats;->totalCpu:J

    return-wide v0
.end method

.method public getTotalLoss()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->totalLoss:I

    return v0
.end method

.method public getTotalVideoKbps()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->totalVideoKbps:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/addlive/service/listener/MediaStats;->width:I

    return v0
.end method
