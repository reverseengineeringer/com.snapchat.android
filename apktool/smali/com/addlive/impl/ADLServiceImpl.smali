.class public Lcom/addlive/impl/ADLServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/AddLiveService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/impl/ADLServiceImpl$2;,
        Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;,
        Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;
    }
.end annotation


# instance fields
.field private appContext:Landroid/content/Context;

.field private broadcastHandler:Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

.field private nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

.field private usesExternalCamera:Z

.field private usesLoudSpeaker:Z


# direct methods
.method public constructor <init>(Lcom/addlive/impl/ADLNativeWrapper;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/addlive/impl/ADLServiceImpl;->usesLoudSpeaker:Z

    .line 79
    iput-object p1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    .line 80
    iput-object p2, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    .line 81
    iput-boolean p3, p0, Lcom/addlive/impl/ADLServiceImpl;->usesExternalCamera:Z

    .line 82
    new-instance v0, Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/impl/ADLServiceImpl$1;)V

    iput-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->broadcastHandler:Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

    .line 83
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->broadcastHandler:Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/addlive/impl/ADLServiceImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/addlive/impl/ADLServiceImpl;)Lcom/addlive/impl/ADLNativeWrapper;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    return-object v0
.end method


# virtual methods
.method public addServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/addlive/service/listener/AddLiveServiceListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method addServiceListener()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p2}, Lcom/addlive/impl/ADLNativeWrapper;->addServiceListener(Lcom/addlive/service/listener/AddLiveServiceListener;)V

    .line 159
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public cancelDeferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 324
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method cancelDeferredDisconnect("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "cancelDeferredDisconnect"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 327
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$UpdateAudioSettingsResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 328
    return-void
.end method

.method public connect(Lcom/addlive/service/Responder;Lcom/addlive/service/ConnectionDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Lcom/addlive/service/MediaConnection;",
            ">;",
            "Lcom/addlive/service/ConnectionDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x3ee

    .line 285
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method connect("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Lcom/addlive/impl/ServiceRequest;

    const-string v0, "connect"

    invoke-direct {v1, v0}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 288
    :try_start_0
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p2}, Lcom/addlive/service/ConnectionDescriptor;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 289
    invoke-virtual {p2}, Lcom/addlive/service/ConnectionDescriptor;->getScopeId()Ljava/lang/String;

    move-result-object v0

    .line 290
    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p2}, Lcom/addlive/service/ConnectionDescriptor;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 293
    :cond_0
    iget-object v2, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v3, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;

    invoke-direct {v3, p0, p1, v0}, Lcom/addlive/impl/ADLServiceImpl$MediaConnResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to serialise the connection descriptor due to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0

    .line 297
    :catch_1
    move-exception v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to serialise the connection descriptor due to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public deferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 314
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method deferredDisconnect("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "deferredDisconnect"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 317
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 318
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;

    invoke-direct {v2, p0, p1, p2}, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 319
    return-void
.end method

.method public disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method disconnect("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "disconnect"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 308
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;

    invoke-direct {v2, p0, p1, p2}, Lcom/addlive/impl/ADLServiceImpl$DisconnectResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 309
    return-void
.end method

.method public draw(Lcom/addlive/service/DrawRequest;)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p1}, Lcom/addlive/impl/ADLNativeWrapper;->draw(Lcom/addlive/service/DrawRequest;)V

    .line 475
    return-void
.end method

.method public flushEvents(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 536
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "flushEvents"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 538
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 539
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 540
    return-void
.end method

.method public getAudioOutputDevice(Lcom/addlive/service/Responder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Lcom/addlive/service/AudioOutputDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/addlive/impl/ADLServiceImpl;->usesLoudSpeaker:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/addlive/service/AudioOutputDevice;->LOUD_SPEAKER:Lcom/addlive/service/AudioOutputDevice;

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    sget-object v0, Lcom/addlive/service/AudioOutputDevice;->PHONE_SPEAKER:Lcom/addlive/service/AudioOutputDevice;

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAudioOutputDeviceNames(Lcom/addlive/service/Responder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/addlive/service/AudioOutputDevice;->asDeviceArray()[Lcom/addlive/service/Device;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public getConnectionByScope(Ljava/lang/String;)Lcom/addlive/service/MediaConnection;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0}, Lcom/addlive/impl/ADLNativeWrapper;->getActiveConnections()Ljava/util/Map;

    move-result-object v0

    .line 334
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/MediaConnection;

    return-object v0
.end method

.method public getEventsChecksum(Lcom/addlive/service/Responder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getEventsChecksum"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 532
    return-void
.end method

.method public getProperty(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 442
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method getProperty("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v0, "global.dev.audio.androidAudioStream"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 457
    :goto_0
    return-void

    .line 448
    :cond_0
    const-string v0, "global.logs"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Lcom/addlive/impl/AerPublisher;

    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/addlive/impl/AerPublisher;-><init>(Landroid/content/Context;)V

    .line 450
    invoke-virtual {v0}, Lcom/addlive/impl/AerPublisher;->collectLogs()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    goto :goto_0

    .line 454
    :cond_1
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getProperty"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 456
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    goto :goto_0
.end method

.method public getVersion(Lcom/addlive/service/Responder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method getVersion()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getVersion"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 108
    return-void
.end method

.method public getVideoCaptureDevice(Lcom/addlive/service/Responder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method getVideoCaptureDevice()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getVideoCaptureDevice"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 199
    return-void
.end method

.method public getVideoCaptureDeviceNames(Lcom/addlive/service/Responder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/addlive/service/Device;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method getVideoCaptureDeviceNames()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "getVideoCaptureDeviceNames"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$DevicesResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 175
    return-void
.end method

.method public injectFrame([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V
    .locals 10

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/addlive/impl/ADLServiceImpl;->usesExternalCamera:Z

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The SDK is not configured to use the external camera implementation. Enable this during the platform init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 487
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 491
    invoke-virtual {p2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 493
    invoke-virtual {p2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    .line 495
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 496
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    div-int/lit8 v0, v0, 0x5a

    add-int/2addr v0, v7

    rem-int/lit8 v6, v0, 0x4

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    check-cast v0, Lcom/addlive/impl/ADLNativeWrapperImpl;

    invoke-virtual {p2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getHeight()I

    move-result v3

    array-length v4, p1

    const/16 v5, 0x11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/addlive/impl/ADLNativeWrapperImpl;->injectFrame([BIIIIIIJ)V

    .line 515
    return-void

    .line 498
    :cond_1
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    div-int/lit8 v0, v0, 0x5a

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v6, v0, 0x4

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {p2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getOrientation()I

    move-result v6

    goto :goto_0
.end method

.method public monitorSpeechActivity(Lcom/addlive/service/Responder;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 413
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method monitorSpeechActivity("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "monitorSpeechActivity"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 417
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 418
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 419
    return-void
.end method

.method public networkTest(Lcom/addlive/service/Responder;Lcom/addlive/service/ConnectionDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Lcom/addlive/service/ConnectionQuality;",
            ">;",
            "Lcom/addlive/service/ConnectionDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method networkTest()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "networkTest"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 275
    :try_start_0
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p2}, Lcom/addlive/service/ConnectionDescriptor;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 276
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;

    invoke-direct {v2, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$NetworkTestResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/addlive/service/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method publish("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "publish"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 343
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p3}, Lcom/addlive/service/MediaType;->getStrValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 344
    sget-object v1, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    if-ne p3, v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, Lcom/addlive/impl/ADLNativeWrapper;->setAudioPublishingState(ZLjava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v1}, Lcom/addlive/impl/ADLNativeWrapper;->updateAudioSettings()V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 349
    return-void
.end method

.method public reconfigureVideo(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/VideoStreamDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/addlive/service/VideoStreamDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method reconfigureVideo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v1, Lcom/addlive/impl/ServiceRequest;

    const-string v0, "reconfigureVideo"

    invoke-direct {v1, v0}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 131
    :try_start_0
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p3}, Lcom/addlive/service/VideoStreamDescriptor;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v2, v1}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 137
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const/16 v2, 0x3ee

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to serialise the video stream descriptor due to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->broadcastHandler:Lcom/addlive/impl/ADLServiceImpl$ADLBroadcastHandler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    const-string v0, "AddLive_SDK"

    const-string v1, "Got an attempt to unregister not registered broadcast receiver"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/addlive/service/listener/AddLiveServiceListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method removeServiceListener()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p2}, Lcom/addlive/impl/ADLNativeWrapper;->removeServiceListener(Lcom/addlive/service/listener/AddLiveServiceListener;)V

    .line 167
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public renderSink(Lcom/addlive/service/RenderRequest;)I
    .locals 2

    .prologue
    .line 461
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method renderSink()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p1}, Lcom/addlive/impl/ADLNativeWrapper;->renderSink(Lcom/addlive/service/RenderRequest;)I

    move-result v0

    return v0
.end method

.method public sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/addlive/impl/ADLServiceImpl;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    return-void
.end method

.method public sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 376
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method sendMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "sendMessage"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 380
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 381
    if-eqz p4, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 385
    return-void
.end method

.method public sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/addlive/impl/ADLServiceImpl;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[BLjava/lang/Long;)V

    .line 392
    return-void
.end method

.method public sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[BLjava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method sendMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/addlive/impl/ADLServiceImpl;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    return-void
.end method

.method public sendReportWithCredentials(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 548
    new-instance v0, Lcom/addlive/impl/ADLServiceImpl$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/addlive/impl/ADLServiceImpl$1;-><init>(Lcom/addlive/impl/ADLServiceImpl;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "global.service.X"

    invoke-virtual {p0, v0, v1}, Lcom/addlive/impl/ADLServiceImpl;->getProperty(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/addlive/service/MediaType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method setAllowedSenders("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Lcom/addlive/impl/ServiceRequest;

    const-string v0, "setAllowedSenders"

    invoke-direct {v1, v0}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 145
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 147
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 148
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 151
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v2, v1}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 152
    return-void
.end method

.method public setApplicationId(Lcom/addlive/service/Responder;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method setApplicationId("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "setApplicationId"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 99
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 100
    return-void
.end method

.method public setAudioOutputDevice(Lcom/addlive/service/Responder;Lcom/addlive/service/AudioOutputDevice;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/addlive/service/AudioOutputDevice;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Lcom/addlive/impl/ADLServiceImpl$2;->$SwitchMap$com$addlive$service$AudioOutputDevice:[I

    invoke-virtual {p2}, Lcom/addlive/service/AudioOutputDevice;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 220
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/addlive/impl/ADLNativeWrapper;->setLoudSpeaker(Z)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/addlive/impl/ADLNativeWrapper;->setLoudSpeaker(Z)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioOutputDevice(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    :try_start_0
    invoke-static {p2}, Lcom/addlive/service/AudioOutputDevice;->fromStringId(Ljava/lang/String;)Lcom/addlive/service/AudioOutputDevice;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/addlive/impl/ADLServiceImpl;->setAudioOutputDevice(Lcom/addlive/service/Responder;Lcom/addlive/service/AudioOutputDevice;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const/16 v1, 0x3ea

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 433
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method setProperty("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "setProperty"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 436
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 437
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 438
    return-void
.end method

.method public setProxyServer(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 114
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method setProxyServer("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "setProxyServer"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 119
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 120
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 121
    return-void
.end method

.method public setVideoCaptureDevice(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method setVideoCaptureDevice("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "setVideoCaptureDevice"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 190
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 192
    return-void
.end method

.method public setVideoCaptureDevice(Lcom/addlive/service/Responder;Ljava/lang/String;Landroid/view/SurfaceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/addlive/impl/ADLServiceImpl;->setVideoCaptureDevice(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public startEventsTracking(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 520
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v1, Lcom/addlive/impl/ServiceRequest;

    const-string v2, "startEventsTracking"

    invoke-direct {v1, v2}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 525
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v2, v1}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 526
    return-void
.end method

.method public startLocalVideo(Lcom/addlive/service/Responder;Landroid/view/SurfaceView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/SurfaceView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method startLocalVideo()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v1, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v1, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v1, p2}, Lcom/addlive/impl/ADLNativeWrapper;->startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/view/SurfaceView;)V

    .line 245
    return-void
.end method

.method public startLocalVideo(Lcom/addlive/service/Responder;Landroid/view/TextureView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/TextureView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method startLocalVideo()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v1, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v1, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v1, p2}, Lcom/addlive/impl/ADLNativeWrapper;->startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/view/TextureView;)V

    .line 252
    return-void
.end method

.method public startLocalVideo(Lcom/addlive/service/Responder;Landroid/widget/FrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/FrameLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 257
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method startLocalVideo()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v1, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;

    invoke-direct {v1, p0, p1}, Lcom/addlive/impl/ADLServiceImpl$StringResultAdapter;-><init>(Lcom/addlive/impl/ADLServiceImpl;Lcom/addlive/service/Responder;)V

    invoke-interface {v0, v1, p2}, Lcom/addlive/impl/ADLNativeWrapper;->startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/widget/FrameLayout;)V

    .line 259
    return-void
.end method

.method public startMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 403
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method startMeasuringStats("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "startMeasuringStatistics"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 407
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 408
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 409
    return-void
.end method

.method public stopLocalVideo(Lcom/addlive/service/Responder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method stopLocalVideo()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "stopLocalVideo"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 266
    return-void
.end method

.method public stopMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 424
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method stopMeasuringStats("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "stopMeasuringStatistics"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 427
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 428
    return-void
.end method

.method public stopRender(I)V
    .locals 2

    .prologue
    .line 467
    const-string v0, "AddLive_SDK"

    const-string v1, "Calling method stopRender()"

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v0, p1}, Lcom/addlive/impl/ADLNativeWrapper;->stopRender(I)V

    .line 469
    return-void
.end method

.method public unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/addlive/service/MediaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 354
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling method unpublish("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v0, Lcom/addlive/impl/ServiceRequest;

    const-string v1, "unpublish"

    invoke-direct {v0, v1}, Lcom/addlive/impl/ServiceRequest;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 357
    invoke-virtual {v0}, Lcom/addlive/impl/ServiceRequest;->getParams()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p3}, Lcom/addlive/service/MediaType;->getStrValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 358
    sget-object v1, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    if-ne p3, v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Lcom/addlive/impl/ADLNativeWrapper;->setAudioPublishingState(ZLjava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    invoke-interface {v1}, Lcom/addlive/impl/ADLNativeWrapper;->updateAudioSettings()V

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/addlive/impl/ADLServiceImpl;->nativePlatform:Lcom/addlive/impl/ADLNativeWrapper;

    new-instance v2, Lcom/addlive/impl/VoidResultAdapter;

    invoke-direct {v2, p1}, Lcom/addlive/impl/VoidResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    invoke-interface {v1, v2, v0}, Lcom/addlive/impl/ADLNativeWrapper;->invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V

    .line 363
    return-void
.end method
