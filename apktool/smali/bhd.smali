.class public final Lbhd;
.super Lbgm;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSourceFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDecryptedSnapImageKeysToRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDecryptedSnapVideosToRelease:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajl;",
            ">;"
        }
    .end annotation
.end field

.field public final mImageTransformationMatrix:Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

.field private final mRandom:Ljava/util/Random;

.field public final mSnapVideoDecryptor:Laxx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Laxx;

    invoke-direct {v1}, Laxx;-><init>()V

    new-instance v2, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    invoke-direct {v2}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lbhd;-><init>(Landroid/content/Context;Ljava/util/Random;Laxx;Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Random;Laxx;Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/Random;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Laxx;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0}, Lbgm;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbhd;->mDecryptedSnapVideosToRelease:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbhd;->mDecryptedSnapImageKeysToRemove:Ljava/util/List;

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lbhd;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lbhd;->mRandom:Ljava/util/Random;

    .line 60
    iput-object p3, p0, Lbhd;->mSnapVideoDecryptor:Laxx;

    .line 61
    iput-object p4, p0, Lbhd;->mImageTransformationMatrix:Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Lakl;)Lcom/snapchat/videotranscoder/task/MediaSource;
    .locals 4
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 115
    iget-object v0, p0, Lbhd;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lakl;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    const-string v1, "Bitmap was null"

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SaveStoryToGalleryImage"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbhd;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    :try_start_0
    sget-object v2, Laxo;->SAVE_STORY_TO_GALLERY_IMAGE_CACHE:Laxn;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v1, v0, v3}, Laxn;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 125
    iget-object v0, p0, Lbhd;->mDecryptedSnapImageKeysToRemove:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    sget-object v0, Laxo;->SAVE_STORY_TO_GALLERY_IMAGE_CACHE:Laxn;

    invoke-virtual {v0, v1}, Laxn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key not found in cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lcom/snapchat/videotranscoder/task/SetupException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "External storage not available to write bitmap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Laxq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/videotranscoder/task/SetupException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    :cond_1
    new-instance v1, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;

    invoke-virtual {p1}, Lakl;->G()D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/snapchat/videotranscoder/task/ImageFileMediaSource;-><init>(Ljava/lang/String;J)V

    return-object v1
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lbhd;->mDecryptedSnapImageKeysToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    sget-object v2, Laxo;->SAVE_STORY_TO_GALLERY_IMAGE_CACHE:Laxn;

    invoke-virtual {v2, v0}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lbhd;->mDecryptedSnapVideosToRelease:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajl;

    .line 107
    invoke-virtual {v0}, Lajl;->e()V

    goto :goto_1

    .line 110
    :cond_1
    iget-object v0, p0, Lbhd;->mDecryptedSnapImageKeysToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lbhd;->mDecryptedSnapVideosToRelease:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    return-void
.end method

.method public final finalize()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lbhd;->mDecryptedSnapImageKeysToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhd;->mDecryptedSnapVideosToRelease:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lbhd;->e()V

    .line 70
    :cond_1
    return-void
.end method
