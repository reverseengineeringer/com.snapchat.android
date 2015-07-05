.class Lcom/google/android/gms/internal/zzgw$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzia$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgw$3;->run()V
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
.field final synthetic zzxs:Lcom/google/android/gms/internal/zzgw$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgw$3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw$3$1;->zzxs:Lcom/google/android/gms/internal/zzgw$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzah;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgw$3$1;->zzb(Lcom/google/android/gms/internal/zzah;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzah;)V
    .locals 2

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$3$1;->zzxs:Lcom/google/android/gms/internal/zzgw$3;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgw$3;->zzxk:Lcom/google/android/gms/internal/zzgy;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgy;->zzxz:Lcom/google/android/gms/internal/zzcv;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$3$1;->zzxs:Lcom/google/android/gms/internal/zzgw$3;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgw$3;->zzxk:Lcom/google/android/gms/internal/zzgy;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzgy;->zzxA:Lcom/google/android/gms/internal/zzcv;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzah;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    return-void
.end method
