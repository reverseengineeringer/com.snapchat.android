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
        "Lakl;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lakr;

.field private final b:Layv;

.field private final c:Lazf;


# direct methods
.method public constructor <init>(Lakr;Layv;Lazf;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/snapchat/android/database/table/StorySnapTable;->a:Lakr;

    .line 33
    iput-object p2, p0, Lcom/snapchat/android/database/table/StorySnapTable;->b:Layv;

    .line 34
    iput-object p3, p0, Lcom/snapchat/android/database/table/StorySnapTable;->c:Lazf;

    .line 35
    return-void
.end method

.method public static a(Lakl;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v3, Labc;

    invoke-direct {v3}, Labc;-><init>()V

    .line 93
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_SNAP_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 94
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v4, p0, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 95
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v4, p0, Lakl;->mMediaId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 96
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->U()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Labc;->a(Laav;J)Labc;

    .line 97
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->ai()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Labc;->a(Laav;I)Labc;

    .line 98
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->ap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 99
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->THUMBNAIL_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->ax()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 101
    invoke-virtual {p0}, Lakl;->af()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    .line 102
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STATUS:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v4, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 104
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->USERNAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v4, p0, Lakl;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 105
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->G()D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Labc;->a(Laav;D)Labc;

    .line 107
    invoke-virtual {p0}, Lakl;->T()Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v3, v4, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 110
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_VIEWED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Labc;->a(Laav;I)Labc;

    .line 111
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->ao()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v4, v0}, Labc;->a(Laav;I)Labc;

    .line 112
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->F()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Labc;->a(Laav;J)Labc;

    .line 114
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lakl;->d()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 116
    :cond_2
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3, v0, v2}, Labc;->a(Laav;I)Labc;

    .line 122
    :goto_4
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_FAILED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v0, p0, Lakl;->mFailed:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {v3, v4, v0}, Labc;->a(Laav;I)Labc;

    .line 123
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {v3, v4, v0}, Labc;->a(Laav;I)Labc;

    .line 124
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p0}, Lakl;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 125
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->WAS_404_RESPONSE_RECEIVED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v0, p0, Lakl;->mWas404ResponseReceived:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_7
    invoke-virtual {v3, v4, v0}, Labc;->a(Laav;I)Labc;

    .line 126
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v4, p0, Lakl;->mStoryId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 127
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SHARED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v0, p0, Lakl;->mIsShared:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_8
    invoke-virtual {v3, v4, v0}, Labc;->a(Laav;I)Labc;

    .line 128
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->NEEDS_AUTH:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v4, p0, Lakl;->mNeedsAuth:Z

    if-eqz v4, :cond_d

    :goto_9
    invoke-virtual {v3, v0, v1}, Labc;->a(Laav;I)Labc;

    .line 129
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->AD_CAN_FOLLOW:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-boolean v1, p0, Lakl;->mCanAdFollow:Z

    invoke-virtual {v3, v0, v1}, Labc;->a(Laav;Z)Labc;

    .line 130
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->EXPIRATION_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-wide v4, p0, Lakl;->mExpirationTimestamp:J

    invoke-virtual {v3, v0, v4, v5}, Labc;->a(Laav;J)Labc;

    .line 131
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    iget-object v1, p0, Lakl;->mStoryFilterId:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    .line 133
    iget-object v0, v3, Labc;->a:Landroid/content/ContentValues;

    goto/16 :goto_0

    .line 102
    :cond_3
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 110
    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 111
    goto/16 :goto_3

    .line 118
    :cond_6
    iget-object v0, v0, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-virtual {p0}, Lakl;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 119
    :goto_a
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-eqz v0, :cond_8

    move v0, v1

    :goto_b
    invoke-virtual {v3, v4, v0}, Labc;->a(Laav;I)Labc;

    goto :goto_4

    :cond_7
    move v0, v2

    .line 118
    goto :goto_a

    :cond_8
    move v0, v2

    .line 119
    goto :goto_b

    :cond_9
    move v0, v2

    .line 122
    goto :goto_5

    :cond_a
    move v0, v2

    .line 123
    goto :goto_6

    :cond_b
    move v0, v2

    .line 125
    goto :goto_7

    :cond_c
    move v0, v2

    .line 127
    goto :goto_8

    :cond_d
    move v1, v2

    .line 128
    goto :goto_9
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lakl;

    invoke-static {p1}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Lakl;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 29

    .prologue
    .line 23
    new-instance v2, Lakl;

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

    sget-object v17, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_VIEWED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v17 .. v17}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    :goto_0
    sget-object v18, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v18 .. v18}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_1
    sget-object v19, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_FAILED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v19 .. v19}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_2
    sget-object v20, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    :goto_3
    sget-object v21, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v21 .. v21}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->WAS_404_RESPONSE_RECEIVED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v22 .. v22}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x1

    :goto_4
    sget-object v23, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SHARED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v23 .. v23}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_7

    const/16 v23, 0x1

    :goto_5
    sget-object v24, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->NEEDS_AUTH:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v24 .. v24}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    if-eqz v24, :cond_8

    const/16 v24, 0x1

    :goto_6
    sget-object v25, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->AD_CAN_FOLLOW:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v25 .. v25}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_9

    const/16 v25, 0x1

    :goto_7
    sget-object v26, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->EXPIRATION_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v26 .. v26}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    sget-object v28, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v28 .. v28}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v2 .. v28}, Lakl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;ILjava/lang/String;ZZZZLjava/lang/String;ZZZZJLjava/lang/String;)V

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->getColumnNumber()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_0

    new-instance v5, Lakm;

    invoke-virtual {v2}, Lakl;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lakl;->F()J

    move-result-wide v8

    invoke-virtual {v2}, Lakl;->ao()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_9
    invoke-direct {v5, v6, v8, v9, v3}, Lakm;-><init>(Ljava/lang/String;JI)V

    iget-object v3, v4, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    invoke-virtual {v2}, Lakl;->d()Ljava/lang/String;

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

    iput-object v3, v2, Lakl;->mStoryId:Ljava/lang/String;

    :cond_1
    return-object v2

    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_5

    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_6

    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_7

    :cond_a
    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;)V"
        }
    .end annotation
.end method

.method public final b(Lakp;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable;->b:Layv;

    iget-object v1, p0, Lcom/snapchat/android/database/table/StorySnapTable;->c:Lazf;

    iget-object v2, v0, Layv;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v2, v1}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v4

    move v2, v4

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 154
    new-array v0, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/StorySnapTable;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 158
    invoke-virtual {p0, v5}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Ljava/util/List;)V

    .line 172
    :goto_1
    return-void

    .line 152
    :cond_1
    invoke-virtual {v0, v2}, Layv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_2

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v1, v0, v4

    aput-object v2, v0, v3

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

    check-cast v1, Lakl;

    iget-object v0, v1, Lakl;->mMediaId:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lays;

    if-nez v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    move v2, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Lakl;->a(Lays;)V

    goto :goto_2

    .line 161
    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/StorySnapTable;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 166
    invoke-static {}, Lakr;->az()V

    .line 170
    new-instance v0, Lqq;

    invoke-direct {v0}, Lqq;-><init>()V

    invoke-virtual {v0}, Lqq;->execute()V

    goto :goto_1
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->values()[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 138
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 139
    invoke-static {}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->values()[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 140
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

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-object v1
.end method
