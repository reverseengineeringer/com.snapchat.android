.class public final Lcom/snapchat/android/database/table/ConversationTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/snapchat/android/database/table/ConversationTable;


# instance fields
.field private final d:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    move-result-object v2

    .line 55
    array-length v3, v2

    .line 56
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/ConversationTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 57
    :goto_0
    if-ge v1, v3, :cond_0

    .line 58
    sget-object v4, Lcom/snapchat/android/database/table/ConversationTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/ConversationTable;->b:Ljava/util/HashMap;

    .line 63
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 64
    sget-object v4, Lcom/snapchat/android/database/table/ConversationTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/snapchat/android/database/table/ConversationTable;->d:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 127
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/ConversationTable;
    .locals 3

    .prologue
    .line 130
    const-class v1, Lcom/snapchat/android/database/table/ConversationTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable;->c:Lcom/snapchat/android/database/table/ConversationTable;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/snapchat/android/database/table/ConversationTable;

    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/snapchat/android/database/table/ConversationTable;-><init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/ConversationTable;->c:Lcom/snapchat/android/database/table/ConversationTable;

    .line 133
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable;->c:Lcom/snapchat/android/database/table/ConversationTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 37
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 475
    const-string v3, "Conversation"

    sget-object v4, Lcom/snapchat/android/database/table/ConversationTable;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 479
    if-eqz v12, :cond_a

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 481
    :cond_0
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->ID:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->SENDER:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->RECIPIENT:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->MY_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->MY_LAST_ACKED_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->THEIR_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_CHATS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    move v10, v2

    :goto_0
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    move v9, v2

    :goto_1
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_AUDIO_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    move v8, v2

    :goto_2
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_CASH:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    move v7, v2

    :goto_3
    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->CHATS_ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_MY_CHAT_THEY_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_THEIR_CHAT_I_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_MY_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_THEIR_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_TIMESTAMP_OF_SENT_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_TIMESTAMP_OF_RECEIVED_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_15

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    :goto_4
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v36

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v15, v3}, Lakx;->a(Ljava/lang/String;Z)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v3, :cond_13

    :cond_1
    if-nez v2, :cond_10

    new-instance v3, Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v2, 0x0

    invoke-direct {v3, v14, v15, v2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    iget-wide v14, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v2, v16, v14

    if-lez v2, :cond_2

    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    :cond_2
    const/4 v2, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(JZ)V

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->c(J)V

    invoke-virtual {v3, v6}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/List;)V

    move-wide/from16 v0, v22

    iput-wide v0, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-virtual {v3, v10}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Z)V

    iput-boolean v9, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    iput-boolean v8, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    iput-boolean v7, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_6
    iput-object v2, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mIterToken:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    :goto_7
    iput-object v2, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    move-wide/from16 v0, v24

    iput-wide v0, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    move-wide/from16 v0, v26

    iput-wide v0, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    move-wide/from16 v0, v26

    iput-wide v0, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDisplayed:J

    move-object/from16 v0, v36

    iput-object v0, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iput-object v2, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    :cond_3
    move-object v2, v3

    :goto_8
    iget-wide v4, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    cmp-long v3, v28, v4

    if-lez v3, :cond_4

    move-wide/from16 v0, v28

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    :cond_4
    iget-wide v4, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    cmp-long v3, v30, v4

    if-lez v3, :cond_5

    move-wide/from16 v0, v30

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    :cond_5
    iget-wide v4, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    cmp-long v3, v32, v4

    if-lez v3, :cond_6

    move-wide/from16 v0, v32

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    :cond_6
    iget-wide v4, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    cmp-long v3, v34, v4

    if-lez v3, :cond_7

    move-wide/from16 v0, v34

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    :cond_7
    iget-wide v4, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    cmp-long v3, v32, v4

    if-lez v3, :cond_8

    move-wide/from16 v0, v32

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIReleased:J

    :cond_8
    iget-wide v4, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    cmp-long v3, v34, v4

    if-lez v3, :cond_9

    move-wide/from16 v0, v34

    iput-wide v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIReleased:J

    .line 483
    :cond_9
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 487
    :cond_a
    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_b
    return-object v11

    .line 481
    :cond_c
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_3

    :cond_10
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    move-object v3, v2

    goto/16 :goto_5

    :cond_11
    move-object v2, v5

    goto/16 :goto_6

    :cond_12
    move-object v2, v4

    goto/16 :goto_7

    :cond_13
    invoke-virtual {v2, v6}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/List;)V

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Ljava/util/Set;)V

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lbdv;

    invoke-direct {v4}, Lbdv;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 487
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_14

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v2

    :cond_15
    move-object v6, v2

    goto/16 :goto_4
.end method

.method private static varargs a([Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 180
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_2

    aget-object v5, p0, v3

    .line 181
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 183
    if-nez v1, :cond_3

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 187
    :goto_2
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 188
    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    :cond_0
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 194
    :cond_2
    return-object v4

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/Snap$TargetView;)V
    .locals 1

    .prologue
    .line 453
    instance-of v0, p2, Lake;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 455
    check-cast v0, Lake;

    iget-boolean v0, v0, Lake;->mIsSavableSnap:Z

    if-eqz v0, :cond_0

    .line 456
    check-cast p2, Lake;

    invoke-static {p0, p1, p2, p3}, Lcom/snapchat/android/database/table/SentSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lake;Lcom/snapchat/android/model/Snap$TargetView;)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    instance-of v0, p2, Laka;

    if-eqz v0, :cond_0

    .line 460
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a()Lcom/snapchat/android/database/table/ReceivedSnapTable;

    check-cast p2, Laka;

    invoke-static {p0, p1, p2, p3}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Laka;Lcom/snapchat/android/model/Snap$TargetView;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lakp;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakp;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lakp;)V
    .locals 10

    .prologue
    .line 200
    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 206
    :try_start_0
    sget-object v1, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    invoke-static {v3, v1}, Lcom/snapchat/android/database/table/ChatTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    .line 207
    sget-object v2, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    invoke-static {v3, v2}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 211
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a()Lcom/snapchat/android/database/table/ReceivedSnapTable;

    sget-object v4, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    invoke-static {v3, v4}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 216
    sget-object v5, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    invoke-static {v3, v5}, Lcom/snapchat/android/database/table/SentSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v5

    .line 220
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/util/Map;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v4, v6, v1

    const/4 v1, 0x2

    aput-object v5, v6, v1

    const/4 v1, 0x3

    aput-object v2, v6, v1

    invoke-static {v6}, Lcom/snapchat/android/database/table/ConversationTable;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 224
    sget-object v1, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    invoke-static {v3, v1}, Lcom/snapchat/android/database/table/ChatTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    .line 228
    sget-object v2, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    invoke-static {v3, v2}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 232
    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a()Lcom/snapchat/android/database/table/ReceivedSnapTable;

    sget-object v6, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    invoke-static {v3, v6}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v6

    .line 237
    sget-object v7, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    invoke-static {v3, v7}, Lcom/snapchat/android/database/table/SentSnapTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v7

    .line 241
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/util/Map;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v6, v8, v1

    const/4 v1, 0x2

    aput-object v7, v8, v1

    const/4 v1, 0x3

    aput-object v2, v8, v1

    invoke-static {v8}, Lcom/snapchat/android/database/table/ConversationTable;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 247
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_1

    invoke-interface {v8}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 272
    throw v1

    .line 250
    :cond_2
    :try_start_1
    invoke-static {v3, v5, v6}, Lcom/snapchat/android/database/table/ConversationTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 254
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 255
    if-eqz v1, :cond_3

    .line 256
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 259
    instance-of v6, v1, Laka;

    if-eqz v6, :cond_4

    .line 260
    check-cast v1, Laka;

    .line 264
    invoke-virtual {v1}, Laka;->g()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Laka;->A()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 265
    invoke-virtual {p1, v1}, Lakp;->a(Laka;)V

    goto :goto_1

    .line 269
    :cond_5
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v1

    iget-object v4, v1, Lakx;->mConversations:Ljava/util/List;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v1, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, v1, Lakx;->mConversations:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Lakx;->g()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-virtual {v1, v2}, Lakx;->a(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 272
    return-void

    .line 269
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final b()[Laav;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "Conversation"

    return-object v0
.end method

.method public final c(Lakp;)V
    .locals 22

    .prologue
    .line 311
    invoke-static {}, Lakr;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {}, Lakp;->y()Landroid/content/Context;

    move-result-object v7

    .line 317
    invoke-static {v7}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 318
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 322
    :try_start_0
    const-string v2, "Conversation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 324
    const-string v2, "Chat"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    const-string v2, "ReceivedSnaps"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    const-string v2, "SentSnaps"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 327
    invoke-static {v7}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;)V

    .line 329
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v2

    invoke-virtual {v2}, Lakx;->f()Ljava/util/List;

    move-result-object v2

    .line 330
    new-instance v9, Layv;

    invoke-direct {v9}, Layv;-><init>()V

    .line 332
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 333
    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    if-eqz v3, :cond_1

    .line 334
    if-eqz v2, :cond_1

    iget-object v11, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->ID:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->SENDER:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->RECIPIENT:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_CHATS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_AUDIO_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_CASH:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v3, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIterToken:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->CHATS_ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_MY_CHAT_THEY_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatTheyReleased:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_THEIR_CHAT_I_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIReleased:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_MY_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_THEIR_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_TIMESTAMP_OF_SENT_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_TIMESTAMP_OF_RECEIVED_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->MY_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->THEIR_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->MY_LAST_ACKED_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Save conversation recipient="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " timestamp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "Conversation"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v8, v3, v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    iget-object v5, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-object v4, v3

    :goto_6
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 343
    :catchall_0
    move-exception v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 344
    throw v2

    .line 334
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v7}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;)V

    instance-of v3, v4, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_8

    move-object v0, v4

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v3, v0

    invoke-static {v7, v3}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    const/4 v5, 0x1

    :cond_8
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->o()Ljava/util/List;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    sget-object v2, Lcom/snapchat/android/model/Snap$TargetView;->CHAT_AND_FEED:Lcom/snapchat/android/model/Snap$TargetView;

    move-object v6, v2

    :goto_9
    instance-of v2, v3, Lakw;

    if-eqz v2, :cond_b

    move-object v0, v3

    check-cast v0, Lakw;

    move-object v2, v0

    invoke-static {v8, v2, v6, v9}, Lcom/snapchat/android/database/table/ChatTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lakw;Lcom/snapchat/android/model/Snap$TargetView;Layv;)V

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v6, Lcom/snapchat/android/database/SharedPreferenceKey;->USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v6}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v15, ""

    invoke-interface {v2, v6, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x36ee80

    sub-long v18, v18, v20

    cmp-long v2, v16, v18

    if-lez v2, :cond_9

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v7, v2, v0, v1, v6}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :goto_a
    if-eqz v14, :cond_10

    const/4 v2, 0x1

    :goto_b
    move v5, v2

    goto :goto_8

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    :cond_a
    sget-object v2, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    move-object v6, v2

    goto :goto_9

    :cond_b
    instance-of v2, v3, Lcom/snapchat/android/model/Snap;

    if-eqz v2, :cond_9

    check-cast v3, Lcom/snapchat/android/model/Snap;

    invoke-static {v8, v11, v3, v6}, Lcom/snapchat/android/database/table/ConversationTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/Snap$TargetView;)V

    goto :goto_a

    :cond_c
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    instance-of v2, v4, Lcom/snapchat/android/model/Snap;

    if-eqz v2, :cond_d

    check-cast v4, Lcom/snapchat/android/model/Snap;

    sget-object v2, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-static {v8, v11, v4, v2}, Lcom/snapchat/android/database/table/ConversationTable;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/model/Snap$TargetView;)V

    goto/16 :goto_1

    :cond_d
    instance-of v2, v4, Lakw;

    if-eqz v2, :cond_1

    check-cast v4, Lakw;

    sget-object v2, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-static {v8, v4, v2, v9}, Lcom/snapchat/android/database/table/ChatTable;->a(Landroid/database/sqlite/SQLiteDatabase;Lakw;Lcom/snapchat/android/model/Snap$TargetView;Layv;)V

    goto/16 :goto_1

    .line 339
    :cond_e
    sget-object v3, Lazh;->CHAT_MEDIA_KEYS_AND_IVS:Lazf;

    iget-object v2, v9, Layv;->mPrefKeyToMapMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v9, Layv;->mPrefKeyToMapMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v9, v3, v2}, Layv;->a(Lazf;Ljava/util/Map;)V

    .line 341
    :cond_f
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 343
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_10
    move v2, v5

    goto :goto_b
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    move-result-object v2

    .line 145
    array-length v3, v2

    .line 146
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 147
    aget-object v4, v2, v0

    .line 148
    if-lez v0, :cond_0

    .line 149
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->a(Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b(Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
