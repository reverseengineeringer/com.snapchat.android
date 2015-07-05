.class public final enum Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/SnapbryoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapbryoSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;",
        ">;",
        "Lzw;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum CAPTION_TEXT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum CLIENT_ID:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum IS_DISCOVER_SNAP:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum IS_MUTED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum IS_ZIP_UPLOAD:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum POST_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum RECIPIENTS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum RETRIED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum SEND_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum STORY_GROUPS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum TIME:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum TIMER_VALUE:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum TIME_OF_FIRST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum TIME_OF_LAST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum UPLOAD_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum VIDEO_URI:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 170
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "CLIENT_ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ClientId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 172
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "TIME"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "Time"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 174
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "VIDEO_URI"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "VideoUri"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->VIDEO_URI:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 176
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "RECIPIENTS"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "Recipients"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RECIPIENTS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 178
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "STORY_GROUPS"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "StoryGroups"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->STORY_GROUPS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 180
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "UPLOAD_STATUS"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "UploadStatus"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->UPLOAD_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 182
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "SEND_STATUS"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "SendStatus"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->SEND_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 184
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "POST_STATUS"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "PostStatus"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->POST_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 186
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "IS_MUTED"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "IsMuted"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_MUTED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 188
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "IS_ZIP_UPLOAD"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "HasBeenZipped"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_ZIP_UPLOAD:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 190
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "TIMER_VALUE"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "TimerValueOrDuration"

    sget-object v5, Lcom/snapchat/android/database/DataType;->REAL:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIMER_VALUE:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 192
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "CAPTION_TEXT"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "CaptionText"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 194
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "TIME_OF_FIRST_ATTEMPT"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "TimeOfFirstAttempt"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_FIRST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 196
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "TIME_OF_LAST_ATTEMPT"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "TimeOfLastAttempt"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_LAST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 198
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "RETRIED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "Retried"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RETRIED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 200
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "IS_DISCOVER_SNAP"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "IsDiscoverSnap"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_DISCOVER_SNAP:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 169
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CLIENT_ID:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->VIDEO_URI:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RECIPIENTS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->STORY_GROUPS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->UPLOAD_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->SEND_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->POST_STATUS:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_MUTED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_ZIP_UPLOAD:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIMER_VALUE:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->CAPTION_TEXT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_FIRST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->TIME_OF_LAST_ATTEMPT:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->RETRIED:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->IS_DISCOVER_SNAP:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->$VALUES:[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

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
    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 208
    iput p3, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->a:I

    .line 209
    iput-object p4, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b:Ljava/lang/String;

    .line 210
    iput-object p5, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 211
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->$VALUES:[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
