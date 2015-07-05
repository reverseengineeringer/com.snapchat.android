.class public Lcom/snapchat/videotranscoder/mp4/MP4Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mMP4Path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->checkMp4FileExistsAndIsWriteable(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->mMP4Path:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private checkMp4FileExistsAndIsWriteable(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No write permissions to file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    return-void
.end method

.method private correctChunkOffsets(Lan;J)V
    .locals 8
    .param p1    # Lan;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 207
    const-string v0, "/moov[0]/trak/mdia[0]/minf[0]/stbl[0]/stco[0]"

    invoke-static {p1, v0}, Lfj;->b(Lau;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las;

    .line 210
    new-instance v3, Ljava/util/LinkedList;

    invoke-interface {v0}, Las;->getParent()Lau;

    move-result-object v1

    invoke-interface {v1}, Lau;->getBoxes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 211
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 213
    check-cast v1, Lat;

    invoke-virtual {v1}, Lat;->a()[J

    move-result-object v4

    .line 214
    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 215
    aget-wide v6, v4, v1

    add-long/2addr v6, p2

    aput-wide v6, v4, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_0
    new-instance v1, Lax;

    invoke-direct {v1}, Lax;-><init>()V

    .line 219
    sget-object v5, Lax;->b:Lcek$a;

    invoke-static {v5, v1, v1, v4}, Lcfk;->a(Lcek$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcek;

    move-result-object v5

    invoke-static {}, Lez;->a()Lez;

    invoke-static {v5}, Lez;->a(Lcek;)V

    iput-object v4, v1, Lax;->a:[J

    .line 220
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Las;->getParent()Lau;

    move-result-object v0

    invoke-interface {v0, v3}, Lau;->setBoxes(Ljava/util/List;)V

    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private getIsoFile()Lan;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Laq;

    invoke-static {}, Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;->getInstance()Lcom/snapchat/videotranscoder/mp4/IsoParserProperties;

    move-result-object v1

    invoke-direct {v0, v1}, Laq;-><init>(Ljava/util/Properties;)V

    .line 72
    :try_start_0
    new-instance v1, Ley;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->mMP4Path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ley;-><init>(Ljava/io/File;)V

    .line 73
    new-instance v2, Lan;

    invoke-direct {v2, v1, v0}, Lan;-><init>(Lex;Lal;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Mp4 file no longer exists"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private needsOffsetCorrection(Lan;)Z
    .locals 4
    .param p1    # Lan;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 188
    invoke-virtual {p1}, Lan;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las;

    .line 189
    const-string v2, "mdat"

    invoke-interface {v0}, Las;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_1
    const-string v2, "moov"

    invoke-interface {v0}, Las;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing top-level boxes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSnapSegments()Lcom/snapchat/videotranscoder/mp4/SnapSegments;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 85
    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->getIsoFile()Lan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 91
    :try_start_1
    const-string v0, "/moov/udta"

    invoke-static {v2, v0}, Lfj;->a(Lau;Ljava/lang/String;)Las;

    move-result-object v0

    check-cast v0, Lay;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 92
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v2}, Lan;->close()V

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    .line 96
    :cond_2
    :try_start_2
    const-string v3, "smet"

    invoke-static {v0, v3}, Lfj;->a(Leu;Ljava/lang/String;)Las;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/mp4/SnapMetadataBox;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_4

    .line 97
    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v2}, Lan;->close()V

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 101
    :cond_4
    :try_start_3
    const-string v3, "sseg"

    invoke-static {v0, v3}, Lfj;->a(Leu;Ljava/lang/String;)Las;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_6

    .line 102
    if-eqz v2, :cond_5

    .line 108
    invoke-virtual {v2}, Lan;->close()V

    :cond_5
    move-object v0, v1

    goto :goto_0

    .line 105
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->getSnapSegments()Lcom/snapchat/videotranscoder/mp4/SnapSegments;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 107
    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2}, Lan;->close()V

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_7

    .line 108
    invoke-virtual {v1}, Lan;->close()V

    :cond_7
    throw v0

    .line 107
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public setSnapSegments(Lcom/snapchat/videotranscoder/mp4/SnapSegments;)V
    .locals 8
    .param p1    # Lcom/snapchat/videotranscoder/mp4/SnapSegments;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 119
    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->getIsoFile()Lan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 127
    :try_start_1
    const-string v0, "moov"

    invoke-static {v3, v0}, Lfj;->a(Lau;Ljava/lang/String;)Las;

    move-result-object v0

    check-cast v0, Law;

    if-nez v0, :cond_3

    .line 128
    const-wide/16 v4, 0x0

    .line 129
    new-instance v0, Law;

    invoke-direct {v0}, Law;-><init>()V

    .line 130
    invoke-virtual {v3, v0}, Lan;->addBox(Las;)V

    move-object v6, v0

    .line 136
    :goto_0
    const-string v0, "udta"

    invoke-static {v6, v0}, Lfj;->a(Leu;Ljava/lang/String;)Las;

    move-result-object v0

    check-cast v0, Lay;

    if-nez v0, :cond_7

    .line 137
    new-instance v0, Lay;

    invoke-direct {v0}, Lay;-><init>()V

    .line 138
    invoke-virtual {v6, v0}, Law;->addBox(Las;)V

    move-object v2, v0

    .line 142
    :goto_1
    const-string v0, "smet"

    invoke-static {v2, v0}, Lfj;->a(Leu;Ljava/lang/String;)Las;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/mp4/SnapMetadataBox;

    if-nez v0, :cond_6

    .line 143
    new-instance v0, Lcom/snapchat/videotranscoder/mp4/SnapMetadataBox;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/mp4/SnapMetadataBox;-><init>()V

    .line 144
    invoke-virtual {v2, v0}, Lay;->addBox(Las;)V

    move-object v2, v0

    .line 148
    :goto_2
    const-string v0, "sseg"

    invoke-static {v2, v0}, Lfj;->a(Leu;Ljava/lang/String;)Las;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;-><init>()V

    .line 150
    invoke-virtual {v2, v0}, Lcom/snapchat/videotranscoder/mp4/SnapMetadataBox;->addBox(Las;)V

    .line 153
    :cond_0
    invoke-virtual {v0, p1}, Lcom/snapchat/videotranscoder/mp4/SnapSegmentsBox;->setSnapSegments(Lcom/snapchat/videotranscoder/mp4/SnapSegments;)V

    .line 155
    invoke-virtual {v6}, Law;->getSize()J

    move-result-wide v6

    .line 156
    invoke-direct {p0, v3}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->needsOffsetCorrection(Lan;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    sub-long v4, v6, v4

    invoke-direct {p0, v3, v4, v5}, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->correctChunkOffsets(Lan;J)V

    .line 161
    :cond_1
    const-string v0, "modifiedMetadata"

    const-string v2, ""

    invoke-static {v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 162
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lan;->writeContainer(Ljava/nio/channels/WritableByteChannel;)V

    .line 166
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 169
    :try_start_3
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/Utils;->getInstance()Lcom/snapchat/videotranscoder/utils/Utils;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/snapchat/videotranscoder/mp4/MP4Metadata;->mMP4Path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lcom/snapchat/videotranscoder/utils/Utils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {v3}, Lan;->close()V

    .line 179
    :cond_2
    return-void

    .line 132
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Law;->getSize()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v4

    move-object v6, v0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 175
    :cond_4
    if-eqz v2, :cond_5

    .line 176
    invoke-virtual {v2}, Lan;->close()V

    :cond_5
    throw v0

    .line 171
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :cond_6
    move-object v2, v0

    goto :goto_2

    :cond_7
    move-object v2, v0

    goto/16 :goto_1
.end method
