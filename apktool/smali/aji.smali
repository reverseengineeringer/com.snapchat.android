.class public abstract Laji;
.super Lcom/snapchat/android/model/Mediabryo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laji$a;
    }
.end annotation


# instance fields
.field public mBaseFilter:Loz;

.field public mCaptionAnalyticData:Laqn;

.field public mCaptionStyleDescription:Ljava/lang/String;

.field public mCaptionText:Ljava/lang/String;

.field public mCompositeImageBitmap:Landroid/graphics/Bitmap;

.field public mGeofilterImpressions:I

.field public final mGeofilterSwipeMetaData:Lnt;

.field public mHasDrawing:Z

.field public mStackedFilter:Loz;

.field public mSwipeFilterNumDoubleSwipes:I

.field public mSwipeFilterNumSingleSwipes:I

.field public mViewTimeSec:D

.field private final mViewTimeStopWatch:Lcs;


# direct methods
.method protected constructor <init>(Laji$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laji$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Mediabryo;-><init>(Lcom/snapchat/android/model/Mediabryo$a;)V

    .line 34
    iget-object v0, p1, Laji$a;->mCaptionText:Ljava/lang/String;

    iput-object v0, p0, Laji;->mCaptionText:Ljava/lang/String;

    .line 35
    iget-boolean v0, p1, Laji$a;->mHasDrawing:Z

    iput-boolean v0, p0, Laji;->mHasDrawing:Z

    .line 36
    iget v0, p1, Laji$a;->mSwipeFilterNumDoubleSwipes:I

    iput v0, p0, Laji;->mSwipeFilterNumDoubleSwipes:I

    .line 37
    iget v0, p1, Laji$a;->mSwipeFilterNumSingleSwipes:I

    iput v0, p0, Laji;->mSwipeFilterNumSingleSwipes:I

    .line 38
    iget v0, p1, Laji$a;->mGeofilterImpressions:I

    iput v0, p0, Laji;->mGeofilterImpressions:I

    .line 39
    iget-object v0, p1, Laji$a;->mGeofilterSwipeMetaData:Lnt;

    iput-object v0, p0, Laji;->mGeofilterSwipeMetaData:Lnt;

    .line 40
    iget-object v0, p1, Laji$a;->mCaptionStyleDescription:Ljava/lang/String;

    iput-object v0, p0, Laji;->mCaptionStyleDescription:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Laji$a;->mCaptionAnalyticData:Laqn;

    iput-object v0, p0, Laji;->mCaptionAnalyticData:Laqn;

    .line 42
    iget-object v0, p1, Laji$a;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 43
    iget-object v0, p1, Laji$a;->mBaseFilter:Loz;

    iput-object v0, p0, Laji;->mBaseFilter:Loz;

    .line 44
    iget-object v0, p1, Laji$a;->mStackedFilter:Loz;

    iput-object v0, p0, Laji;->mStackedFilter:Loz;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laji;->mViewTimeSec:D

    .line 46
    iget-object v0, p1, Laji$a;->mViewTimeStopWatch:Lcs;

    iput-object v0, p0, Laji;->mViewTimeStopWatch:Lcs;

    .line 47
    return-void
.end method

.method static synthetic a(Laji;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laji;->mCaptionText:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Loz;)Z
    .locals 2
    .param p0    # Loz;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 164
    if-eqz p0, :cond_0

    iget-object v0, p0, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->GEOFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Laji;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Laji;->mHasDrawing:Z

    return v0
.end method

.method static synthetic c(Laji;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Laji;->mSwipeFilterNumSingleSwipes:I

    return v0
.end method

.method static synthetic d(Laji;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Laji;->mSwipeFilterNumDoubleSwipes:I

    return v0
.end method

.method static synthetic e(Laji;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Laji;->mGeofilterImpressions:I

    return v0
.end method

.method static synthetic f(Laji;)Lnt;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laji;->mGeofilterSwipeMetaData:Lnt;

    return-object v0
.end method

.method static synthetic g(Laji;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laji;->mCaptionStyleDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Laji;)Laqn;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laji;->mCaptionAnalyticData:Laqn;

    return-object v0
.end method

.method static synthetic i(Laji;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic j(Laji;)Loz;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    return-object v0
.end method

.method static synthetic k(Laji;)Loz;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laji;->mStackedFilter:Loz;

    return-object v0
.end method

.method static synthetic l(Laji;)Lcs;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laji;->mViewTimeStopWatch:Lcs;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mIsChatMedia:Z

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x3

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/snapchat/android/model/Mediabryo;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public abstract a()Laji;
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 195
    iput-object p1, p0, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 196
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Laji;->mViewTimeStopWatch:Lcs;

    iget-boolean v0, v0, Lcs;->a:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Laji;->mViewTimeStopWatch:Lcs;

    invoke-virtual {v0}, Lcs;->b()Lcs;

    .line 106
    :cond_0
    iget-object v0, p0, Laji;->mViewTimeStopWatch:Lcs;

    invoke-virtual {v0}, Lcs;->a()Lcs;

    .line 107
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 113
    iget-object v0, p0, Laji;->mViewTimeStopWatch:Lcs;

    iget-boolean v0, v0, Lcs;->a:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Laji;->mViewTimeStopWatch:Lcs;

    invoke-virtual {v0}, Lcs;->b()Lcs;

    .line 115
    iget-wide v0, p0, Laji;->mViewTimeSec:D

    iget-object v2, p0, Laji;->mViewTimeStopWatch:Lcs;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lcs;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Laji;->mViewTimeSec:D

    .line 117
    :cond_0
    iget-object v0, p0, Laji;->mGeofilterSwipeMetaData:Lnt;

    iget-object v0, v0, Lnt;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnu;

    invoke-virtual {v0}, Lnu;->a()V

    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Laji;->a()Laji;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    invoke-static {v0}, Laji;->a(Loz;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laji;->mStackedFilter:Loz;

    invoke-static {v0}, Laji;->a(Loz;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    invoke-static {v0}, Laji;->a(Loz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Laji;->mBaseFilter:Loz;

    iget-object v0, v0, Loz;->b:Ljava/lang/String;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laji;->mStackedFilter:Loz;

    iget-object v0, v0, Loz;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 204
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/snapchat/android/model/Mediabryo;->a([Landroid/graphics/Bitmap;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 206
    return-void
.end method
