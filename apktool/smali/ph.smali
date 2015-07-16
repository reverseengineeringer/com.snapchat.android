.class public Lph;
.super Lpk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lph$b;,
        Lph$a;
    }
.end annotation


# static fields
.field private static final LOCATION_DECIMAL_PLACES_PRECISION:Ljava/lang/Integer;

.field private static final PATH:Ljava/lang/String; = "/bq/post_story"

.field private static final TAG:Ljava/lang/String; = "PostStorySnapTask"

.field private static final TASK_NAME:Ljava/lang/String; = "PostStorySnapTask"


# instance fields
.field private mLocationProvider:Lain;

.field protected mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private mNetworkStatusManager:Lama;

.field protected mPostStorySnapCallback:Lph$a;

.field private mRawThumbnailData:[B

.field protected mRequestSuccessful:Z

.field private final mSnapWomb:Laki;

.field protected mSnapbryo:Laji;

.field private final mStoryLibrary:Lakk;

.field protected final mVideoMetadataFetcher:Lbgj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lph;->LOCATION_DECIMAL_PLACES_PRECISION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Laji;Lph$a;)V
    .locals 8

    .prologue
    .line 72
    invoke-static {}, Lain;->a()Lain;

    move-result-object v3

    invoke-static {}, Lama;->a()Lama;

    move-result-object v4

    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v5

    invoke-static {}, Laki;->a()Laki;

    move-result-object v6

    new-instance v7, Lbgj;

    invoke-direct {v7}, Lbgj;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lph;-><init>(Laji;Lph$a;Lain;Lama;Lakk;Laki;Lbgj;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Laji;Lph$a;Lain;Lama;Lakk;Laki;Lbgj;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lpk;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lph;->mRequestSuccessful:Z

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
    iput-object p1, p0, Lph;->mSnapbryo:Laji;

    .line 89
    iput-object p2, p0, Lph;->mPostStorySnapCallback:Lph$a;

    .line 90
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lph;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 91
    iput-object p3, p0, Lph;->mLocationProvider:Lain;

    .line 92
    iput-object p4, p0, Lph;->mNetworkStatusManager:Lama;

    .line 93
    iput-object p5, p0, Lph;->mStoryLibrary:Lakk;

    .line 94
    iput-object p6, p0, Lph;->mSnapWomb:Laki;

    .line 95
    iput-object p7, p0, Lph;->mVideoMetadataFetcher:Lbgj;

    .line 97
    invoke-static {}, Lakr;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {p1}, Lph;->a(Laji;)[B

    move-result-object v0

    iput-object v0, p0, Lph;->mRawThumbnailData:[B

    .line 100
    :cond_1
    return-void
.end method

.method private static a(D)D
    .locals 4

    .prologue
    .line 334
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    sget-object v2, Lph;->LOCATION_DECIMAL_PLACES_PRECISION:Ljava/lang/Integer;

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

.method public static a(Landroid/os/Bundle;Laji;[B[BLain;)V
    .locals 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Lain;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 156
    const-string v0, "client_id"

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "type"

    invoke-virtual {p1}, Laji;->h()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v0, "time"

    iget-wide v2, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p1, Laji;->mCaptionText:Ljava/lang/String;

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

    check-cast v0, Lakg;

    .line 168
    const-string v1, "story_timestamp"

    iget-wide v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfFirstAttempt:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 170
    iget-object v0, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

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

    check-cast v0, Lajy;

    .line 175
    instance-of v1, v0, Lajw;

    if-eqz v1, :cond_2

    .line 176
    const-string v0, "my_story"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, v0, Lajy;->mGeofence:Lajq;

    .line 182
    if-eqz v1, :cond_3

    .line 183
    iget-object v1, v1, Lajq;->mId:Ljava/lang/String;

    .line 187
    :goto_1
    iget-object v0, v0, Lajy;->mStoryId:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 190
    :cond_4
    const-string v0, "shared_ids"

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 195
    invoke-static {}, Lakr;->t()Z

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
    invoke-virtual {p4}, Lain;->d()Landroid/location/Location;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_6

    .line 202
    const-string v1, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lph;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lph;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_6
    return-void
.end method

.method public static a(Laji;)[B
    .locals 1
    .param p0    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 103
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    .line 104
    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    invoke-static {v0}, Lavp;->d(Landroid/graphics/Bitmap;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Laji;Lbgj;)[B
    .locals 6

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Laji;->h()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Laji;->h()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 121
    :cond_0
    sget-object v0, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laxn;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 122
    sget-object v1, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laxn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {p1, v1}, Lbgj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_1

    .line 126
    iget-object v0, p0, Laji;->mCompositeImageBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v0}, Lavp;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    :cond_1
    invoke-virtual {p1, v1}, Lbgj;->a(Ljava/lang/String;)I

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
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdn;

    invoke-direct {v1}, Lbdn;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 267
    invoke-static {}, Lakp;->g()Lakp;

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

    invoke-virtual {v0, v1}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 272
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lalp;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 212
    invoke-virtual {p0}, Lph;->a()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lph;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 214
    invoke-static {v0, v2, v1}, Lpt;->a(Ljava/lang/String;Landroid/os/Bundle;Lpt$a;)Landroid/os/Bundle;

    move-result-object v0

    .line 215
    invoke-super {p0, v0}, Lpk;->a(Landroid/os/Bundle;)V

    .line 217
    const-string v2, "result json = %s and result = %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lph;->mResultJson:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

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
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lph;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    goto :goto_0

    .line 225
    :cond_0
    iget v0, p0, Lph;->mStatusCode:I

    const/16 v2, 0xca

    if-ne v0, v2, :cond_1

    .line 226
    iput-boolean v5, p0, Lph;->mRequestSuccessful:Z

    .line 227
    iget-object v0, p0, Lph;->mResultJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    :try_start_0
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lph;->mResultJson:Ljava/lang/String;

    const-class v2, Lalp;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalp;
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

    invoke-virtual {p0}, Lph;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lph;->mResultJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lph;->mFailureMessage:Ljava/lang/String;

    .line 232
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    iget-object v1, p0, Lph;->mFailureMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    iget v0, p0, Lph;->mStatusCode:I

    const/16 v2, 0x191

    if-ne v0, v2, :cond_2

    .line 236
    iput-boolean v5, p0, Lph;->m401Error:Z

    move-object v0, v1

    goto :goto_1

    .line 237
    :cond_2
    iget v0, p0, Lph;->mStatusCode:I

    const/16 v2, 0x194

    if-ne v0, v2, :cond_3

    .line 238
    iput-boolean v5, p0, Lph;->m404Error:Z

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

.method protected final a(Lalp;)V
    .locals 18

    .prologue
    .line 245
    invoke-super/range {p0 .. p1}, Lpk;->c(Lalp;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lph;->mNetworkAnalytics:Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-object/from16 v0, p0

    iget-object v3, v0, Lph;->mSnapbryo:Laji;

    iget-object v4, v3, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v13, "/bq/post_story"

    move-object/from16 v0, p0

    iget v5, v0, Lph;->mStatusCode:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lph;->mReceivedBytes:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lph;->mReachability:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lph;->mElapsedTime:J

    move-wide/from16 v16, v0

    if-nez p1, :cond_0

    const/4 v9, 0x0

    :goto_0
    const-string v3, "STORY_POST_DELAY"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lbjx;Z)V

    const-string v11, "SNAP_SENT_STORY_DUMMY"

    move-object v10, v2

    move-object v12, v4

    move v14, v5

    move-object v15, v8

    invoke-virtual/range {v10 .. v17}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 248
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lph;->mRequestSuccessful:Z

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual/range {p0 .. p1}, Lph;->b(Lalp;)V

    .line 258
    :goto_1
    invoke-static {}, Lph;->d()V

    .line 259
    return-void

    .line 246
    :cond_0
    move-object/from16 v0, p1

    iget-object v9, v0, Lalp;->server_info:Lbjx;

    goto :goto_0

    .line 250
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lph;->m404Error:Z

    if-eqz v2, :cond_2

    .line 251
    invoke-virtual/range {p0 .. p0}, Lph;->f()V

    goto :goto_1

    .line 252
    :cond_2
    if-nez p1, :cond_3

    .line 253
    const-string v2, "Connection Lost"

    move-object/from16 v0, p0

    iget v3, v0, Lph;->mStatusCode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lph;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 255
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lalp;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lph;->mStatusCode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lph;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lph;->mSnapbryo:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 289
    iget-boolean v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    if-nez v1, :cond_1

    .line 291
    iget-object v1, p0, Lph;->mNetworkStatusManager:Lama;

    invoke-virtual {v1}, Lama;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    iget-object v0, p0, Lph;->mSnapWomb:Laki;

    iget-object v1, p0, Lph;->mSnapbryo:Laji;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v0, v1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    .line 298
    invoke-virtual {p0}, Lph;->e()V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lph;->mPostStorySnapCallback:Lph$a;

    iget-object v1, p0, Lph;->mSnapbryo:Laji;

    invoke-interface {v0, v1}, Lph$a;->b(Laji;)V

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

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "media_id"

    iget-object v2, p0, Lph;->mSnapbryo:Laji;

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lph;->mSnapbryo:Laji;

    invoke-static {v0, v1}, Lpo;->a(Landroid/os/Bundle;Laji;)V

    .line 148
    iget-object v1, p0, Lph;->mSnapbryo:Laji;

    iget-object v2, p0, Lph;->mVideoMetadataFetcher:Lbgj;

    invoke-static {v1, v2}, Lph;->a(Laji;Lbgj;)[B

    move-result-object v1

    .line 149
    iget-object v2, p0, Lph;->mSnapbryo:Laji;

    iget-object v3, p0, Lph;->mRawThumbnailData:[B

    iget-object v4, p0, Lph;->mLocationProvider:Lain;

    invoke-static {v0, v2, v1, v3, v4}, Lph;->a(Landroid/os/Bundle;Laji;[B[BLain;)V

    .line 150
    return-object v0
.end method

.method protected final b(Lalp;)V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lph;->mPostStorySnapCallback:Lph$a;

    iget-object v1, p0, Lph;->mSnapbryo:Laji;

    invoke-interface {v0, v1}, Lph$a;->a(Laji;)V

    .line 277
    iget-object v0, p1, Lalp;->json:Lph$b;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lph;->mStoryLibrary:Lakk;

    new-instance v1, Lakl;

    iget-object v2, p1, Lalp;->json:Lph$b;

    iget-object v2, v2, Lph$b;->story:Lbkh;

    invoke-direct {v1, v2}, Lakl;-><init>(Lbkh;)V

    invoke-virtual {v0, v1}, Lakk;->a(Lakl;)V

    .line 281
    :cond_0
    iget-object v0, p1, Lalp;->group_stories:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lph;->mStoryLibrary:Lakk;

    iget-object v1, p1, Lalp;->group_stories:Ljava/util/List;

    invoke-virtual {v0, v1}, Lakk;->c(Ljava/util/List;)V

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

    invoke-virtual {p0, p1}, Lph;->a([Ljava/lang/String;)Lalp;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 8

    .prologue
    .line 305
    new-instance v0, Lph;

    iget-object v1, p0, Lph;->mSnapbryo:Laji;

    iget-object v2, p0, Lph;->mPostStorySnapCallback:Lph$a;

    iget-object v3, p0, Lph;->mLocationProvider:Lain;

    iget-object v4, p0, Lph;->mNetworkStatusManager:Lama;

    iget-object v5, p0, Lph;->mStoryLibrary:Lakk;

    iget-object v6, p0, Lph;->mSnapWomb:Laki;

    iget-object v7, p0, Lph;->mVideoMetadataFetcher:Lbgj;

    invoke-direct/range {v0 .. v7}, Lph;-><init>(Laji;Lph$a;Lain;Lama;Lakk;Laki;Lbgj;)V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lph;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 307
    return-void
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 316
    new-instance v0, Lpi;

    iget-object v1, p0, Lph;->mSnapbryo:Laji;

    iget-object v2, p0, Lph;->mPostStorySnapCallback:Lph$a;

    invoke-direct {v0, v1, v2}, Lpi;-><init>(Laji;Lph$a;)V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpi;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lalp;

    invoke-virtual {p0, p1}, Lph;->a(Lalp;)V

    return-void
.end method
