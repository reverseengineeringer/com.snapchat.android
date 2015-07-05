.class public interface abstract Lcom/addlive/impl/ADLNativeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addServiceListener(Lcom/addlive/service/listener/AddLiveServiceListener;)V
.end method

.method public abstract draw(Lcom/addlive/service/DrawRequest;)V
.end method

.method public abstract getActiveConnections()Ljava/util/Map;
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
.end method

.method public abstract initCamOnNative()V
.end method

.method public abstract initPlatform()I
.end method

.method public abstract invoke(Lcom/addlive/impl/BaseResultAdapter;Lcom/addlive/impl/ServiceRequest;)V
.end method

.method public abstract releasePlatform()V
.end method

.method public abstract removeServiceListener(Lcom/addlive/service/listener/AddLiveServiceListener;)V
.end method

.method public abstract renderSink(Lcom/addlive/service/RenderRequest;)I
.end method

.method public abstract reportDisconnect(Ljava/lang/String;)V
.end method

.method public abstract setAudioPublishingState(ZLjava/lang/String;)V
.end method

.method public abstract setLoudSpeaker(Z)V
.end method

.method public abstract startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/view/SurfaceView;)V
.end method

.method public abstract startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/view/TextureView;)V
.end method

.method public abstract startLocalVideo(Lcom/addlive/impl/BaseResultAdapter;Landroid/widget/FrameLayout;)V
.end method

.method public abstract stopRender(I)V
.end method

.method public abstract updateAudioSettings()V
.end method
