.class public Lcom/snapchat/android/database/table/FriendTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/FriendTable$FriendSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/database/table/FriendTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized f()Lcom/snapchat/android/database/table/FriendTable;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/snapchat/android/database/table/FriendTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/FriendTable;->a:Lcom/snapchat/android/database/table/FriendTable;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/FriendTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable;->a:Lcom/snapchat/android/database/table/FriendTable;

    .line 28
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/FriendTable;->a:Lcom/snapchat/android/database/table/FriendTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_BLOCKED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", (CASE WHEN length("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") = 0 THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->USERNAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELSE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END) COLLATE NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    check-cast p1, Lcom/snapchat/android/model/Friend;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Laad;

    invoke-direct {v3}, Laad;-><init>()V

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->USERNAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->USER_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-object v4, p1, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->PHONE_NUMBER:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-object v4, p1, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->BEST_FRIEND_INDEX:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget v4, p1, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;I)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_BLOCKED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_PENDING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_FOLLOWING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsFollowing:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_ADDED_AS_FRIEND:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADDED_ME_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-wide v4, p1, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    invoke-virtual {v3, v0, v4, v5}, Laad;->a(Lzw;J)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADDED_THEM_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-wide v4, p1, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    invoke-virtual {v3, v0, v4, v5}, Laad;->a(Lzw;J)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_SHARED_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->SHARED_STORY_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-object v4, p1, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mShouldFetchCustomDescription:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CUSTOM_TITLE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-object v4, p1, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-object v4, p1, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_LOCAL_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CASH_ELIGIBILITY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->s()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->ordinal()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;I)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_IGNORED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_HIDDEN:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DIRECTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-object v4, p1, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADD_SOURCE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-object v4, p1, Lcom/snapchat/android/model/Friend;->mAddSource:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADD_SOURCE_TYPE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-object v4, p1, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend$AddSourceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->NEEDS_LOVE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mCandidateForNeedsLove:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v4, v0}, Laad;->a(Lzw;I)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->FRIENDMOJI_STRING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Laad;->a(Lzw;Ljava/lang/String;)Laad;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->PROFILE_IMAGES_FETCHED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    iget-boolean v4, p1, Lcom/snapchat/android/model/Friend;->mProfileImagesFetched:Z

    if-eqz v4, :cond_b

    :goto_b
    invoke-virtual {v3, v0, v1}, Laad;->a(Lzw;I)Laad;

    iget-object v0, v3, Laad;->a:Landroid/content/ContentValues;

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v2

    goto :goto_a

    :cond_b
    move v1, v2

    goto :goto_b
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v3, Lcom/snapchat/android/model/Friend;

    const-string v0, ""

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->USERNAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->USER_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->PHONE_NUMBER:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->BEST_FRIEND_INDEX:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_BLOCKED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_PENDING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_FOLLOWING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mIsFollowing:Z

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_ADDED_AS_FRIEND:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADDED_ME_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADDED_THEM_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_SHARED_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->SHARED_STORY_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mShouldFetchCustomDescription:Z

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CUSTOM_TITLE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_LOCAL_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    invoke-static {}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->values()[Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CASH_ELIGIBILITY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aget-object v0, v0, v4

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_IGNORED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_HIDDEN:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DIRECTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/Friend$Direction;->fromValue(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADD_SOURCE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mAddSource:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADD_SOURCE_TYPE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/Friend$AddSourceType;->fromValue(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->NEEDS_LOVE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_9
    iput-boolean v0, v3, Lcom/snapchat/android/model/Friend;->mCandidateForNeedsLove:Z

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->FRIENDMOJI_STRING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/snapchat/android/model/Friend;->mFriendmojiString:Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->PROFILE_IMAGES_FETCHED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    iput-boolean v1, v3, Lcom/snapchat/android/model/Friend;->mProfileImagesFetched:Z

    return-object v3

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_6

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    :cond_a
    move v0, v2

    goto :goto_9

    :cond_b
    move v1, v2

    goto :goto_a
.end method

.method public a(Lajv;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lajv;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lajv;)V
    .locals 5

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {}, Lcom/snapchat/android/database/table/FriendTable;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/database/table/FriendTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p1, Lajv;->mFriendMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p1, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iget-object v3, p1, Lajv;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lajv;->f()V

    .line 93
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->values()[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "Friends"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 73
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 74
    invoke-static {}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->values()[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->a(Lcom/snapchat/android/database/table/FriendTable$FriendSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b(Lcom/snapchat/android/database/table/FriendTable$FriendSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v1
.end method
