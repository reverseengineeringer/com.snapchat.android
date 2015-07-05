.class public Laiv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient mBitmap:Landroid/graphics/Bitmap;

.field public final mClientCacheExpiration:Lcgs;

.field private final mClientCacheTtlMinutes:Ljava/lang/Long;

.field public transient mCompositeBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Lbwo;
    .end annotation
.end field

.field public mCompositeBitmapExpiryTime:Lcgs;
    .annotation runtime Lbwo;
    .end annotation
.end field

.field public final mCompositeLock:Ljava/lang/Object;

.field private final mDynamicContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/GeofilterMarkup;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpirationTime:J

.field public final mFilterId:Ljava/lang/String;

.field public final mGeofence:Laiu;

.field public final mImageUrl:Ljava/lang/String;

.field public final mIsDynamic:Z

.field public final mIsSponsored:Z

.field public final mLayoutGravity:I

.field public final mLayoutScaleType:Landroid/widget/ImageView$ScaleType;
    .annotation build Lcgb;
    .end annotation
.end field

.field public final mPriority:I

.field public final mSponsoredSlugImageUrl:Ljava/lang/String;

.field public final mSponsoredSlugPosition:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/server/GeofilterResponse;)V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laiv;->mCompositeLock:Ljava/lang/Object;

    .line 48
    iget-object v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mFilterId:Ljava/lang/String;

    iput-object v0, p0, Laiv;->mFilterId:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mImageUrl:Ljava/lang/String;

    iput-object v0, p0, Laiv;->mImageUrl:Ljava/lang/String;

    .line 50
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mIsSponsored:Z

    iput-boolean v0, p0, Laiv;->mIsSponsored:Z

    .line 51
    iget-object v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mSponsoredSlugPosition:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    iput-object v0, p0, Laiv;->mSponsoredSlugPosition:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    .line 52
    iget-object v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mSponsoredSlugImageUrl:Ljava/lang/String;

    iput-object v0, p0, Laiv;->mSponsoredSlugImageUrl:Ljava/lang/String;

    .line 53
    iget-wide v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mExpiresCountdown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Laiv;->mExpirationTime:J

    .line 54
    iget-object v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mGeofence:Lbhz;

    .line 55
    if-nez v0, :cond_3

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Laiv;->mGeofence:Laiu;

    .line 60
    :goto_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/GeofilterResponse;->a()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Laiv;->mLayoutScaleType:Landroid/widget/ImageView$ScaleType;

    .line 61
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/GeofilterResponse;->b()I

    move-result v0

    iput v0, p0, Laiv;->mLayoutGravity:I

    .line 62
    iget-object v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mDynamicContent:Ljava/util/List;

    iput-object v0, p0, Laiv;->mDynamicContent:Ljava/util/List;

    .line 63
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mIsDynamic:Z

    iput-boolean v0, p0, Laiv;->mIsDynamic:Z

    .line 64
    iget-object v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mClientCacheTtlMinutes:Ljava/lang/Long;

    iput-object v0, p0, Laiv;->mClientCacheTtlMinutes:Ljava/lang/Long;

    .line 65
    iget-object v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mClientCacheExpiration:Lcgs;

    .line 66
    if-nez v0, :cond_4

    .line 67
    iget-object v1, p0, Laiv;->mClientCacheTtlMinutes:Ljava/lang/Long;

    const/16 v0, 0x10e0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v0

    :cond_0
    new-instance v1, Lcgs;

    invoke-direct {v1}, Lcgs;-><init>()V

    invoke-virtual {v1, v0}, Lcgs;->b(I)Lcgs;

    move-result-object v0

    iput-object v0, p0, Laiv;->mClientCacheExpiration:Lcgs;

    .line 71
    :goto_2
    iget-object v0, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mPriority:Ljava/lang/Integer;

    .line 72
    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Laiv;->mPriority:I

    .line 76
    invoke-direct {p0}, Laiv;->d()V

    .line 77
    return-void

    .line 53
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/snapchat/android/model/server/GeofilterResponse;->mExpiresCountdown:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 58
    :cond_3
    new-instance v1, Laiu;

    invoke-direct {v1, v0}, Laiu;-><init>(Lbhz;)V

    iput-object v1, p0, Laiv;->mGeofence:Laiu;

    goto :goto_1

    .line 69
    :cond_4
    iput-object v0, p0, Laiv;->mClientCacheExpiration:Lcgs;

    goto :goto_2
.end method

.method private d()V
    .locals 4

    .prologue
    .line 122
    iget-boolean v0, p0, Laiv;->mIsDynamic:Z

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0}, Laiv;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/GeofilterMarkup;

    .line 125
    iget-object v2, v0, Lcom/snapchat/android/model/GeofilterMarkup;->source:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    new-instance v0, Lnr;

    const-string v1, "Geofilter source was null"

    invoke-direct {v0, v1}, Lnr;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    iget-object v2, v0, Lcom/snapchat/android/model/GeofilterMarkup;->type:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    sget-object v3, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->TEXT:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    if-ne v2, v3, :cond_2

    .line 129
    iget-object v2, v0, Lcom/snapchat/android/model/GeofilterMarkup;->displayParameters:Laiw;

    iget-object v2, v2, Laiw;->font:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    new-instance v0, Lnr;

    const-string v1, "Geofilter text not defined"

    invoke-direct {v0, v1}, Lnr;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    iget-object v2, v0, Lcom/snapchat/android/model/GeofilterMarkup;->type:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    sget-object v3, Lcom/snapchat/android/model/GeofilterMarkup$DataType;->IMAGE:Lcom/snapchat/android/model/GeofilterMarkup$DataType;

    if-ne v2, v3, :cond_0

    .line 134
    iget-object v0, v0, Lcom/snapchat/android/model/GeofilterMarkup;->layoutParameters:Laix;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lnr;

    const-string v1, "No layout parameters"

    invoke-direct {v0, v1}, Lnr;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Laiv;->mCompositeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Laiv;->mCompositeBitmap:Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Lcgs;
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Laiv;->mCompositeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Laiv;->mCompositeBitmapExpiryTime:Lcgs;

    monitor-exit v1

    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/GeofilterMarkup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Laiv;->mDynamicContent:Ljava/util/List;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laiv;->mDynamicContent:Ljava/util/List;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 259
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    .line 261
    :cond_0
    instance-of v0, p1, Laiv;

    if-nez v0, :cond_1

    .line 262
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :cond_1
    check-cast p1, Laiv;

    .line 266
    iget-object v0, p0, Laiv;->mFilterId:Ljava/lang/String;

    iget-object v1, p1, Laiv;->mFilterId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Laiv;->mFilterId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
