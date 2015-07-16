.class public abstract Lcom/snapchat/android/model/Mediabryo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Mediabryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snapchat/android/model/Mediabryo$a",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mClientId:Ljava/lang/String;

.field public mHeight:I

.field public mIsChatMedia:Z

.field public mIsFlashOn:Z

.field public mIsFrontFacingSnap:Z

.field public mIsReply:Z

.field public mIsZipUpload:Z

.field public mMediaExtras:Lajv;

.field public mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

.field public mMuted:Z

.field public mOverlayBitmap:Landroid/graphics/Bitmap;

.field public mOverlayPath:Ljava/lang/String;

.field public mPreviewConfiguration:Lakh;

.field public mRawImageBitmap:Landroid/graphics/Bitmap;

.field public mShouldEnableSmartFilters:Z

.field public mShouldEnableVisualFilters:Z

.field public mSnapOrientation:I

.field public mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

.field public mTime:Ljava/util/Date;

.field public mTimerValueOrDuration:D

.field public mVideoUri:Landroid/net/Uri;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mTime:Ljava/util/Date;

    .line 334
    iput-boolean v1, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsChatMedia:Z

    .line 335
    iput-boolean v1, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsReply:Z

    .line 336
    iput-boolean v1, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFrontFacingSnap:Z

    .line 337
    iput-boolean v1, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFlashOn:Z

    .line 338
    iput-boolean v1, p0, Lcom/snapchat/android/model/Mediabryo$a;->mMuted:Z

    .line 339
    iput-boolean v1, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsZipUpload:Z

    .line 340
    iput v1, p0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapOrientation:I

    .line 347
    iput-boolean v2, p0, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableSmartFilters:Z

    .line 348
    iput-boolean v2, p0, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableVisualFilters:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    return-object p0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t build Mediabryo with null snap type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mVideoUri:Landroid/net/Uri;

    .line 448
    :cond_0
    return-object p0
.end method
