.class public Lcom/brightcove/player/util/ErrorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANNOTATION_REQUIRED:Ljava/lang/String; = "annotationRequired"

.field public static final BASE_URL_REQUIRED:Ljava/lang/String; = "baseURLRequired"

.field public static final COULD_NOT_FIND_PROPERTY:Ljava/lang/String; = "couldNotFindProperty"

.field public static final CUE_POINTS_REQUIRED:Ljava/lang/String; = "cuePointsRequired"

.field public static final DELIVERY_TYPE_REQUIRED:Ljava/lang/String; = "deliveryTypeRequired"

.field public static final DUPLICATE_DELIVERY_TYPES:Ljava/lang/String; = "duplicateDeliveryTypes"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final ERROR_CONVERTING:Ljava/lang/String; = "errorConverting"

.field public static final EVENT_EMITTER_AND_COMPONENT_REQUIRED:Ljava/lang/String; = "eventEmitterAndComponentRequired"

.field public static final EVENT_EMITTER_AND_MEDIA_PLAYER_REQUIRED:Ljava/lang/String; = "eventEmitterAndMediaPlayerRequired"

.field public static final EVENT_EMITTER_REQUIRED:Ljava/lang/String; = "eventEmitterRequired"

.field public static final EVENT_REQUIRED:Ljava/lang/String; = "eventRequired"

.field public static final EVENT_TYPE_AND_LISTENER_REQUIRED:Ljava/lang/String; = "eventTypeAndListenerRequired"

.field public static final HEADERS_REQUIRED:Ljava/lang/String; = "headersRequired"

.field public static final ID_FIELD_REQUIRED:Ljava/lang/String; = "idFieldRequired"

.field public static final ID_REQUIRED:Ljava/lang/String; = "idRequired"

.field public static final IMAGE_VIEW_AND_EVENT_EMITTER_REQUIRED:Ljava/lang/String; = "imageViewAndEventEmitterRequired"

.field public static final IMAGE_VIEW_REQUIRED:Ljava/lang/String; = "imageViewRequired"

.field public static final INVALID_EMIT:Ljava/lang/String; = "invalidEmit"

.field public static final INVALID_POINT_IN_TIME:Ljava/lang/String; = "invalidPointInTime"

.field public static final INVALID_SURFACE:Ljava/lang/String; = "invalidSurface"

.field public static final INVALID_URI:Ljava/lang/String; = "invalidURI"

.field public static final INVALID_URL:Ljava/lang/String; = "invalidURL"

.field public static final JSON_AND_PROPERTIES_REQUIRED:Ljava/lang/String; = "jsonAndPropertiesRequired"

.field public static final JSON_ARRAY:Ljava/lang/String; = "jsonArray"

.field public static final JSON_REQUIRED:Ljava/lang/String; = "jsonRequired"

.field public static final KEY_NOT_FOUND:Ljava/lang/String; = "keyNotFound"

.field public static final LISTENER_REQUIRED:Ljava/lang/String; = "listenerRequired"

.field public static final MEDIA_API_COMMAND_REQUIRED:Ljava/lang/String; = "mediaAPICommandRequired"

.field public static final MEDIA_DELIVERY_REQUIRED:Ljava/lang/String; = "mediaDeliveryRequired"

.field public static final MEDIA_REQUEST_ERROR:Ljava/lang/String; = "mediaRequestError"

.field public static final MEDIA_REQUEST_INVALID_JSON:Ljava/lang/String; = "mediaRequestInvalidJSON"

.field public static final MEDIA_REQUEST_NO_JSON:Ljava/lang/String; = "mediaRequestNoJSON"

.field public static final MEDIA_REQUEST_NO_RESULTS:Ljava/lang/String; = "mediaRequestNoResults"

.field public static final MISSING_CUE_POINT_PROPERTY:Ljava/lang/String; = "missingCuePointProperty"

.field public static final NOT_PERMITTED_TO_EMIT:Ljava/lang/String; = "notPermittedToEmit"

.field public static final NOT_PERMITTED_TO_LISTEN:Ljava/lang/String; = "notPermittedToListen"

.field public static final NO_USABLE_SOURCE:Ljava/lang/String; = "noUsableSource"

.field public static final OTHER_CONSTRUCTOR:Ljava/lang/String; = "otherConstructor"

.field public static final OUT_OF_FLOW:Ljava/lang/String; = "outOfFlow"

.field public static final PROPERTIES_REQUIRED:Ljava/lang/String; = "propertiesRequired"

.field public static final QUERY_BASE_URL_REQUIRED:Ljava/lang/String; = "queryBaseURLRequired"

.field public static final READ_TOKEN_REQUIRED:Ljava/lang/String; = "readTokenRequired"

.field public static final RENDER_VIEW_AND_EVENT_EMITTER_REQUIRED:Ljava/lang/String; = "renderViewAndEventEmitterRequired"

.field public static final SOURCES_REQUIRED:Ljava/lang/String; = "sourcesRequired"

.field public static final SOURCE_COLLECTIONS_REQUIRED:Ljava/lang/String; = "sourceCollectionsRequired"

.field public static final SOURCE_COLLECTION_REQUIRED:Ljava/lang/String; = "sourceCollectionRequired"

.field public static final SOURCE_REQUIRED:Ljava/lang/String; = "sourceRequired"

.field public static final TOKEN_REQUIRED:Ljava/lang/String; = "tokenRequired"

.field public static final UNEXPECTED_TYPE:Ljava/lang/String; = "unexpectedType"

.field public static final URI_ERROR:Ljava/lang/String; = "uriError"

.field public static final URI_REQUIRED:Ljava/lang/String; = "uriRequired"

.field public static final URL_REQUIRED:Ljava/lang/String; = "urlRequired"

.field public static final VIDEOS_REQUIRED:Ljava/lang/String; = "videosRequired"

.field public static final VIDEO_PLAY_IOEXCEPTION:Ljava/lang/String; = "videoPlayIOException"

.field public static final VIDEO_REQUIRED:Ljava/lang/String; = "videoRequired"

.field private static messages:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    :try_start_0
    const-string v0, "BrightcoveErrorMessages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/util/ErrorUtil;->messages:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in ErrorUtil initializer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    :try_start_0
    sget-object v0, Lcom/brightcove/player/util/ErrorUtil;->messages:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 79
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
