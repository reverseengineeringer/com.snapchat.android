.class public abstract Landroid/support/v4/media/VolumeProviderCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/VolumeProviderCompat$Callback;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

.field public final mControlType:I

.field public mCurrentVolume:I

.field public final mMaxVolume:I

.field public mVolumeProviderObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    .line 67
    iput p2, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    .line 68
    iput p3, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    .line 69
    return-void
.end method

.method private getCurrentVolume()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    return v0
.end method

.method private getMaxVolume()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    return v0
.end method

.method private getVolumeControl()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    return v0
.end method

.method private getVolumeProvider()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    .line 162
    :goto_0
    return-object v0

    .line 149
    :cond_1
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    iget v1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    iget v2, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    new-instance v3, Landroid/support/v4/media/VolumeProviderCompat$1;

    invoke-direct {v3, p0}, Landroid/support/v4/media/VolumeProviderCompat$1;-><init>(Landroid/support/v4/media/VolumeProviderCompat;)V

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/VolumeProviderCompatApi21;->createVolumeProvider(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static onAdjustVolume$13462e()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method private static onSetVolumeTo$13462e()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method private setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    .line 134
    return-void
.end method

.method private static setCurrentVolume$13462e()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method
