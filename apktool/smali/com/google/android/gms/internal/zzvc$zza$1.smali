.class Lcom/google/android/gms/internal/zzvc$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzvc$zza;->zza(Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/zzva;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaxa:Ljava/util/List;

.field final synthetic zzaxb:Ljava/lang/String;

.field final synthetic zzaxc:Lcom/google/android/gms/internal/zzva;

.field final synthetic zzaxd:Lcom/google/android/gms/internal/zzvc$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvc$zza;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzva;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvc$zza$1;->zzaxd:Lcom/google/android/gms/internal/zzvc$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvc$zza$1;->zzaxa:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvc$zza$1;->zzaxb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzvc$zza$1;->zzaxc:Lcom/google/android/gms/internal/zzva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc$zza$1;->zzaxd:Lcom/google/android/gms/internal/zzvc$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzvc$zza;->zza(Lcom/google/android/gms/internal/zzvc$zza;)Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvc$zza$1;->zzaxa:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvc$zza$1;->zzaxb:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;->onCheckServerAuthorization(Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzuw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zzic()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks$CheckResult;->zzid()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzuw;-><init>(ZLjava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc$zza$1;->zzaxc:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzva;->zza(Lcom/google/android/gms/internal/zzuw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
