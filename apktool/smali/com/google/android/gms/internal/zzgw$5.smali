.class Lcom/google/android/gms/internal/zzgw$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzia$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;)V
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
.field final synthetic zzxt:Lcom/google/android/gms/internal/zzgw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw$5;->zzxt:Lcom/google/android/gms/internal/zzgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzah;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzgw$5;->zzb(Lcom/google/android/gms/internal/zzah;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzah;)V
    .locals 2

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/zzcu;->zzrG:Lcom/google/android/gms/internal/zzcv;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzah;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    return-void
.end method
