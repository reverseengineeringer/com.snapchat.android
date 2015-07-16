.class public Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;
.super Lfe;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "sseg"

.field private static final VERSION:I = 0x1


# instance fields
.field private mSnapSegments:Lcom/snapchat/videotranscoder/mp4/SnapSegments;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "sseg"

    invoke-direct {p0, v0}, Lfe;-><init>(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->setVersion(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 66
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Version does not match expected value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    new-instance v0, Lcom/snapchat/videotranscoder/mp4/SnapSegments;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, v1}, Lao;->a(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->mSnapSegments:Lcom/snapchat/videotranscoder/mp4/SnapSegments;

    .line 71
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->mSnapSegments:Lcom/snapchat/videotranscoder/mp4/SnapSegments;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lar;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->mSnapSegments:Lcom/snapchat/videotranscoder/mp4/SnapSegments;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lar;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSnapSegments()Lcom/snapchat/videotranscoder/mp4/SnapSegments;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->isParsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->parseDetails()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->mSnapSegments:Lcom/snapchat/videotranscoder/mp4/SnapSegments;

    return-object v0
.end method

.method public setSnapSegments(Lcom/snapchat/videotranscoder/mp4/SnapSegments;)V
    .locals 0
    .param p1    # Lcom/snapchat/videotranscoder/mp4/SnapSegments;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 46
    iput-object p1, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->mSnapSegments:Lcom/snapchat/videotranscoder/mp4/SnapSegments;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnapSegmentsBox[segmentTimesMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->mSnapSegments:Lcom/snapchat/videotranscoder/mp4/SnapSegments;

    invoke-virtual {v1}, Lcom/snapchat/videotranscoder/mp4/SnapSegments;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
