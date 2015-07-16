.class public final enum Lcom/snapchat/android/database/table/FriendTable$FriendSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Laav;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/FriendTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/FriendTable$FriendSchema;",
        ">;",
        "Laav;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum ADDED_ME_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum ADDED_THEM_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum ADD_SOURCE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum ADD_SOURCE_TYPE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum BEST_FRIEND_INDEX:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum CASH_ELIGIBILITY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum CUSTOM_TITLE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum DIRECTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum FRIENDMOJI_STRING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum IS_ADDED_AS_FRIEND:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum IS_BLOCKED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum IS_DUPLICATE_DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum IS_FOLLOWING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum IS_HIDDEN:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum IS_IGNORED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum IS_LOCAL_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum IS_PENDING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum IS_SHARED_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum NEEDS_LOVE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum PHONE_NUMBER:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum PROFILE_IMAGES_FETCHED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum SHARED_STORY_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum USERNAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum USER_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 181
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "USERNAME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Username"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->USERNAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 183
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "DISPLAY_NAME"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "DisplayName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 185
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "PHONE_NUMBER"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "PhoneNumber"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->PHONE_NUMBER:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 187
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "BEST_FRIEND_INDEX"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "BestFriendIndex"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->BEST_FRIEND_INDEX:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 189
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_BLOCKED"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "IsBlocked"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_BLOCKED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 191
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_PENDING"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "IsPending"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_PENDING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 193
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_DUPLICATE_DISPLAY_NAME"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "IsDuplicateDisplayName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_DUPLICATE_DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 195
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_ADDED_AS_FRIEND"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "isAddedAsFriend"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_ADDED_AS_FRIEND:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 197
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "ADDED_ME_TIMESTAMP"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "AddedMeTimestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADDED_ME_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 199
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "ADDED_THEM_TIMESTAMP"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "AddedThemTimestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADDED_THEM_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 201
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_SHARED_STORY"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "IsSharedStory"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_SHARED_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 203
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "SHARED_STORY_ID"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "SharedStoryId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->SHARED_STORY_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 205
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "SHOULD_FETCH_CUSTOM_DESCRIPTION"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "ShouldFetchCustomDescription"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 207
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "CUSTOM_TITLE"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "CustomTitle"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CUSTOM_TITLE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 209
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "CUSTOM_DESCRIPTION"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "CustomDescription"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 211
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_LOCAL_STORY"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "IsLocalStory"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_LOCAL_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 213
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "CASH_ELIGIBILITY"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const-string v4, "CashEligibility"

    sget-object v5, Lcom/snapchat/android/database/DataType;->INTEGER:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CASH_ELIGIBILITY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 215
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_IGNORED"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "IsIgnored"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_IGNORED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 217
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_HIDDEN"

    const/16 v2, 0x12

    const/16 v3, 0x13

    const-string v4, "IsHidden"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_HIDDEN:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 219
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "DIRECTION"

    const/16 v2, 0x13

    const/16 v3, 0x14

    const-string v4, "Direction"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DIRECTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 221
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "ADD_SOURCE"

    const/16 v2, 0x14

    const/16 v3, 0x15

    const-string v4, "AddSource"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADD_SOURCE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 223
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "ADD_SOURCE_TYPE"

    const/16 v2, 0x15

    const/16 v3, 0x16

    const-string v4, "AddSourceType"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADD_SOURCE_TYPE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 225
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "NEEDS_LOVE"

    const/16 v2, 0x16

    const/16 v3, 0x17

    const-string v4, "NeedsLove"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->NEEDS_LOVE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 227
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "FRIENDMOJI_STRING"

    const/16 v2, 0x17

    const/16 v3, 0x18

    const-string v4, "FriendmojiString"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->FRIENDMOJI_STRING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 229
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "USER_ID"

    const/16 v2, 0x18

    const/16 v3, 0x19

    const-string v4, "UserId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->TEXT:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->USER_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 231
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "PROFILE_IMAGES_FETCHED"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    const-string v4, "ProfileImagesFetched"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->PROFILE_IMAGES_FETCHED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 233
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_FOLLOWING"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    const-string v4, "IsFollowing"

    sget-object v5, Lcom/snapchat/android/database/DataType;->BOOLEAN:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_FOLLOWING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 179
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->USERNAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->PHONE_NUMBER:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->BEST_FRIEND_INDEX:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_BLOCKED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_PENDING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_DUPLICATE_DISPLAY_NAME:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_ADDED_AS_FRIEND:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADDED_ME_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADDED_THEM_TIMESTAMP:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_SHARED_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->SHARED_STORY_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->SHOULD_FETCH_CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CUSTOM_TITLE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CUSTOM_DESCRIPTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_LOCAL_STORY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->CASH_ELIGIBILITY:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_IGNORED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_HIDDEN:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->DIRECTION:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADD_SOURCE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->ADD_SOURCE_TYPE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->NEEDS_LOVE:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->FRIENDMOJI_STRING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->USER_ID:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->PROFILE_IMAGES_FETCHED:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->IS_FOLLOWING:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->$VALUES:[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

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
    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 242
    iput p3, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->a:I

    .line 243
    iput-object p4, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b:Ljava/lang/String;

    .line 244
    iput-object p5, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c:Lcom/snapchat/android/database/DataType;

    .line 245
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/FriendTable$FriendSchema;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/FriendTable$FriendSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/FriendTable$FriendSchema;
    .locals 1

    .prologue
    .line 179
    const-class v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->$VALUES:[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    return-object v0
.end method


# virtual methods
.method public final getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->a:I

    return v0
.end method

.method public final getConstraints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDataType()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method
