.class public final Lahj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahl;
.implements Lald;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahj$8;,
        Lahj$a;
    }
.end annotation


# instance fields
.field a:Lahl$a;

.field b:Lcom/addlive/view/ALVideoTextureView;

.field c:Lahh$a;

.field d:Lcom/addlive/service/listener/AddLiveServiceListener;

.field e:Ljava/lang/Runnable;

.field f:Ljava/lang/Runnable;

.field g:Ljava/lang/String;

.field h:Lbic;

.field i:Lahh$b;

.field j:I

.field k:I

.field l:Z

.field m:Lcom/snapchat/android/analytics/HereAnalytics;

.field n:Lahk;

.field o:Landroid/os/Handler;

.field private p:Landroid/app/Activity;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lahh$1;

    invoke-direct {v0}, Lahh$1;-><init>()V

    iput-object v0, p0, Lahj;->c:Lahh$a;

    .line 109
    sget-object v0, Lahh$b;->a:Lahh$b;

    iput-object v0, p0, Lahj;->i:Lahh$b;

    .line 110
    sget v0, Lahh$d;->a:I

    iput v0, p0, Lahj;->j:I

    .line 111
    sget v0, Lahh$d;->a:I

    iput v0, p0, Lahj;->k:I

    .line 112
    iput-boolean v1, p0, Lahj;->l:Z

    .line 113
    iput-boolean v1, p0, Lahj;->q:Z

    .line 118
    iput-boolean v1, p0, Lahj;->r:Z

    .line 685
    return-void
.end method

.method static synthetic a(Lahj;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 63
    sget-object v1, Lahj$8;->a:[I

    iget-object v2, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v2}, Lahh$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, p1}, Lahj;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_0
    const-string v1, "livechat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got user event while the application is in a wrong state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    const-string v1, "livechat"

    const-string v2, "Got a new media stream user event"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/net/NetworkInfo;)V
    .locals 6

    .prologue
    .line 977
    const-string v1, "Not-Connected"

    .line 978
    const-string v0, "Unknown"

    .line 980
    if-eqz p1, :cond_0

    .line 981
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 985
    :cond_0
    const-string v2, "livechat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Updating connectivity info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v2

    new-instance v3, Lcom/addlive/service/ResponderAdapter;

    invoke-direct {v3}, Lcom/addlive/service/ResponderAdapter;-><init>()V

    const-string v4, "global.service.connectivityType"

    const-string v5, "WIFI"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-interface {v2, v3, v4, v1}, Lcom/addlive/service/AddLiveService;->setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    return-void

    :cond_1
    move-object v1, v0

    .line 986
    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 557
    new-instance v0, Lahj$4;

    invoke-direct {v0, p0}, Lahj$4;-><init>(Lahj;)V

    .line 568
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    iget-object v2, p0, Lahj;->o:Landroid/os/Handler;

    invoke-static {v0, v2}, Lahh;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;

    move-result-object v0

    iget-object v2, p0, Lahj;->h:Lbic;

    invoke-virtual {v2}, Lbic;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-interface {v1, v0, v2, v3}, Lcom/addlive/service/AddLiveService;->deferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;I)V

    .line 570
    sget-object v0, Lahh$b;->e:Lahh$b;

    iput-object v0, p0, Lahj;->i:Lahh$b;

    .line 572
    invoke-virtual {p0, v4}, Lahj;->a(Z)V

    .line 574
    iget-object v0, p0, Lahj;->a:Lahl$a;

    invoke-interface {v0, p1}, Lahl$a;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 575
    iget-object v0, p0, Lahj;->n:Lahk;

    const-string v1, "livechat"

    const-string v2, "Flushing the AddLive performance metrics"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lahk$1;

    const-string v2, "getEventsChecksum"

    invoke-direct {v1, v0, v2}, Lahk$1;-><init>(Lahk;Ljava/lang/String;)V

    iget-object v0, v0, Lahk;->a:Lcom/addlive/service/AddLiveService;

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->getEventsChecksum(Lcom/addlive/service/Responder;)V

    .line 576
    return-void
.end method

.method private c(Lbic;)Z
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    invoke-virtual {p1}, Lbic;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->getConnectionByScope(Ljava/lang/String;)Lcom/addlive/service/MediaConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    const-string v0, "livechat"

    const-string v1, "Releasing Adl Video chat provide"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-boolean v0, p0, Lahj;->r:Z

    if-nez v0, :cond_0

    .line 158
    const-string v0, "livechat"

    const-string v1, "Got a request to release AdlLiveChatProvider while it\'s already released. Skipping"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lahj;->c:Lahh$a;

    invoke-interface {v0}, Lahh$a;->a()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    if-eq v0, v1, :cond_3

    .line 165
    iput-boolean v3, p0, Lahj;->q:Z

    .line 173
    :goto_1
    iget-object v0, p0, Lahj;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lahj;->o:Landroid/os/Handler;

    iget-object v1, p0, Lahj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lahj;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lahj;->o:Landroid/os/Handler;

    iget-object v1, p0, Lahj;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    :cond_2
    sget-object v0, Lahh$b;->a:Lahh$b;

    iput-object v0, p0, Lahj;->i:Lahh$b;

    .line 180
    sget v0, Lahh$d;->a:I

    iput v0, p0, Lahj;->j:I

    .line 181
    invoke-static {}, Lale;->a()Lale;

    move-result-object v0

    invoke-virtual {v0, p0}, Lale;->b(Lald;)V

    .line 183
    iput-boolean v3, p0, Lahj;->r:Z

    goto :goto_0

    .line 168
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->ADL_RELEASE:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {p0, v0}, Lahj;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 169
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "removeServiceListener"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    iget-object v2, p0, Lahj;->d:Lcom/addlive/service/listener/AddLiveServiceListener;

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->removeServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Lahl$a;Lcom/snapchat/android/analytics/HereAnalytics;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lahl$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/HereAnalytics;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 138
    const-string v0, "livechat"

    const-string v1, "Setting up AdlLiveChatProvider"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-boolean v0, p0, Lahj;->r:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "livechat"

    const-string v1, "Got a request to initialise AdlLiveChatProvider while provider is already initialised. Skipping"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    iput-object p1, p0, Lahj;->p:Landroid/app/Activity;

    .line 145
    iput-object p2, p0, Lahj;->a:Lahl$a;

    .line 146
    iput-object p3, p0, Lahj;->m:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lahj;->o:Landroid/os/Handler;

    .line 149
    iput-boolean v7, p0, Lahj;->q:Z

    sget-object v0, Lahj$8;->b:[I

    iget-object v1, p0, Lahj;->c:Lahh$a;

    invoke-interface {v1}, Lahh$a;->a()Lcom/addlive/platform/InitState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addlive/platform/InitState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_1
    iput-boolean v7, p0, Lahj;->r:Z

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-virtual {p0}, Lahj;->f()V

    goto :goto_1

    :pswitch_1
    const-string v0, "livechat"

    const-string v1, "AddLive platform requested to initialise while in-init"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lahj$1;

    invoke-direct {v0, p0}, Lahj$1;-><init>(Lahj;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v2

    invoke-virtual {v2}, Lbfr;->c()Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lavb;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/addlive/platform/PlatformInitOptions;

    invoke-direct {v3}, Lcom/addlive/platform/PlatformInitOptions;-><init>()V

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setStorageDir(Ljava/lang/String;)V

    const-wide/16 v4, 0x201

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setApplicationId(Ljava/lang/Long;)V

    const-string v1, "livechat"

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setInteractionsLogTag(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/addlive/platform/PlatformInitOptions;->setUseExternalVideoInput(Z)V

    invoke-virtual {v3, v2}, Lcom/addlive/platform/PlatformInitOptions;->setStreamerEndpointResolver(Ljava/lang/String;)V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setConsoleLoggingEnabled(Z)V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setInteractionsLoggingEnabled(Z)V

    const-string v1, "livechat"

    const-string v2, "Requesting the AddLive SDK to initialize self"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lahj;->c:Lahh$a;

    iget-object v2, p0, Lahj;->o:Landroid/os/Handler;

    new-instance v4, Lahh$3;

    invoke-direct {v4, v2, v0}, Lahh$3;-><init>(Landroid/os/Handler;Lcom/addlive/platform/PlatformInitListener;)V

    iget-object v0, p0, Lahj;->p:Landroid/app/Activity;

    invoke-interface {v1, v4, v3, v0}, Lahh$a;->a(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got an invalid platform init state while requesting init: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahj;->c:Lahh$a;

    invoke-interface {v2}, Lahh$a;->a()Lcom/addlive/platform/InitState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 3

    .prologue
    .line 992
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 993
    iget-object v1, p0, Lahj;->o:Landroid/os/Handler;

    new-instance v2, Lahj$6;

    invoke-direct {v2, p0, v0}, Lahj$6;-><init>(Lahj;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1000
    invoke-direct {p0, p1}, Lahj;->b(Landroid/net/NetworkInfo;)V

    .line 1001
    return-void
.end method

.method public final a(Lbic;)V
    .locals 4
    .param p1    # Lbic;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 194
    const-string v0, "livechat"

    const-string v1, "Got a request to connect to AddLive session"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-boolean v0, p0, Lahj;->r:Z

    if-nez v0, :cond_1

    .line 197
    const-string v0, "livechat"

    const-string v1, "Got an attempt to connect to AddLive scope, but the AdlLiveChatProvider is not initialised"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lahj;->c:Lahh$a;

    invoke-interface {v0}, Lahh$a;->a()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    if-eq v0, v1, :cond_2

    .line 205
    sget-object v0, Lahh$b;->b:Lahh$b;

    iput-object v0, p0, Lahj;->i:Lahh$b;

    .line 206
    iput-object p1, p0, Lahj;->h:Lbic;

    goto :goto_0

    .line 210
    :cond_2
    sget-object v0, Lahj$8;->a:[I

    iget-object v1, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v1}, Lahh$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "cancel deferred disconnect"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    invoke-virtual {p1}, Lbic;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->cancelDeferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p1}, Lahj;->b(Lbic;)V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v0, p0, Lahj;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lbic;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const-string v0, "livechat"

    const-string v1, "Got a request to connect to a scope while we\'re connecting to a different one. Call disconnect first."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :pswitch_2
    iput-object p1, p0, Lahj;->h:Lbic;

    goto :goto_0

    .line 249
    :pswitch_3
    invoke-direct {p0, p1}, Lahj;->c(Lbic;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iput-object p1, p0, Lahj;->h:Lbic;

    goto :goto_0

    .line 252
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->ALREADY_CONNECTED_TO_DIFFERENT_SCOPE:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-direct {p0, v0}, Lahj;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 253
    const-string v0, "livechat"

    const-string v1, "Got a request to connect to a scope while we\'re already connected to different one"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0, p1}, Lahj;->b(Lbic;)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/addlive/view/ALVideoTextureView;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    .line 384
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 262
    iget-object v0, p0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 265
    sget-object v0, Lahj$8;->a:[I

    iget-object v1, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v1}, Lahh$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return-void

    .line 273
    :pswitch_1
    sget-object v0, Lahh$b;->a:Lahh$b;

    iput-object v0, p0, Lahj;->i:Lahh$b;

    goto :goto_0

    .line 278
    :pswitch_2
    invoke-direct {p0, p1}, Lahj;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final a(Z)V
    .locals 5

    .prologue
    .line 630
    if-eqz p1, :cond_1

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    iget-object v2, p0, Lahj;->h:Lbic;

    invoke-virtual {v2}, Lbic;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/addlive/service/AddLiveService;->getConnectionByScope(Ljava/lang/String;)Lcom/addlive/service/MediaConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/addlive/service/MediaConnection;->getUsersInSession()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 636
    :goto_0
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "setAllowedSenders(AUDIO)"

    invoke-static {v2}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v2

    iget-object v3, p0, Lahj;->h:Lbic;

    invoke-virtual {v3}, Lbic;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/addlive/service/AddLiveService;->setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V

    .line 638
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "setAllowedSenders(VIDEO)"

    invoke-static {v2}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v2

    iget-object v3, p0, Lahj;->h:Lbic;

    invoke-virtual {v3}, Lbic;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/addlive/service/AddLiveService;->setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V

    .line 641
    iget-boolean v0, p0, Lahj;->l:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 645
    iget-object v0, p0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 646
    invoke-virtual {p0}, Lahj;->i()V

    .line 648
    :cond_0
    return-void

    .line 634
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public final a([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V
    .locals 1
    .param p1    # [B
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/addlive/service/AddLiveService$VideoFrameMetadata;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 336
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/addlive/service/AddLiveService;->injectFrame([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V

    .line 338
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lahj;->h:Lbic;

    invoke-virtual {v0}, Lbic;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method final b(Lbic;)V
    .locals 5
    .param p1    # Lbic;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 454
    iget-object v0, p0, Lahj;->m:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_AVAILABLE:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 456
    invoke-direct {p0, p1}, Lahj;->c(Lbic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iput-object p1, p0, Lahj;->h:Lbic;

    .line 462
    sget-object v0, Lahh$b;->c:Lahh$b;

    iput-object v0, p0, Lahj;->i:Lahh$b;

    .line 463
    invoke-virtual {p0}, Lahj;->g()V

    .line 464
    invoke-virtual {p0, v4}, Lahj;->a(Z)V

    .line 486
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connecting to scope: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbic;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    new-instance v0, Lcom/addlive/service/ConnectionDescriptor;

    invoke-direct {v0}, Lcom/addlive/service/ConnectionDescriptor;-><init>()V

    invoke-virtual {v0, v3}, Lcom/addlive/service/ConnectionDescriptor;->setAutopublishAudio(Z)V

    invoke-virtual {v0, v3}, Lcom/addlive/service/ConnectionDescriptor;->setAutopublishVideo(Z)V

    invoke-virtual {p1}, Lbic;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setScopeId(Ljava/lang/String;)V

    new-instance v1, Lcom/addlive/service/VideoStreamDescriptor;

    invoke-direct {v1}, Lcom/addlive/service/VideoStreamDescriptor;-><init>()V

    const/16 v2, 0x140

    invoke-virtual {v1, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxWidth(I)V

    const/16 v2, 0x280

    invoke-virtual {v1, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxHeight(I)V

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/addlive/service/VideoStreamDescriptor;->setMaxFps(I)V

    invoke-virtual {v1, v4}, Lcom/addlive/service/VideoStreamDescriptor;->setUseAdaptation(Z)V

    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setVideoStream(Lcom/addlive/service/VideoStreamDescriptor;)V

    new-instance v1, Lcom/addlive/service/AuthDetails;

    invoke-direct {v1}, Lcom/addlive/service/AuthDetails;-><init>()V

    invoke-virtual {p1}, Lbic;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setUserId(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lbic;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setSalt(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbic;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setExpires(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lbic;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setAuthDetails(Lcom/addlive/service/AuthDetails;)V

    .line 470
    new-instance v1, Lahj$2;

    invoke-direct {v1, p0}, Lahj$2;-><init>(Lahj;)V

    .line 480
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v2

    iget-object v3, p0, Lahj;->o:Landroid/os/Handler;

    invoke-static {v1, v3}, Lahh;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/addlive/service/AddLiveService;->connect(Lcom/addlive/service/Responder;Lcom/addlive/service/ConnectionDescriptor;)V

    .line 483
    iput-object p1, p0, Lahj;->h:Lbic;

    .line 484
    invoke-virtual {p1}, Lbic;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lahj;->s:Ljava/lang/String;

    .line 485
    sget-object v0, Lahh$b;->c:Lahh$b;

    iput-object v0, p0, Lahj;->i:Lahh$b;

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lahj;->r:Z

    return v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 285
    sget-object v0, Lahj$8;->a:[I

    iget-object v1, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v1}, Lahh$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 302
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got a request to publish video stream, but the connection is in a wrong state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lahj;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lahj$5;

    invoke-direct {v0, p0}, Lahj$5;-><init>(Lahj;)V

    iput-object v0, p0, Lahj;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Lahj;->o:Landroid/os/Handler;

    iget-object v1, p0, Lahj;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    :cond_0
    sget v0, Lahh$d;->b:I

    iput v0, p0, Lahj;->j:I

    goto :goto_0

    .line 299
    :pswitch_1
    new-instance v0, Lahj$3;

    invoke-direct {v0, p0}, Lahj$3;-><init>(Lahj;)V

    sget v1, Lahh$d;->b:I

    iput v1, p0, Lahj;->j:I

    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    iget-object v2, p0, Lahj;->o:Landroid/os/Handler;

    invoke-static {v0, v2}, Lahh;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;

    move-result-object v0

    iget-object v2, p0, Lahj;->h:Lbic;

    invoke-virtual {v2}, Lbic;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-interface {v1, v0, v2, v3}, Lcom/addlive/service/AddLiveService;->publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "publish(AUDIO)"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    iget-object v2, p0, Lahj;->h:Lbic;

    invoke-virtual {v2}, Lbic;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 310
    sget-object v0, Lahj$8;->a:[I

    iget-object v1, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v1}, Lahh$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 328
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got a request to publish video stream, but the connection is in a wrong state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :goto_0
    return-void

    .line 315
    :pswitch_0
    sget v0, Lahh$d;->a:I

    iput v0, p0, Lahj;->j:I

    goto :goto_0

    .line 322
    :pswitch_1
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "unpublish(VIDEO)"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    iget-object v2, p0, Lahj;->h:Lbic;

    invoke-virtual {v2}, Lbic;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 323
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "unpublish(AUDIO)"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    iget-object v2, p0, Lahj;->h:Lbic;

    invoke-virtual {v2}, Lbic;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 324
    sget v0, Lahh$d;->a:I

    iput v0, p0, Lahj;->j:I

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final e()Lcom/addlive/service/AddLiveService;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lahj;->c:Lahh$a;

    invoke-interface {v0}, Lahh$a;->b()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    return-object v0
.end method

.method final f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    const-string v0, "livechat"

    const-string v1, "AddLive SDK initialized"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-boolean v0, p0, Lahj;->q:Z

    if-nez v0, :cond_0

    .line 427
    const-string v0, "livechat"

    const-string v1, "Initialisation was cancelled while in-progress"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :goto_0
    return-void

    .line 431
    :cond_0
    new-instance v0, Lahi;

    new-instance v1, Lahj$a;

    invoke-direct {v1, p0, v3}, Lahj$a;-><init>(Lahj;B)V

    iget-object v2, p0, Lahj;->o:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lahi;-><init>(Lcom/addlive/service/listener/AddLiveServiceListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lahj;->d:Lcom/addlive/service/listener/AddLiveServiceListener;

    .line 432
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "addServiceListener"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    iget-object v2, p0, Lahj;->d:Lcom/addlive/service/listener/AddLiveServiceListener;

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->addServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V

    .line 435
    invoke-static {}, Lale;->a()Lale;

    move-result-object v0

    invoke-virtual {v0, p0}, Lale;->a(Lald;)V

    .line 438
    invoke-static {}, Lale;->a()Lale;

    move-result-object v0

    invoke-virtual {v0}, Lale;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lahj;->b(Landroid/net/NetworkInfo;)V

    .line 440
    new-instance v0, Lahk;

    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-direct {v0, v1}, Lahk;-><init>(Lcom/addlive/service/AddLiveService;)V

    iput-object v0, p0, Lahj;->n:Lahk;

    .line 441
    iget-object v0, p0, Lahj;->n:Lahk;

    invoke-virtual {v0}, Lahk;->a()V

    .line 443
    iget-object v0, p0, Lahj;->i:Lahh$b;

    sget-object v1, Lahh$b;->b:Lahh$b;

    if-ne v0, v1, :cond_1

    .line 444
    iget-object v0, p0, Lahj;->h:Lbic;

    invoke-virtual {p0, v0}, Lahj;->b(Lbic;)V

    .line 448
    :goto_1
    const-string v0, "livechat"

    const-string v1, "AddLive SDK initialized <- done"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 446
    :cond_1
    sget-object v0, Lahh$b;->a:Lahh$b;

    iput-object v0, p0, Lahj;->i:Lahh$b;

    goto :goto_1
.end method

.method final g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 490
    sget-object v0, Lahj$8;->a:[I

    iget-object v1, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v1}, Lahh$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 504
    :goto_0
    iget-object v0, p0, Lahj;->m:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_CONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 505
    sget-object v0, Lahh$b;->d:Lahh$b;

    iput-object v0, p0, Lahj;->i:Lahh$b;

    .line 508
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lahj;->e()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "startMeasuringStats"

    invoke-static {v1}, Lahh;->a(Ljava/lang/String;)Lahh$c;

    move-result-object v1

    iget-object v2, p0, Lahj;->h:Lbic;

    invoke-virtual {v2}, Lbic;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->startMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;I)V

    .line 513
    :cond_0
    iget-object v0, p0, Lahj;->a:Lahl$a;

    invoke-interface {v0}, Lahl$a;->a()V

    .line 517
    iget v0, p0, Lahj;->j:I

    sget v1, Lahh$d;->b:I

    if-ne v0, v1, :cond_1

    .line 518
    invoke-virtual {p0}, Lahj;->c()V

    .line 522
    :cond_1
    iget-object v0, p0, Lahj;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lahj;->o:Landroid/os/Handler;

    iget-object v1, p0, Lahj;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lahj;->e:Ljava/lang/Runnable;

    .line 526
    :cond_2
    :goto_1
    return-void

    .line 493
    :pswitch_0
    const-string v0, "livechat"

    const-string v1, "Got a second call to connect. Probably remote user triggered it first"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 498
    :pswitch_1
    const-string v0, "livechat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got a connection result, after the provider is in invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lahj;->i:Lahh$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 501
    :pswitch_2
    const-string v0, "livechat"

    const-string v1, "Successfully connected to AddLive Scope"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final h()V
    .locals 2

    .prologue
    .line 890
    const-string v0, ""

    iput-object v0, p0, Lahj;->g:Ljava/lang/String;

    .line 893
    invoke-virtual {p0}, Lahj;->j()V

    .line 894
    iget-object v0, p0, Lahj;->a:Lahl$a;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->REMOTE_PEER_LEFT:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-interface {v0, v1}, Lahl$a;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 895
    iget-object v0, p0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lahj;->a:Lahl$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lahl$a;->a(Z)V

    .line 897
    return-void
.end method

.method final i()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->stop()V

    .line 958
    iget-object v0, p0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    iget-object v1, p0, Lahj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setSinkId(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->start()V

    .line 960
    return-void
.end method

.method final j()V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->stop()V

    .line 964
    iget-object v0, p0, Lahj;->b:Lcom/addlive/view/ALVideoTextureView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setSinkId(Ljava/lang/String;)V

    .line 965
    return-void
.end method
