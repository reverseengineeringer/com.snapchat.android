.class final Landroid/support/v4/media/TransportMediator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/TransportMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/TransportMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/TransportMediator;


# direct methods
.method constructor <init>(Landroid/support/v4/media/TransportMediator;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlaybackPosition()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final handleAudioFocusChange(I)V
    .locals 9

    .prologue
    .line 65
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x7f

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v7, 0x7f

    const/4 v8, 0x0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 66
    :cond_0
    return-void

    .line 65
    :pswitch_0
    const/16 v0, 0x7f

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final handleKey(Landroid/view/KeyEvent;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    .line 62
    return-void
.end method

.method public final playbackPositionUpdate$1349ef()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
