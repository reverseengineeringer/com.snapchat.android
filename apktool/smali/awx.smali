.class public final Lawx;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mMask:Landroid/graphics/Bitmap;

.field private mProfileImageIndex:I

.field private mProfileImageUtils:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lawx;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILcom/snapchat/android/util/profileimages/ProfileImageUtils;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILcom/snapchat/android/util/profileimages/ProfileImageUtils;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lawx;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput-object p2, p0, Lawx;->mMask:Landroid/graphics/Bitmap;

    .line 34
    iput p3, p0, Lawx;->mProfileImageIndex:I

    .line 35
    iput-object p4, p0, Lawx;->mProfileImageUtils:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 36
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 19
    iget-object v0, p0, Lawx;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lawx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lawx;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lawx;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "profile images - image has size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 19
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcz;

    iget v2, p0, Lawx;->mProfileImageIndex:I

    invoke-direct {v1, p1, v2}, Lbcz;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    return-void
.end method
