.class final Landroid/support/v4/media/RatingCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/RatingCompat;
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
        "Landroid/support/v4/media/RatingCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/RatingCompat;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/media/RatingCompat;-><init>(IFB)V

    return-object v0
.end method

.method private static newArray(I)[Landroid/support/v4/media/RatingCompat;
    .locals 1

    .prologue
    .line 116
    new-array v0, p0, [Landroid/support/v4/media/RatingCompat;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/media/RatingCompat;-><init>(IFB)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    new-array v0, p1, [Landroid/support/v4/media/RatingCompat;

    return-object v0
.end method
