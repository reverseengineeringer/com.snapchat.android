.class public Lcom/google/android/gms/location/GeofencingRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/GeofencingRequest$1;,
        Lcom/google/android/gms/location/GeofencingRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/GeofencingRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final INITIAL_TRIGGER_DWELL:I = 0x4

.field public static final INITIAL_TRIGGER_ENTER:I = 0x1

.field public static final INITIAL_TRIGGER_EXIT:I = 0x2


# instance fields
.field private final zzFG:I

.field private final zzalY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzpk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzalZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/zza;

    invoke-direct {v0}, Lcom/google/android/gms/location/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/GeofencingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzpk;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/GeofencingRequest;->zzFG:I

    iput-object p2, p0, Lcom/google/android/gms/location/GeofencingRequest;->zzalY:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/location/GeofencingRequest;->zzalZ:I

    return-void
.end method

.method private constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzpk;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/location/GeofencingRequest;-><init>(ILjava/util/List;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ILcom/google/android/gms/location/GeofencingRequest$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/GeofencingRequest;-><init>(Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGeofences()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/location/GeofencingRequest;->zzalY:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getInitialTrigger()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GeofencingRequest;->zzalZ:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GeofencingRequest;->zzFG:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/zza;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzpp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzpk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingRequest;->zzalY:Ljava/util/List;

    return-object v0
.end method
