.class final Landroid/support/v4/media/MediaMetadataCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaMetadataCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 2

    .prologue
    .line 435
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method private static newArray(I)[Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 440
    new-array v0, p0, [Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    new-array v0, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method
