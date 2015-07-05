.class public abstract Laim;
.super Lcom/snapchat/android/model/Mediabryo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laim$a;
    }
.end annotation


# instance fields
.field public mBaseFilter:Loi;

.field public mCaptionAnalyticData:Lapo;

.field public mCaptionStyleDescription:Ljava/lang/String;

.field public mCaptionText:Ljava/lang/String;

.field public mCompositeImageBitmap:Landroid/graphics/Bitmap;

.field public mGeofilterImpressions:I

.field public final mGeofilterSwipeMetaData:Lnc;

.field public mHasDrawing:Z

.field public mStackedFilter:Loi;

.field public mSwipeFilterNumDoubleSwipes:I

.field public mSwipeFilterNumSingleSwipes:I

.field public mViewTimeSec:D

.field private final mViewTimeStopWatch:Lcn;


# direct methods
.method protected constructor <init>(Laim$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laim$a",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Mediabryo;-><init>(Lcom/snapchat/android/model/Mediabryo$a;)V

    .line 34
    iget-object v0, p1, Laim$a;->mCaptionText:Ljava/lang/String;

    iput-object v0, p0, Laim;->mCaptionText:Ljava/lang/String;

    .line 35
    iget-boolean v0, p1, Laim$a;->mHasDrawing:Z

    iput-boolean v0, p0, Laim;->mHasDrawing:Z

    .line 36
    iget v0, p1, Laim$a;->mSwipeFilterNumDoubleSwipes:I

    iput v0, p0, Laim;->mSwipeFilterNumDoubleSwipes:I

    .line 37
    iget v0, p1, Laim$a;->mSwipeFilterNumSingleSwipes:I

    iput v0, p0, Laim;->mSwipeFilterNumSingleSwipes:I

    .line 38
    iget v0, p1, Laim$a;->mGeofilterImpressions:I

    iput v0, p0, Laim;->mGeofilterImpressions:I

    .line 39
    iget-object v0, p1, Laim$a;->mGeofilterSwipeMetaData:Lnc;

    iput-object v0, p0, Laim;->mGeofilterSwipeMetaData:Lnc;

    .line 40
    iget-object v0, p1, Laim$a;->mCaptionStyleDescription:Ljava/lang/String;

    iput-object v0, p0, Laim;->mCaptionStyleDescription:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Laim$a;->mCaptionAnalyticData:Lapo;

    iput-object v0, p0, Laim;->mCaptionAnalyticData:Lapo;

    .line 42
    iget-object v0, p1, Laim$a;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 43
    iget-object v0, p1, Laim$a;->mBaseFilter:Loi;

    iput-object v0, p0, Laim;->mBaseFilter:Loi;

    .line 44
    iget-object v0, p1, Laim$a;->mStackedFilter:Loi;

    iput-object v0, p0, Laim;->mStackedFilter:Loi;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laim;->mViewTimeSec:D

    .line 46
    iget-object v0, p1, Laim$a;->mViewTimeStopWatch:Lcn;

    iput-object v0, p0, Laim;->mViewTimeStopWatch:Lcn;

    .line 47
    return-void
.end method

.method static synthetic a(Laim;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laim;->mCaptionText:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Loi;)Z
    .locals 2
    .param p0    # Loi;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 164
    if-eqz p0, :cond_0

    iget-object v0, p0, Loi;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->GEOFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Laim;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Laim;->mHasDrawing:Z

    return v0
.end method

.method static synthetic c(Laim;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Laim;->mSwipeFilterNumSingleSwipes:I

    return v0
.end method

.method static synthetic d(Laim;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Laim;->mSwipeFilterNumDoubleSwipes:I

    return v0
.end method

.method static synthetic e(Laim;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Laim;->mGeofilterImpressions:I

    return v0
.end method

.method static synthetic f(Laim;)Lnc;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laim;->mGeofilterSwipeMetaData:Lnc;

    return-object v0
.end method

.method static synthetic g(Laim;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laim;->mCaptionStyleDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Laim;)Lapo;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laim;->mCaptionAnalyticData:Lapo;

    return-object v0
.end method

.method static synthetic i(Laim;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic j(Laim;)Loi;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    return-object v0
.end method

.method static synthetic k(Laim;)Loi;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laim;->mStackedFilter:Loi;

    return-object v0
.end method

.method static synthetic l(Laim;)Lcn;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Laim;->mViewTimeStopWatch:Lcn;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
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

.method public abstract a()Laim;
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 195
    iput-object p1, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 196
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Laim;->mViewTimeStopWatch:Lcn;

    iget-boolean v0, v0, Lcn;->a:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Laim;->mViewTimeStopWatch:Lcn;

    invoke-virtual {v0}, Lcn;->b()Lcn;

    .line 106
    :cond_0
    iget-object v0, p0, Laim;->mViewTimeStopWatch:Lcn;

    invoke-virtual {v0}, Lcn;->a()Lcn;

    .line 107
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 113
    iget-object v0, p0, Laim;->mViewTimeStopWatch:Lcn;

    iget-boolean v0, v0, Lcn;->a:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Laim;->mViewTimeStopWatch:Lcn;

    invoke-virtual {v0}, Lcn;->b()Lcn;

    .line 115
    iget-wide v0, p0, Laim;->mViewTimeSec:D

    iget-object v2, p0, Laim;->mViewTimeStopWatch:Lcn;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lcn;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Laim;->mViewTimeSec:D

    .line 117
    :cond_0
    iget-object v0, p0, Laim;->mGeofilterSwipeMetaData:Lnc;

    iget-object v0, v0, Lnc;->mData:Ljava/util/Map;

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

    check-cast v0, Lnd;

    invoke-virtual {v0}, Lnd;->a()V

    goto :goto_0

    .line 118
    :cond_1
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Laim;->a()Laim;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    invoke-static {v0}, Laim;->a(Loi;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laim;->mStackedFilter:Loi;

    invoke-static {v0}, Laim;->a(Loi;)Z

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
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    invoke-static {v0}, Laim;->a(Loi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Laim;->mBaseFilter:Loi;

    iget-object v0, v0, Loi;->b:Ljava/lang/String;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laim;->mStackedFilter:Loi;

    iget-object v0, v0, Loi;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 204
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/snapchat/android/model/Mediabryo;->a([Landroid/graphics/Bitmap;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    .line 206
    return-void
.end method
