.class public final Laif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laih;
.implements Lalz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laif$8;,
        Laif$a;
    }
.end annotation


# instance fields
.field a:Laih$a;

.field b:Lcom/addlive/view/ALVideoTextureView;

.field c:Lcom/snapchat/android/livechat/AdlHelper$a;

.field d:Lcom/addlive/service/listener/AddLiveServiceListener;

.field e:Ljava/lang/Runnable;

.field f:Ljava/lang/Runnable;

.field g:Ljava/lang/String;

.field h:Lbjc;

.field i:Lcom/snapchat/android/livechat/AdlHelper$b;

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Lcom/snapchat/android/analytics/HereAnalytics;

.field o:Laig;

.field p:Landroid/os/Handler;

.field private q:Landroid/app/Activity;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$1;

    invoke-direct {v0}, Lcom/snapchat/android/livechat/AdlHelper$1;-><init>()V

    iput-object v0, p0, Laif;->c:Lcom/snapchat/android/livechat/AdlHelper$a;

    .line 112
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 113
    sget v0, Lcom/snapchat/android/livechat/AdlHelper$d;->a:I

    iput v0, p0, Laif;->j:I

    .line 114
    sget v0, Lcom/snapchat/android/livechat/AdlHelper$d;->a:I

    iput v0, p0, Laif;->k:I

    .line 115
    iput-boolean v1, p0, Laif;->l:Z

    .line 116
    iput-boolean v1, p0, Laif;->m:Z

    .line 117
    iput-boolean v1, p0, Laif;->r:Z

    .line 122
    iput-boolean v1, p0, Laif;->s:Z

    .line 721
    return-void
.end method

.method static synthetic a(Laif;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 64
    sget-object v0, Laif$8;->a:[I

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Laif;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got user event while the application is in a wrong state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/net/NetworkInfo;)V
    .locals 6

    .prologue
    .line 1021
    const-string v1, "Not-Connected"

    .line 1022
    const-string v0, "Unknown"

    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 1029
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating connectivity info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

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

    .line 1032
    return-void

    :cond_1
    move-object v1, v0

    .line 1030
    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 6

    .prologue
    .line 568
    new-instance v1, Laif$4;

    invoke-direct {v1, p0}, Laif$4;-><init>(Laif;)V

    .line 578
    :try_start_0
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v2, "sendMessage"

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v2

    iget-object v3, p0, Laif;->h:Lbjc;

    invoke-virtual {v3}, Lbjc;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Laid;

    const-string v5, "USER_DISCONNECTED"

    invoke-direct {v4, v5}, Laid;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Laid;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/addlive/service/AddLiveService;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    iget-object v2, p0, Laif;->p:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;

    move-result-object v1

    iget-object v2, p0, Laif;->h:Lbjc;

    invoke-virtual {v2}, Lbjc;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->deferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;I)V

    .line 581
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->e:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laif;->a(Z)V

    .line 585
    iget-object v0, p0, Laif;->a:Laih$a;

    invoke-interface {v0, p1}, Laih$a;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 586
    iget-object v0, p0, Laif;->o:Laig;

    new-instance v1, Laig$1;

    const-string v2, "getEventsChecksum"

    invoke-direct {v1, v0, v2}, Laig$1;-><init>(Laig;Ljava/lang/String;)V

    iget-object v0, v0, Laig;->a:Lcom/addlive/service/AddLiveService;

    invoke-interface {v0, v1}, Lcom/addlive/service/AddLiveService;->getEventsChecksum(Lcom/addlive/service/Responder;)V

    .line 587
    return-void

    .line 578
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send user disconnected message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private c(Lbjc;)Z
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    invoke-virtual {p1}, Lbjc;->a()Ljava/lang/String;

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

    .line 159
    iget-boolean v0, p0, Laif;->s:Z

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Laif;->c:Lcom/snapchat/android/livechat/AdlHelper$a;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/AdlHelper$a;->a()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    if-eq v0, v1, :cond_3

    .line 169
    iput-boolean v3, p0, Laif;->r:Z

    .line 177
    :goto_1
    iget-object v0, p0, Laif;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Laif;->p:Landroid/os/Handler;

    iget-object v1, p0, Laif;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    :cond_1
    iget-object v0, p0, Laif;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Laif;->p:Landroid/os/Handler;

    iget-object v1, p0, Laif;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    :cond_2
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 184
    sget v0, Lcom/snapchat/android/livechat/AdlHelper$d;->a:I

    iput v0, p0, Laif;->j:I

    .line 185
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    invoke-virtual {v0, p0}, Lama;->b(Lalz;)V

    .line 187
    iput-boolean v3, p0, Laif;->s:Z

    goto :goto_0

    .line 172
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->ADL_RELEASE:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {p0, v0}, Laif;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 173
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "removeServiceListener"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v1

    iget-object v2, p0, Laif;->d:Lcom/addlive/service/listener/AddLiveServiceListener;

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->removeServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Laih$a;Lcom/snapchat/android/analytics/HereAnalytics;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laih$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/analytics/HereAnalytics;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    .line 142
    iget-boolean v0, p0, Laif;->s:Z

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Laif;->q:Landroid/app/Activity;

    .line 149
    iput-object p2, p0, Laif;->a:Laih$a;

    .line 150
    iput-object p3, p0, Laif;->n:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Laif;->p:Landroid/os/Handler;

    .line 153
    iput-boolean v6, p0, Laif;->r:Z

    sget-object v0, Laif$8;->b:[I

    iget-object v1, p0, Laif;->c:Lcom/snapchat/android/livechat/AdlHelper$a;

    invoke-interface {v1}, Lcom/snapchat/android/livechat/AdlHelper$a;->a()Lcom/addlive/platform/InitState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addlive/platform/InitState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_1
    :pswitch_0
    iput-boolean v6, p0, Laif;->s:Z

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {p0}, Laif;->g()V

    goto :goto_1

    :pswitch_2
    new-instance v0, Laif$1;

    invoke-direct {v0, p0}, Laif$1;-><init>(Laif;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v2

    invoke-virtual {v2}, Lbgr;->c()Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v3, v6}, Lcom/addlive/platform/PlatformInitOptions;->setUseExternalVideoInput(Z)V

    invoke-virtual {v3, v2}, Lcom/addlive/platform/PlatformInitOptions;->setStreamerEndpointResolver(Ljava/lang/String;)V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setConsoleLoggingEnabled(Z)V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/addlive/platform/PlatformInitOptions;->setInteractionsLoggingEnabled(Z)V

    iget-object v1, p0, Laif;->c:Lcom/snapchat/android/livechat/AdlHelper$a;

    iget-object v2, p0, Laif;->p:Landroid/os/Handler;

    new-instance v4, Lcom/snapchat/android/livechat/AdlHelper$3;

    invoke-direct {v4, v2, v0}, Lcom/snapchat/android/livechat/AdlHelper$3;-><init>(Landroid/os/Handler;Lcom/addlive/platform/PlatformInitListener;)V

    iget-object v0, p0, Laif;->q:Landroid/app/Activity;

    invoke-interface {v1, v4, v3, v0}, Lcom/snapchat/android/livechat/AdlHelper$a;->a(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got an invalid platform init state while requesting init: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laif;->c:Lcom/snapchat/android/livechat/AdlHelper$a;

    invoke-interface {v1}, Lcom/snapchat/android/livechat/AdlHelper$a;->a()Lcom/addlive/platform/InitState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/net/NetworkInfo;)V
    .locals 3

    .prologue
    .line 1036
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 1037
    iget-object v1, p0, Laif;->p:Landroid/os/Handler;

    new-instance v2, Laif$6;

    invoke-direct {v2, p0, v0}, Laif$6;-><init>(Laif;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1044
    invoke-direct {p0, p1}, Laif;->b(Landroid/net/NetworkInfo;)V

    .line 1045
    return-void
.end method

.method public final a(Lbjc;)V
    .locals 3
    .param p1    # Lbjc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-boolean v0, p0, Laif;->s:Z

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Laif;->c:Lcom/snapchat/android/livechat/AdlHelper$a;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/AdlHelper$a;->a()Lcom/addlive/platform/InitState;

    move-result-object v0

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    if-eq v0, v1, :cond_2

    .line 209
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->b:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 210
    iput-object p1, p0, Laif;->h:Lbjc;

    goto :goto_0

    .line 214
    :cond_2
    sget-object v0, Laif$8;->a:[I

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 221
    :pswitch_0
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "cancel deferred disconnect"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v1

    invoke-virtual {p1}, Lbjc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->cancelDeferredDisconnect(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, p1}, Laif;->b(Lbjc;)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Laif;->t:Ljava/lang/String;

    invoke-virtual {p1}, Lbjc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 246
    :pswitch_2
    iput-object p1, p0, Laif;->h:Lbjc;

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-direct {p0, p1}, Laif;->c(Lbjc;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iput-object p1, p0, Laif;->h:Lbjc;

    goto :goto_0

    .line 256
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->ALREADY_CONNECTED_TO_DIFFERENT_SCOPE:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-direct {p0, v0}, Laif;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 257
    invoke-virtual {p0, p1}, Laif;->b(Lbjc;)V

    goto :goto_0

    .line 214
    nop

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
    .line 392
    iput-object p1, p0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    .line 393
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 270
    iget-object v0, p0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Laif;->m:Z

    .line 274
    sget-object v0, Laif$8;->a:[I

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    :goto_0
    :pswitch_0
    return-void

    .line 282
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-direct {p0, p1}, Laif;->b(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    goto :goto_0

    .line 274
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
    .line 657
    if-eqz p1, :cond_1

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    iget-object v2, p0, Laif;->h:Lbjc;

    invoke-virtual {v2}, Lbjc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/addlive/service/AddLiveService;->getConnectionByScope(Ljava/lang/String;)Lcom/addlive/service/MediaConnection;

    move-result-object v1

    invoke-interface {v1}, Lcom/addlive/service/MediaConnection;->getUsersInSession()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 663
    :goto_0
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "setAllowedSenders(AUDIO)"

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v2

    iget-object v3, p0, Laif;->h:Lbjc;

    invoke-virtual {v3}, Lbjc;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/addlive/service/AddLiveService;->setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V

    .line 665
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    const-string v2, "setAllowedSenders(VIDEO)"

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v2

    iget-object v3, p0, Laif;->h:Lbjc;

    invoke-virtual {v3}, Lbjc;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/addlive/service/AddLiveService;->setAllowedSenders(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;Ljava/util/List;)V

    .line 668
    iget-boolean v0, p0, Laif;->m:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 672
    iget-object v0, p0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 673
    invoke-virtual {p0}, Laif;->j()V

    .line 675
    :cond_0
    return-void

    .line 661
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public final a([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V
    .locals 1
    .param p1    # [B
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/addlive/service/AddLiveService$VideoFrameMetadata;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 345
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/addlive/service/AddLiveService;->injectFrame([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V

    .line 347
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Laif;->h:Lbjc;

    invoke-virtual {v0}, Lbjc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method final b(Lbjc;)V
    .locals 5
    .param p1    # Lbjc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 463
    iget-object v0, p0, Laif;->n:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_AVAILABLE:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 465
    invoke-direct {p0, p1}, Laif;->c(Lbjc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iput-object p1, p0, Laif;->h:Lbjc;

    .line 471
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->c:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 472
    invoke-virtual {p0}, Laif;->h()V

    .line 473
    invoke-virtual {p0, v3}, Laif;->a(Z)V

    .line 474
    :try_start_0
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "sendMessage"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v1

    iget-object v2, p0, Laif;->h:Lbjc;

    invoke-virtual {v2}, Lbjc;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laid;

    const-string v4, "USER_CONNECTED"

    invoke-direct {v3, v4}, Laid;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Laid;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->sendMessage(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    iget-object v0, p0, Laif;->a:Laih$a;

    iget-boolean v1, p0, Laif;->l:Z

    invoke-interface {v0, v1}, Laih$a;->b(Z)V

    .line 497
    :goto_1
    return-void

    .line 474
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to send user connected message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connecting to scope: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbjc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    new-instance v0, Lcom/addlive/service/ConnectionDescriptor;

    invoke-direct {v0}, Lcom/addlive/service/ConnectionDescriptor;-><init>()V

    invoke-virtual {v0, v2}, Lcom/addlive/service/ConnectionDescriptor;->setAutopublishAudio(Z)V

    invoke-virtual {v0, v2}, Lcom/addlive/service/ConnectionDescriptor;->setAutopublishVideo(Z)V

    invoke-virtual {p1}, Lbjc;->a()Ljava/lang/String;

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

    invoke-virtual {v1, v3}, Lcom/addlive/service/VideoStreamDescriptor;->setUseAdaptation(Z)V

    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setVideoStream(Lcom/addlive/service/VideoStreamDescriptor;)V

    new-instance v1, Lcom/addlive/service/AuthDetails;

    invoke-direct {v1}, Lcom/addlive/service/AuthDetails;-><init>()V

    invoke-virtual {p1}, Lbjc;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lbjc;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lbjc;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setUserId(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lbjc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setSalt(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbjc;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setExpires(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lbjc;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setSignature(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, v1}, Lcom/addlive/service/ConnectionDescriptor;->setAuthDetails(Lcom/addlive/service/AuthDetails;)V

    .line 481
    new-instance v1, Laif$2;

    invoke-direct {v1, p0}, Laif$2;-><init>(Laif;)V

    .line 491
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v2

    iget-object v3, p0, Laif;->p:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/snapchat/android/livechat/AdlHelper;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/addlive/service/AddLiveService;->connect(Lcom/addlive/service/Responder;Lcom/addlive/service/ConnectionDescriptor;)V

    .line 494
    iput-object p1, p0, Laif;->h:Lbjc;

    .line 495
    invoke-virtual {p1}, Lbjc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laif;->t:Ljava/lang/String;

    .line 496
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->c:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    goto/16 :goto_1

    .line 480
    :cond_2
    invoke-virtual {p1}, Lbjc;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbjc;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/addlive/service/AuthDetails;->setMac(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Laif;->s:Z

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->d:Lcom/snapchat/android/livechat/AdlHelper$b;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Laif;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 294
    sget-object v0, Laif$8;->a:[I

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got a request to publish video stream, but the connection is in a wrong state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    :goto_0
    return-void

    .line 301
    :pswitch_0
    iget-object v0, p0, Laif;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Laif$5;

    invoke-direct {v0, p0}, Laif$5;-><init>(Laif;)V

    iput-object v0, p0, Laif;->e:Ljava/lang/Runnable;

    iget-object v0, p0, Laif;->p:Landroid/os/Handler;

    iget-object v1, p0, Laif;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :cond_0
    sget v0, Lcom/snapchat/android/livechat/AdlHelper$d;->b:I

    iput v0, p0, Laif;->j:I

    goto :goto_0

    .line 308
    :pswitch_1
    new-instance v0, Laif$3;

    invoke-direct {v0, p0}, Laif$3;-><init>(Laif;)V

    sget v1, Lcom/snapchat/android/livechat/AdlHelper$d;->b:I

    iput v1, p0, Laif;->j:I

    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    iget-object v2, p0, Laif;->p:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;

    move-result-object v0

    iget-object v2, p0, Laif;->h:Lbjc;

    invoke-virtual {v2}, Lbjc;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-interface {v1, v0, v2, v3}, Lcom/addlive/service/AddLiveService;->publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "publish(AUDIO)"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v1

    iget-object v2, p0, Laif;->h:Lbjc;

    invoke-virtual {v2}, Lbjc;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->publish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 319
    sget-object v0, Laif$8;->a:[I

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got a request to publish video stream, but the connection is in a wrong state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    :goto_0
    return-void

    .line 324
    :pswitch_0
    sget v0, Lcom/snapchat/android/livechat/AdlHelper$d;->a:I

    iput v0, p0, Laif;->j:I

    goto :goto_0

    .line 331
    :pswitch_1
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "unpublish(VIDEO)"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v1

    iget-object v2, p0, Laif;->h:Lbjc;

    invoke-virtual {v2}, Lbjc;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/service/MediaType;->VIDEO:Lcom/addlive/service/MediaType;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 332
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "unpublish(AUDIO)"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v1

    iget-object v2, p0, Laif;->h:Lbjc;

    invoke-virtual {v2}, Lbjc;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/addlive/service/MediaType;->AUDIO:Lcom/addlive/service/MediaType;

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->unpublish(Lcom/addlive/service/Responder;Ljava/lang/String;Lcom/addlive/service/MediaType;)V

    .line 333
    sget v0, Lcom/snapchat/android/livechat/AdlHelper$d;->a:I

    iput v0, p0, Laif;->j:I

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final f()Lcom/addlive/service/AddLiveService;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Laif;->c:Lcom/snapchat/android/livechat/AdlHelper$a;

    invoke-interface {v0}, Lcom/snapchat/android/livechat/AdlHelper$a;->b()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    return-object v0
.end method

.method final g()V
    .locals 3

    .prologue
    .line 433
    iget-boolean v0, p0, Laif;->r:Z

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 440
    :cond_0
    new-instance v0, Laie;

    new-instance v1, Laif$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Laif$a;-><init>(Laif;B)V

    iget-object v2, p0, Laif;->p:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Laie;-><init>(Lcom/addlive/service/listener/AddLiveServiceListener;Landroid/os/Handler;)V

    iput-object v0, p0, Laif;->d:Lcom/addlive/service/listener/AddLiveServiceListener;

    .line 441
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "addServiceListener"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v1

    iget-object v2, p0, Laif;->d:Lcom/addlive/service/listener/AddLiveServiceListener;

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->addServiceListener(Lcom/addlive/service/Responder;Lcom/addlive/service/listener/AddLiveServiceListener;)V

    .line 444
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    invoke-virtual {v0, p0}, Lama;->a(Lalz;)V

    .line 447
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    invoke-virtual {v0}, Lama;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Laif;->b(Landroid/net/NetworkInfo;)V

    .line 449
    new-instance v0, Laig;

    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v1

    invoke-direct {v0, v1}, Laig;-><init>(Lcom/addlive/service/AddLiveService;)V

    iput-object v0, p0, Laif;->o:Laig;

    .line 450
    iget-object v0, p0, Laif;->o:Laig;

    invoke-virtual {v0}, Laig;->a()V

    .line 452
    iget-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->b:Lcom/snapchat/android/livechat/AdlHelper$b;

    if-ne v0, v1, :cond_1

    .line 453
    iget-object v0, p0, Laif;->h:Lbjc;

    invoke-virtual {p0, v0}, Laif;->b(Lbjc;)V

    goto :goto_0

    .line 455
    :cond_1
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    goto :goto_0
.end method

.method final h()V
    .locals 4

    .prologue
    .line 501
    sget-object v0, Laif$8;->a:[I

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v1}, Lcom/snapchat/android/livechat/AdlHelper$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 512
    :pswitch_0
    iget-object v0, p0, Laif;->n:Lcom/snapchat/android/analytics/HereAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_CONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    .line 516
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->d:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v0, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 519
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Laif;->f()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    const-string v1, "startMeasuringStats"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;

    move-result-object v1

    iget-object v2, p0, Laif;->h:Lbjc;

    invoke-virtual {v2}, Lbjc;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/addlive/service/AddLiveService;->startMeasuringStats(Lcom/addlive/service/Responder;Ljava/lang/String;I)V

    .line 524
    :cond_0
    iget-object v0, p0, Laif;->a:Laih$a;

    invoke-interface {v0}, Laih$a;->a()V

    .line 528
    iget v0, p0, Laif;->j:I

    sget v1, Lcom/snapchat/android/livechat/AdlHelper$d;->b:I

    if-ne v0, v1, :cond_1

    .line 529
    invoke-virtual {p0}, Laif;->d()V

    .line 533
    :cond_1
    iget-object v0, p0, Laif;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Laif;->p:Landroid/os/Handler;

    iget-object v1, p0, Laif;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Laif;->e:Ljava/lang/Runnable;

    .line 537
    :cond_2
    :goto_0
    :pswitch_1
    return-void

    .line 509
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got a connection result, after the provider is in invalid state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method final i()V
    .locals 2

    .prologue
    .line 934
    const-string v0, ""

    iput-object v0, p0, Laif;->g:Ljava/lang/String;

    .line 937
    invoke-virtual {p0}, Laif;->k()V

    .line 938
    iget-object v0, p0, Laif;->a:Laih$a;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->REMOTE_PEER_LEFT:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-interface {v0, v1}, Laih$a;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 939
    iget-object v0, p0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Laif;->a:Laih$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Laih$a;->a(Z)V

    .line 941
    return-void
.end method

.method final j()V
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->stop()V

    .line 1002
    iget-object v0, p0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    iget-object v1, p0, Laif;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setSinkId(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->start()V

    .line 1004
    return-void
.end method

.method final k()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->stop()V

    .line 1008
    iget-object v0, p0, Laif;->b:Lcom/addlive/view/ALVideoTextureView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setSinkId(Ljava/lang/String;)V

    .line 1009
    return-void
.end method
