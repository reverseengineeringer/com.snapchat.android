.class public Lcom/snapchat/videotranscoder/mp4/SnapSegments;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSegmentTimesMs:[J

.field private mSegmentTimesMsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMsString:Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->parseSegmentTimes(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    .line 20
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->validateSegmentTimes([J)V

    .line 21
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1    # [J
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMsString:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    .line 30
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    invoke-direct {p0, v0}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->validateSegmentTimes([J)V

    .line 31
    return-void
.end method

.method private generateSegmentTimesString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 61
    :goto_0
    iget-object v3, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/snapchat/videotranscoder/utils/Debug;->assertTrue(Z)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    iget-object v1, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseSegmentTimes(Ljava/lang/String;)[J
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 79
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    array-length v0, v1

    if-gtz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must contain at least one segment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    array-length v0, v1

    new-array v2, v0, [J

    .line 87
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 89
    :try_start_0
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Segment times are not formatted correctly."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :cond_1
    return-object v2
.end method

.method private validateSegmentTimes([J)V
    .locals 6
    .param p1    # [J
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 103
    array-length v0, p1

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No segment times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    const-wide/16 v2, 0x0

    .line 108
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-wide v4, p1, v0

    .line 109
    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segment times are not in correct order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-wide v2, v4

    goto :goto_0

    .line 114
    :cond_2
    return-void
.end method


# virtual methods
.method public getSegmentTimesMs()[J
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMs:[J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMsString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->generateSegmentTimesString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMsString:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->mSegmentTimesMsString:Ljava/lang/String;

    return-object v0
.end method
