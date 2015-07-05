.class public final Lawq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHAT_MEDIA_IMAGE_CACHE:Lawp;

.field public static final DAY_IN_MINUTES:I = 0x5a0

.field public static final DISCOVER_SHARE:Lawp;

.field public static final DSNAP_MEDIA_CACHE:Lawp;

.field public static final FONT_CACHE:Lawp;

.field public static final GEOFILTER_CACHE:Lawp;

.field public static final GEOFILTER_METADATA_CACHE:Lawp;

.field private static final MAX_CACHED_FONTS:I = 0xa

.field private static final MAX_CACHED_GEOFITLER_METADATA:I = 0x14

.field public static final MONTH_IN_MINUTES:I = 0x9c40

.field public static final MY_SNAP_IMAGE_CACHE:Lawp;

.field public static final MY_SNAP_VIDEO_CACHE:Lawp;

.field public static final MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

.field public static final PROFILE_IMAGE_CACHE:Lawp;

.field public static final SAVE_STORY_TO_GALLERY_IMAGE_CACHE:Lawp;

.field public static final SNAP_RECEIVED_IMAGE_CACHE:Lawp;

.field public static final SNAP_RECEIVED_VIDEO_CACHE:Lawp;

.field public static final STORY_RECEIVED_IMAGE_CACHE:Lawp;

.field public static final STORY_RECEIVED_VIDEO_CACHE:Lawp;

.field public static final STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Lawp;

.field public static final THREE_DAYS_IN_MINUTES:I = 0x10e0

.field public static final UNENCRYPTED_VIDEO_CACHE:Lawp;

.field public static final UNZIPPED_BITMAP_SUFFIX:Ljava/lang/String; = "-unzippedbitmap"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x9c40

    const-wide/16 v2, 0x5a0

    .line 15
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->MY_MEDIA:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->DSNAP_MEDIA_CACHE:Lawp;

    .line 22
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->MY_STORY_THUMBNAIL:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

    .line 29
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->STORIES_RECEIVED_THUMBNAIL:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Lawp;

    .line 35
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->STORIES_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->STORY_RECEIVED_IMAGE_CACHE:Lawp;

    .line 36
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->STORIES_RECEIVED_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->STORY_RECEIVED_VIDEO_CACHE:Lawp;

    .line 41
    new-instance v0, Lcom/snapchat/android/util/cache/DiscoverShareCache;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->DISCOVER_SHARE:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/cache/DiscoverShareCache;-><init>(Lcom/snapchat/android/util/cache/CacheType;)V

    sput-object v0, Lawq;->DISCOVER_SHARE:Lawp;

    .line 46
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v4, v5}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->SNAP_RECEIVED_IMAGE_CACHE:Lawp;

    .line 47
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_RECEIVED_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v4, v5}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->SNAP_RECEIVED_VIDEO_CACHE:Lawp;

    .line 64
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_TO_SEND_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    .line 65
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->SNAPS_TO_SEND_VIDEO:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    .line 67
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->CHAT_MEDIA_RECEIVED_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->CHAT_MEDIA_IMAGE_CACHE:Lawp;

    .line 69
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->PROFILE_IMAGE:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v4, v5}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    .line 75
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->UNENCRYPTED_VIDEOS:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->UNENCRYPTED_VIDEO_CACHE:Lawp;

    .line 80
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->SAVE_STORY_TO_GALLERY_IMAGES:Lcom/snapchat/android/util/cache/CacheType;

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->SAVE_STORY_TO_GALLERY_IMAGE_CACHE:Lawp;

    .line 85
    new-instance v0, Lawp;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->GEOFILTERS_MEDIA:Lcom/snapchat/android/util/cache/CacheType;

    const-wide/16 v2, 0x10e0

    invoke-direct {v0, v1, v2, v3}, Lawp;-><init>(Lcom/snapchat/android/util/cache/CacheType;J)V

    sput-object v0, Lawq;->GEOFILTER_CACHE:Lawp;

    .line 90
    new-instance v0, Lawu;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->GEOFILTERS_METADATA:Lcom/snapchat/android/util/cache/CacheType;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lawu;-><init>(Lcom/snapchat/android/util/cache/CacheType;I)V

    sput-object v0, Lawq;->GEOFILTER_METADATA_CACHE:Lawp;

    .line 96
    new-instance v0, Lawu;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->FONTS:Lcom/snapchat/android/util/cache/CacheType;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lawu;-><init>(Lcom/snapchat/android/util/cache/CacheType;I)V

    sput-object v0, Lawq;->FONT_CACHE:Lawp;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lawq$1;

    invoke-direct {v0}, Lawq$1;-><init>()V

    .line 124
    const-string v1, "Cache sanitizeAll() thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lawq$2;

    invoke-direct {v0}, Lawq$2;-><init>()V

    .line 154
    const-string v1, "Cache clearAll() thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    return-void
.end method
