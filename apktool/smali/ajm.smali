.class public final Lajm;
.super Laim;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajm$a;
    }
.end annotation


# static fields
.field private static final MAX_UPLOAD_MEDIA_SIZE:I = 0x500000

.field private static final TAG:Ljava/lang/String; = "SnapVideobryo"


# instance fields
.field public mFirstFrameBitmap:Landroid/graphics/Bitmap;

.field public mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

.field private final mSnapWomb:Lajn;

.field private final mSnapbryoAnalytics:Lnq;

.field public mTranscodingState:Lwu;


# direct methods
.method protected constructor <init>(Lajm$a;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Laim;-><init>(Laim$a;)V

    .line 45
    iget-object v0, p1, Lajm$a;->mTranscodingState:Lwu;

    iput-object v0, p0, Lajm;->mTranscodingState:Lwu;

    .line 46
    iget-object v0, p1, Lajm$a;->mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    iput-object v0, p0, Lajm;->mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    .line 47
    iget-object v0, p1, Lajm$a;->mSnapWomb:Lajn;

    iput-object v0, p0, Lajm;->mSnapWomb:Lajn;

    .line 48
    iget-object v0, p1, Lajm$a;->mSnapbryoAnalytics:Lnq;

    iput-object v0, p0, Lajm;->mSnapbryoAnalytics:Lnq;

    .line 49
    iget-object v0, p1, Lajm$a;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lajm;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    .line 50
    return-void
.end method

.method static synthetic a(Lajm;)Lwu;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lajm;->mTranscodingState:Lwu;

    return-object v0
.end method

.method static synthetic b(Lajm;)Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lajm;->mShaderFilter:Lcom/snapchat/videotranscoder/video/FragmentShader$Filter;

    return-object v0
.end method

.method static synthetic c(Lajm;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lajm;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private r()Lajm;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lajm$a;

    invoke-direct {v0}, Lajm$a;-><init>()V

    invoke-virtual {v0, p0}, Lajm$a;->a(Lajm;)Lajm$a;

    move-result-object v0

    invoke-virtual {v0}, Lajm$a;->c()Lajm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Laim;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lajm;->r()Lajm;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 141
    invoke-super {p0, p1}, Laim;->a(Landroid/graphics/Bitmap;)V

    .line 142
    iget-object v0, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsZipUpload:Z

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsZipUpload:Z

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v0, p1}, Lwu;->a(Lcom/snapchat/videotranscoder/task/Task$Status;)V

    .line 118
    return-void
.end method

.method public final b(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    .line 123
    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    .line 124
    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    .line 125
    const-string v0, "SnapVideobryo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transcoding failed with: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failing upload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lajm;->mSnapbryoAnalytics:Lnq;

    invoke-virtual {v0}, Lnq;->b()V

    .line 127
    iget-object v0, p0, Lajm;->mSnapWomb:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, p0, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    .line 128
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lajm;->r()Lajm;

    move-result-object v0

    return-object v0
.end method

.method public final g()[B
    .locals 10
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/high16 v9, 0x500000

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 153
    const-string v1, "Null Video Uri"

    invoke-static {p0, v1}, Lnq;->a(Laim;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lajm;->n()Ljava/lang/String;

    move-result-object v1

    .line 158
    if-nez v1, :cond_1

    .line 159
    const-string v1, "Null Video File"

    invoke-static {p0, v1}, Lnq;->a(Laim;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v2, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 164
    if-eqz v2, :cond_4

    .line 167
    :try_start_0
    new-instance v3, Lawt;

    invoke-direct {v3}, Lawt;-><init>()V

    const-string v3, "Snapchat-"

    const-string v4, ".zip.nomedia"

    invoke-static {v3, v4}, Lawt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lavi;

    invoke-direct {v4}, Lavi;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "media~"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lavi;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "overlay~"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Laur;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lavi;->a(Ljava/lang/String;[B)V

    iget-object v1, v4, Lavi;->out:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    iget-object v1, v4, Lavi;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    if-nez v1, :cond_2

    .line 174
    const-string v1, "Null Zipped Video"

    invoke-static {p0, v1}, Lnq;->a(Laim;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lnq;->a(Laim;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    array-length v2, v1

    if-lt v2, v9, :cond_3

    .line 178
    const-string v2, "Large Zipped Video (File Size: %s)"

    new-array v3, v8, [Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lnq;->a(Laim;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 182
    goto :goto_0

    .line 186
    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 191
    array-length v2, v1

    if-lt v2, v9, :cond_5

    .line 192
    const-string v2, "Large UnZipped Video (File Size: %s)"

    new-array v3, v8, [Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lnq;->a(Laim;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v1

    .line 188
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lnq;->a(Laim;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    .line 196
    goto/16 :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lajm;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x2

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Laim;->l()V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lajm;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-static {v0}, Lajm;->a([Landroid/graphics/Bitmap;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lajm;->mFirstFrameBitmap:Landroid/graphics/Bitmap;

    .line 85
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v0}, Lwu;->c()Lcom/snapchat/videotranscoder/task/Task$Status;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/snapchat/videotranscoder/task/Task$Status;->FINISHED:Lcom/snapchat/videotranscoder/task/Task$Status;

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lajm;->mTranscodingState:Lwu;

    invoke-virtual {v0}, Lwu;->b()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()Z
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lajm;->p()J

    move-result-wide v0

    const-wide/32 v2, 0x1a6667

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()J
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lawt;

    invoke-direct {v0}, Lawt;-><init>()V

    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lawt;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 226
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final q()[F
    .locals 2

    .prologue
    .line 238
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFactory;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFactory;-><init>()V

    iget-boolean v1, p0, Lcom/snapchat/android/model/Mediabryo;->mIsFrontFacingSnap:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFactory;->getTransformationMatrix(Z)Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    move-result-object v0

    .line 240
    iget v1, p0, Lcom/snapchat/android/model/Mediabryo;->mSnapOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 248
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->rotateLeft()[F

    move-result-object v0

    :goto_0
    return-object v0

    .line 242
    :sswitch_0
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->adjustForTranscoderTransformation()[F

    move-result-object v0

    goto :goto_0

    .line 244
    :sswitch_1
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->rotateRight()[F

    move-result-object v0

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->rotate180Degrees()[F

    move-result-object v0

    goto :goto_0

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
    .end sparse-switch
.end method
