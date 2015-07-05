.class public Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFormat:Landroid/media/MediaFormat;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->mMimeType:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->mFormat:Landroid/media/MediaFormat;

    .line 15
    return-void
.end method


# virtual methods
.method public getFormat()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
