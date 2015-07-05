.class final Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;B)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    return-void
.end method


# virtual methods
.method public final onCommand$419d37ab()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public final onFastForward()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public final onMediaButtonEvent$14d1abca()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public final onPause()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public final onPlay()V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public final onRewind()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public final onSeekTo$1349ef()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public final onSetRating(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 410
    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    .line 411
    return-void
.end method

.method public final onSkipToNext()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public final onStop()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method
