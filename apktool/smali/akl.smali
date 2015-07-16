.class public Lakl;
.super Laka;
.source "SourceFile"


# static fields
.field private static final AUTH_STORY_DOWNLOAD_ENDPOINT:Ljava/lang/String; = "/bq/auth_story_blob"

.field private static final AUTH_THUMBNAIL_DOWNLOAD_ENDPOINT:Ljava/lang/String; = "/bq/auth_story_thumbnails"

.field private static final TAG:Ljava/lang/String; = "StorySnap"


# instance fields
.field private mAdPlacementMetadata:Lbhv;

.field public mCanAdFollow:Z

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
    .line 105
    invoke-direct {p0}, Laka;-><init>()V

    .line 91
    sget-object v0, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->ALREADY_LOADED:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    iput-object v0, p0, Lakl;->mLoadingContext:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    .line 106
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lakl;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Laji;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lakl;-><init>()V

    .line 186
    iput-object p2, p0, Lakl;->mStoryId:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lakl;->mUsername:Ljava/lang/String;

    .line 188
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iput-object v0, p0, Lakl;->mClientId:Ljava/lang/String;

    .line 189
    iget-object v0, p1, Laji;->mCaptionText:Ljava/lang/String;

    iput-object v0, p0, Lakl;->mCaptionText:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Laji;->h()I

    move-result v0

    iput v0, p0, Lakl;->mMediaType:I

    .line 191
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lakl;->mFailed:Z

    .line 192
    iget-boolean v0, p1, Lcom/snapchat/android/model/Mediabryo;->mIsZipUpload:Z

    iput-boolean v0, p0, Lakl;->mZipped:Z

    .line 193
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lakl;->mTimestamp:J

    .line 194
    iget-wide v0, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    iput-wide v0, p0, Lakl;->mCanonicalDisplayTime:D

    .line 195
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lbkh;)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lakl;-><init>()V

    .line 111
    invoke-virtual {p1}, Lbkh;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lakl;->mHasMatureContent:Z

    .line 112
    invoke-virtual {p1}, Lbkh;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mUsername:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lbkh;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mId:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lbkh;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mClientId:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lbkh;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mMediaId:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lbkh;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lakl;->mTimestamp:J

    .line 117
    invoke-virtual {p1}, Lbkh;->l()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lakl;->mMediaType:I

    .line 118
    invoke-virtual {p1}, Lbkh;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mMediaUrl:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lbkh;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mMediaIv:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lbkh;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mMediaKey:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lbkh;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mThumbnailIv:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lbkh;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mThumbnailUrl:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lbkh;->m()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lakl;->mCanonicalDisplayTime:D

    .line 124
    invoke-virtual {p1}, Lbkh;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mCaptionText:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lbkh;->p()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lakl;->mZipped:Z

    .line 126
    invoke-virtual {p1}, Lbkh;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mFilterId:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lbkh;->s()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lakl;->mIsShared:Z

    .line 128
    invoke-virtual {p1}, Lbkh;->u()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lakl;->mNeedsAuth:Z

    .line 129
    invoke-virtual {p1}, Lbkh;->v()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lakl;->mCanAdFollow:Z

    .line 130
    invoke-virtual {p1}, Lbkh;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lakl;->mTimeToExpiration:J

    .line 131
    invoke-virtual {p1}, Lbkh;->t()Lbhv;

    move-result-object v0

    iput-object v0, p0, Lakl;->mAdPlacementMetadata:Lbhv;

    .line 132
    invoke-virtual {p1}, Lbkh;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakl;->mStoryFilterId:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;ILjava/lang/String;ZZZZLjava/lang/String;ZZZZJLjava/lang/String;)V
    .locals 4

    .prologue
    .line 141
    invoke-direct {p0}, Lakl;-><init>()V

    .line 142
    iput-object p1, p0, Lakl;->mId:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lakl;->mClientId:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lakl;->mMediaId:Ljava/lang/String;

    .line 145
    iput-wide p4, p0, Lakl;->mTimestamp:J

    .line 146
    iput-wide p6, p0, Lakl;->mViewedTimestamp:J

    .line 147
    iput p8, p0, Lakl;->mMediaType:I

    .line 148
    iput-object p9, p0, Lakl;->mMediaUrl:Ljava/lang/String;

    .line 149
    iput-object p10, p0, Lakl;->mThumbnailUrl:Ljava/lang/String;

    .line 150
    iput-object p11, p0, Lakl;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 151
    move-object/from16 v0, p12

    iput-object v0, p0, Lakl;->mUsername:Ljava/lang/String;

    .line 152
    move/from16 v0, p13

    int-to-double v2, v0

    iput-wide v2, p0, Lakl;->mCanonicalDisplayTime:D

    .line 153
    move-object/from16 v0, p14

    iput-object v0, p0, Lakl;->mCaptionText:Ljava/lang/String;

    .line 154
    move/from16 v0, p15

    iput-boolean v0, p0, Lakl;->mHasBeenViewed:Z

    .line 155
    move/from16 v0, p15

    iput-boolean v0, p0, Lakl;->mWasOpened:Z

    .line 156
    move/from16 v0, p16

    iput-boolean v0, p0, Lakl;->mIsScreenshotted:Z

    .line 157
    move/from16 v0, p17

    iput-boolean v0, p0, Lakl;->mFailed:Z

    .line 158
    move/from16 v0, p18

    iput-boolean v0, p0, Lakl;->mZipped:Z

    .line 159
    move-object/from16 v0, p19

    iput-object v0, p0, Lakl;->mFilterId:Ljava/lang/String;

    .line 160
    move/from16 v0, p20

    iput-boolean v0, p0, Lakl;->mWas404ResponseReceived:Z

    .line 161
    move/from16 v0, p21

    iput-boolean v0, p0, Lakl;->mIsShared:Z

    .line 162
    move/from16 v0, p22

    iput-boolean v0, p0, Lakl;->mNeedsAuth:Z

    .line 163
    move/from16 v0, p23

    iput-boolean v0, p0, Lakl;->mCanAdFollow:Z

    .line 164
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lakl;->mExpirationTimestamp:J

    .line 165
    move-object/from16 v0, p26

    iput-object v0, p0, Lakl;->mStoryFilterId:Ljava/lang/String;

    .line 166
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 178
    invoke-direct {p0}, Lakl;-><init>()V

    .line 179
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lakl;->mUsername:Ljava/lang/String;

    .line 180
    invoke-static {p2}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lakl;->mClientId:Ljava/lang/String;

    .line 181
    iput-boolean p3, p0, Lakl;->mIsShared:Z

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 174
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lakl;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    return-void
.end method

.method public static as()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/bq/auth_story_thumbnails"

    invoke-static {v1}, Lbal;->b(Ljava/lang/String;)Ljava/lang/String;

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
.method public final A()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lakl;->mHasBeenViewed:Z

    return v0
.end method

.method public final J()Laxw;
    .locals 5
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    sget-object v0, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    iget-object v2, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Laxw;

    sget-object v2, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    iget-object v3, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Laxw;-><init>(Laxn;Ljava/lang/String;Laza;)V

    .line 325
    :goto_0
    return-object v0

    .line 313
    :cond_0
    sget-object v0, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-unzippedbitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Laxw;

    sget-object v2, Laxo;->MY_SNAP_IMAGE_CACHE:Laxn;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-unzippedbitmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Laxw;-><init>(Laxn;Ljava/lang/String;Laza;)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p0}, Lakl;->i()Ljava/lang/String;

    move-result-object v2

    .line 321
    if-eqz v2, :cond_2

    sget-object v0, Laxo;->STORY_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {v0, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    new-instance v0, Laxw;

    sget-object v1, Laxo;->STORY_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {p0}, Lakl;->L()Laza;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Laxw;-><init>(Laxn;Ljava/lang/String;Laza;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 325
    goto :goto_0
.end method

.method public final K()Laxw;
    .locals 4
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 335
    sget-object v0, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    iget-object v2, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Laxw;

    sget-object v2, Laxo;->MY_SNAP_VIDEO_CACHE:Laxn;

    iget-object v3, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Laxw;-><init>(Laxn;Ljava/lang/String;Laza;)V

    .line 343
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lakl;->i()Ljava/lang/String;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_1

    sget-object v0, Laxo;->STORY_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    new-instance v0, Laxw;

    sget-object v1, Laxo;->STORY_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {p0}, Lakl;->L()Laza;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Laxw;-><init>(Laxn;Ljava/lang/String;Laza;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 343
    goto :goto_0
.end method

.method public final declared-synchronized L()Laza;
    .locals 3

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lakl;->mMediaIv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Lazi;

    invoke-direct {v0}, Lazi;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v1, p0, Lakl;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Lakl;->mMediaIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public M()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 465
    iget v2, p0, Lakl;->mMediaType:I

    if-nez v2, :cond_2

    .line 466
    invoke-virtual {p0}, Lakl;->J()Laxw;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 466
    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {p0}, Lakl;->K()Laxw;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public N()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 476
    iget-boolean v1, p0, Lakl;->mWas404ResponseReceived:Z

    if-eqz v1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    invoke-virtual {p0}, Lakl;->ag()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Laxy;->sExternalCacheDirectory:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 485
    :cond_2
    invoke-super {p0}, Laka;->N()Z

    move-result v0

    goto :goto_0
.end method

.method public final U()J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lakl;->mTimestamp:J

    return-wide v0
.end method

.method public W()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public Z()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(I)I
    .locals 1

    .prologue
    .line 612
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 4

    .prologue
    .line 569
    iget-wide v0, p0, Lakl;->mTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 570
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final declared-synchronized a(Lays;)V
    .locals 1

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lays;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lakl;->mMediaKey:Ljava/lang/String;

    .line 439
    iget-object v0, p1, Lays;->mIv:Ljava/lang/String;

    iput-object v0, p0, Lakl;->mMediaIv:Ljava/lang/String;

    .line 440
    iget-object v0, p1, Lays;->mThumbnailIv:Ljava/lang/String;

    iput-object v0, p0, Lakl;->mThumbnailIv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final aA()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lakl;->mFailed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lakl;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aB()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lakl;->mWas404ResponseReceived:Z

    .line 528
    iput-boolean v0, p0, Lakl;->mHasBeenViewed:Z

    .line 529
    return-void
.end method

.method public final aC()Z
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lakl;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 603
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lakl;->mId:Ljava/lang/String;

    const-string v1, "BRAND_SNAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final aD()Z
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lakl;->mAdPlacementMetadata:Lbhv;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    const-string v0, "STORIES"

    return-object v0
.end method

.method public ap()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-boolean v0, p0, Lakl;->mNeedsAuth:Z

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/bq/auth_story_blob"

    invoke-static {v1}, Lbal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bq/auth_story_blob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .line 293
    :cond_0
    invoke-static {}, Lbgr;->a()Lbgr;

    invoke-static {}, Lbgr;->d()Z

    .line 294
    iget-object v0, p0, Lakl;->mMediaUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public aq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    return-object v0
.end method

.method public ar()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public final at()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 223
    iget-boolean v0, p0, Lakl;->mNeedsAuth:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lakl;->mId:Ljava/lang/String;

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lakl;->mThumbnailUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public final au()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 278
    sget-object v1, Laxo;->MY_STORY_SNAP_THUMBNAIL_CACHE:Laxn;

    iget-object v2, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laxn;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    invoke-virtual {p0}, Lakl;->at()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Laxo;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v2, v1}, Laxn;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized av()Laza;
    .locals 3

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lakl;->mThumbnailIv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Lazi;

    invoke-direct {v0}, Lazi;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v1, p0, Lakl;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Lakl;->mThumbnailIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final aw()Lays;
    .locals 4

    .prologue
    .line 429
    new-instance v0, Lays;

    iget-object v1, p0, Lakl;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Lakl;->mMediaIv:Ljava/lang/String;

    iget-object v3, p0, Lakl;->mThumbnailIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lays;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final ax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lakl;->mNeedsAuth:Z

    if-eqz v0, :cond_0

    .line 445
    invoke-static {}, Lakl;->as()Ljava/lang/String;

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    .line 446
    :cond_0
    invoke-static {}, Lbgr;->a()Lbgr;

    invoke-static {}, Lbgr;->d()Z

    .line 448
    iget-object v0, p0, Lakl;->mThumbnailUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public final ay()Z
    .locals 4

    .prologue
    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lakl;->mExpirationTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final az()V
    .locals 4

    .prologue
    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lakl;->mTimeToExpiration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lakl;->mExpirationTimestamp:J

    .line 502
    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 363
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 364
    iget-wide v0, p0, Lakl;->mTimestamp:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "0 minutes ago"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "in 0 minutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :cond_0
    const v0, 0x7f0c0158

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_1
    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1}, Lakl;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 205
    invoke-super {p0}, Laka;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Z)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lakl;->mViewedTimestamp:J

    .line 251
    iput-boolean v1, p0, Lakl;->mIsTimerRunning:Z

    .line 252
    invoke-virtual {p0, v1}, Lakl;->c(Z)V

    .line 253
    iput-boolean v0, p0, Lakl;->mHasBeenViewed:Z

    .line 254
    iput-boolean v0, p0, Lakl;->mWasOpened:Z

    .line 255
    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v2, p0, Lakl;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v2

    iget-object v2, v2, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-virtual {p0}, Lakl;->ao()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-super {p0}, Laka;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lakm;

    invoke-super {p0}, Laka;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lakl;->F()J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7, v0}, Lakm;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 258
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 577
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 584
    :goto_0
    return v0

    .line 579
    :cond_0
    instance-of v0, p1, Lakl;

    if-nez v0, :cond_1

    .line 580
    const/4 v0, 0x0

    goto :goto_0

    .line 583
    :cond_1
    check-cast p1, Lakl;

    .line 584
    iget-object v0, p0, Lakl;->mClientId:Ljava/lang/String;

    iget-object v1, p1, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lakl;->mIsLoading:Z

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
    .line 589
    iget-object v0, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lakl;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lakl;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lavy;->a(Lakp;Lakl;Z)V

    .line 524
    return-void
.end method
