.class final Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
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
    name = "MediaSessionImplApi21"
.end annotation


# instance fields
.field private final mSessionObj:Ljava/lang/Object;

.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    .line 539
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Landroid/os/Parcelable;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 540
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->verifySession(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    .line 544
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Landroid/os/Parcelable;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 545
    return-void
.end method


# virtual methods
.method public final getMediaSession()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->isActive(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->release(Ljava/lang/Object;)V

    .line 586
    return-void
.end method

.method public final sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->sendSessionEvent(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 581
    return-void
.end method

.method public final setActive(Z)V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setActive(Ljava/lang/Object;Z)V

    .line 571
    return-void
.end method

.method public final setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 550
    return-void
.end method

.method public final setFlags(I)V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setFlags(Ljava/lang/Object;I)V

    .line 555
    return-void
.end method

.method public final setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 8

    .prologue
    .line 600
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    :goto_0
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setMetadata(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    return-void

    .line 600
    :cond_1
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->newInstance()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p1, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p1, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v3, v0, v6, v7}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putLong(Ljava/lang/Object;Ljava/lang/String;J)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putBitmap(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putRating(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p1, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-static {v3}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 13

    .prologue
    .line 595
    iget-object v12, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    :goto_0
    invoke-static {v12, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackState(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    return-void

    .line 595
    :cond_1
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    iget-wide v2, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    iget-wide v4, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    iget v6, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    iget-wide v7, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    iget-object v9, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    iget-wide v10, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    invoke-static/range {v1 .. v11}, Landroid/support/v4/media/session/PlaybackStateCompatApi21;->newInstance(IJJFJLjava/lang/CharSequence;J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mStateObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final setPlaybackToLocal(I)V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToLocal(Ljava/lang/Object;I)V

    .line 560
    return-void
.end method

.method public final setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 5

    .prologue
    .line 564
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    return-void

    .line 564
    :cond_1
    iget v0, p1, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    iget v2, p1, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    iget v3, p1, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    new-instance v4, Landroid/support/v4/media/VolumeProviderCompat$1;

    invoke-direct {v4, p1}, Landroid/support/v4/media/VolumeProviderCompat$1;-><init>(Landroid/support/v4/media/VolumeProviderCompat;)V

    invoke-static {v0, v2, v3, v4}, Landroid/support/v4/media/VolumeProviderCompatApi21;->createVolumeProvider(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    iget-object v0, p1, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    goto :goto_0
.end method
