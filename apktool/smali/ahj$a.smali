.class final Lahj$a;
.super Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lahj;


# direct methods
.method private constructor <init>(Lahj;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lahj$a;->a:Lahj;

    invoke-direct {p0}, Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lahj;B)V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lahj$a;-><init>(Lahj;)V

    return-void
.end method


# virtual methods
.method public final onConnectionLost(Lcom/addlive/service/listener/ConnectionLostEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 713
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got lost connection to AddLive session with scope: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->getScopeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    sget-object v0, Lahj$8;->a:[I

    iget-object v1, p0, Lahj$a;->a:Lahj;

    iget-object v1, v1, Lahj;->i:Lahh$b;

    invoke-virtual {v1}, Lahh$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 729
    :goto_0
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lahj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    const-string v0, "livechat"

    const-string v1, "Got connection lost for deferred disconnected connection. Canceling reconnect"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {v0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "disconnectOnConnLost"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->getScopeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 746
    :goto_1
    return-void

    .line 721
    :pswitch_0
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got user event while the application is in a wrong state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahj$a;->a:Lahj;

    iget-object v2, v2, Lahj;->i:Lahh$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 724
    :pswitch_1
    const-string v0, "livechat"

    const-string v1, "Got a connection lost event"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {v0}, Lahj;->h()V

    .line 736
    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->isWillReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lahj$a;->a:Lahj;

    sget-object v1, Lahh$b;->c:Lahh$b;

    iput-object v1, v0, Lahj;->i:Lahh$b;

    goto :goto_1

    .line 742
    :cond_1
    const-string v0, "livechat"

    const-string v1, "Got lost connection to AddLive session - the SDK will not attempt to reconnect due toexpired credentials. Will try to reconnect with hopefully updated credentials"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v1, p0, Lahj$a;->a:Lahj;

    iget-object v1, v1, Lahj;->h:Lbic;

    invoke-virtual {v0, v1}, Lahj;->b(Lbic;)V

    goto :goto_1

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onMediaStreamEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 817
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lahj;->a(Lahj;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getMediaType()Lcom/addlive/service/MediaType;

    move-result-object v0

    sget-object v1, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    if-ne v0, v1, :cond_0

    .line 825
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    const-string v0, "livechat"

    const-string v1, "Remote peer published video. Rendering it"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getVideoSinkId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lahj;->g:Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {v0}, Lahj;->i()V

    .line 833
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->m:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    .line 834
    iget-object v0, p0, Lahj$a;->a:Lahj;

    sget v1, Lahh$d;->b:I

    iput v1, v0, Lahj;->k:I

    .line 844
    :goto_1
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v1

    iput-boolean v1, v0, Lahj;->l:Z

    .line 845
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-boolean v0, v0, Lahj;->l:Z

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->a:Lahl$a;

    invoke-interface {v0, v4}, Lahl$a;->a(Z)V

    goto :goto_0

    .line 837
    :cond_2
    iget-object v0, p0, Lahj$a;->a:Lahj;

    const-string v1, ""

    iput-object v1, v0, Lahj;->g:Ljava/lang/String;

    .line 839
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {v0}, Lahj;->j()V

    .line 840
    iget-object v0, p0, Lahj$a;->a:Lahj;

    sget v1, Lahh$d;->a:I

    iput v1, v0, Lahj;->k:I

    goto :goto_1
.end method

.method public final onMessage(Lcom/addlive/service/listener/MessageEvent;)V
    .locals 7

    .prologue
    const/16 v6, 0x280

    .line 854
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/MessageEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lahj;->a(Lahj;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/addlive/service/listener/MessageEvent;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 860
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lahg;

    const-string v3, "messageType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lahg;-><init>(Ljava/lang/String;)V

    const-string v3, "meta"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "meta"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v2, Lahg;->b:Lorg/json/JSONObject;

    .line 861
    :cond_2
    const-string v1, "CHANGE_PUBLISHED_RESOLUTION"

    iget-object v3, v2, Lahg;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lahj$a;->a:Lahj;

    iget-object v3, v2, Lahg;->b:Lorg/json/JSONObject;

    const-string v4, "width"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v2, v2, Lahg;->b:Lorg/json/JSONObject;

    const-string v4, "height"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Lcom/addlive/service/VideoStreamDescriptor;

    invoke-direct {v4}, Lcom/addlive/service/VideoStreamDescriptor;-><init>()V

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxFps(I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/addlive/service/VideoStreamDescriptor;->setUseAdaptation(Z)V

    if-ge v2, v6, :cond_3

    invoke-virtual {v4, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxHeight(I)V

    invoke-virtual {v4, v3}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxWidth(I)V

    :goto_1
    invoke-virtual {v1}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v2

    const-string v3, "reconfigureVideo"

    invoke-static {v3}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v3

    iget-object v1, v1, Lahj;->h:Lbic;

    invoke-virtual {v1}, Lbic;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v4}, Lcom/addlive/service/AddLiveService;->reconfigureVideo(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/VideoStreamDescriptor;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 865
    :catch_0
    move-exception v1

    const-string v1, "livechat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse AddLive message. raw data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 862
    :cond_3
    const/16 v5, 0x280

    :try_start_1
    invoke-virtual {v4, v5}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxHeight(I)V

    mul-int/lit16 v3, v3, 0x280

    div-int v2, v3, v2

    invoke-virtual {v4, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxWidth(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final onSessionReconnected(Lcom/addlive/service/listener/SessionReconnectedEvent;)V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->h:Lbic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/SessionReconnectedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lahj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lahj$a;->a:Lahj;

    sget-object v1, Lahh$b;->d:Lahh$b;

    iput-object v1, v0, Lahj;->i:Lahh$b;

    .line 756
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget v0, v0, Lahj;->j:I

    sget v1, Lahh$d;->a:I

    if-eq v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {v0}, Lahj;->c()V

    goto :goto_0
.end method

.method public final onUserEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 764
    sget-object v0, Lahj$8;->a:[I

    iget-object v3, p0, Lahj$a;->a:Lahj;

    iget-object v3, v3, Lahj;->i:Lahh$b;

    invoke-virtual {v3}, Lahh$b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 786
    :cond_0
    :goto_0
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lahj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    const-string v0, "livechat"

    const-string v1, "Got user event for session other than the current most one. Ignoring"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    :goto_1
    return-void

    .line 768
    :pswitch_0
    const-string v0, "livechat"

    const-string v3, "Got user event prior to receiving the connect result. Forcing the onConnected()"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->h:Lbic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lahj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {v0}, Lahj;->g()V

    goto :goto_0

    .line 778
    :pswitch_1
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Got user event while the application is in a wrong state "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lahj$a;->a:Lahj;

    iget-object v3, v3, Lahj;->i:Lahh$b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 781
    :pswitch_2
    const-string v0, "livechat"

    const-string v3, "Got a new user event"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 792
    :cond_1
    iget-object v3, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lahj;->l:Z

    .line 794
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 795
    const-string v0, "livechat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remote peer joined the AddLive session: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getUserId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->m:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v2, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_REMOTE_PEER_JOINED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 798
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getVideoSinkId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lahj;->g:Ljava/lang/String;

    .line 800
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {v0}, Lahj;->i()V

    .line 802
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->m:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    .line 803
    iget-object v0, p0, Lahj$a;->a:Lahj;

    sget v2, Lahh$d;->b:I

    iput v2, v0, Lahj;->k:I

    .line 807
    :cond_2
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {v0, v1}, Lahj;->a(Z)V

    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 792
    goto :goto_2

    .line 809
    :cond_4
    iget-object v0, p0, Lahj$a;->a:Lahj;

    invoke-virtual {v0}, Lahj;->h()V

    goto/16 :goto_1

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onVideoFrameSizeChanged(Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 689
    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getSinkId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lahj$a;->a:Lahj;

    iget-object v1, v1, Lahj;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 691
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    if-nez v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/ALVideoTextureView;->resolutionChanged(II)V

    .line 697
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget v0, v0, Lahj;->k:I

    sget v1, Lahh$d;->b:I

    if-ne v0, v1, :cond_0

    .line 698
    iget-object v0, p0, Lahj$a;->a:Lahj;

    sget v1, Lahh$d;->c:I

    iput v1, v0, Lahj;->k:I

    .line 699
    const-string v0, "livechat"

    const-string v1, "Received remote video frame size changed. Reporting first frame"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0, v7}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 701
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->a:Lahl$a;

    invoke-interface {v0, v4}, Lahl$a;->a(Z)V

    .line 702
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v0, v0, Lahj;->m:Lcom/snapchat/android/analytics/HereAnalytics;

    iget-wide v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    sub-long/2addr v2, v4

    iput-wide v8, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_KEYFRAME_RECEIVED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 703
    :cond_2
    iget-object v0, p0, Lahj$a;->a:Lahj;

    iget-object v1, v0, Lahj;->i:Lahh$b;

    sget-object v2, Lahh$b;->d:Lahh$b;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lahj;->h:Lbic;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v1}, Lcom/addlive/view/ALVideoTextureView;->getWidth()I

    move-result v1

    iget-object v2, v0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v2}, Lcom/addlive/view/ALVideoTextureView;->getHeight()I

    move-result v2

    new-instance v3, Lahg;

    const-string v4, "CHANGE_PUBLISHED_RESOLUTION"

    invoke-direct {v3, v4}, Lahg;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, v3, Lahg;->b:Lorg/json/JSONObject;

    const-string v5, "width"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, v3, Lahg;->b:Lorg/json/JSONObject;

    const-string v4, "height"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "sendMessage"

    invoke-static {v2}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v2

    iget-object v0, v0, Lahj;->h:Lbic;

    invoke-virtual {v0}, Lbic;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "messageType"

    iget-object v6, v3, Lahg;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v3, Lahg;->b:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "meta"

    iget-object v3, v3, Lahg;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/addlive/service/AddLiveService;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "livechat"

    const-string v1, "Failed to send change resolution request"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 706
    :cond_4
    const-string v0, "livechat"

    const-string v1, "Got local video frame size changed: %s -> %dx%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getSinkId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
