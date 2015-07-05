.class final Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;",
        ">",
        "Landroid/media/session/MediaSession$Callback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    .line 114
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final onFastForward()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public final onPause()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public final onPlay()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final onRewind()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public final onSeekTo(J)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public final onSetRating(Landroid/media/Rating;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSetRating(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public final onSkipToNext()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public final onStop()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
