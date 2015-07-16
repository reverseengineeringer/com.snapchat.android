.class final Laif$a;
.super Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Laif;


# direct methods
.method private constructor <init>(Laif;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Laif$a;->a:Laif;

    invoke-direct {p0}, Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laif;B)V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0, p1}, Laif$a;-><init>(Laif;)V

    return-void
.end method


# virtual methods
.method public final onConnectionLost(Lcom/addlive/service/listener/ConnectionLostEvent;)V
    .locals 3

    .prologue
    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got lost connection to AddLive session with scope: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    sget-object v0, Laif$8;->a:[I

    iget-object v1, p0, Laif$a;->a:Laif;

    iget-object v1, v1, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 760
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laif;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {v0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "disconnectOnConnLost"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->getScopeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->disconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 782
    :goto_0
    return-void

    .line 757
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got user event while the application is in a wrong state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laif$a;->a:Laif;

    iget-object v1, v1, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 771
    :cond_0
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {v0}, Laif;->i()V

    .line 772
    invoke-virtual {p1}, Lcom/addlive/service/listener/ConnectionLostEvent;->isWillReconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Laif$a;->a:Laif;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->c:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v1, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    goto :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v1, p0, Laif$a;->a:Laif;

    iget-object v1, v1, Laif;->h:Lbjc;

    invoke-virtual {v0, v1}, Laif;->b(Lbjc;)V

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onMediaStreamEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 4

    .prologue
    .line 855
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laif;->a(Laif;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getMediaType()Lcom/addlive/service/MediaType;

    move-result-object v0

    sget-object v1, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    if-ne v0, v1, :cond_0

    .line 863
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getVideoSinkId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laif;->g:Ljava/lang/String;

    .line 869
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {v0}, Laif;->j()V

    .line 871
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->n:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    .line 872
    iget-object v0, p0, Laif$a;->a:Laif;

    sget v1, Lcom/snapchat/android/livechat/AdlHelper$d;->b:I

    iput v1, v0, Laif;->k:I

    .line 882
    :goto_1
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v1

    iput-boolean v1, v0, Laif;->m:Z

    .line 883
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-boolean v0, v0, Laif;->m:Z

    if-nez v0, :cond_0

    .line 884
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->a:Laih$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Laih$a;->a(Z)V

    goto :goto_0

    .line 875
    :cond_2
    iget-object v0, p0, Laif$a;->a:Laif;

    const-string v1, ""

    iput-object v1, v0, Laif;->g:Ljava/lang/String;

    .line 877
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {v0}, Laif;->k()V

    .line 878
    iget-object v0, p0, Laif$a;->a:Laif;

    sget v1, Lcom/snapchat/android/livechat/AdlHelper$d;->a:I

    iput v1, v0, Laif;->k:I

    goto :goto_1
.end method

.method public final onMessage(Lcom/addlive/service/listener/MessageEvent;)V
    .locals 6

    .prologue
    const/16 v5, 0x280

    .line 892
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/MessageEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laif;->a(Laif;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/addlive/service/listener/MessageEvent;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 898
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Laid;

    const-string v2, "messageType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Laid;-><init>(Ljava/lang/String;)V

    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "meta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Laid;->b:Lorg/json/JSONObject;

    .line 899
    :cond_2
    const-string v1, "CHANGE_PUBLISHED_RESOLUTION"

    iget-object v2, v0, Laid;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 900
    iget-object v1, p0, Laif$a;->a:Laif;

    iget-object v2, v0, Laid;->b:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v0, v0, Laid;->b:Lorg/json/JSONObject;

    const-string v3, "height"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/addlive/service/VideoStreamDescriptor;

    invoke-direct {v3}, Lcom/addlive/service/VideoStreamDescriptor;-><init>()V

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxFps(I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/addlive/service/VideoStreamDescriptor;->setUseAdaptation(Z)V

    if-ge v0, v5, :cond_3

    invoke-virtual {v3, v0}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxHeight(I)V

    invoke-virtual {v3, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxWidth(I)V

    :goto_1
    invoke-virtual {v1}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v2, "reconfigureVideo"

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v2

    iget-object v1, v1, Laif;->h:Lbjc;

    invoke-virtual {v1}, Lbjc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1, v3}, Lcom/addlive/service/AddLiveService;->reconfigureVideo(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/VideoStreamDescriptor;)V

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    goto :goto_0

    .line 900
    :cond_3
    const/16 v4, 0x280

    invoke-virtual {v3, v4}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxHeight(I)V

    mul-int/lit16 v2, v2, 0x280

    div-int v0, v2, v0

    invoke-virtual {v3, v0}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxWidth(I)V

    goto :goto_1

    .line 901
    :cond_4
    const-string v1, "USER_CONNECTED"

    iget-object v2, v0, Laid;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 902
    iget-object v0, p0, Laif$a;->a:Laif;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laif;->l:Z

    .line 903
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->a:Laih$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Laih$a;->b(Z)V

    goto/16 :goto_0

    .line 904
    :cond_5
    const-string v1, "USER_DISCONNECTED"

    iget-object v0, v0, Laid;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Laif$a;->a:Laif;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laif;->l:Z

    .line 906
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->a:Laih$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Laih$a;->b(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public final onSessionReconnected(Lcom/addlive/service/listener/SessionReconnectedEvent;)V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->h:Lbjc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/SessionReconnectedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laif;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Laif$a;->a:Laif;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->d:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v1, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 792
    iget-object v0, p0, Laif$a;->a:Laif;

    iget v0, v0, Laif;->j:I

    sget v1, Lcom/snapchat/android/livechat/AdlHelper$d;->a:I

    if-eq v0, v1, :cond_0

    .line 793
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {v0}, Laif;->d()V

    goto :goto_0
.end method

.method public final onUserEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 800
    sget-object v0, Laif$8;->a:[I

    iget-object v2, p0, Laif$a;->a:Laif;

    iget-object v2, v2, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v2}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 817
    :cond_0
    :goto_0
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laif;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    :goto_1
    return-void

    .line 804
    :pswitch_0
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->h:Lbjc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getScopeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laif;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {v0}, Laif;->h()V

    goto :goto_0

    .line 814
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got user event while the application is in a wrong state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laif$a;->a:Laif;

    iget-object v1, v1, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 828
    :cond_1
    iget-object v2, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, v2, Laif;->m:Z

    .line 830
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Remote peer joined the AddLive session: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 833
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->n:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v2, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_REMOTE_PEER_JOINED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 834
    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isVideoPublished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->getVideoSinkId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Laif;->g:Ljava/lang/String;

    .line 836
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {v0}, Laif;->j()V

    .line 838
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->n:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    .line 839
    iget-object v0, p0, Laif$a;->a:Laif;

    sget v2, Lcom/snapchat/android/livechat/AdlHelper$d;->b:I

    iput v2, v0, Laif;->k:I

    .line 843
    :cond_2
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {v0, v1}, Laif;->a(Z)V

    .line 847
    :goto_3
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected()Z

    move-result v1

    iput-boolean v1, v0, Laif;->l:Z

    .line 848
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->a:Laih$a;

    invoke-virtual {p1}, Lcom/addlive/service/listener/UserStateChangedEvent;->isConnected()Z

    move-result v1

    invoke-interface {v0, v1}, Laih$a;->b(Z)V

    goto/16 :goto_1

    .line 828
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 845
    :cond_4
    iget-object v0, p0, Laif$a;->a:Laif;

    invoke-virtual {v0}, Laif;->i()V

    goto :goto_3

    .line 800
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onVideoFrameSizeChanged(Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 725
    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getSinkId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laif$a;->a:Laif;

    iget-object v1, v1, Laif;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 727
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    if-nez v0, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/addlive/view/ALVideoTextureView;->resolutionChanged(II)V

    .line 733
    iget-object v0, p0, Laif$a;->a:Laif;

    iget v0, v0, Laif;->k:I

    sget v1, Lcom/snapchat/android/livechat/AdlHelper$d;->b:I

    if-ne v0, v1, :cond_0

    .line 734
    iget-object v0, p0, Laif$a;->a:Laif;

    sget v1, Lcom/snapchat/android/livechat/AdlHelper$d;->c:I

    iput v1, v0, Laif;->k:I

    .line 735
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0, v3}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->a:Laih$a;

    invoke-interface {v0, v4}, Laih$a;->a(Z)V

    .line 738
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v0, v0, Laif;->n:Lcom/snapchat/android/analytics/HereAnalytics;

    iget-wide v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    sub-long/2addr v2, v4

    iput-wide v6, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mStartOfVideoStream:J

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_KEYFRAME_RECEIVED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 739
    :cond_2
    iget-object v0, p0, Laif$a;->a:Laif;

    iget-object v1, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    sget-object v2, Lcom/snapchat/android/livechat/AdlHelper$b;->d:Lcom/snapchat/android/livechat/AdlHelper$b;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Laif;->h:Lbjc;

    if-eqz v1, :cond_0

    iget-object v1, v0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v1}, Lcom/addlive/view/ALVideoTextureView;->getWidth()I

    move-result v1

    iget-object v2, v0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v2}, Lcom/addlive/view/ALVideoTextureView;->getHeight()I

    move-result v2

    new-instance v3, Laid;

    const-string v4, "CHANGE_PUBLISHED_RESOLUTION"

    invoke-direct {v3, v4}, Laid;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, v3, Laid;->b:Lorg/json/JSONObject;

    const-string v5, "width"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, v3, Laid;->b:Lorg/json/JSONObject;

    const-string v4, "height"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "sendMessage"

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v2

    iget-object v0, v0, Laif;->h:Lbjc;

    invoke-virtual {v0}, Lbjc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Laid;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/addlive/service/AddLiveService;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 742
    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getSinkId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0
.end method
