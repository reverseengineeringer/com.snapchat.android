.class public final enum Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/StorySnapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorySnapSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum AD_CAN_FOLLOW:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum CAPTION_ORIENTATION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum CAPTION_POSITION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum CAPTION_TEXT:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum CLIENT_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum DISPLAY_TIME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum EXPIRATION_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum IS_FAILED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum IS_SHARED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum IS_UPDATED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum IS_VIEWED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum IS_ZIPPED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum MEDIA_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum MEDIA_TYPE:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum MEDIA_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum NEEDS_AUTH:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum SPONSORED_POSTVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum SPONSORED_PREVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum SPONSORED_SPONSOR:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum SPONSORED_TAG_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum STATUS:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum STORY_FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum STORY_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum STORY_SNAP_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum THUMBNAIL_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum USERNAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum WAS_404_RESPONSE_RECEIVED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 217
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "STORY_SNAP_ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "StorySnapId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_SNAP_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 219
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "CLIENT_ID"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "ClientId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 221
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "MEDIA_ID"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "MediaId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 223
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "TIMESTAMP"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "Timestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 225
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "MEDIA_TYPE"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "MediaType"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 227
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "MEDIA_URL"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "MediaUrl"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 229
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "THUMBNAIL_URL"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "ThumbnailUrl"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->THUMBNAIL_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 231
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "STATUS"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "Status"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STATUS:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 233
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "USERNAME"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "Username"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->USERNAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 235
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "DISPLAY_TIME"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "DisplayTime"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 237
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "CAPTION_TEXT"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "CaptionText"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 239
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "CAPTION_ORIENTATION"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "CaptionOrientation"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_ORIENTATION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 241
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "CAPTION_POSITION"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "CaptionPosition"

    sget-object v5, Lcom/snapchat/android/database/DataType;->REAL:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_POSITION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 243
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_VIEWED"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "IsViewed"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_VIEWED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 245
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_SCREENSHOTTED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "IsScreenshotted"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 247
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "VIEWED_TIMESTAMP"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "ViewedTimestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 249
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_UPDATED"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const-string v4, "IsUpdated"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 251
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_FAILED"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "IsFailed"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_FAILED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 253
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_ZIPPED"

    const/16 v2, 0x12

    const/16 v3, 0x13

    const-string v4, "IsZipped"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 255
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "FILTER_ID"

    const/16 v2, 0x13

    const/16 v3, 0x14

    const-string v4, "FilterId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 257
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "WAS_404_RESPONSE_RECEIVED"

    const/16 v2, 0x14

    const/16 v3, 0x15

    const-string v4, "Was404ResponseReceived"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->WAS_404_RESPONSE_RECEIVED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 259
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "STORY_ID"

    const/16 v2, 0x15

    const/16 v3, 0x16

    const-string v4, "StoryId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 261
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_SHARED"

    const/16 v2, 0x16

    const/16 v3, 0x17

    const-string v4, "IsShared"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SHARED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 263
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "SPONSORED_PREVIEW_DISPLAY_NAME"

    const/16 v2, 0x17

    const/16 v3, 0x18

    const-string v4, "SponsoredPreviewDisplayName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_PREVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 265
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "SPONSORED_POSTVIEW_DISPLAY_NAME"

    const/16 v2, 0x18

    const/16 v3, 0x19

    const-string v4, "SponsoredPostviewDisplayName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_POSTVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 267
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "SPONSORED_SPONSOR"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    const-string v4, "SponsoredSponsor"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_SPONSOR:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 269
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "SPONSORED_TAG_URL"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    const-string v4, "SponsoredTagUrl"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_TAG_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 271
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "AD_CAN_FOLLOW"

    const/16 v2, 0x1b

    const/16 v3, 0x1c

    const-string v4, "AdCanFollow"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->AD_CAN_FOLLOW:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 273
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "NEEDS_AUTH"

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    const-string v4, "NeedsAuth"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->NEEDS_AUTH:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 275
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "EXPIRATION_TIMESTAMP"

    const/16 v2, 0x1d

    const/16 v3, 0x1e

    const-string v4, "ExpirationTimestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->EXPIRATION_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 277
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "STORY_FILTER_ID"

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    const-string v4, "StoryFilterId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 216
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_SNAP_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_TYPE:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->MEDIA_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->THUMBNAIL_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STATUS:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->USERNAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->DISPLAY_TIME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_ORIENTATION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->CAPTION_POSITION:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_VIEWED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SCREENSHOTTED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->VIEWED_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_UPDATED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_FAILED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_ZIPPED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->WAS_404_RESPONSE_RECEIVED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->IS_SHARED:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_PREVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_POSTVIEW_DISPLAY_NAME:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_SPONSOR:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->SPONSORED_TAG_URL:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->AD_CAN_FOLLOW:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->NEEDS_AUTH:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->EXPIRATION_TIMESTAMP:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->STORY_FILTER_ID:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->$VALUES:[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

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
    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 286
    iput p3, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->a:I

    .line 287
    iput-object p4, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b:Ljava/lang/String;

    .line 288
    iput-object p5, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 289
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;
    .locals 1

    .prologue
    .line 216
    const-class v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->$VALUES:[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
