.class public final enum Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ConversationTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConversationSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum CHATS_ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum HAS_UNVIEWED_AUDIO_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum HAS_UNVIEWED_CASH:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum HAS_UNVIEWED_CHATS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum HAS_UNVIEWED_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum ID:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum LAST_SEQ_NUM_OF_MY_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum LAST_SEQ_NUM_OF_MY_CHAT_THEY_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum LAST_SEQ_NUM_OF_THEIR_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum LAST_SEQ_NUM_OF_THEIR_CHAT_I_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum LAST_TIMESTAMP_OF_RECEIVED_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum LAST_TIMESTAMP_OF_SENT_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum MY_LAST_ACKED_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum MY_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum RECIPIENT:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum SENDER:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum THEIR_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum TIMESTAMP:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;


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

    .line 67
    new-instance v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->ID:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 68
    new-instance v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v1, "SENDER"

    const-string v4, "sender"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->SENDER:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 69
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "RECIPIENT"

    const-string v7, "recipient"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->RECIPIENT:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 70
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "TIMESTAMP"

    const-string v7, "timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 71
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "HAS_UNVIEWED_CHATS"

    const-string v7, "has_unviewed_chats"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_CHATS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 72
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "HAS_UNVIEWED_SNAPS"

    const-string v7, "has_unviewed_snaps"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 73
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "HAS_UNVIEWED_AUDIO_SNAPS"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "has_unviewed_audio_snap"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_AUDIO_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 74
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "HAS_UNVIEWED_CASH"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const-string v7, "has_unviewed_cash"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_CASH:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 75
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "ITER_TOKEN"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const-string v7, "iter_token"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 76
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "CHATS_ITER_TOKEN"

    const/16 v5, 0x9

    const/16 v6, 0x9

    const-string v7, "chats_iter_token"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->CHATS_ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 77
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_SEQ_NUM_OF_MY_CHAT_THEY_RELEASED"

    const/16 v5, 0xa

    const/16 v6, 0xa

    const-string v7, "last_seq_num_of_my_chat_they_released"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_MY_CHAT_THEY_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 78
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_SEQ_NUM_OF_THEIR_CHAT_I_RELEASED"

    const/16 v5, 0xb

    const/16 v6, 0xb

    const-string v7, "last_seq_num_of_their_chat_i_released"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_THEIR_CHAT_I_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 79
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_SEQ_NUM_OF_MY_CHAT_I_DELETED"

    const/16 v5, 0xc

    const/16 v6, 0xc

    const-string v7, "last_seq_num_of_my_chat_i_deleted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_MY_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 80
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_SEQ_NUM_OF_THEIR_CHAT_I_DELETED"

    const/16 v5, 0xd

    const/16 v6, 0xd

    const-string v7, "last_seq_num_of_their_chat_i_deleted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_THEIR_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 81
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_TIMESTAMP_OF_SENT_SNAP_READ_RECEIPT_I_DELETED"

    const/16 v5, 0xe

    const/16 v6, 0xe

    const-string v7, "last_timestamp_of_sent_snap_read_receipt_i_deleted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_TIMESTAMP_OF_SENT_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 83
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_TIMESTAMP_OF_RECEIVED_SNAP_READ_RECEIPT_I_DELETED"

    const/16 v5, 0xf

    const/16 v6, 0xf

    const-string v7, "last_timestamp_of_received_snap_read_receipt_i_deleted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_TIMESTAMP_OF_RECEIVED_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 85
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "MY_LAST_SEQ_NUM"

    const/16 v5, 0x10

    const/16 v6, 0x10

    const-string v7, "my_last_seq_num"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->MY_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 86
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "THEIR_LAST_SEQ_NUM"

    const/16 v5, 0x11

    const/16 v6, 0x11

    const-string v7, "their_last_seq_num"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->THEIR_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 87
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "MY_LAST_ACKED_SEQ_NUM"

    const/16 v5, 0x12

    const/16 v6, 0x12

    const-string v7, "my_last_acked_seq_num"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->MY_LAST_ACKED_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 66
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const/4 v1, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->ID:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v3, v0, v1

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->SENDER:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->RECIPIENT:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_CHATS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v12

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_AUDIO_SNAPS:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->HAS_UNVIEWED_CASH:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->CHATS_ITER_TOKEN:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_MY_CHAT_THEY_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_THEIR_CHAT_I_RELEASED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_MY_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_SEQ_NUM_OF_THEIR_CHAT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_TIMESTAMP_OF_SENT_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->LAST_TIMESTAMP_OF_RECEIVED_SNAP_READ_RECEIPT_I_DELETED:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->MY_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->THEIR_LAST_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->MY_LAST_ACKED_SEQ_NUM:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->$VALUES:[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->a:I

    .line 97
    iput-object p4, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 99
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

    .line 101
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->a:I

    .line 103
    iput-object p2, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 105
    iput-object p4, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->d:Ljava/lang/String;

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->$VALUES:[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
