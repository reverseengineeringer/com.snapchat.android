.class final Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMediaSession()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public final sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public final setActive(Z)V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public final setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public final setFlags(I)V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public final setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public final setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public final setPlaybackToLocal(I)V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public final setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 0

    .prologue
    .line 495
    return-void
.end method
