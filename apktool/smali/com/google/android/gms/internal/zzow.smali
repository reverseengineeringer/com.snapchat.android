.class public Lcom/google/android/gms/internal/zzow;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzpc;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzamE:Ljava/lang/String;

.field protected final zzamz:Lcom/google/android/gms/internal/zzpm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpm",
            "<",
            "Lcom/google/android/gms/internal/zzpc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 6

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Lcom/google/android/gms/internal/zzow$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzow$1;-><init>(Lcom/google/android/gms/internal/zzow;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzow;->zzamz:Lcom/google/android/gms/internal/zzpm;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzow;->zzamE:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzow;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzow;->zzfc()V

    return-void
.end method


# virtual methods
.method protected zzbi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpc;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpc$zza;->zzbk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpc;

    move-result-object v0

    return-object v0
.end method

.method protected zzcF()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected zzcG()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected zzhq()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzow;->zzamE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected synthetic zzp(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzow;->zzbi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpc;

    move-result-object v0

    return-object v0
.end method
