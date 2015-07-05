.class public final Lcom/google/android/gms/maps/model/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/internal/zzd;


# instance fields
.field private type:I

.field private final zzFG:I

.field private zzarO:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/internal/zzc;->CREATOR:Lcom/google/android/gms/maps/model/internal/zzd;

    return-void
.end method

.method constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/internal/zzc;->zzFG:I

    iput p2, p0, Lcom/google/android/gms/maps/model/internal/zzc;->type:I

    iput-object p3, p0, Lcom/google/android/gms/maps/model/internal/zzc;->zzarO:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/zzc;->type:I

    return v0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/zzc;->zzFG:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/internal/zzd;->zza(Lcom/google/android/gms/maps/model/internal/zzc;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzqL()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/zzc;->zzarO:Landroid/os/Bundle;

    return-object v0
.end method
