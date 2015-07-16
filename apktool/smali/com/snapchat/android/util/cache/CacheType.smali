.class public final enum Lcom/snapchat/android/util/cache/CacheType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lawj;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/cache/CacheType$1;,
        Lcom/snapchat/android/util/cache/CacheType$b;,
        Lcom/snapchat/android/util/cache/CacheType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/cache/CacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum CHAT_MEDIA_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum DISCOVER_EDITIONS_CHUNKS:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum DISCOVER_INTRO_VIDEOS:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum DISCOVER_PUBLISHER_ICONS:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum DISCOVER_SHARE:Lcom/snapchat/android/util/cache/CacheType;

.field private static final ENCRYPTION_SUFFIX:Ljava/lang/String; = ".encrypted"

.field public static final enum FONTS:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum GEOFILTERS_MEDIA:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum GEOFILTERS_METADATA:Lcom/snapchat/android/util/cache/CacheType;

.field private static final IMAGE_FILENAME_PREFIX:Ljava/lang/String; = "h1a81hurcs00h"

.field public static final enum MY_MEDIA:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum MY_STORY_THUMBNAIL:Lcom/snapchat/android/util/cache/CacheType;

.field private static final OTHER_FILENAME_PREFIX:Ljava/lang/String; = "y78soep3m2n"

.field public static final enum PROFILE_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum SAVE_STORY_TO_GALLERY_IMAGES:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum SNAPS_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum SNAPS_RECEIVED_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum SNAPS_TO_SEND_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum SNAPS_TO_SEND_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum STORIES_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum STORIES_RECEIVED_THUMBNAIL:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum STORIES_RECEIVED_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum UNENCRYPTED_VIDEOS:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum UNENCRYPTED_VIDEOS_FOR_SNAP_PREVIEW:Lcom/snapchat/android/util/cache/CacheType;

.field private static final VIDEO_FILENAME_PREFIX:Ljava/lang/String; = "sesrh_dlw21"


# instance fields
.field private mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

.field private final mEncryptionOnExternalStorage:Z

.field private final mFileType$17e89516:I

.field private final mRelativePath:Ljava/lang/String;

.field private final mStorageLocation$105f8726:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 17
    new-instance v0, Lcom/snapchat/android/util/cache/CacheType;

    const-string v1, "MY_STORY_THUMBNAIL"

    const-string v3, "/stories/my/thumbnail/"

    sget v4, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    sget v5, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType;->MY_STORY_THUMBNAIL:Lcom/snapchat/android/util/cache/CacheType;

    .line 18
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "STORIES_RECEIVED_THUMBNAIL"

    const-string v6, "/stories/received/thumbnail/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->STORIES_RECEIVED_THUMBNAIL:Lcom/snapchat/android/util/cache/CacheType;

    .line 19
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "STORIES_RECEIVED_IMAGE"

    const-string v6, "/stories/received/image/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_PREFERRED$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->STORIES_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    .line 20
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "STORIES_RECEIVED_VIDEO"

    const-string v6, "/stories/received/video/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_ONLY$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->VIDEO$17e89516:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->STORIES_RECEIVED_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

    .line 21
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "SNAPS_RECEIVED_IMAGE"

    const-string v6, "/received_image_snaps/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    .line 22
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "SNAPS_RECEIVED_VIDEO"

    const/4 v5, 0x5

    const-string v6, "/received_video_snaps/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_ONLY$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->VIDEO$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_RECEIVED_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

    .line 23
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "CHAT_MEDIA_RECEIVED_IMAGE"

    const/4 v5, 0x6

    const-string v6, "/chat/received/image/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL_PREFERRED$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->CHAT_MEDIA_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    .line 24
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "DISCOVER_SHARE"

    const/4 v5, 0x7

    const-string v6, "/chat/received/discover_share/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL_PREFERRED$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->BLOB$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_SHARE:Lcom/snapchat/android/util/cache/CacheType;

    .line 25
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "UNENCRYPTED_VIDEOS"

    const/16 v5, 0x8

    const-string v6, "/uv/"

    invoke-static {}, Lcom/snapchat/android/util/cache/CacheType;->b()I

    move-result v7

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->VIDEO$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->UNENCRYPTED_VIDEOS:Lcom/snapchat/android/util/cache/CacheType;

    .line 26
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "SAVE_STORY_TO_GALLERY_IMAGES"

    const/16 v5, 0x9

    const-string v6, "/save_story_to_gallery/image/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_PREFERRED$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->SAVE_STORY_TO_GALLERY_IMAGES:Lcom/snapchat/android/util/cache/CacheType;

    .line 27
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "MY_MEDIA"

    const/16 v5, 0xa

    const-string v6, "/my_media/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_PREFERRED$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->VIDEO$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->MY_MEDIA:Lcom/snapchat/android/util/cache/CacheType;

    .line 29
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "SNAPS_TO_SEND_IMAGE"

    const/16 v5, 0xb

    const-string v6, "/snaps/tosend/image/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL_PREFERRED$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    invoke-direct/range {v3 .. v9}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;IIZ)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_TO_SEND_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    .line 31
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "SNAPS_TO_SEND_VIDEO"

    const/16 v5, 0xc

    const-string v6, "/snaps/tosend/video/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL_PREFERRED$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->VIDEO$17e89516:I

    invoke-direct/range {v3 .. v9}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;IIZ)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_TO_SEND_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

    .line 34
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "UNENCRYPTED_VIDEOS_FOR_SNAP_PREVIEW"

    const/16 v5, 0xd

    const-string v6, "/snaps/preview"

    invoke-static {}, Lcom/snapchat/android/util/cache/CacheType;->b()I

    move-result v7

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->VIDEO$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->UNENCRYPTED_VIDEOS_FOR_SNAP_PREVIEW:Lcom/snapchat/android/util/cache/CacheType;

    .line 36
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "GEOFILTERS_MEDIA"

    const/16 v5, 0xe

    const-string v6, "/geofilters/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->GEOFILTERS_MEDIA:Lcom/snapchat/android/util/cache/CacheType;

    .line 37
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "GEOFILTERS_METADATA"

    const/16 v5, 0xf

    const-string v6, "/geofilters/metadata/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->BLOB$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->GEOFILTERS_METADATA:Lcom/snapchat/android/util/cache/CacheType;

    .line 38
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "FONTS"

    const/16 v5, 0x10

    const-string v6, "/fonts/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->BLOB$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->FONTS:Lcom/snapchat/android/util/cache/CacheType;

    .line 39
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "DISCOVER_INTRO_VIDEOS"

    const/16 v5, 0x11

    const-string v6, "/discover/intro_videos/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_ONLY$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->VIDEO$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_INTRO_VIDEOS:Lcom/snapchat/android/util/cache/CacheType;

    .line 40
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "DISCOVER_EDITIONS_CHUNKS"

    const/16 v5, 0x12

    const-string v6, "/discover/edition_chunks/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_ONLY$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->DIRECTORY$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_EDITIONS_CHUNKS:Lcom/snapchat/android/util/cache/CacheType;

    .line 41
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "DISCOVER_PUBLISHER_ICONS"

    const/16 v5, 0x13

    const-string v6, "/discover/icons/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_PUBLISHER_ICONS:Lcom/snapchat/android/util/cache/CacheType;

    .line 42
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "PROFILE_IMAGE"

    const/16 v5, 0x14

    const-string v6, "/profile/image/"

    sget v7, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    sget v8, Lcom/snapchat/android/util/cache/CacheType$a;->IMAGE$17e89516:I

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->PROFILE_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    .line 14
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/snapchat/android/util/cache/CacheType;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->MY_STORY_THUMBNAIL:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->STORIES_RECEIVED_THUMBNAIL:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->STORIES_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->STORIES_RECEIVED_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_RECEIVED_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->CHAT_MEDIA_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_SHARE:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->UNENCRYPTED_VIDEOS:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->SAVE_STORY_TO_GALLERY_IMAGES:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->MY_MEDIA:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_TO_SEND_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_TO_SEND_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->UNENCRYPTED_VIDEOS_FOR_SNAP_PREVIEW:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->GEOFILTERS_MEDIA:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->GEOFILTERS_METADATA:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->FONTS:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_INTRO_VIDEOS:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_EDITIONS_CHUNKS:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_PUBLISHER_ICONS:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->PROFILE_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType;->$VALUES:[Lcom/snapchat/android/util/cache/CacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;IIZ)V

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/snapchat/android/util/cache/CacheType;->mRelativePath:Ljava/lang/String;

    .line 79
    iput p4, p0, Lcom/snapchat/android/util/cache/CacheType;->mStorageLocation$105f8726:I

    .line 80
    iput p5, p0, Lcom/snapchat/android/util/cache/CacheType;->mFileType$17e89516:I

    .line 81
    iput-boolean p6, p0, Lcom/snapchat/android/util/cache/CacheType;->mEncryptionOnExternalStorage:Z

    .line 84
    iget-boolean v0, p0, Lcom/snapchat/android/util/cache/CacheType;->mEncryptionOnExternalStorage:Z

    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Layv;

    invoke-direct {v1}, Layv;-><init>()V

    sget-object v0, Lazh;->SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS:Lazf;

    iget-object v2, v1, Layv;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v2, v0}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Layv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/util/cache/CacheType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lays;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v3, v0, Lays;->mKey:Ljava/lang/String;

    iget-object v0, v0, Lays;->mIv:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/snapchat/android/util/cache/CacheType;->setCbcEncryptionAlgorithm(Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)V

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/snapchat/android/util/cache/CacheType;->a(Layv;)V

    .line 87
    :cond_0
    return-void

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()Ljava/io/File;
    .locals 4

    .prologue
    .line 164
    iget v0, p0, Lcom/snapchat/android/util/cache/CacheType;->mStorageLocation$105f8726:I

    sget v1, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_ONLY$105f8726:I

    if-ne v0, v1, :cond_1

    .line 165
    sget-object v0, Laxy;->sExternalCacheDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Laxq;

    const-string v1, "Well, this is awkward."

    invoke-direct {v0, v1}, Laxq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    sget-object v0, Laxy;->sExternalCacheDirectory:Ljava/io/File;

    .line 178
    :goto_0
    return-object v0

    .line 171
    :cond_1
    iget v0, p0, Lcom/snapchat/android/util/cache/CacheType;->mStorageLocation$105f8726:I

    sget v1, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_PREFERRED$105f8726:I

    if-ne v0, v1, :cond_2

    sget-object v0, Laxy;->sExternalCacheDirectory:Ljava/io/File;

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/snapchat/android/util/cache/CacheType;->mStorageLocation$105f8726:I

    sget v1, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL_PREFERRED$105f8726:I

    if-ne v0, v1, :cond_5

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 175
    :cond_3
    sget-object v0, Laxy;->sExternalCacheDirectory:Ljava/io/File;

    goto :goto_0

    .line 171
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 178
    :cond_5
    sget-object v0, Laxy;->sInternalCacheDirectory:Ljava/io/File;

    goto :goto_0
.end method

.method private a(Layv;)V
    .locals 5

    .prologue
    .line 103
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>()V

    .line 104
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/cache/CacheType;->setCbcEncryptionAlgorithm(Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)V

    .line 107
    sget-object v1, Lazh;->SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS:Lazf;

    const/4 v0, 0x0

    iget-object v2, p1, Layv;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v2, v1}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Layv;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/util/cache/CacheType;->getCbcEncryptionAlgorithm()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v2

    new-instance v3, Lays;

    invoke-virtual {v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lays;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/util/cache/CacheType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Layv;->mSlightlySecurePreferences:Laze;

    iget-object v3, p1, Layv;->mGson:Laum;

    invoke-virtual {v3, v0}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Laze;->a(Lazf;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 182
    const-string v0, ".encrypted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b()I
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Latt;->SUPPORTS_VIDEO_PLAYBACK_FROM_INTERNAL_STORAGE:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/snapchat/android/util/cache/CacheType$b;->INTERNAL$105f8726:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/snapchat/android/util/cache/CacheType$b;->EXTERNAL_ONLY$105f8726:I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/cache/CacheType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/snapchat/android/util/cache/CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/cache/CacheType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/cache/CacheType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/snapchat/android/util/cache/CacheType;->$VALUES:[Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/cache/CacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/cache/CacheType;

    return-object v0
.end method


# virtual methods
.method public final generateFilename()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/snapchat/android/util/cache/CacheType;->needToEncrypt()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".encrypted"

    .line 125
    :goto_0
    sget-object v1, Lcom/snapchat/android/util/cache/CacheType$1;->$SwitchMap$com$snapchat$android$util$cache$CacheType$FileType:[I

    iget v2, p0, Lcom/snapchat/android/util/cache/CacheType;->mFileType$17e89516:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "y78soep3m2n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 124
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 127
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sesrh_dlw21"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp4.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 129
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "h1a81hurcs00h"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getCbcEncryptionAlgorithm()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/util/cache/CacheType;->mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Layv;

    invoke-direct {v0}, Layv;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/cache/CacheType;->a(Layv;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/cache/CacheType;->mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    return-object v0
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/snapchat/android/util/cache/CacheType;->a()Ljava/io/File;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 160
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/util/cache/CacheType;->mRelativePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final needToEncrypt()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-boolean v1, p0, Lcom/snapchat/android/util/cache/CacheType;->mEncryptionOnExternalStorage:Z

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/snapchat/android/util/cache/CacheType;->a()Ljava/io/File;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    sget-object v2, Laxy;->sExternalCacheDirectory:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Laxq; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setCbcEncryptionAlgorithm(Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/snapchat/android/util/cache/CacheType;->mEncryptionAlgorithm:Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    .line 113
    return-void
.end method
