.class public Loq;
.super Lot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loq$b;,
        Loq$a;
    }
.end annotation


# static fields
.field private static final LOCATION_DECIMAL_PLACES_PRECISION:Ljava/lang/Integer;

.field private static final PATH:Ljava/lang/String; = "/bq/post_story"

.field private static final TAG:Ljava/lang/String; = "PostStorySnapTask"

.field private static final TASK_NAME:Ljava/lang/String; = "PostStorySnapTask"


# instance fields
.field private mLocationProvider:Lahr;

.field protected mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private mNetworkStatusManager:Lale;

.field protected mPostStorySnapCallback:Loq$a;

.field private mRawThumbnailData:[B

.field protected mRequestSuccessful:Z

.field private final mSnapWomb:Lajn;

.field protected mSnapbryo:Laim;

.field private final mStoryLibrary:Lajq;

.field protected final mVideoMetadataFetcher:Lbfj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Loq;->LOCATION_DECIMAL_PLACES_PRECISION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Laim;Loq$a;)V
    .locals 8

    .prologue
    .line 72
    invoke-static {}, Lahr;->a()Lahr;

    move-result-object v3

    invoke-static {}, Lale;->a()Lale;

    move-result-object v4

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v5

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v6

    new-instance v7, Lbfj;

    invoke-direct {v7}, Lbfj;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Loq;-><init>(Laim;Loq$a;Lahr;Lale;Lajq;Lajn;Lbfj;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Laim;Loq$a;Lahr;Lale;Lajq;Lajn;Lbfj;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lot;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Loq;->mRequestSuccessful:Z

    .line 84
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-eq v0, v1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid snap type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iput-object p1, p0, Loq;->mSnapbryo:Laim;

    .line 89
    iput-object p2, p0, Loq;->mPostStorySnapCallback:Loq$a;

    .line 90
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Loq;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 91
    iput-object p3, p0, Loq;->mLocationProvider:Lahr;

    .line 92
    iput-object p4, p0, Loq;->mNetworkStatusManager:Lale;

    .line 93
    iput-object p5, p0, Loq;->mStoryLibrary:Lajq;

    .line 94
    iput-object p6, p0, Loq;->mSnapWomb:Lajn;

    .line 95
    iput-object p7, p0, Loq;->mVideoMetadataFetcher:Lbfj;

    .line 97
    invoke-static {}, Lajx;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {p1}, Loq;->a(Laim;)[B

    move-result-object v0

    iput-object v0, p0, Loq;->mRawThumbnailData:[B

    .line 100
    :cond_1
    return-void
.end method

.method private static a(D)D
    .locals 4

    .prologue
    .line 334
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    sget-object v2, Loq;->LOCATION_DECIMAL_PLACES_PRECISION:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 335
    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(Landroid/os/Bundle;Laim;[B[BLahr;)V
    .locals 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Lahr;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 156
    const-string v0, "client_id"

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "type"

    invoke-virtual {p1}, Laim;->h()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v0, "time"

    iget-wide v2, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p1, Laim;->mCaptionText:Ljava/lang/String;

    .line 160
    if-nez v0, :cond_0

    const-string v0, ""

    .line 161
    :cond_0
    const-string v1, "caption_text_display"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-eqz p2, :cond_1

    .line 164
    const-string v0, "thumbnail_data"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 167
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lajk;

    .line 168
    const-string v1, "story_timestamp"

    iget-wide v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfFirstAttempt:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    iget-object v0, v0, Lajk;->mPostToStories:Ljava/util/ArrayList;

    .line 171
    const-string v1, "my_story"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 173
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    .line 175
    instance-of v1, v0, Laja;

    if-eqz v1, :cond_2

    .line 176
    const-string v0, "my_story"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, v0, Lajc;->mGeofence:Laiu;

    .line 182
    if-eqz v1, :cond_3

    .line 183
    iget-object v1, v1, Laiu;->mId:Ljava/lang/String;

    .line 187
    :goto_1
    iget-object v0, v0, Lajc;->mStoryId:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 190
    :cond_4
    const-string v0, "shared_ids"

    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 195
    invoke-static {}, Lajx;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    .line 196
    const-string v0, "raw_thumbnail_data"

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 199
    :cond_5
    if-eqz p4, :cond_6

    .line 200
    invoke-virtual {p4}, Lahr;->d()Landroid/location/Location;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_6

    .line 202
    const-string v1, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Loq;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Loq;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_6
    return-void
.end method

.method public static a(Laim;)[B
    .locals 2
    .param p0    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 103
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    .line 104
    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    invoke-static {v0}, Laur;->d(Landroid/graphics/Bitmap;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "PostStorySnapTask"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Laim;Lbfj;)[B
    .locals 6

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Laim;->h()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Laim;->h()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 121
    :cond_0
    sget-object v0, Lawq;->MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawp;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 122
    sget-object v1, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {p1, v1}, Lbfj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_1

    .line 126
    iget-object v0, p0, Laim;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v0}, Laur;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    :cond_1
    invoke-virtual {p1, v1}, Lbfj;->a(Ljava/lang/String;)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    .line 134
    :cond_2
    return-object v0
.end method

.method protected static d()V
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcn;

    invoke-direct {v1}, Lbcn;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 267
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_POSTED_STORYSNAPS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_IMAGE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->MY_SNAP_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->FAILED_POST_SNAPBRYOS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Laku;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 212
    invoke-virtual {p0}, Loq;->a()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Loq;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 214
    invoke-static {v0, v2, v1}, Lpc;->a(Ljava/lang/String;Landroid/os/Bundle;Lpc$a;)Landroid/os/Bundle;

    move-result-object v0

    .line 215
    invoke-super {p0, v0}, Lot;->a(Landroid/os/Bundle;)V

    .line 217
    const-string v2, "result json = %s and result = %s"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Loq;->mResultJson:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    const-string v3, "PostStorySnapTask"

    const-string v4, "%s: %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Loq;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v0, v5, v7

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    :cond_0
    iget v0, p0, Loq;->mStatusCode:I

    const/16 v2, 0xca

    if-ne v0, v2, :cond_1

    .line 226
    iput-boolean v7, p0, Loq;->mRequestSuccessful:Z

    .line 227
    iget-object v0, p0, Loq;->mResultJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    :try_start_0
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Loq;->mResultJson:Ljava/lang/String;

    const-class v2, Laku;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laku;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_1
    return-object v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Loq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loq;->mResultJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Loq;->mFailureMessage:Ljava/lang/String;

    .line 232
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    iget-object v1, p0, Loq;->mFailureMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    iget v0, p0, Loq;->mStatusCode:I

    const/16 v2, 0x191

    if-ne v0, v2, :cond_2

    .line 236
    iput-boolean v7, p0, Loq;->m401Error:Z

    move-object v0, v1

    goto :goto_1

    .line 237
    :cond_2
    iget v0, p0, Loq;->mStatusCode:I

    const/16 v2, 0x194

    if-ne v0, v2, :cond_3

    .line 238
    iput-boolean v7, p0, Loq;->m404Error:Z

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "/bq/post_story"

    return-object v0
.end method

.method protected final a(Laku;)V
    .locals 13

    .prologue
    .line 245
    invoke-super {p0, p1}, Lot;->c(Laku;)V

    .line 246
    iget-object v0, p0, Loq;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    iget-object v1, p0, Loq;->mSnapbryo:Laim;

    iget-object v2, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v10, "/bq/post_story"

    iget v3, p0, Loq;->mStatusCode:I

    iget-wide v4, p0, Loq;->mReceivedBytes:J

    iget-object v6, p0, Loq;->mReachability:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    const-string v1, "STORY_POST_DELAY"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lbiw;Z)V

    const-string v8, "SNAP_SENT_STORY_DUMMY"

    move-object v7, v0

    move-object v9, v2

    move v11, v3

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    iget-boolean v0, p0, Loq;->mRequestSuccessful:Z

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0, p1}, Loq;->b(Laku;)V

    .line 258
    :goto_1
    invoke-static {}, Loq;->d()V

    .line 259
    return-void

    .line 246
    :cond_0
    iget-object v7, p1, Laku;->server_info:Lbiw;

    goto :goto_0

    .line 250
    :cond_1
    iget-boolean v0, p0, Loq;->m404Error:Z

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {p0}, Loq;->f()V

    goto :goto_1

    .line 252
    :cond_2
    if-nez p1, :cond_3

    .line 253
    const-string v0, "Connection Lost"

    iget v1, p0, Loq;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Loq;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 255
    :cond_3
    iget-object v0, p1, Laku;->message:Ljava/lang/String;

    iget v1, p0, Loq;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Loq;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Loq;->mSnapbryo:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 289
    iget-boolean v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    if-nez v1, :cond_1

    .line 291
    iget-object v1, p0, Loq;->mNetworkStatusManager:Lale;

    invoke-virtual {v1}, Lale;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    iget-object v0, p0, Loq;->mSnapWomb:Lajn;

    iget-object v1, p0, Loq;->mSnapbryo:Laim;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0, v1, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    .line 298
    invoke-virtual {p0}, Loq;->e()V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Loq;->mPostStorySnapCallback:Loq$a;

    iget-object v1, p0, Loq;->mSnapbryo:Laim;

    invoke-interface {v0, v1}, Loq$a;->b(Laim;)V

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string v1, "username"

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "media_id"

    iget-object v2, p0, Loq;->mSnapbryo:Laim;

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Loq;->mSnapbryo:Laim;

    invoke-static {v0, v1}, Lox;->a(Landroid/os/Bundle;Laim;)V

    .line 148
    iget-object v1, p0, Loq;->mSnapbryo:Laim;

    iget-object v2, p0, Loq;->mVideoMetadataFetcher:Lbfj;

    invoke-static {v1, v2}, Loq;->a(Laim;Lbfj;)[B

    move-result-object v1

    .line 149
    iget-object v2, p0, Loq;->mSnapbryo:Laim;

    iget-object v3, p0, Loq;->mRawThumbnailData:[B

    iget-object v4, p0, Loq;->mLocationProvider:Lahr;

    invoke-static {v0, v2, v1, v3, v4}, Loq;->a(Landroid/os/Bundle;Laim;[B[BLahr;)V

    .line 150
    return-object v0
.end method

.method protected final b(Laku;)V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Loq;->mPostStorySnapCallback:Loq$a;

    iget-object v1, p0, Loq;->mSnapbryo:Laim;

    invoke-interface {v0, v1}, Loq$a;->a(Laim;)V

    .line 277
    iget-object v0, p1, Laku;->json:Loq$b;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Loq;->mStoryLibrary:Lajq;

    new-instance v1, Lajr;

    iget-object v2, p1, Laku;->json:Loq$b;

    iget-object v2, v2, Loq$b;->story:Lbjg;

    invoke-direct {v1, v2}, Lajr;-><init>(Lbjg;)V

    invoke-virtual {v0, v1}, Lajq;->a(Lajr;)V

    .line 281
    :cond_0
    iget-object v0, p1, Laku;->group_stories:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Loq;->mStoryLibrary:Lajq;

    iget-object v1, p1, Laku;->group_stories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lajq;->c(Ljava/util/List;)V

    .line 284
    :cond_1
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const-string v0, "PostStorySnapTask"

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Loq;->a([Ljava/lang/String;)Laku;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 8

    .prologue
    .line 305
    new-instance v0, Loq;

    iget-object v1, p0, Loq;->mSnapbryo:Laim;

    iget-object v2, p0, Loq;->mPostStorySnapCallback:Loq$a;

    iget-object v3, p0, Loq;->mLocationProvider:Lahr;

    iget-object v4, p0, Loq;->mNetworkStatusManager:Lale;

    iget-object v5, p0, Loq;->mStoryLibrary:Lajq;

    iget-object v6, p0, Loq;->mSnapWomb:Lajn;

    iget-object v7, p0, Loq;->mVideoMetadataFetcher:Lbfj;

    invoke-direct/range {v0 .. v7}, Loq;-><init>(Laim;Loq$a;Lahr;Lale;Lajq;Lajn;Lbfj;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Loq;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 307
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 316
    new-instance v0, Lor;

    iget-object v1, p0, Loq;->mSnapbryo:Laim;

    iget-object v2, p0, Loq;->mPostStorySnapCallback:Loq$a;

    invoke-direct {v0, v1, v2}, Lor;-><init>(Laim;Loq$a;)V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Laku;

    invoke-virtual {p0, p1}, Loq;->a(Laku;)V

    return-void
.end method
