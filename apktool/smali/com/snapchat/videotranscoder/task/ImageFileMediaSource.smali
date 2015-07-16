.class public Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;
.super Lcom/snapchat/videotranscoder/task/FileMediaSource;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFileMediaSource"


# instance fields
.field private final mDisplayTimeMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-static {}, Lcom/snapchat/videotranscoder/utils/FileUtils;->getInstance()Lcom/snapchat/videotranscoder/utils/FileUtils;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;-><init>(Ljava/lang/String;JLcom/snapchat/videotranscoder/utils/FileUtils;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JLcom/snapchat/videotranscoder/utils/FileUtils;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/utils/FileUtils;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1, p4}, Lcom/snapchat/videotranscoder/task/FileMediaSource;-><init>(Ljava/lang/String;Lcom/snapchat/videotranscoder/utils/FileUtils;)V

    .line 34
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayTimeMs must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-wide p2, p0, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;->mDisplayTimeMs:J

    .line 36
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 55
    invoke-virtual {p0}, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;->getMediaPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayTimeMs()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;->mDisplayTimeMs:J

    return-wide v0
.end method
