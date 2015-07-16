.class public final enum Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Laav;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ReceivedSnapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;",
        ">;",
        "Laav;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum BROADCAST_HIDE_TIMER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum BROADCAST_MEDIA_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum BROADCAST_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum BROADCAST_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum CAPTION_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum CONVERSATION_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum DISPLAY_TIME:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum FILTER_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum IS_UPDATED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum IS_ZIPPED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum MEDIA_TYPE:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum SENDER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum SENT_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum STATUS:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum TARGET_VIEW:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;


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

    .line 125
    new-instance v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 126
    new-instance v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v1, "TIMESTAMP"

    const-string v4, "Timestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 127
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "MEDIA_TYPE"

    const-string v7, "MediaType"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 128
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "IS_ZIPPED"

    const-string v7, "IsZipped"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 129
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "STATUS"

    const-string v7, "Status"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->STATUS:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 130
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "SENDER"

    const-string v7, "Sender"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->SENDER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 131
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "DISPLAY_TIME"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "DisplayTime"

    sget-object v8, Lcom/snapchat/android/database/DataType;->REAL:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 132
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "CAPTION_TEXT"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const-string v7, "CaptionText"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 135
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "IS_SCREENSHOTTED"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const-string v7, "IsScreenshotted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 137
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "IS_UPDATED"

    const/16 v5, 0x9

    const/16 v6, 0x9

    const-string v7, "IsUpdated"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 138
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "VIEWED_TIMESTAMP"

    const/16 v5, 0xa

    const/16 v6, 0xa

    const-string v7, "ViewedTimestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 139
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "CONVERSATION_ID"

    const/16 v5, 0xb

    const/16 v6, 0xb

    const-string v7, "ConversationId"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 140
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "SENT_TIMESTAMP"

    const/16 v5, 0xc

    const/16 v6, 0xc

    const-string v7, "SentTimestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->SENT_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 141
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "TARGET_VIEW"

    const/16 v5, 0xd

    const/16 v6, 0xd

    const-string v7, "TargetView"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 142
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "BROADCAST_MEDIA_URL"

    const/16 v5, 0xe

    const/16 v6, 0xe

    const-string v7, "BroadcastMediaUrl"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_MEDIA_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 143
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "BROADCAST_URL"

    const/16 v5, 0xf

    const/16 v6, 0xf

    const-string v7, "BroadcastUrl"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 144
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "BROADCAST_TEXT"

    const/16 v5, 0x10

    const/16 v6, 0x10

    const-string v7, "BroadcastText"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 145
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "BROADCAST_HIDE_TIMER"

    const/16 v5, 0x11

    const/16 v6, 0x11

    const-string v7, "BroadcastHideTimer"

    sget-object v8, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_HIDE_TIMER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 146
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "FILTER_ID"

    const/16 v5, 0x12

    const/16 v6, 0x12

    const-string v7, "FilterId"

    sget-object v8, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 123
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const/4 v1, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v3, v0, v1

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->STATUS:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->SENDER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v12

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->CONVERSATION_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->SENT_TIMESTAMP:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->TARGET_VIEW:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_MEDIA_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_URL:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_TEXT:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->BROADCAST_HIDE_TIMER:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->$VALUES:[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

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
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->a:I

    .line 156
    iput-object p4, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b:Ljava/lang/String;

    .line 157
    iput-object p5, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 158
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

    .line 160
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->a:I

    .line 162
    iput-object p2, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 164
    iput-object p4, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->d:Ljava/lang/String;

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->$VALUES:[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
