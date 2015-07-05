.class Lcom/google/android/gms/internal/zzvc$zza$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzvc$zza;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzva;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaxb:Ljava/lang/String;

.field final synthetic zzaxc:Lcom/google/android/gms/internal/zzva;

.field final synthetic zzaxd:Lcom/google/android/gms/internal/zzvc$zza;

.field final synthetic zzaxe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvc$zza;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzva;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvc$zza$2;->zzaxd:Lcom/google/android/gms/internal/zzvc$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvc$zza$2;->zzaxb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvc$zza$2;->zzaxe:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzvc$zza$2;->zzaxc:Lcom/google/android/gms/internal/zzva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc$zza$2;->zzaxd:Lcom/google/android/gms/internal/zzvc$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzvc$zza;->zza(Lcom/google/android/gms/internal/zzvc$zza;)Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvc$zza$2;->zzaxb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzvc$zza$2;->zzaxe:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;->onUploadServerAuthCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvc$zza$2;->zzaxc:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzva;->zzaf(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
