.class public Lcom/addlive/impl/ADLNativeWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/impl/ADLNativeWrapper;
.implements Lcom/addlive/impl/cb/ADLInjectFrameCb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/impl/ADLNativeWrapperImpl$1;,
        Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;,
        Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;,
        Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;
    }
.end annotation


# static fields
.field private static librariesLoaded:Z


# instance fields
.field private activeConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/addlive/service/MediaConnection;",
            ">;"
        }
    .end annotation
.end field

.field private activeRenderers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/addlive/service/RenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field private camera:Lcom/addlive/impl/cam/ADLCamera;

.field private captureConfig:Lcom/addlive/impl/cam/CaptureConfig;

.field private context:Landroid/content/Context;

.field private eventDescriptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/addlive/impl/EventDescription;",
            ">;"
        }
    .end annotation
.end field

.field private idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private initOptions:Lcom/addlive/platform/PlatformInitOptions;

.field private isPublishingAudio:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/listener/AddLiveServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private nativeRendererIdToInternal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private renderIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private resultHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/addlive/impl/BaseResultAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private taskHandler:Landroid/os/Handler;

.field private useLoudSpeaker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/addlive/impl/ADLNativeWrapperImpl;->librariesLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->useLoudSpeaker:Z

    .line 78
    iput-boolean v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->isPublishingAudio:Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->resultHandlers:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->renderIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->listeners:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->eventDescriptions:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeRenderers:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->nativeRendererIdToInternal:Ljava/util/Map;

    .line 105
    new-instance v0, Lcom/addlive/impl/cam/CaptureConfig;

    invoke-direct {v0}, Lcom/addlive/impl/cam/CaptureConfig;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->captureConfig:Lcom/addlive/impl/cam/CaptureConfig;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    .line 175
    new-instance v0, Lcom/addlive/platform/PlatformInitOptions;

    invoke-direct {v0}, Lcom/addlive/platform/PlatformInitOptions;-><init>()V

    invoke-static {v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->loadLibraries(Lcom/addlive/platform/PlatformInitOptions;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/addlive/platform/PlatformInitOptions;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->useLoudSpeaker:Z

    .line 78
    iput-boolean v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->isPublishingAudio:Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->resultHandlers:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->renderIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->listeners:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->eventDescriptions:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeRenderers:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->nativeRendererIdToInternal:Ljava/util/Map;

    .line 105
    new-instance v0, Lcom/addlive/impl/cam/CaptureConfig;

    invoke-direct {v0}, Lcom/addlive/impl/cam/CaptureConfig;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->captureConfig:Lcom/addlive/impl/cam/CaptureConfig;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    .line 167
    invoke-static {p2}, Lcom/addlive/impl/ADLNativeWrapperImpl;->loadLibraries(Lcom/addlive/platform/PlatformInitOptions;)V

    .line 168
    iput-object p1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->context:Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptors()V

    .line 170
    iput-object p2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    .line 171
    iput-object p3, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->taskHandler:Landroid/os/Handler;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/addlive/impl/ADLNativeWrapperImpl;)Lcom/addlive/platform/PlatformInitOptions;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/addlive/impl/ADLNativeWrapperImpl;Lcom/addlive/impl/ServiceEvent;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->handleUserEvent(Lcom/addlive/impl/ServiceEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/addlive/impl/ADLNativeWrapperImpl;Lcom/addlive/impl/ServiceEvent;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->handleMediaStreamEvent(Lcom/addlive/impl/ServiceEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/addlive/impl/ADLNativeWrapperImpl;Lcom/addlive/impl/ServiceEvent;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->handleConnectionLostEvent(Lcom/addlive/impl/ServiceEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/addlive/impl/ADLNativeWrapperImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->eventDescriptions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/addlive/impl/ADLNativeWrapperImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/addlive/impl/ADLNativeWrapperImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->resultHandlers:Ljava/util/Map;

    return-object v0
.end method

.method private anyUsersPublishingAudio()Z
    .locals 4

    .prologue
    .line 658
    const/4 v0, 0x0

    .line 659
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/MediaConnection;

    .line 660
    invoke-interface {v0}, Lcom/addlive/service/MediaConnection;->getUsersInSession()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/User;

    .line 661
    invoke-virtual {v0}, Lcom/addlive/service/User;->isAudioPublished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    const/4 v0, 0x1

    move v1, v0

    .line 663
    goto :goto_0

    .line 667
    :cond_2
    return v1
.end method

.method private getVideoCaptureDevice(Lcom/addlive/impl/BaseResultAdapter;)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    invoke-interface {v0}, Lcom/addlive/impl/cam/ADLCamera;->getDevice()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 312
    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/addlive/impl/cam/ADLCameraHelper;->getSelectedCam()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVideoCaptureDeviceNames(Lcom/addlive/impl/BaseResultAdapter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;

    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->captureConfig:Lcom/addlive/impl/cam/CaptureConfig;

    invoke-direct {v0, v3, v1, v2}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;-><init>(Lcom/addlive/impl/cb/ADLInjectFrameCb;Landroid/content/Context;Lcom/addlive/impl/cam/CaptureConfig;)V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    .line 276
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    invoke-interface {v0}, Lcom/addlive/impl/cam/ADLCamera;->getCameraDevices()Ljava/util/List;

    move-result-object v0

    .line 277
    iput-object v3, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    .line 279
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    invoke-interface {v1}, Lcom/addlive/impl/cam/ADLCamera;->getCameraDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleConnectionLostEvent(Lcom/addlive/impl/ServiceEvent;)V
    .locals 3

    .prologue
    .line 611
    :try_start_0
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "scopeId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "willReconnect"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    const-string v1, "AddLive_SDK"

    const-string v2, "Cannot process an event within handleMediaStreamEvent as there was a parse error"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleMediaStreamEvent(Lcom/addlive/impl/ServiceEvent;)V
    .locals 6

    .prologue
    .line 573
    :try_start_0
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "scopeId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "mediaType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/addlive/service/MediaType;->fromString(Ljava/lang/String;)Lcom/addlive/service/MediaType;

    move-result-object v2

    .line 575
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/MediaConnection;

    .line 576
    if-nez v0, :cond_0

    .line 577
    const-string v0, "AddLive_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got a media event for unknown scope id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "userDetails"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "userId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/addlive/service/MediaConnection;->getUser(Ljava/lang/Long;)Lcom/addlive/service/User;

    move-result-object v1

    .line 581
    if-nez v1, :cond_1

    .line 582
    const-string v0, "AddLive_SDK"

    const-string v1, "Got a media event for unknown user"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    const-string v1, "AddLive_SDK"

    const-string v2, "Cannot process an event within handleMediaStreamEvent as there was a parse error"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 586
    :cond_1
    :try_start_1
    sget-object v3, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$service$MediaType:[I

    invoke-virtual {v2}, Lcom/addlive/service/MediaType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 599
    const-string v2, "AddLive_SDK"

    const-string v3, "Got an unknown media type"

    invoke-static {v2, v3}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_1
    invoke-interface {v0, v1}, Lcom/addlive/service/MediaConnection;->addUser(Lcom/addlive/service/User;)V

    .line 603
    invoke-virtual {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->updateAudioSettings()V

    goto :goto_0

    .line 588
    :pswitch_0
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "userDetails"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "audioPublished"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/User;->setAudioPublished(Z)V

    goto :goto_1

    .line 591
    :pswitch_1
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "userDetails"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "videoPublished"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/User;->setVideoPublished(Z)V

    .line 592
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "userDetails"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "videoSinkId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/User;->setVideoSinkId(Ljava/lang/String;)V

    goto :goto_1

    .line 595
    :pswitch_2
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "userDetails"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "screenPublished"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/User;->setScreenPublished(Z)V

    .line 596
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "userDetails"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "screenSinkId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/User;->setScreenSinkId(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleUserEvent(Lcom/addlive/impl/ServiceEvent;)V
    .locals 4

    .prologue
    .line 555
    :try_start_0
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "scopeId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/MediaConnection;

    .line 557
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "userDetails"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isConnected"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    new-instance v1, Lcom/addlive/service/User;

    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "userDetails"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/addlive/service/User;-><init>(Lorg/json/JSONObject;)V

    .line 560
    invoke-interface {v0, v1}, Lcom/addlive/service/MediaConnection;->addUser(Lcom/addlive/service/User;)V

    .line 565
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->updateAudioSettings()V

    .line 569
    :goto_1
    return-void

    .line 562
    :cond_1
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "userDetails"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/addlive/service/MediaConnection;->removeUser(Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    const-string v1, "AddLive_SDK"

    const-string v2, "Cannot process an event within handleUserEvent as there was a parse error"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private invalidate(I)V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeRenderers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/RenderRequest;

    .line 548
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Lcom/addlive/service/RenderRequest;->getInvalidateCb()Lcom/addlive/service/InvalidateCb;

    move-result-object v0

    invoke-interface {v0}, Lcom/addlive/service/InvalidateCb;->invalidate()V

    .line 551
    :cond_0
    return-void
.end method

.method private isPublishingAudio()Z
    .locals 3

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 637
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/MediaConnection;

    .line 638
    invoke-interface {v0}, Lcom/addlive/service/MediaConnection;->isLocalUserPublishingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x1

    .line 643
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private native jniDraw(Lcom/addlive/service/DrawRequest;)V
.end method

.method private native jniInitPlatform(Landroid/content/Context;Lcom/addlive/platform/PlatformInitOptions;)I
.end method

.method private native jniInjectCameraFrame([BIIIIIIJ)V
.end method

.method private native jniInvoke(Ljava/lang/String;)I
.end method

.method private native jniIsCPUSupported()Z
.end method

.method private native jniReleasePlatform()V
.end method

.method private native jniRenderSink(Lcom/addlive/service/RenderRequest;)I
.end method

.method private native jniStopRender(I)I
.end method

.method private static loadLibraries(Lcom/addlive/platform/PlatformInitOptions;)V
    .locals 4

    .prologue
    .line 139
    sget-boolean v0, Lcom/addlive/impl/ADLNativeWrapperImpl;->librariesLoaded:Z

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    const-string v0, "sccrypto"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 144
    const-string v0, "scssl"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/addlive/platform/PlatformInitOptions;->getLibName()Ljava/lang/String;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/addlive/impl/ADLNativeWrapperImpl;->librariesLoaded:Z

    goto :goto_0

    .line 149
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddLive"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/addlive/Constants;->SDK_VERSION()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "AddLive_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot initialize the AddLive SDK as the native components are not available. When compiling the application, make sure that the libAddLive${VERSION} is present in the PROJECT_ROOT/libs/armeabi-v7a directory. Alternatively you may be using a different version of the native components. This Java bindings can work only with the version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/addlive/Constants;->SDK_VERSION()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of the AddLive SDK. Error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    throw v0
.end method

.method private onEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;

    invoke-direct {v1, p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;-><init>(Lcom/addlive/impl/ADLNativeWrapperImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method

.method private onResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;

    invoke-direct {v1, p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl$ResultTask;-><init>(Lcom/addlive/impl/ADLNativeWrapperImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void
.end method

.method private prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 527
    const-class v0, Lcom/addlive/service/listener/AddLiveServiceListener;

    new-array v1, v2, [Ljava/lang/Class;

    aput-object p1, v1, v3

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 530
    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 531
    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->eventDescriptions:Ljava/util/Map;

    new-instance v3, Lcom/addlive/impl/EventDescription;

    invoke-direct {v3, v0, v1}, Lcom/addlive/impl/EventDescription;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    return-void
.end method

.method private prepareEventDescriptors()V
    .locals 2

    .prologue
    .line 491
    :try_start_0
    const-class v0, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;

    const-string v1, "onVideoFrameSizeChanged"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 493
    const-class v0, Lcom/addlive/service/listener/ConnectionLostEvent;

    const-string v1, "onConnectionLost"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 495
    const-class v0, Lcom/addlive/service/listener/SessionReconnectedEvent;

    const-string v1, "onSessionReconnected"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 497
    const-class v0, Lcom/addlive/service/listener/UserStateChangedEvent;

    const-string v1, "onUserEvent"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 499
    const-class v0, Lcom/addlive/service/listener/UserStateChangedEvent;

    const-string v1, "onMediaStreamEvent"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 501
    const-class v0, Lcom/addlive/service/listener/MicActivityEvent;

    const-string v1, "onMicActivity"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 503
    const-class v0, Lcom/addlive/service/listener/MicGainEvent;

    const-string v1, "onMicGain"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 505
    const-class v0, Lcom/addlive/service/listener/DeviceListChangedEvent;

    const-string v1, "onDeviceListChanged"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 507
    const-class v0, Lcom/addlive/service/listener/MediaStatsEvent;

    const-string v1, "onMediaStats"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 509
    const-class v0, Lcom/addlive/service/listener/MessageEvent;

    const-string v1, "onMessage"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 511
    const-class v0, Lcom/addlive/service/listener/MediaConnTypeChangedEvent;

    const-string v1, "onMediaConnTypeChanged"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 513
    const-class v0, Lcom/addlive/service/listener/MediaIssueEvent;

    const-string v1, "onMediaIssue"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 515
    const-class v0, Lcom/addlive/service/listener/SpeechActivityEvent;

    const-string v1, "onSpeechActivity"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V

    .line 517
    const-class v0, Lcom/addlive/service/listener/SubscribersCountChangedEvent;

    const-string v1, "onSubscribersCountChanged"

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->prepareEventDescriptor(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method private setProperty(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 318
    :try_start_0
    invoke-virtual {p2}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {p2}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 326
    const-string v4, "global.dev.audio.androidAudioStream"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/addlive/impl/RuntimeConfig;->AUDIO_STREAM_TYPE:I

    .line 329
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 345
    :goto_0
    return v0

    .line 321
    :catch_0
    move-exception v1

    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    const/16 v2, 0x3ea

    const-string v3, "Invalid key or value"

    invoke-interface {v1, v2, v3}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_0
    const-string v4, "global.dev.camera."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 334
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->captureConfig:Lcom/addlive/impl/cam/CaptureConfig;

    invoke-virtual {v1, v2, v3}, Lcom/addlive/impl/cam/CaptureConfig;->processProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 336
    if-nez v1, :cond_1

    .line 338
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    goto :goto_0

    .line 340
    :cond_1
    const-string v2, "Failed to configure property"

    .line 341
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 345
    goto :goto_0
.end method

.method private setVideoCaptureDevice(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V
    .locals 5

    .prologue
    .line 288
    :try_start_0
    invoke-virtual {p2}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    invoke-interface {v1, v0}, Lcom/addlive/impl/cam/ADLCamera;->setDevice(Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-static {v0}, Lcom/addlive/impl/cam/ADLCameraHelper;->setSelectedCam(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const-string v1, "AddLive_SDK"

    const-string v2, "Got an error setting video capture device"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    const/16 v2, 0xfa1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to set device: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private specialHandlingMaybe(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p2}, Lcom/addlive/impl/ServiceRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->fromString(Ljava/lang/String;)Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;

    move-result-object v2

    .line 239
    :try_start_0
    sget-object v3, Lcom/addlive/impl/ADLNativeWrapperImpl$1;->$SwitchMap$com$addlive$impl$ADLNativeWrapperImpl$MethodName:[I

    invoke-virtual {v2}, Lcom/addlive/impl/ADLNativeWrapperImpl$MethodName;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 241
    :pswitch_0
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    const-string v2, "AddLive_SDK"

    const-string v3, "Encountered an error while trying to process API call on Java binding layer"

    invoke-static {v2, v3, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->getVideoCaptureDeviceNames(Lcom/addlive/impl/BaseResultAdapter;)V

    move v0, v1

    .line 246
    goto :goto_0

    .line 248
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->getVideoCaptureDevice(Lcom/addlive/impl/BaseResultAdapter;)V

    move v0, v1

    .line 250
    goto :goto_0

    .line 252
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/addlive/impl/ADLNativeWrapperImpl;->setVideoCaptureDevice(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    goto :goto_0

    .line 255
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/addlive/impl/ADLNativeWrapperImpl;->setProperty(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 258
    :pswitch_5
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v1}, Lcom/addlive/platform/PlatformInitOptions;->useExternalVideoInput()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->stopLocalVideo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private stopLocalVideo()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    invoke-interface {v0}, Lcom/addlive/impl/cam/ADLCamera;->stop()V

    .line 447
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    invoke-interface {v0}, Lcom/addlive/impl/cam/ADLCamera;->dispose()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    .line 450
    :cond_0
    return-void
.end method


# virtual methods
.method public addServiceListener(Lcom/addlive/service/listener/AddLiveServiceListener;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method

.method public draw(Lcom/addlive/service/DrawRequest;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->jniDraw(Lcom/addlive/service/DrawRequest;)V

    .line 473
    return-void
.end method

.method public getActiveConnections()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/addlive/service/MediaConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    return-object v0
.end method

.method public initCamOnNative()V
    .locals 5

    .prologue
    .line 432
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "setVideoCaptureDevice"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/addlive/service/VideoCaptureDevice;->FRONT_CAMERA:Lcom/addlive/service/VideoCaptureDevice;

    invoke-virtual {v2}, Lcom/addlive/service/VideoCaptureDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 434
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {v0, v1}, Lcom/addlive/impl/ServiceRequest;->setId(Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->resultHandlers:Ljava/util/Map;

    new-instance v3, Lcom/addlive/impl/VoidResultAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :try_start_0
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->toJSON()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->jniInvoke(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    const-string v1, "AddLive_SDK"

    const-string v2, "Failed to init cam on native: "

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public initPlatform()I
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-direct {p0, v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->jniInitPlatform(Landroid/content/Context;Lcom/addlive/platform/PlatformInitOptions;)I

    move-result v0

    return v0
.end method

.method public injectFrame([BIIIIIIJ)V
    .locals 0

    .prologue
    .line 481
    invoke-direct/range {p0 .. p9}, Lcom/addlive/impl/ADLNativeWrapperImpl;->jniInjectCameraFrame([BIIIIIIJ)V

    .line 483
    return-void
.end method

.method public invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V
    .locals 5

    .prologue
    .line 195
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/addlive/impl/ServiceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p2, v0}, Lcom/addlive/impl/ServiceRequest;->setId(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v1}, Lcom/addlive/platform/PlatformInitOptions;->isInteractionsLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v1}, Lcom/addlive/platform/PlatformInitOptions;->getInteractionsLogTag()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[App ----> SDK] Call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/addlive/impl/ServiceRequest;->toJSON()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/addlive/impl/ADLNativeWrapperImpl;->specialHandlingMaybe(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->resultHandlers:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p2}, Lcom/addlive/impl/ServiceRequest;->toJSON()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 208
    invoke-virtual {p2}, Lcom/addlive/impl/ServiceRequest;->toJSON()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->jniInvoke(Ljava/lang/String;)I

    move-result v0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    new-instance v1, Lcom/addlive/impl/ServiceResponse;

    invoke-direct {v1}, Lcom/addlive/impl/ServiceResponse;-><init>()V

    .line 211
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/addlive/impl/ServiceResponse;->setStatus(Z)V

    .line 212
    invoke-virtual {v1, v0}, Lcom/addlive/impl/ServiceResponse;->setErrorCode(I)V

    .line 213
    const-string v0, "Invocation error. This is due to an internal platform error"

    invoke-virtual {v1, v0}, Lcom/addlive/impl/ServiceResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1, v1}, Lcom/addlive/impl/BaseResultAdapter;->handleResponse(Lcom/addlive/impl/ServiceResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    const/16 v2, 0x3ee

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to generate service request. This is due to an internal platform error. Please pass this error info to AddLive. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_3
    :try_start_1
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "JSON Request is null."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public isCPUSupported()Z
    .locals 1

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->jniIsCPUSupported()Z

    move-result v0

    return v0
.end method

.method public releasePlatform()V
    .locals 1

    .prologue
    .line 185
    :try_start_0
    invoke-direct {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->stopLocalVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->resetAudioSettings()V

    .line 190
    invoke-direct {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->jniReleasePlatform()V

    .line 191
    return-void

    .line 186
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeServiceListener(Lcom/addlive/service/listener/AddLiveServiceListener;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method public renderSink(Lcom/addlive/service/RenderRequest;)I
    .locals 5

    .prologue
    .line 454
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->renderIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 455
    invoke-virtual {p1, v0}, Lcom/addlive/service/RenderRequest;->setRendererId(I)V

    .line 456
    invoke-direct {p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->jniRenderSink(Lcom/addlive/service/RenderRequest;)I

    move-result v1

    .line 457
    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->nativeRendererIdToInternal:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeRenderers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    return v1
.end method

.method public reportDisconnect(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public resetAudioSettings()V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 632
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 633
    return-void
.end method

.method public setAudioPublishingState(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeConnections:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/MediaConnection;

    invoke-interface {v0, p1}, Lcom/addlive/service/MediaConnection;->setLocalUserIsPublishingAudio(Z)V

    .line 650
    :cond_0
    return-void
.end method

.method public setLoudSpeaker(Z)V
    .locals 0

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->useLoudSpeaker:Z

    .line 654
    invoke-virtual {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->updateAudioSettings()V

    .line 655
    return-void
.end method

.method public startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/view/SurfaceView;)V
    .locals 5

    .prologue
    .line 360
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v0}, Lcom/addlive/platform/PlatformInitOptions;->useExternalVideoInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v0

    const/16 v1, 0x3f2

    const-string v2, "Cannot start local video as it is already active. Stop previous local video session in order to change the view rendering it"

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 369
    :cond_0
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraSurfaceView;

    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->captureConfig:Lcom/addlive/impl/cam/CaptureConfig;

    invoke-direct {v0, p0, v1, v2}, Lcom/addlive/impl/cam/ADLCameraSurfaceView;-><init>(Lcom/addlive/impl/cb/ADLInjectFrameCb;Landroid/content/Context;Lcom/addlive/impl/cam/CaptureConfig;)V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    .line 370
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/addlive/impl/cam/ADLCamera;->start(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_1
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "startLocalVideo"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, p1, v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    const-string v1, "AddLive_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception starting local video: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    const/16 v2, 0xfa1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to start camera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/view/TextureView;)V
    .locals 5

    .prologue
    .line 385
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v0}, Lcom/addlive/platform/PlatformInitOptions;->useExternalVideoInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v0

    const/16 v1, 0x3f2

    const-string v2, "Cannot start local video as it is already active. Stop previous local video session in order to change the view rendering it"

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    .line 405
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraTextureView;

    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->captureConfig:Lcom/addlive/impl/cam/CaptureConfig;

    invoke-direct {v0, p0, v1, v2}, Lcom/addlive/impl/cam/ADLCameraTextureView;-><init>(Lcom/addlive/impl/cb/ADLInjectFrameCb;Landroid/content/Context;Lcom/addlive/impl/cam/CaptureConfig;)V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    .line 395
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    invoke-interface {v0, p2}, Lcom/addlive/impl/cam/ADLCamera;->start(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_1
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "startLocalVideo"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0, p1, v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    const-string v1, "AddLive_SDK"

    const-string v2, "Got exception starting local video"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    const/16 v2, 0xfa1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to start camera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/widget/FrameLayout;)V
    .locals 5

    .prologue
    .line 408
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;

    invoke-virtual {v0}, Lcom/addlive/platform/PlatformInitOptions;->useExternalVideoInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v0

    const/16 v1, 0x3f2

    const-string v2, "Cannot start local video as it is already active. Stop previous local video session in order to change the view rendering it"

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v0, Lcom/addlive/impl/cam/ADLCameraFrameLayout;

    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->captureConfig:Lcom/addlive/impl/cam/CaptureConfig;

    invoke-direct {v0, p0, v1, v2}, Lcom/addlive/impl/cam/ADLCameraFrameLayout;-><init>(Lcom/addlive/impl/cb/ADLInjectFrameCb;Landroid/content/Context;Lcom/addlive/impl/cam/CaptureConfig;)V

    iput-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    .line 418
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->camera:Lcom/addlive/impl/cam/ADLCamera;

    invoke-interface {v0, p2}, Lcom/addlive/impl/cam/ADLCamera;->start(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_1
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "startLocalVideo"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, p1, v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    const-string v1, "AddLive_SDK"

    const-string v2, "Got exception starting local video"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    invoke-virtual {p1}, Lcom/addlive/impl/BaseResultAdapter;->getResponder()Lcom/addlive/service/Responder;

    move-result-object v1

    const/16 v2, 0xfa1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to start camera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public stopRender(I)V
    .locals 2

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->jniStopRender(I)I

    .line 465
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->nativeRendererIdToInternal:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 466
    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->activeRenderers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_0
    return-void
.end method

.method public updateAudioSettings()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 621
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 622
    invoke-direct {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->anyUsersPublishingAudio()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->isPublishingAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 623
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 624
    iget-boolean v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl;->useLoudSpeaker:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method
