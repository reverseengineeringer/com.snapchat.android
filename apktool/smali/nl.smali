.class public final Lnl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final COUNT_METRIC_PARAM_NAME:Ljava/lang/String; = "count"

.field public static final IMAGE_COUNT_METRIC_PARAM_NAME:Ljava/lang/String; = "image_count"

.field public static final MEDIA_DURATION_METRIC_PARAM_NAME:Ljava/lang/String; = "media_duration"

.field public static final METRIC_NAME:Ljava/lang/String; = "SAVE_ENTIRE_STORY"

.field public static final REASON_METRIC_PARAM_NAME:Ljava/lang/String; = "reason"

.field public static final SAVE_STORY_TIME_METRIC_PARAM_NAME:Ljava/lang/String; = "save_story_time"

.field public static final SHOULD_LOG_TO_FLURRY:Z = false

.field public static final SUCCESS_METRIC_PARAM_NAME:Ljava/lang/String; = "success"

.field public static final TRANSCODING_STATUS_METRIC_PARAM_NAME:Ljava/lang/String; = "transcoding_status"

.field public static final VIDEO_BITRATE_METRIC_PARAM_NAME:Ljava/lang/String; = "video_bitrate"

.field public static final VIDEO_COUNT_METRIC_PARAM_NAME:Ljava/lang/String; = "video_count"

.field public static final VIDEO_FRAMERATE_METRIC_PARAM_NAME:Ljava/lang/String; = "video_framerate"

.field public static final VIDEO_HEIGHT_METRIC_PARAM_NAME:Ljava/lang/String; = "video_height"

.field public static final VIDEO_WIDTH_METRIC_PARAM_NAME:Ljava/lang/String; = "video_width"

.field private static final sInstance:Lnl;


# instance fields
.field private final mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lnl;

    invoke-direct {v0}, Lnl;-><init>()V

    sput-object v0, Lnl;->sInstance:Lnl;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;-><init>()V

    invoke-direct {p0, v0}, Lnl;-><init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;)V
    .locals 0
    .param p1    # Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lnl;->mEasyMetricFactory:Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;

    .line 68
    return-void
.end method

.method public static a()Lnl;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lnl;->sInstance:Lnl;

    return-object v0
.end method
