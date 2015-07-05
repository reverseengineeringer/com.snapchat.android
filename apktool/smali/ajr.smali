.class public Lajr;
.super Laje;
.source "SourceFile"


# static fields
.field private static final AUTH_STORY_DOWNLOAD_ENDPOINT:Ljava/lang/String; = "/bq/auth_story_blob"

.field private static final AUTH_THUMBNAIL_DOWNLOAD_ENDPOINT:Ljava/lang/String; = "/bq/auth_story_thumbnails"

.field private static final TAG:Ljava/lang/String; = "StorySnap"


# instance fields
.field private mAdPlacementMetadata:Lbgv;

.field private mCacheKeyOverride:Ljava/lang/String;

.field public mCanAdFollow:Z

.field public mCaptionParameters:Lbgz;

.field public mClientId:Ljava/lang/String;

.field public mExpirationTimestamp:J

.field public mFailed:Z

.field public mHasBeenViewed:Z

.field private mHasMatureContent:Z

.field public mIsShared:Z

.field public mLoadingContext:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

.field public mMediaId:Ljava/lang/String;

.field private mMediaUrl:Ljava/lang/String;

.field public mNeedsAuth:Z

.field public mSponsoredStoryMetadata:Lbje;

.field public mStoryFilterId:Ljava/lang/String;

.field public mStoryId:Ljava/lang/String;

.field private mThumbnailIv:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mTimeToExpiration:J

.field public mUsername:Ljava/lang/String;

.field public mWas404ResponseReceived:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Laje;-><init>()V

    .line 99
    sget-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->ALREADY_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    iput-object v0, p0, Lajr;->mLoadingContext:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    .line 111
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lajr;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Laim;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Lajr;-><init>()V

    .line 205
    iput-object p2, p0, Lajr;->mStoryId:Ljava/lang/String;

    .line 206
    iput-object p3, p0, Lajr;->mUsername:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iput-object v0, p0, Lajr;->mClientId:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Laim;->mCaptionText:Ljava/lang/String;

    iput-object v0, p0, Lajr;->mCaptionText:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Laim;->h()I

    move-result v0

    iput v0, p0, Lajr;->mMediaType:I

    .line 210
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lajr;->mFailed:Z

    .line 211
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo;->mIsZipUpload:Z

    iput-boolean v0, p0, Lajr;->mZipped:Z

    .line 212
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lajr;->mTimestamp:J

    .line 213
    iget-wide v0, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    iput-wide v0, p0, Lajr;->mCanonicalDisplayTime:D

    .line 214
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbjg;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lajr;-><init>()V

    .line 116
    invoke-virtual {p1}, Lbjg;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lajr;->mHasMatureContent:Z

    .line 117
    invoke-virtual {p1}, Lbjg;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mUsername:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lbjg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mId:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lbjg;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mClientId:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lbjg;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mMediaId:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lbjg;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lajr;->mTimestamp:J

    .line 122
    invoke-virtual {p1}, Lbjg;->l()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lajr;->mMediaType:I

    .line 123
    invoke-virtual {p1}, Lbjg;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mMediaUrl:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lbjg;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mMediaIv:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lbjg;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mMediaKey:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lbjg;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mThumbnailIv:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lbjg;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mThumbnailUrl:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lbjg;->m()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lajr;->mCanonicalDisplayTime:D

    .line 129
    invoke-virtual {p1}, Lbjg;->p()Lbgz;

    move-result-object v0

    iput-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    .line 130
    iget-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    invoke-virtual {v0}, Lbgz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    invoke-virtual {v0}, Lbgz;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lajr;->mCaptionOrientation:J

    .line 134
    :cond_0
    iget-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    invoke-virtual {v0}, Lbgz;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    invoke-virtual {v0}, Lbgz;->d()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lajr;->mCaptionPosition:D

    .line 138
    :cond_1
    invoke-virtual {p1}, Lbjg;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mCaptionText:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Lbjg;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lajr;->mZipped:Z

    .line 140
    invoke-virtual {p1}, Lbjg;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mFilterId:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lbjg;->u()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lajr;->mIsShared:Z

    .line 142
    invoke-virtual {p1}, Lbjg;->w()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lajr;->mNeedsAuth:Z

    .line 143
    invoke-virtual {p1}, Lbjg;->x()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lajr;->mCanAdFollow:Z

    .line 144
    invoke-virtual {p1}, Lbjg;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lajr;->mTimeToExpiration:J

    .line 145
    invoke-virtual {p1}, Lbjg;->v()Lbgv;

    move-result-object v0

    iput-object v0, p0, Lajr;->mAdPlacementMetadata:Lbgv;

    .line 146
    invoke-virtual {p1}, Lbjg;->t()Lbje;

    move-result-object v0

    iput-object v0, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    .line 147
    invoke-virtual {p1}, Lbjg;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->mStoryFilterId:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;ILjava/lang/String;JDZZZZLjava/lang/String;ZZZZJLjava/lang/String;)V
    .locals 5

    .prologue
    .line 156
    invoke-direct {p0}, Lajr;-><init>()V

    .line 157
    iput-object p1, p0, Lajr;->mId:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lajr;->mClientId:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lajr;->mMediaId:Ljava/lang/String;

    .line 160
    iput-wide p4, p0, Lajr;->mTimestamp:J

    .line 161
    iput-wide p6, p0, Lajr;->mViewedTimestamp:J

    .line 162
    iput p8, p0, Lajr;->mMediaType:I

    .line 163
    iput-object p9, p0, Lajr;->mMediaUrl:Ljava/lang/String;

    .line 164
    iput-object p10, p0, Lajr;->mThumbnailUrl:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p11

    iput-object v0, p0, Lajr;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 166
    move-object/from16 v0, p12

    iput-object v0, p0, Lajr;->mUsername:Ljava/lang/String;

    .line 167
    move/from16 v0, p13

    int-to-double v2, v0

    iput-wide v2, p0, Lajr;->mCanonicalDisplayTime:D

    .line 168
    new-instance v2, Lbgz;

    invoke-direct {v2}, Lbgz;-><init>()V

    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgz;->a(Ljava/lang/Long;)Lbgz;

    move-result-object v2

    invoke-static/range {p17 .. p18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbgz;->a(Ljava/lang/Double;)Lbgz;

    move-result-object v2

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Lbgz;->a(Ljava/lang/String;)Lbgz;

    move-result-object v2

    iput-object v2, p0, Lajr;->mCaptionParameters:Lbgz;

    .line 170
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lajr;->mCaptionOrientation:J

    .line 171
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lajr;->mCaptionPosition:D

    .line 172
    move-object/from16 v0, p14

    iput-object v0, p0, Lajr;->mCaptionText:Ljava/lang/String;

    .line 173
    move/from16 v0, p19

    iput-boolean v0, p0, Lajr;->mHasBeenViewed:Z

    .line 174
    move/from16 v0, p19

    iput-boolean v0, p0, Lajr;->mWasOpened:Z

    .line 175
    move/from16 v0, p20

    iput-boolean v0, p0, Lajr;->mIsScreenshotted:Z

    .line 176
    move/from16 v0, p21

    iput-boolean v0, p0, Lajr;->mFailed:Z

    .line 177
    move/from16 v0, p22

    iput-boolean v0, p0, Lajr;->mZipped:Z

    .line 178
    move-object/from16 v0, p23

    iput-object v0, p0, Lajr;->mFilterId:Ljava/lang/String;

    .line 179
    move/from16 v0, p24

    iput-boolean v0, p0, Lajr;->mWas404ResponseReceived:Z

    .line 180
    move/from16 v0, p25

    iput-boolean v0, p0, Lajr;->mIsShared:Z

    .line 181
    move/from16 v0, p26

    iput-boolean v0, p0, Lajr;->mNeedsAuth:Z

    .line 182
    move/from16 v0, p27

    iput-boolean v0, p0, Lajr;->mCanAdFollow:Z

    .line 183
    move-wide/from16 v0, p28

    iput-wide v0, p0, Lajr;->mExpirationTimestamp:J

    .line 184
    move-object/from16 v0, p30

    iput-object v0, p0, Lajr;->mStoryFilterId:Ljava/lang/String;

    .line 185
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 197
    invoke-direct {p0}, Lajr;-><init>()V

    .line 198
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lajr;->mUsername:Ljava/lang/String;

    .line 199
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lajr;->mClientId:Ljava/lang/String;

    .line 200
    iput-boolean p3, p0, Lajr;->mIsShared:Z

    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lajr;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    return-void
.end method

.method public static au()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/bq/auth_story_thumbnails"

    invoke-static {v1}, Lazm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bq/auth_story_thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final I()Lawy;
    .locals 5
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    sget-object v0, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    iget-object v2, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Lawy;

    sget-object v2, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    iget-object v3, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lawy;-><init>(Lawp;Ljava/lang/String;Layc;)V

    .line 379
    :goto_0
    return-object v0

    .line 367
    :cond_0
    sget-object v0, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-unzippedbitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Lawy;

    sget-object v2, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-unzippedbitmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lawy;-><init>(Lawp;Ljava/lang/String;Layc;)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lajr;->i()Ljava/lang/String;

    move-result-object v2

    .line 375
    if-eqz v2, :cond_2

    sget-object v0, Lawq;->STORY_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {v0, v2}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    new-instance v0, Lawy;

    sget-object v1, Lawq;->STORY_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {p0}, Lajr;->K()Layc;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lawy;-><init>(Lawp;Ljava/lang/String;Layc;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 379
    goto :goto_0
.end method

.method public final J()Lawy;
    .locals 4
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 389
    sget-object v0, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    iget-object v2, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Lawy;

    sget-object v2, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    iget-object v3, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lawy;-><init>(Lawp;Ljava/lang/String;Layc;)V

    .line 397
    :goto_0
    return-object v0

    .line 392
    :cond_0
    invoke-virtual {p0}, Lajr;->i()Ljava/lang/String;

    move-result-object v2

    .line 393
    if-eqz v2, :cond_1

    sget-object v0, Lawq;->STORY_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {v0, v2}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    new-instance v0, Lawy;

    sget-object v1, Lawq;->STORY_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {p0}, Lajr;->K()Layc;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lawy;-><init>(Lawp;Ljava/lang/String;Layc;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 397
    goto :goto_0
.end method

.method public final declared-synchronized K()Layc;
    .locals 3

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lajr;->mMediaIv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Layk;

    invoke-direct {v0}, Layk;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v1, p0, Lajr;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Lajr;->mMediaIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public L()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 545
    iget v2, p0, Lajr;->mMediaType:I

    if-nez v2, :cond_2

    .line 546
    invoke-virtual {p0}, Lajr;->I()Lawy;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 546
    goto :goto_0

    .line 548
    :cond_2
    invoke-virtual {p0}, Lajr;->J()Lawy;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public M()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 556
    iget-boolean v1, p0, Lajr;->mWas404ResponseReceived:Z

    if-eqz v1, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v0

    .line 561
    :cond_1
    invoke-virtual {p0}, Lajr;->ai()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Laxa;->sExternalCacheDirectory:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 565
    :cond_2
    invoke-super {p0}, Laje;->M()Z

    move-result v0

    goto :goto_0
.end method

.method public final U()J
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    if-nez v0, :cond_0

    .line 447
    iget-wide v0, p0, Lajr;->mCaptionOrientation:J

    .line 450
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    invoke-virtual {v0}, Lbgz;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final V()D
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    if-nez v0, :cond_0

    .line 456
    iget-wide v0, p0, Lajr;->mCaptionPosition:D

    .line 459
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lajr;->mCaptionParameters:Lbgz;

    invoke-virtual {v0}, Lbgz;->d()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public final W()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lajr;->mTimestamp:J

    return-wide v0
.end method

.method public Y()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(I)I
    .locals 1

    .prologue
    .line 696
    invoke-virtual {p0}, Lajr;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 4

    .prologue
    .line 653
    iget-wide v0, p0, Lajr;->mTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 654
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final declared-synchronized a(Laxu;)V
    .locals 1

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Laxu;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lajr;->mMediaKey:Ljava/lang/String;

    .line 519
    iget-object v0, p1, Laxu;->mIv:Ljava/lang/String;

    iput-object v0, p0, Lajr;->mMediaIv:Ljava/lang/String;

    .line 520
    iget-object v0, p1, Laxu;->mThumbnailIv:Ljava/lang/String;

    iput-object v0, p0, Lajr;->mThumbnailIv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aA()Layc;
    .locals 3

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lajr;->mThumbnailIv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Layk;

    invoke-direct {v0}, Layk;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v1, p0, Lajr;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Lajr;->mThumbnailIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final aB()Laxu;
    .locals 4

    .prologue
    .line 509
    new-instance v0, Laxu;

    iget-object v1, p0, Lajr;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Lajr;->mMediaIv:Ljava/lang/String;

    iget-object v3, p0, Lajr;->mThumbnailIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Laxu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final aC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lajr;->mNeedsAuth:Z

    if-eqz v0, :cond_0

    .line 525
    invoke-static {}, Lajr;->au()Ljava/lang/String;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    .line 526
    :cond_0
    invoke-static {}, Lbfr;->a()Lbfr;

    invoke-static {}, Lbfr;->d()Z

    .line 528
    iget-object v0, p0, Lajr;->mThumbnailUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public final aD()Z
    .locals 4

    .prologue
    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lajr;->mExpirationTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aE()V
    .locals 4

    .prologue
    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lajr;->mTimeToExpiration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lajr;->mExpirationTimestamp:J

    .line 582
    return-void
.end method

.method public final aF()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lajr;->mFailed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lajr;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aG()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lajr;->mWas404ResponseReceived:Z

    .line 612
    iput-boolean v0, p0, Lajr;->mHasBeenViewed:Z

    .line 613
    return-void
.end method

.method public final aH()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 682
    iget-object v1, p0, Lajr;->mId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 683
    const-string v1, "StorySnap"

    const-string v2, "Attempting to check if snap is a brand snap when id is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lajr;->mId:Ljava/lang/String;

    const-string v1, "BRAND_SNAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final aI()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lajr;->mAdPlacementMetadata:Lbgv;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ab()Z
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public final ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    const-string v0, "STORIES"

    return-object v0
.end method

.method public ar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lajr;->mNeedsAuth:Z

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/bq/auth_story_blob"

    invoke-static {v1}, Lazm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bq/auth_story_blob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    .line 347
    :cond_0
    invoke-static {}, Lbfr;->a()Lbfr;

    invoke-static {}, Lbfr;->d()Z

    .line 348
    iget-object v0, p0, Lajr;->mMediaUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public as()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public at()I
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public final av()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 250
    iget-boolean v0, p0, Lajr;->mNeedsAuth:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lajr;->mId:Ljava/lang/String;

    .line 253
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lajr;->mThumbnailUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public final aw()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ax()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lajr;->D()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lajr;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    invoke-virtual {v0}, Lbje;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    invoke-virtual {v0}, Lbje;->b()Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 282
    :cond_1
    iget-object v0, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    invoke-virtual {v0}, Lbje;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ay()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lajr;->mHasBeenViewed:Z

    .line 318
    iput-boolean v0, p0, Lajr;->mWasOpened:Z

    .line 319
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lajr;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 320
    return-void
.end method

.method public final az()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 332
    sget-object v1, Lawq;->MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

    iget-object v2, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lawp;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    invoke-virtual {p0}, Lajr;->av()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lawq;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Lawp;

    invoke-virtual {v2, v1}, Lawp;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 417
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 418
    iget-wide v0, p0, Lajr;->mTimestamp:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    const-string v1, "0 minutes ago"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "in 0 minutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    :cond_0
    const v0, 0x7f0c0158

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_1
    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 49
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1}, Lajr;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 224
    invoke-super {p0}, Laje;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lajr;->mViewedTimestamp:J

    .line 304
    iput-boolean v2, p0, Lajr;->mIsTimerRunning:Z

    .line 305
    invoke-virtual {p0, v2}, Lajr;->c(Z)V

    .line 306
    iput-boolean v1, p0, Lajr;->mHasBeenViewed:Z

    .line 307
    iput-boolean v1, p0, Lajr;->mWasOpened:Z

    .line 308
    invoke-virtual {p0}, Lajr;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    :goto_0
    iput-object v0, p0, Lajr;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 311
    if-eqz p1, :cond_0

    .line 312
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    iget-object v3, v0, Lajv;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-virtual {p0}, Lajr;->aq()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-super {p0}, Laje;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lajs;

    invoke-super {p0}, Laje;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lajr;->E()J

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7, v0}, Lajs;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_0
    return-void

    .line 308
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 312
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 661
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 668
    :goto_0
    return v0

    .line 663
    :cond_0
    instance-of v0, p1, Lajr;

    if-nez v0, :cond_1

    .line 664
    const/4 v0, 0x0

    goto :goto_0

    .line 667
    :cond_1
    check-cast p1, Lajr;

    .line 668
    iget-object v0, p0, Lajr;->mClientId:Ljava/lang/String;

    iget-object v1, p1, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lajr;->mIsLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lajr;->mCacheKeyOverride:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lajr;->mCacheKeyOverride:Ljava/lang/String;

    .line 237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lajr;->mId:Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lajr;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 607
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lava;->a(Lajv;Lajr;Z)V

    .line 608
    return-void
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lajr;->mHasBeenViewed:Z

    return v0
.end method
