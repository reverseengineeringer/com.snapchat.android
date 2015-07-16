.class public final Laie;
.super Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;
.source "SourceFile"


# instance fields
.field private final a:Lcom/addlive/service/listener/AddLiveServiceListener;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/addlive/service/listener/AddLiveServiceListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/addlive/service/listener/AddLiveServiceListenerAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Laie;->a:Lcom/addlive/service/listener/AddLiveServiceListener;

    .line 27
    iput-object p2, p0, Laie;->b:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic a(Laie;)Lcom/addlive/service/listener/AddLiveServiceListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Laie;->a:Lcom/addlive/service/listener/AddLiveServiceListener;

    return-object v0
.end method


# virtual methods
.method public final onConnectionLost(Lcom/addlive/service/listener/ConnectionLostEvent;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Laie;->b:Landroid/os/Handler;

    new-instance v1, Laie$2;

    invoke-direct {v1, p0, p1}, Laie$2;-><init>(Laie;Lcom/addlive/service/listener/ConnectionLostEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public final onMediaStreamEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Laie;->b:Landroid/os/Handler;

    new-instance v1, Laie$5;

    invoke-direct {v1, p0, p1}, Laie$5;-><init>(Laie;Lcom/addlive/service/listener/UserStateChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public final onMessage(Lcom/addlive/service/listener/MessageEvent;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Laie;->b:Landroid/os/Handler;

    new-instance v1, Laie$6;

    invoke-direct {v1, p0, p1}, Laie$6;-><init>(Laie;Lcom/addlive/service/listener/MessageEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public final onSessionReconnected(Lcom/addlive/service/listener/SessionReconnectedEvent;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Laie;->b:Landroid/os/Handler;

    new-instance v1, Laie$3;

    invoke-direct {v1, p0, p1}, Laie$3;-><init>(Laie;Lcom/addlive/service/listener/SessionReconnectedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public final onUserEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Laie;->b:Landroid/os/Handler;

    new-instance v1, Laie$4;

    invoke-direct {v1, p0, p1}, Laie$4;-><init>(Laie;Lcom/addlive/service/listener/UserStateChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public final onVideoFrameSizeChanged(Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Laie;->b:Landroid/os/Handler;

    new-instance v1, Laie$1;

    invoke-direct {v1, p0, p1}, Laie$1;-><init>(Laie;Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method
