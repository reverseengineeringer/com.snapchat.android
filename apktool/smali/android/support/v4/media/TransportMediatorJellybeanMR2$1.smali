.class final Landroid/support/v4/media/TransportMediatorJellybeanMR2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;


# direct methods
.method constructor <init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$1;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowAttached()V
    .locals 5

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$1;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    iget-object v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/media/RemoteControlClient;

    iget-object v2, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {v1, v2}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    iget-object v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    iget-object v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 46
    return-void
.end method

.method public final onWindowDetached()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$1;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->windowDetached()V

    .line 50
    return-void
.end method
