.class public abstract Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;
    }
.end annotation


# instance fields
.field final mCallbackObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 230
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;B)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->createCallback(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static onMetadataChanged$a01132b()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method private static onPlaybackStateChanged$15a11a21()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method private static onSessionDestroyed()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method private static onSessionEvent$5dc9c75()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method
