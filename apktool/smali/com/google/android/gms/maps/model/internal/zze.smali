.class public final Lcom/google/android/gms/maps/model/internal/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/internal/zzf;


# instance fields
.field private final zzFG:I

.field private zzarQ:Lcom/google/android/gms/maps/model/internal/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/internal/zze;->CREATOR:Lcom/google/android/gms/maps/model/internal/zzf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/model/internal/zze;->zzFG:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/internal/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/internal/zze;->zzFG:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/internal/zze;->zzarQ:Lcom/google/android/gms/maps/model/internal/zza;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/zze;->zzFG:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/internal/zzf;->zza(Lcom/google/android/gms/maps/model/internal/zze;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzqM()Lcom/google/android/gms/maps/model/internal/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/zze;->zzarQ:Lcom/google/android/gms/maps/model/internal/zza;

    return-object v0
.end method
