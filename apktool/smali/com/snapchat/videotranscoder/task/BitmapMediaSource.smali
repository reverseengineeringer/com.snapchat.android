.class public Lcom/snapchat/videotranscoder/task/BitmapMediaSource;
.super Lcom/snapchat/videotranscoder/task/MediaSource;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapMediaSource"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mDisplayTimeMs:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;J)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/snapchat/videotranscoder/task/MediaSource;-><init>()V

    .line 20
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayTimeMs must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iput-object p1, p0, Lcom/snapchat/videotranscoder/task/BitmapMediaSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    iput-wide p2, p0, Lcom/snapchat/videotranscoder/task/BitmapMediaSource;->mDisplayTimeMs:J

    .line 25
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/videotranscoder/task/BitmapMediaSource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisplayTimeMs()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/snapchat/videotranscoder/task/BitmapMediaSource;->mDisplayTimeMs:J

    return-wide v0
.end method
