.class public abstract Lcom/snapchat/videotranscoder/pipeline/Decoder;
.super Lcom/snapchat/videotranscoder/pipeline/Stage;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DECODER"

.field protected static final kDecodeFailure:I = -0x1


# instance fields
.field public mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

.field public mFrameToProcess:I


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Landroid/view/Surface;Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 20
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-static {}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getInstance()Lcom/snapchat/videotranscoder/utils/MimeTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/snapchat/videotranscoder/utils/MimeTools;->getMimeTypeFor(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/videotranscoder/pipeline/Codec;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    invoke-direct {p0, p3, v0}, Lcom/snapchat/videotranscoder/pipeline/Decoder;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/Codec;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;Lcom/snapchat/videotranscoder/pipeline/Codec;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/snapchat/videotranscoder/pipeline/Stage;-><init>(Lcom/snapchat/videotranscoder/pipeline/StageDoneCallback;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/videotranscoder/pipeline/Decoder;->mFrameToProcess:I

    .line 33
    iput-object p2, p0, Lcom/snapchat/videotranscoder/pipeline/Decoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    .line 34
    return-void
.end method


# virtual methods
.method public getCodec()Lcom/snapchat/videotranscoder/pipeline/Codec;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Decoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    return-object v0
.end method

.method public abstract getFrameFromDecoder()V
.end method

.method public abstract outputFrame()V
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Decoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/Decoder;->mCodec:Lcom/snapchat/videotranscoder/pipeline/Codec;

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/Codec;->stop()V

    .line 43
    :cond_0
    return-void
.end method
