.class public abstract Lcom/snapchat/android/database/table/SnapbryoTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Laji;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 169
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 22
    check-cast p1, Laji;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Labc;

    invoke-direct {v5}, Labc;-><init>()V

    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    iget-object v6, p1, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->VIDEO_URI:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v5, v1, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lakg;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RECIPIENTS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lakg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v6, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->STORY_GROUPS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    iget-object v2, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v1

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajy;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lajy;->mStoryId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    move-object v2, v1

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    iget-object v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADING:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-ne v1, v2, :cond_4

    :cond_3
    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    :cond_4
    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->UPLOAD_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v1

    invoke-virtual {v5, v2, v1}, Labc;->a(Laav;I)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->SEND_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-object v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->ordinal()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Labc;->a(Laav;I)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->POST_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-object v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->ordinal()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Labc;->a(Laav;I)Labc;

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_MUTED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Laji;->m()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    :goto_3
    invoke-virtual {v5, v2, v1}, Labc;->a(Laav;I)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_ZIP_UPLOAD:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-boolean v2, p1, Lcom/snapchat/android/model/Mediabryo;->mIsZipUpload:Z

    if-eqz v2, :cond_7

    :goto_4
    invoke-virtual {v5, v1, v3}, Labc;->a(Laav;I)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIMER_VALUE:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-wide v2, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-virtual {v5, v1, v2, v3}, Labc;->a(Laav;D)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-object v2, p1, Laji;->mCaptionText:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_FIRST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-wide v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfFirstAttempt:J

    invoke-virtual {v5, v1, v2, v3}, Labc;->a(Laav;J)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_LAST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-wide v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfLastAttempt:J

    invoke-virtual {v5, v1, v2, v3}, Labc;->a(Laav;J)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RETRIED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-boolean v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    invoke-virtual {v5, v1, v0}, Labc;->a(Laav;Z)Labc;

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_DISCOVER_SNAP:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v5, v0, v4}, Labc;->a(Laav;Z)Labc;

    :cond_5
    :goto_5
    iget-object v0, v5, Labc;->a:Landroid/content/ContentValues;

    goto/16 :goto_0

    :cond_6
    move v1, v4

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_4

    :cond_8
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lakg;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RECIPIENTS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lakg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    iget-object v1, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADING:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-eq v1, v2, :cond_9

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    if-ne v1, v2, :cond_a

    :cond_9
    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    :cond_a
    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->UPLOAD_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v1

    invoke-virtual {v5, v2, v1}, Labc;->a(Laav;I)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->SEND_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-object v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->ordinal()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Labc;->a(Laav;I)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIMER_VALUE:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-wide v6, p1, Lcom/snapchat/android/model/Mediabryo;->mTimerValueOrDuration:D

    invoke-virtual {v5, v1, v6, v7}, Labc;->a(Laav;D)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-object v2, p1, Laji;->mCaptionText:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_FIRST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-wide v6, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfFirstAttempt:J

    invoke-virtual {v5, v1, v6, v7}, Labc;->a(Laav;J)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_LAST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-wide v6, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfLastAttempt:J

    invoke-virtual {v5, v1, v6, v7}, Labc;->a(Laav;J)Labc;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RETRIED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    iget-boolean v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    invoke-virtual {v5, v1, v0}, Labc;->a(Laav;Z)Labc;

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_MUTED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Laji;->m()Z

    move-result v1

    if-eqz v1, :cond_b

    move v4, v3

    :cond_b
    invoke-virtual {v5, v0, v4}, Labc;->a(Laav;I)Labc;

    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_6
    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->VIDEO_URI:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v5, v1, v0}, Labc;->a(Laav;Ljava/lang/String;)Labc;

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_DISCOVER_SNAP:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v5, v0, v3}, Labc;->a(Laav;Z)Labc;

    goto/16 :goto_5

    :cond_c
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->VIDEO_URI:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Laku$a;

    invoke-direct {v1}, Laku$a;-><init>()V

    :goto_0
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_DISCOVER_SNAP:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    new-instance v4, Lakg;

    invoke-direct {v4}, Lakg;-><init>()V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RECIPIENTS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lakg;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->STORY_GROUPS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    const-string v6, "\\s*,\\s*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "my_story_ads79sdf"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, v4, Lakg;->mPostToStories:Ljava/util/ArrayList;

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v1, Lakf$a;

    invoke-direct {v1}, Lakf$a;-><init>()V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lakg;->mPostToStories:Ljava/util/ArrayList;

    new-instance v7, Lajy;

    invoke-direct {v7, v0, v0}, Lajy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->UPLOAD_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lakg;->a(I)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->SEND_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lakg;->b(I)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->POST_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {}, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->values()[Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    move-result-object v5

    aget-object v0, v5, v0

    iput-object v0, v4, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_FIRST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lakg;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_LAST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lakg;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RETRIED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    iput-boolean v0, v4, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v0, v1, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    move-object v0, v1

    check-cast v0, Laji$a;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laji$a;->mCaptionText:Ljava/lang/String;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mClientId:Ljava/lang/String;

    check-cast v0, Laji$a;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laji$a;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;

    move-result-object v0

    check-cast v0, Laji$a;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->VIDEO_URI:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laji$a;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;

    move-result-object v0

    check-cast v0, Laji$a;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_MUTED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    iput-boolean v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mMuted:Z

    check-cast v0, Laji$a;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_ZIP_UPLOAD:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    :goto_5
    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsZipUpload:Z

    check-cast v0, Laji$a;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIMER_VALUE:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mTimerValueOrDuration:D

    check-cast v0, Laji$a;

    iput-object v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Laji$a;

    invoke-virtual {v0}, Laji$a;->b()Laji;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_5

    :cond_7
    new-instance v4, Lakg;

    invoke-direct {v4}, Lakg;-><init>()V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RECIPIENTS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lakg;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->UPLOAD_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lakg;->a(I)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->SEND_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lakg;->b(I)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_FIRST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lakg;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_LAST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lakg;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RETRIED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_7
    iput-boolean v0, v4, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v0, v1, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v1, Laji$a;

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Laji$a;->mCaptionText:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/model/Mediabryo$a;->mClientId:Ljava/lang/String;

    check-cast v1, Laji$a;

    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->VIDEO_URI:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laji$a;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;

    move-result-object v0

    check-cast v0, Laji$a;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_MUTED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_9

    :goto_8
    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mMuted:Z

    check-cast v0, Laji$a;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laji$a;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;

    move-result-object v0

    check-cast v0, Laji$a;

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIMER_VALUE:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->getColumnNumber()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mTimerValueOrDuration:D

    check-cast v0, Laji$a;

    iput-object v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Laji$a;

    invoke-virtual {v0}, Laji$a;->b()Laji;

    move-result-object v0

    goto/16 :goto_6

    :cond_8
    move v0, v3

    goto :goto_7

    :cond_9
    move v2, v3

    goto :goto_8
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->values()[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 162
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 163
    invoke-static {}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->values()[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->a(Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b(Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-object v1
.end method
