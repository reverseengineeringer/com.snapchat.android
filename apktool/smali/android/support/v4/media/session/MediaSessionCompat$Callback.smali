.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;
    }
.end annotation


# instance fields
.field final mCallbackObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 270
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;B)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static onCommand$419d37ab()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method private static onFastForward()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method private static onMediaButtonEvent$14d1abca()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method private static onPause()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method private static onPlay()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method private static onRewind()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method private static onSeekTo$1349ef()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method private static onSetRating$628f94d1()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method private static onSkipToNext()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method private static onSkipToPrevious()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method private static onStop()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method
