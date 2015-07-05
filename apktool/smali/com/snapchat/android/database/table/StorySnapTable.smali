.class public abstract Lcom/snapchat/android/database/table/StorySnapTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lajr;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lajx;

.field private final b:Laxx;

.field private final c:Layh;


# direct methods
.method public constructor <init>(Lajx;Laxx;Layh;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/snapchat/android/database/table/StorySnapTable;->a:Lajx;

    .line 35
    iput-object p2, p0, Lcom/snapchat/android/database/table/StorySnapTable;->b:Laxx;

    .line 36
    iput-object p3, p0, Lcom/snapchat/android/database/table/StorySnapTable;->c:Layh;

    .line 37
    return-void
.end method

.method public static a(Lajr;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 105
    :cond_0
    new-instance v3, Laad;

    invoke-direct {v3}, Laad;-><init>()V

    .line 106
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_SNAP_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 107
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v4, p0, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 108
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v4, p0, Lajr;->mMediaId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 109
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->W()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Laad;->a(Lzw;J)Laad;

    .line 110
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->ak()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;I)Laad;

    .line 111
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->ar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 112
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->THUMBNAIL_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->aC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 114
    invoke-virtual {p0}, Lajr;->ah()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    .line 115
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STATUS:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 117
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->USERNAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v4, p0, Lajr;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 118
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->F()D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Laad;->a(Lzw;D)Laad;

    .line 120
    iget-object v4, p0, Lajr;->mCaptionParameters:Lbgz;

    .line 121
    invoke-virtual {p0}, Lajr;->T()Ljava/lang/String;

    move-result-object v0

    .line 123
    if-nez v4, :cond_5

    .line 124
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 125
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_ORIENTATION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3, v0, v2}, Laad;->a(Lzw;I)Laad;

    .line 126
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_POSITION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3, v0, v2}, Laad;->a(Lzw;I)Laad;

    .line 134
    :goto_2
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_VIEWED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    .line 135
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->aq()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    .line 136
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->E()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Laad;->a(Lzw;J)Laad;

    .line 138
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lajr;->d()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    .line 140
    :cond_2
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3, v0, v2}, Laad;->a(Lzw;I)Laad;

    .line 146
    :goto_5
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_FAILED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v0, p0, Lajr;->mFailed:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_6
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    .line 147
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_7
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    .line 148
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lajr;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 149
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->WAS_404_RESPONSE_RECEIVED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v0, p0, Lajr;->mWas404ResponseReceived:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_8
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    .line 150
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v4, p0, Lajr;->mStoryId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 151
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SHARED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v0, p0, Lajr;->mIsShared:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_9
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    .line 152
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->NEEDS_AUTH:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v4, p0, Lajr;->mNeedsAuth:Z

    if-eqz v4, :cond_10

    :goto_a
    invoke-virtual {v3, v0, v1}, Laad;->a(Lzw;I)Laad;

    .line 153
    iget-object v0, p0, Lajr;->mSponsoredStoryMetadata:Lbje;

    .line 154
    if-eqz v0, :cond_3

    .line 155
    sget-object v1, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_PREVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, Lbje;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 156
    sget-object v1, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_POSTVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, Lbje;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 157
    sget-object v1, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_SPONSOR:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, Lbje;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 158
    sget-object v1, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_TAG_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, Lbje;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 160
    :cond_3
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->AD_CAN_FOLLOW:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v1, p0, Lajr;->mCanAdFollow:Z

    invoke-virtual {v3, v0, v1}, Laad;->a(Lzw;Z)Laad;

    .line 161
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->EXPIRATION_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-wide v4, p0, Lajr;->mExpirationTimestamp:J

    invoke-virtual {v3, v0, v4, v5}, Laad;->a(Lzw;J)Laad;

    .line 162
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v1, p0, Lajr;->mStoryFilterId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 164
    iget-object v0, v3, Laad;->a:Landroid/content/ContentValues;

    goto/16 :goto_0

    .line 115
    :cond_4
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 128
    :cond_5
    sget-object v5, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-nez v0, :cond_6

    invoke-virtual {v4}, Lbgz;->a()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v3, v5, v0}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    .line 130
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_ORIENTATION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v4}, Lbgz;->b()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Laad;->a(Lzw;J)Laad;

    .line 131
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_POSITION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v4}, Lbgz;->d()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Laad;->a(Lzw;D)Laad;

    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 134
    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 135
    goto/16 :goto_4

    .line 142
    :cond_9
    iget-object v0, v0, Lajv;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-virtual {p0}, Lajr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 143
    :goto_b
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-eqz v0, :cond_b

    move v0, v1

    :goto_c
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    goto/16 :goto_5

    :cond_a
    move v0, v2

    .line 142
    goto :goto_b

    :cond_b
    move v0, v2

    .line 143
    goto :goto_c

    :cond_c
    move v0, v2

    .line 146
    goto/16 :goto_6

    :cond_d
    move v0, v2

    .line 147
    goto/16 :goto_7

    :cond_e
    move v0, v2

    .line 149
    goto/16 :goto_8

    :cond_f
    move v0, v2

    .line 151
    goto/16 :goto_9

    :cond_10
    move v1, v2

    .line 152
    goto/16 :goto_a
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lajr;

    invoke-static {p1}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Lajr;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 33

    .prologue
    .line 25
    new-instance v2, Lajr;

    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_SNAP_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v6}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v8, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v8}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    sget-object v10, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v10}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    sget-object v11, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v11}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->THUMBNAIL_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v12}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STATUS:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v13}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->fromString(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v13

    sget-object v14, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->USERNAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v14}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v15}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    sget-object v16, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v16 .. v16}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_ORIENTATION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v17 .. v17}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sget-object v19, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_POSITION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v19 .. v19}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    sget-object v21, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_VIEWED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v21 .. v21}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x1

    :goto_0
    sget-object v22, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v22 .. v22}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    :goto_1
    sget-object v23, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_FAILED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v23 .. v23}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x1

    :goto_2
    sget-object v24, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v24 .. v24}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_6

    const/16 v24, 0x1

    :goto_3
    sget-object v25, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v25 .. v25}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->WAS_404_RESPONSE_RECEIVED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v26 .. v26}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_7

    const/16 v26, 0x1

    :goto_4
    sget-object v27, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SHARED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v27 .. v27}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_8

    const/16 v27, 0x1

    :goto_5
    sget-object v28, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->NEEDS_AUTH:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v28 .. v28}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_9

    const/16 v28, 0x1

    :goto_6
    sget-object v29, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->AD_CAN_FOLLOW:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v29 .. v29}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_a

    const/16 v29, 0x1

    :goto_7
    sget-object v30, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->EXPIRATION_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v30 .. v30}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    sget-object v32, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v32 .. v32}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v2 .. v32}, Lajr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;ILjava/lang/String;JDZZZZLjava/lang/String;ZZZZJLjava/lang/String;)V

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_0

    new-instance v5, Lajs;

    invoke-virtual {v2}, Lajr;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lajr;->E()J

    move-result-wide v8

    invoke-virtual {v2}, Lajr;->aq()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_9
    invoke-direct {v5, v6, v8, v9, v3}, Lajs;-><init>(Ljava/lang/String;JI)V

    iget-object v3, v4, Lajv;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-virtual {v2}, Lajr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v3, v2, Lajr;->mStoryId:Ljava/lang/String;

    :cond_1
    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_PREVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lbje;

    invoke-direct {v4}, Lbje;-><init>()V

    invoke-virtual {v4, v3}, Lbje;->a(Ljava/lang/String;)Lbje;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_POSTVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbje;->b(Ljava/lang/String;)Lbje;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_SPONSOR:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbje;->c(Ljava/lang/String;)Lbje;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_TAG_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbje;->d(Ljava/lang/String;)Lbje;

    move-result-object v3

    iput-object v3, v2, Lajr;->mSponsoredStoryMetadata:Lbje;

    :cond_2
    return-object v2

    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_4

    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_5

    :cond_9
    const/16 v28, 0x0

    goto/16 :goto_6

    :cond_a
    const/16 v29, 0x0

    goto/16 :goto_7

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_9
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;)V"
        }
    .end annotation
.end method

.method public final b(Lajv;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable;->b:Laxx;

    iget-object v1, p0, Lcom/snapchat/android/database/table/StorySnapTable;->c:Layh;

    iget-object v2, v0, Laxx;->mSlightlySecurePreferences:Layg;

    invoke-virtual {v2, v1}, Layg;->a(Layh;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "CbcSlightlySecurePreferences"

    const-string v2, "Failed to get key %s from SSP."

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v0, v2, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 185
    const-string v0, "StorySnapTable"

    const-string v1, "%s applying %d story snaps to in-memory models"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/StorySnapTable;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p0, v5}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Ljava/util/List;)V

    .line 203
    :goto_1
    return-void

    .line 183
    :cond_1
    invoke-virtual {v0, v2}, Laxx;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v0, "CbcSlightlySecurePreferences"

    const-string v6, "Failed to parse key %s from SSP: \n%s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v1, v7, v4

    aput-object v2, v7, v3

    invoke-static {v0, v6, v7}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lajr;

    iget-object v0, v1, Lajr;->mMediaId:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxu;

    if-nez v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    move v2, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Lajr;->a(Laxu;)V

    goto :goto_2

    .line 192
    :cond_4
    const-string v0, "StorySnapTable"

    const-string v1, "%s clearing all update checksum and trigger new sync all since keys and IVs failed to load"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/StorySnapTable;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Lajx;->aA()V

    .line 201
    new-instance v0, Lqa;

    invoke-direct {v0}, Lqa;-><init>()V

    invoke-virtual {v0}, Lqa;->f()V

    goto :goto_1
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->values()[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 169
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 170
    invoke-static {}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->values()[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->a(Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b(Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-object v1
.end method
