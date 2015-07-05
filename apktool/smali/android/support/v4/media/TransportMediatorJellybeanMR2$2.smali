.class final Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


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
    .line 53
    iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 56
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    iget-boolean v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mFocused:Z

    iget-object v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    iget-object v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mRemoteControl:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    iget v1, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mPlayState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->takeAudioFocus()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->loseFocus()V

    goto :goto_0
.end method
