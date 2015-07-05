.class public Lcom/snapchat/android/database/table/CashFeedItemTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/chat/CashFeedItem;",
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

.field private static final c:Ljava/lang/String;

.field private static d:Lcom/snapchat/android/database/table/CashFeedItemTable;

.field private static e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 41
    const-class v1, Lcom/snapchat/android/database/table/CashFeedItemTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->c:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    invoke-static {}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->values()[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    move-result-object v2

    .line 63
    array-length v3, v2

    .line 64
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 65
    :goto_0
    if-ge v1, v3, :cond_0

    .line 66
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable;->b:Ljava/util/HashMap;

    .line 71
    invoke-static {}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->values()[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 72
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/database/table/CashFeedItemTable;
    .locals 2

    .prologue
    .line 137
    const-class v1, Lcom/snapchat/android/database/table/CashFeedItemTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->d:Lcom/snapchat/android/database/table/CashFeedItemTable;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/snapchat/android/database/table/CashFeedItemTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->d:Lcom/snapchat/android/database/table/CashFeedItemTable;

    .line 140
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->d:Lcom/snapchat/android/database/table/CashFeedItemTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Set;)Ljava/util/Map;
    .locals 30
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Snap$TargetView;",
            ">;)",
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
    .line 371
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 373
    const-string v5, "CashFeedItem"

    sget-object v6, Lcom/snapchat/android/database/table/CashFeedItemTable;->a:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 378
    if-eqz v9, :cond_5

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 380
    :cond_0
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v4, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    .line 384
    :goto_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 385
    :cond_1
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->USER_TEXT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->AMOUNT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->CURRENCY_CODE:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->UPDATED_TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->PROVIDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_FROM_SERVER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    move v8, v4

    :goto_1
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_VIEWED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    move v7, v4

    :goto_2
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_VIEWED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    const/4 v4, 0x1

    move v6, v4

    :goto_3
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    move v5, v4

    :goto_4
    sget-object v4, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v4, v0, :cond_c

    const/4 v4, 0x1

    :goto_5
    sget-object v26, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual/range {v26 .. v26}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v26

    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    sget-object v27, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual/range {v27 .. v27}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v27

    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    sget-object v28, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual/range {v28 .. v28}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnNumber()I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    new-instance v29, Lcom/snapchat/android/model/CashTransaction$a;

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-direct {v0, v11, v13, v1}, Lcom/snapchat/android/model/CashTransaction$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v29

    iput-object v10, v0, Lcom/snapchat/android/model/CashTransaction$a;->mId:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/snapchat/android/model/CashTransaction$a;->mProvider:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v14, v0, Lcom/snapchat/android/model/CashTransaction$a;->mCashSenderId:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v15, v0, Lcom/snapchat/android/model/CashTransaction$a;->mCashRecipientId:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v10

    move-object/from16 v0, v29

    iput-object v10, v0, Lcom/snapchat/android/model/CashTransaction$a;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/snapchat/android/model/CashTransaction$a;->mMessage:Ljava/lang/String;

    move-wide/from16 v0, v20

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/snapchat/android/model/CashTransaction$a;->mCreatedAt:J

    move-wide/from16 v0, v22

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/snapchat/android/model/CashTransaction$a;->mUpdatedAt:J

    invoke-static/range {v19 .. v19}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v10

    move-object/from16 v0, v29

    iput-object v10, v0, Lcom/snapchat/android/model/CashTransaction$a;->mStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-object/from16 v0, v29

    iput-boolean v8, v0, Lcom/snapchat/android/model/CashTransaction$a;->mIsFromServer:Z

    invoke-virtual/range {v29 .. v29}, Lcom/snapchat/android/model/CashTransaction$a;->a()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v8

    iput-boolean v7, v8, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    iput-boolean v6, v8, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    iput-boolean v5, v8, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    iput-boolean v4, v8, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    move/from16 v0, v26

    iput v0, v8, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    move/from16 v0, v27

    iput v0, v8, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    new-instance v5, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {v5, v8}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/snapchat/android/model/chat/CashFeedItem;->mIterToken:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v4

    sget-object v6, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v4, v6}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    :cond_2
    :goto_6
    iput-object v4, v5, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 389
    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/CashFeedItem;->X()Ljava/lang/String;

    move-result-object v6

    .line 391
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 392
    if-nez v4, :cond_3

    .line 393
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 395
    :cond_3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-interface {v12, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 401
    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_6
    return-object v12

    .line 381
    :cond_7
    :try_start_1
    invoke-static {v4}, Lcom/snapchat/android/model/Snap$TargetView;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$TargetView;

    move-result-object v4

    goto/16 :goto_0

    .line 385
    :cond_8
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_2

    :cond_a
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_3

    :cond_b
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_4

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_d
    sget-object v6, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v4, v6}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 401
    :catchall_0
    move-exception v4

    if-eqz v9, :cond_e

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 275
    invoke-static {p0}, Lcom/snapchat/android/database/DatabaseHelper;->a(Landroid/content/Context;)Lcom/snapchat/android/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 278
    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->c:Ljava/lang/String;

    const-string v2, "CASH-LOG: Deleting all cash feed icons"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    const-string v0, "CashFeedItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-virtual {v5}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 282
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 239
    const-class v1, Lcom/snapchat/android/database/table/CashFeedItemTable;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/snapchat/android/database/table/CashFeedItemTable$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/database/table/CashFeedItemTable$1;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    sget-object v2, Lauh;->SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit v1

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 210
    iget-object v2, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v2, v2, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v2, :cond_0

    .line 211
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_1
    if-nez p0, :cond_2

    .line 222
    :goto_1
    return-void

    .line 221
    :cond_2
    invoke-static {p0}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/Snap$TargetView;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    if-nez p1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v3, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 336
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 337
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->Y()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcom/snapchat/android/model/CashTransaction;->mCashRecipientId:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcom/snapchat/android/model/CashTransaction;->mCashSenderId:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->AMOUNT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v5, v5, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->CURRENCY_CODE:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcom/snapchat/android/model/CashTransaction;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    invoke-virtual {v5}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->USER_TEXT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->al()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_VIEWED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, v3, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_VIEWED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, v3, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, v3, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v0, v3, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget v5, v3, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget v5, v3, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v5}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->UPDATED_TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_FROM_SERVER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v3, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    if-eqz v3, :cond_5

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/Snap$TargetView;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->PROVIDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getColumnName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "CashFeedItem"

    const-string v1, "NULL"

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 346
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 347
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 349
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 350
    goto/16 :goto_4

    :cond_5
    move v1, v2

    .line 357
    goto :goto_5
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 289
    const-class v1, Lcom/snapchat/android/database/table/CashFeedItemTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    :goto_0
    monitor-exit v1

    return-void

    .line 293
    :cond_0
    :try_start_1
    new-instance v0, Lcom/snapchat/android/database/table/CashFeedItemTable$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/database/table/CashFeedItemTable$2;-><init>(Landroid/content/Context;)V

    sget-object v2, Lauh;->SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/database/table/CashFeedItemTable$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 226
    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    :cond_0
    if-nez p0, :cond_1

    .line 236
    :goto_1
    return-void

    .line 235
    :cond_1
    invoke-static {p0}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;)V

    goto :goto_1
.end method

.method static synthetic f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lajv;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajv;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lajv;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public final b()[Lzw;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->values()[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "CashFeedItem"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 7

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-static {}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->values()[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    move-result-object v2

    .line 152
    array-length v3, v2

    .line 153
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 154
    aget-object v4, v2, v0

    .line 155
    if-lez v0, :cond_0

    .line 156
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->a(Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b(Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->getConstraints()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method
