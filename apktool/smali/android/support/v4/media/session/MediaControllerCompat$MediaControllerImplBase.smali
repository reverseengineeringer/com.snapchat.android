.class final Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public final getMediaController()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRatingType()I
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public final getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method public final registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public final sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public final unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 0

    .prologue
    .line 468
    return-void
.end method
