.class public Lcom/snapchat/videotranscoder/utils/MimeTools;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MimeTools"

.field private static final sInstance:Lcom/snapchat/videotranscoder/utils/MimeTools;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/snapchat/videotranscoder/utils/MimeTools;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/MimeTools;-><init>()V

    sput-object v0, Lcom/snapchat/videotranscoder/utils/MimeTools;->sInstance:Lcom/snapchat/videotranscoder/utils/MimeTools;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/snapchat/videotranscoder/utils/MimeTools;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/snapchat/videotranscoder/utils/MimeTools;->sInstance:Lcom/snapchat/videotranscoder/utils/MimeTools;

    return-object v0
.end method


# virtual methods
.method public createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 125
    const-string v1, "MimeTools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting video to be "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public displayVideoInformation(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getMediaMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method

.method public generateAudioOutputFormat(Ljava/lang/String;IIII)Landroid/media/MediaFormat;
    .locals 2

    .prologue
    .line 60
    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 61
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 62
    const-string v1, "aac-profile"

    invoke-virtual {v0, v1, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 63
    return-object v0
.end method

.method public getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getAudioTrack(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 102
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 103
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 105
    :cond_0
    return v0
.end method

.method public getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getVideoTrack(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 82
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 85
    :cond_0
    return v0
.end method

.method public getAudioChannelCount(Landroid/media/MediaFormat;)I
    .locals 1

    .prologue
    .line 202
    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 203
    return v0
.end method

.method public getAudioSampleRate(Landroid/media/MediaFormat;)I
    .locals 1

    .prologue
    .line 182
    const-string v0, "sample-rate"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 183
    return v0
.end method

.method public getAudioTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    .prologue
    .line 109
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    const-string v1, "MimeTools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "format for track:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->isAudioFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "MimeTools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selecting track:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_1
    return v0

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getFileSize(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaFormatFromFile(Ljava/lang/String;Z)Landroid/media/MediaFormat;
    .locals 2

    .prologue
    .line 189
    :try_start_0
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 190
    invoke-virtual {v1, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 191
    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getVideoTrack(Landroid/media/MediaExtractor;)I

    move-result v0

    .line 192
    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 193
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 196
    :goto_1
    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getAudioTrack(Landroid/media/MediaExtractor;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMediaMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 145
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 146
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 147
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BitRate: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n MIME: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 152
    return-object v1
.end method

.method public getMetaDataFromVideoFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x14

    const/16 v5, 0x13

    const/16 v4, 0x12

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 133
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 141
    return-object v0
.end method

.method public getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "MimeTools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-object v0
.end method

.method public getVideoTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 90
    const-string v1, "MimeTools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "format for track "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->isVideoFormat(Landroid/media/MediaFormat;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "MimeTools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selecting track:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_1
    return v0

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isAudioFormat(Landroid/media/MediaFormat;)Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideoFormat(Landroid/media/MediaFormat;)Z
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public printCodecs()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    move v3, v1

    .line 170
    :goto_0
    if-ge v3, v4, :cond_1

    .line 171
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 172
    const-string v0, " "

    .line 173
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move-object v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Codec is "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 178
    :cond_1
    return-void
.end method

.method public selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, "MimeTools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finding codec for mimeType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    move v2, v1

    .line 41
    :goto_0
    if-ge v2, v3, :cond_2

    .line 42
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 47
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 48
    aget-object v6, v5, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    const-string v0, "MimeTools"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using codec : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/videotranscoder/utils/VerboseLogging;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v4

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No codec for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
