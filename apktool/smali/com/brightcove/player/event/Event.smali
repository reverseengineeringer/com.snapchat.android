.class public Lcom/brightcove/player/event/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final BUILD_VERSION:Ljava/lang/String; = "buildVersion"

.field public static final CAPTION_BACKGROUND:Ljava/lang/String; = "captionBackground"

.field public static final CAPTION_EDGE_COLOR:Ljava/lang/String; = "captionEdgeColor"

.field public static final CAPTION_EDGE_TYPE:Ljava/lang/String; = "captionEdgeType"

.field public static final CAPTION_FONT:Ljava/lang/String; = "captionFont"

.field public static final CAPTION_FONT_COLOR:Ljava/lang/String; = "captionFontColor"

.field public static final CAPTION_FONT_SIZE:Ljava/lang/String; = "captionFontSize"

.field public static final CAPTION_HIGHLIGHT:Ljava/lang/String; = "captionHighlight"

.field public static final CUE_POINT:Ljava/lang/String; = "cue_point"

.field public static final CUE_POINTS:Ljava/lang/String; = "cue_points"

.field public static final CURRENT_VIDEO:Ljava/lang/String; = "currentVideo"

.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final EMITTER:Ljava/lang/String; = "emitter"

.field public static final END_TIME:Ljava/lang/String; = "endTime"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final ERRORS:Ljava/lang/String; = "errors"

.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final ERROR_EXTRA:Ljava/lang/String; = "errorExtra"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final FROM_SEEK_POSITION:Ljava/lang/String; = "fromSeekPosition"

.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final INSTANCE_STATE:Ljava/lang/String; = "instanceState"

.field public static final LEFT_VOLUME:Ljava/lang/String; = "leftVolume"

.field public static final LIST:Ljava/lang/String; = "list"

.field public static final NEXT_VIDEO:Ljava/lang/String; = "nextVideo"

.field public static final ORIGINAL_EVENT:Ljava/lang/String; = "original"

.field public static final PERCENT_COMPLETE:Ljava/lang/String; = "percentComplete"

.field public static final PLAYHEAD_POSITION:Ljava/lang/String; = "playheadPosition"

.field public static final PLAYLIST:Ljava/lang/String; = "playlist"

.field public static final PLUGIN_NAME:Ljava/lang/String; = "pluginName"

.field public static final REQUEST_TOKEN:Ljava/lang/String; = "requestToken"

.field public static final RIGHT_VOLUME:Ljava/lang/String; = "rightVolume"

.field public static final SEEK_CONTROLS_VISIBILITY:Ljava/lang/String; = "seekControlsVisibility"

.field public static final SEEK_POSITION:Ljava/lang/String; = "seekPosition"

.field public static final SKIP_CUE_POINTS:Ljava/lang/String; = "skipCuePoints"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final START_TIME:Ljava/lang/String; = "startTime"

.field private static final TAG:Ljava/lang/String;

.field public static final TTML_DOCUMENT:Ljava/lang/String; = "ttmlDocument"

.field public static final UUID:Ljava/lang/String; = "uuid"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VIDEO:Ljava/lang/String; = "video"

.field public static final VIDEO_DURATION:Ljava/lang/String; = "duration"

.field public static final VIDEO_HEIGHT:Ljava/lang/String; = "height"

.field public static final VIDEO_STILL:Ljava/lang/String; = "video_still"

.field public static final VIDEO_WIDTH:Ljava/lang/String; = "width"

.field public static final WEBVTT_DOCUMENT:Ljava/lang/String; = "webvttDocument"


# instance fields
.field private isPrevented:Z

.field private isStopped:Z

.field public final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/brightcove/player/event/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/event/Event;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/brightcove/player/event/Event;->type:Ljava/lang/String;

    .line 217
    iput-boolean v0, p0, Lcom/brightcove/player/event/Event;->isPrevented:Z

    .line 218
    iput-boolean v0, p0, Lcom/brightcove/player/event/Event;->isStopped:Z

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    .line 220
    return-void
.end method


# virtual methods
.method public getIntegerProperty(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 274
    const/4 v0, -0x1

    .line 275
    iget-object v1, p0, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 284
    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error converting value of <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> for key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 282
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find property with name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/brightcove/player/event/Event;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isPrevented()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/brightcove/player/event/Event;->isPrevented:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/brightcove/player/event/Event;->isStopped:Z

    return v0
.end method

.method public preventDefault()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/event/Event;->isPrevented:Z

    .line 236
    return-void
.end method

.method public stopPropagation()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/event/Event;->isStopped:Z

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brightcove/player/event/Event;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
