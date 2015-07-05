.class final Landroid/support/v4/app/FragmentManagerState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerState;
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
        "Landroid/support/v4/app/FragmentManagerState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/FragmentManagerState;
    .locals 1

    .prologue
    .line 389
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static newArray(I)[Landroid/support/v4/app/FragmentManagerState;
    .locals 1

    .prologue
    .line 393
    new-array v0, p0, [Landroid/support/v4/app/FragmentManagerState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0, p1}, Landroid/support/v4/app/FragmentManagerState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    new-array v0, p1, [Landroid/support/v4/app/FragmentManagerState;

    return-object v0
.end method
