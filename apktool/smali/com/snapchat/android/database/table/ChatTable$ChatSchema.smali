.class public final enum Lcom/snapchat/android/database/table/ChatTable$ChatSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Laav;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ChatTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/ChatTable$ChatSchema;",
        ">;",
        "Laav;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum ACK_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum CONVERSATION_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum HAS_LINKS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum IS_RELEASED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum ITER_TOKEN:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum MEDIA_HEIGHT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum MEDIA_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum MEDIA_TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum MEDIA_WIDTH:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum RECIPIENT_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum RELEASED_TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum SENDER_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum SEQ_NUM:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum STATUS_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum TARGET_VIEW:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

.field public static final enum USER_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;


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

    .line 70
    new-instance v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 71
    new-instance v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v1, "TYPE"

    const-string v4, "type"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 72
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "ACK_ID"

    const-string v7, "ack_id"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ACK_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 73
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "RECIPIENT"

    const-string v7, "recipient"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 74
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "SENDER"

    const-string v7, "sender"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 75
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "IS_SAVED_BY_SENDER"

    const-string v7, "is_saved_by_sender"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 76
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "IS_SAVED_BY_RECIPIENT"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "is_saved_by_recipient"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 77
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "IS_RELEASED_BY_RECIPIENT"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const-string v7, "is_released_by_recipient"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_RELEASED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 78
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "SEND_RECEIVE_STATUS"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const-string v7, "send_receive_status"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 79
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "TIMESTAMP"

    const/16 v5, 0x9

    const/16 v6, 0x9

    const-string v7, "timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 80
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "SEQ_NUM"

    const/16 v5, 0xa

    const/16 v6, 0xa

    const-string v7, "seq_num"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SEQ_NUM:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 81
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "USER_TEXT"

    const/16 v5, 0xb

    const/16 v6, 0xb

    const-string v7, "text"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->USER_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 82
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "MEDIA_ID"

    const/16 v5, 0xc

    const/16 v6, 0xc

    const-string v7, "media_id"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 83
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "CONVERSATION_ID"

    const/16 v5, 0xd

    const/16 v6, 0xd

    const-string v7, "conversation_id"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 84
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "SENDER_MESSAGE_STATE_VERSION"

    const/16 v5, 0xe

    const/16 v6, 0xe

    const-string v7, "sender_message_state_version"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SENDER_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 85
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "RECIPIENT_MESSAGE_STATE_VERSION"

    const/16 v5, 0xf

    const/16 v6, 0xf

    const-string v7, "recipient_message_state_version"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RECIPIENT_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 86
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "ITER_TOKEN"

    const/16 v5, 0x10

    const/16 v6, 0x10

    const-string v7, "iter_token"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 87
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "HAS_LINKS"

    const/16 v5, 0x11

    const/16 v6, 0x11

    const-string v7, "has_links"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->HAS_LINKS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 88
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "TARGET_VIEW"

    const/16 v5, 0x12

    const/16 v6, 0x12

    const-string v7, "target_view"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 89
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "RELEASED_TIMESTAMP"

    const/16 v5, 0x13

    const/16 v6, 0x13

    const-string v7, "released_timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RELEASED_TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 90
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "STATUS_TEXT"

    const/16 v5, 0x14

    const/16 v6, 0x14

    const-string v7, "status_text"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->STATUS_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 91
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "MEDIA_TYPE"

    const/16 v5, 0x15

    const/16 v6, 0x15

    const-string v7, "media_type"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 92
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "MEDIA_WIDTH"

    const/16 v5, 0x16

    const/16 v6, 0x16

    const-string v7, "media_width"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_WIDTH:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 93
    new-instance v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const-string v4, "MEDIA_HEIGHT"

    const/16 v5, 0x17

    const/16 v6, 0x17

    const-string v7, "media_height"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_HEIGHT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    .line 69
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    const/4 v1, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v3, v0, v1

    sget-object v1, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ACK_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_SAVED_BY_SENDER:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v1, v0, v12

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_SAVED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->IS_RELEASED_BY_RECIPIENT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SEND_RECEIVE_STATUS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SEQ_NUM:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->USER_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->SENDER_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RECIPIENT_MESSAGE_STATE_VERSION:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->ITER_TOKEN:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->HAS_LINKS:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->RELEASED_TIMESTAMP:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->STATUS_TEXT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_WIDTH:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->MEDIA_HEIGHT:Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->$VALUES:[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput p3, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->a:I

    .line 103
    iput-object p4, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 105
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

    .line 107
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput v0, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->a:I

    .line 109
    iput-object p2, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 111
    iput-object p4, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->d:Ljava/lang/String;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/ChatTable$ChatSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/ChatTable$ChatSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/ChatTable$ChatSchema;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->$VALUES:[Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/ChatTable$ChatSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatTable$ChatSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
