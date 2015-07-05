.class public Lcom/google/android/gms/internal/zzpi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzpj;


# instance fields
.field mPendingIntent:Landroid/app/PendingIntent;

.field private final zzFG:I

.field zzanl:I

.field zzanm:Lcom/google/android/gms/internal/zzpg;

.field zzann:Lcom/google/android/gms/location/zzd;

.field zzano:Lcom/google/android/gms/location/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpi;->CREATOR:Lcom/google/android/gms/internal/zzpj;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzpi;->zzFG:I

    iput p2, p0, Lcom/google/android/gms/internal/zzpi;->zzanl:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpi;->zzanm:Lcom/google/android/gms/internal/zzpg;

    if-nez p4, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzpi;->zzann:Lcom/google/android/gms/location/zzd;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzpi;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez p6, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzpi;->zzano:Lcom/google/android/gms/location/zze;

    return-void

    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/location/zzd$zza;->zzbg(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzd;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p6}, Lcom/google/android/gms/location/zze$zza;->zzbh(Landroid/os/IBinder;)Lcom/google/android/gms/location/zze;

    move-result-object v1

    goto :goto_1
.end method

.method public static zza(Lcom/google/android/gms/location/zze;)Lcom/google/android/gms/internal/zzpi;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzpi;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/zze;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpi;-><init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzpg;Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/zzpi;
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/google/android/gms/internal/zzpi;

    move v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpi;-><init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzpg;Lcom/google/android/gms/location/zzd;)Lcom/google/android/gms/internal/zzpi;
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/google/android/gms/internal/zzpi;

    invoke-interface {p1}, Lcom/google/android/gms/location/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move v2, v1

    move-object v3, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpi;-><init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/location/zzd;)Lcom/google/android/gms/internal/zzpi;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzpi;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpi;-><init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static zze(Landroid/app/PendingIntent;)Lcom/google/android/gms/internal/zzpi;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzpi;

    const/4 v1, 0x1

    const/4 v2, 0x2

    move-object v4, v3

    move-object v5, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpi;-><init>(IILcom/google/android/gms/internal/zzpg;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpi;->zzFG:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzpj;->zza(Lcom/google/android/gms/internal/zzpi;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzpA()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->zzano:Lcom/google/android/gms/location/zze;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->zzano:Lcom/google/android/gms/location/zze;

    invoke-interface {v0}, Lcom/google/android/gms/location/zze;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method zzpz()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->zzann:Lcom/google/android/gms/location/zzd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpi;->zzann:Lcom/google/android/gms/location/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/location/zzd;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
