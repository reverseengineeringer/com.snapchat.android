.class public abstract Laji$a;
.super Lcom/snapchat/android/model/Mediabryo$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Laji$a",
        "<TT;>;>",
        "Lcom/snapchat/android/model/Mediabryo$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mBaseFilter:Loz;

.field mCaptionAnalyticData:Laqn;

.field mCaptionStyleDescription:Ljava/lang/String;

.field public mCaptionText:Ljava/lang/String;

.field mCompositeImageBitmap:Landroid/graphics/Bitmap;

.field mGeofilterImpressions:I

.field mGeofilterSwipeMetaData:Lnt;

.field mHasDrawing:Z

.field mStackedFilter:Loz;

.field mSwipeFilterNumDoubleSwipes:I

.field mSwipeFilterNumSingleSwipes:I

.field mViewTimeStopWatch:Lcs;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/snapchat/android/model/Mediabryo$a;-><init>()V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mClientId:Ljava/lang/String;

    .line 257
    new-instance v0, Lcs;

    invoke-direct {v0}, Lcs;-><init>()V

    iput-object v0, p0, Laji$a;->mViewTimeStopWatch:Lcs;

    .line 258
    return-void
.end method


# virtual methods
.method public final a(Laji;)Laji$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laji;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->a(Lcom/snapchat/android/model/Mediabryo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mClientId:Ljava/lang/String;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->b(Lcom/snapchat/android/model/Mediabryo;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mTime:Ljava/util/Date;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->c(Lcom/snapchat/android/model/Mediabryo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mVideoUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->d(Lcom/snapchat/android/model/Mediabryo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->e(Lcom/snapchat/android/model/Mediabryo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mRawImageBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->f(Lcom/snapchat/android/model/Mediabryo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mOverlayPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->g(Lcom/snapchat/android/model/Mediabryo;)Lakh;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mPreviewConfiguration:Lakh;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->h(Lcom/snapchat/android/model/Mediabryo;)Lcom/snapchat/android/model/Mediabryo$SnapType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->i(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsChatMedia:Z

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->j(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsReply:Z

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->k(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFrontFacingSnap:Z

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->l(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFlashOn:Z

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->m(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mIsZipUpload:Z

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->n(Lcom/snapchat/android/model/Mediabryo;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapOrientation:I

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->o(Lcom/snapchat/android/model/Mediabryo;)Lajv;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mMediaExtras:Lajv;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->p(Lcom/snapchat/android/model/Mediabryo;)Lcom/snapchat/android/model/MediaMailingMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->a()Lcom/snapchat/android/model/MediaMailingMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->q(Lcom/snapchat/android/model/Mediabryo;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mTimerValueOrDuration:D

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->r(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableSmartFilters:Z

    invoke-static {p1}, Lcom/snapchat/android/model/Mediabryo;->s(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableVisualFilters:Z

    .line 323
    invoke-static {p1}, Laji;->a(Laji;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laji$a;->mCaptionText:Ljava/lang/String;

    .line 324
    invoke-static {p1}, Laji;->b(Laji;)Z

    move-result v0

    iput-boolean v0, p0, Laji$a;->mHasDrawing:Z

    .line 325
    invoke-static {p1}, Laji;->c(Laji;)I

    move-result v0

    iput v0, p0, Laji$a;->mSwipeFilterNumSingleSwipes:I

    .line 326
    invoke-static {p1}, Laji;->d(Laji;)I

    move-result v0

    iput v0, p0, Laji$a;->mSwipeFilterNumDoubleSwipes:I

    .line 327
    invoke-static {p1}, Laji;->e(Laji;)I

    move-result v0

    iput v0, p0, Laji$a;->mGeofilterImpressions:I

    .line 328
    invoke-static {p1}, Laji;->f(Laji;)Lnt;

    move-result-object v0

    iput-object v0, p0, Laji$a;->mGeofilterSwipeMetaData:Lnt;

    .line 329
    invoke-static {p1}, Laji;->g(Laji;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laji$a;->mCaptionStyleDescription:Ljava/lang/String;

    .line 330
    invoke-static {p1}, Laji;->h(Laji;)Laqn;

    move-result-object v0

    iput-object v0, p0, Laji$a;->mCaptionAnalyticData:Laqn;

    .line 331
    invoke-static {p1}, Laji;->i(Laji;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Laji$a;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 332
    invoke-static {p1}, Laji;->j(Laji;)Loz;

    move-result-object v0

    iput-object v0, p0, Laji$a;->mBaseFilter:Loz;

    .line 333
    invoke-static {p1}, Laji;->k(Laji;)Loz;

    move-result-object v0

    iput-object v0, p0, Laji$a;->mStackedFilter:Loz;

    .line 334
    invoke-static {p1}, Laji;->l(Laji;)Lcs;

    move-result-object v0

    iput-object v0, p0, Laji$a;->mViewTimeStopWatch:Lcs;

    .line 335
    return-object p0
.end method

.method protected final a()V
    .locals 1

    .prologue
    .line 340
    invoke-super {p0}, Lcom/snapchat/android/model/Mediabryo$a;->a()V

    .line 342
    iget-object v0, p0, Laji$a;->mGeofilterSwipeMetaData:Lnt;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lnt;

    invoke-direct {v0}, Lnt;-><init>()V

    iput-object v0, p0, Laji$a;->mGeofilterSwipeMetaData:Lnt;

    .line 345
    :cond_0
    return-void
.end method

.method public b()Laji;
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return-object v0
.end method
