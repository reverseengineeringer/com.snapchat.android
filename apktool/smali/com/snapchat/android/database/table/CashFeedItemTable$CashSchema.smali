.class public final enum Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/CashFeedItemTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CashSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum AMOUNT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum CURRENCY_CODE:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum IS_FROM_SERVER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum IS_VIEWED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum IS_VIEWED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum ITER_TOKEN:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum PROVIDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum RECIPIENT_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum RECIPIENT_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum SENDER_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum SENDER_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum TARGET_VIEW:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum UPDATED_TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

.field public static final enum USER_TEXT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    .line 77
    new-instance v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 78
    new-instance v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v1, "RECIPIENT"

    const-string v4, "recipient"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 79
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "SENDER"

    const-string v7, "sender"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 80
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "RECIPIENT_ID"

    const-string v7, "recipient_id"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 81
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "SENDER_ID"

    const-string v7, "sender_id"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 82
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "AMOUNT"

    const-string v7, "amount"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->AMOUNT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 83
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "CURRENCY_CODE"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "currency_code"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->CURRENCY_CODE:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 84
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "USER_TEXT"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const-string v7, "text"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->USER_TEXT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 86
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "IS_VIEWED_BY_SENDER"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const-string v7, "sender_viewed"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_VIEWED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 87
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "IS_VIEWED_BY_RECIPIENT"

    const/16 v5, 0x9

    const/16 v6, 0x9

    const-string v7, "recipient_viewed"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_VIEWED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 88
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "IS_SAVED_BY_SENDER"

    const/16 v5, 0xa

    const/16 v6, 0xa

    const-string v7, "sender_saved"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 89
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "IS_SAVED_BY_RECIPIENT"

    const/16 v5, 0xb

    const/16 v6, 0xb

    const-string v7, "recipient_saved"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 90
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "SENDER_SAVE_VERSION"

    const/16 v5, 0xc

    const/16 v6, 0xc

    const-string v7, "sender_save_version"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 91
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "RECIPIENT_SAVE_VERSION"

    const/16 v5, 0xd

    const/16 v6, 0xd

    const-string v7, "recipient_save_version"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 93
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "STATUS"

    const/16 v5, 0xe

    const/16 v6, 0xe

    const-string v7, "status"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 94
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "TIMESTAMP"

    const/16 v5, 0xf

    const/16 v6, 0xf

    const-string v7, "timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 95
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "UPDATED_TIMESTAMP"

    const/16 v5, 0x10

    const/16 v6, 0x10

    const-string v7, "updated_timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->UPDATED_TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 96
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "IS_FROM_SERVER"

    const/16 v5, 0x11

    const/16 v6, 0x11

    const-string v7, "is_from_server"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_FROM_SERVER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 98
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "ITER_TOKEN"

    const/16 v5, 0x12

    const/16 v6, 0x12

    const-string v7, "iter_token"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 99
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "TARGET_VIEW"

    const/16 v5, 0x13

    const/16 v6, 0x13

    const-string v7, "target_view"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 100
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "SEND_RECEIVE_STATUS"

    const/16 v5, 0x14

    const/16 v6, 0x14

    const-string v7, "send_receive_status"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 101
    new-instance v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const-string v4, "PROVIDER"

    const/16 v5, 0x15

    const/16 v6, 0x15

    const-string v7, "provider"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->PROVIDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    .line 76
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    const/4 v1, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v3, v0, v1

    sget-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER_ID:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->AMOUNT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v1, v0, v12

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->CURRENCY_CODE:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->USER_TEXT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_VIEWED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_VIEWED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SENDER_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->RECIPIENT_SAVE_VERSION:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->UPDATED_TIMESTAMP:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->IS_FROM_SERVER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->PROVIDER:Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->$VALUES:[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/database/DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->a:I

    .line 111
    iput-object p4, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 113
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput v0, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->a:I

    .line 117
    iput-object p2, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 119
    iput-object p4, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->d:Ljava/lang/String;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->$VALUES:[Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/database/table/CashFeedItemTable$CashSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
