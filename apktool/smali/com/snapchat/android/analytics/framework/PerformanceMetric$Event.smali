.class public final enum Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/framework/PerformanceMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum CONTENT_READY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum EXIT_CAMERA_VIEW:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum FIRST_ITEM_READY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum FIRST_MEDIA_OPENED:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum FIRST_SNAP_DOWNLOAD:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum FIRST_STORY_DOWNLOAD:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum GEOFILTER_DOWNLOAD_BITMAP:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum MEDIA_VIEW_INTERVAL:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum NOTIFICATION_OPEN:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum SNAP_SEND_TIMED:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum SNAP_SENT_DELAY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum STORY_DOWNLOAD:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum STORY_POST_DELAY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum UNKNOWN:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "FIRST_SNAP_DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->FIRST_SNAP_DOWNLOAD:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 111
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "FIRST_STORY_DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->FIRST_STORY_DOWNLOAD:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 112
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "GEOFILTER_DOWNLOAD_BITMAP"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->GEOFILTER_DOWNLOAD_BITMAP:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 113
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "NOTIFICATION_OPEN"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->NOTIFICATION_OPEN:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 114
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "SNAP_SEND_TIMED"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->SNAP_SEND_TIMED:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 115
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "STORY_DOWNLOAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->STORY_DOWNLOAD:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 117
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "CONTENT_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->CONTENT_READY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 118
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "FIRST_ITEM_READY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->FIRST_ITEM_READY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 119
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "EXIT_CAMERA_VIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->EXIT_CAMERA_VIEW:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 120
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "FIRST_MEDIA_OPENED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->FIRST_MEDIA_OPENED:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 121
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->MEDIA_VIEW_INTERVAL:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 122
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "SNAP_SENT_DELAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->SNAP_SENT_DELAY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 123
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "STORY_POST_DELAY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->STORY_POST_DELAY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 124
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->UNKNOWN:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 109
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->FIRST_SNAP_DOWNLOAD:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->FIRST_STORY_DOWNLOAD:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->GEOFILTER_DOWNLOAD_BITMAP:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->NOTIFICATION_OPEN:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->SNAP_SEND_TIMED:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->STORY_DOWNLOAD:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->CONTENT_READY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->FIRST_ITEM_READY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->EXIT_CAMERA_VIEW:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->FIRST_MEDIA_OPENED:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->MEDIA_VIEW_INTERVAL:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->SNAP_SENT_DELAY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->STORY_POST_DELAY:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->UNKNOWN:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->$VALUES:[Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to convert an empty string("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") into PerformanceMetric.EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->UNKNOWN:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 136
    :goto_0
    return-object v0

    .line 134
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    sget-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->UNKNOWN:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->$VALUES:[Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    return-object v0
.end method
