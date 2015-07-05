.class Lcom/google/android/gms/internal/zzdi$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdi;->zza(JJ)Lcom/google/android/gms/internal/zzdo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsi:Lcom/google/android/gms/internal/zzdo;

.field final synthetic zzsj:Lcom/google/android/gms/internal/zzdi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdi;Lcom/google/android/gms/internal/zzdo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdi$1;->zzsj:Lcom/google/android/gms/internal/zzdi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdi$1;->zzsi:Lcom/google/android/gms/internal/zzdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdi$1;->zzsi:Lcom/google/android/gms/internal/zzdo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdo;->zzsM:Lcom/google/android/gms/internal/zzds;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzds;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
