.class Lcom/google/android/gms/internal/zzgw$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzia$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgw$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzia$zzd",
        "<",
        "Lcom/google/android/gms/internal/zzah;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzxo:Lcom/google/android/gms/internal/zzce;

.field final synthetic zzxp:Lcom/google/android/gms/internal/zzgw$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgw$1;Lcom/google/android/gms/internal/zzce;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw$1$1;->zzxp:Lcom/google/android/gms/internal/zzgw$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw$1$1;->zzxo:Lcom/google/android/gms/internal/zzce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzah;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgw$1$1;->zzb(Lcom/google/android/gms/internal/zzah;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzah;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$1$1;->zzxp:Lcom/google/android/gms/internal/zzgw$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgw$1;->zzxl:Lcom/google/android/gms/internal/zzcf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1$1;->zzxo:Lcom/google/android/gms/internal/zzce;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcf;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1$1;->zzxp:Lcom/google/android/gms/internal/zzgw$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgw$1;->zzxk:Lcom/google/android/gms/internal/zzgy;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgy;->zzxz:Lcom/google/android/gms/internal/zzcv;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzah;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1$1;->zzxp:Lcom/google/android/gms/internal/zzgw$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgw$1;->zzxk:Lcom/google/android/gms/internal/zzgy;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgy;->zzxA:Lcom/google/android/gms/internal/zzcv;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzah;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    :try_start_0
    const-string v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1$1;->zzxp:Lcom/google/android/gms/internal/zzgw$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgw$1;->zzxn:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzah;->zzb(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
