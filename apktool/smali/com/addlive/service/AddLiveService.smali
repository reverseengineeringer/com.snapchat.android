.class public interface abstract Lcom/addlive/service/AddLiveService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addlive/service/AddLiveService$VideoFrameMetadata;
    }
.end annotation


# virtual methods
.method public abstract addServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V
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
.end method

.method public abstract cancelDeferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V
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
.end method

.method public abstract connect(Lcom/addlive/service/Responder;Lcom/addlive/service/ConnectionDescriptor;)V
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
.end method

.method public abstract deferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;I)V
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
.end method

.method public abstract disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V
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
.end method

.method public abstract draw(Lcom/addlive/service/DrawRequest;)V
.end method

.method public abstract flushEvents(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/Long;)V
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
.end method

.method public abstract getAudioOutputDevice(Lcom/addlive/service/Responder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Lcom/addlive/service/AudioOutputDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAudioOutputDeviceNames(Lcom/addlive/service/Responder;)V
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
.end method

.method public abstract getConnectionByScope(Ljava/lang/String;)Lcom/addlive/service/MediaConnection;
.end method

.method public abstract getEventsChecksum(Lcom/addlive/service/Responder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getProperty(Lcom/addlive/service/Responder;Ljava/lang/String;)V
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
.end method

.method public abstract getVersion(Lcom/addlive/service/Responder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getVideoCaptureDevice(Lcom/addlive/service/Responder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getVideoCaptureDeviceNames(Lcom/addlive/service/Responder;)V
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
.end method

.method public abstract injectFrame([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V
.end method

.method public abstract monitorSpeechActivity(Lcom/addlive/service/Responder;Ljava/lang/String;Z)V
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
.end method

.method public abstract networkTest(Lcom/addlive/service/Responder;Lcom/addlive/service/ConnectionDescriptor;)V
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
.end method

.method public abstract publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V
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
.end method

.method public abstract reconfigureVideo(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/VideoStreamDescriptor;)V
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
.end method

.method public abstract removeServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V
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
.end method

.method public abstract renderSink(Lcom/addlive/service/RenderRequest;)I
.end method

.method public abstract sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
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
.end method

.method public abstract sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[B)V
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
.end method

.method public abstract sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;[BLjava/lang/Long;)V
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
.end method

.method public abstract sendReportWithCredentials(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V
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
.end method

.method public abstract setAudioOutputDevice(Lcom/addlive/service/Responder;Lcom/addlive/service/AudioOutputDevice;)V
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
.end method

.method public abstract setAudioOutputDevice(Lcom/addlive/service/Responder;Ljava/lang/String;)V
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
.end method

.method public abstract setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract setProxyServer(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;I)V
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
.end method

.method public abstract setVideoCaptureDevice(Lcom/addlive/service/Responder;Ljava/lang/String;)V
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
.end method

.method public abstract setVideoCaptureDevice(Lcom/addlive/service/Responder;Ljava/lang/String;Landroid/view/SurfaceView;)V
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
.end method

.method public abstract startEventsTracking(Lcom/addlive/service/Responder;Ljava/lang/String;)V
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
.end method

.method public abstract startLocalVideo(Lcom/addlive/service/Responder;Landroid/view/SurfaceView;)V
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
.end method

.method public abstract startLocalVideo(Lcom/addlive/service/Responder;Landroid/view/TextureView;)V
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
.end method

.method public abstract startLocalVideo(Lcom/addlive/service/Responder;Landroid/widget/FrameLayout;)V
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
.end method

.method public abstract startMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;I)V
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
.end method

.method public abstract stopLocalVideo(Lcom/addlive/service/Responder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;)V
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
.end method

.method public abstract stopRender(I)V
.end method

.method public abstract unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V
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
.end method
