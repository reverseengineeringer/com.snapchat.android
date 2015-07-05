.class final Lcom/google/android/gms/internal/zzgw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzxj:Lcom/google/android/gms/internal/zzdf;

.field final synthetic zzxk:Lcom/google/android/gms/internal/zzgy;

.field final synthetic zzxl:Lcom/google/android/gms/internal/zzcf;

.field final synthetic zzxm:Lcom/google/android/gms/internal/zzce;

.field final synthetic zzxn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxj:Lcom/google/android/gms/internal/zzdf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxk:Lcom/google/android/gms/internal/zzgy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxl:Lcom/google/android/gms/internal/zzcf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxm:Lcom/google/android/gms/internal/zzce;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxj:Lcom/google/android/gms/internal/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdf;->zzcJ()Lcom/google/android/gms/internal/zzia;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxk:Lcom/google/android/gms/internal/zzgy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzgy;->zze(Lcom/google/android/gms/internal/zzia;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxl:Lcom/google/android/gms/internal/zzcf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxm:Lcom/google/android/gms/internal/zzce;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcf;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$1;->zzxl:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcf;->zzcq()Lcom/google/android/gms/internal/zzce;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzgw$1$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzgw$1$1;-><init>(Lcom/google/android/gms/internal/zzgw$1;Lcom/google/android/gms/internal/zzce;)V

    new-instance v1, Lcom/google/android/gms/internal/zzgw$1$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgw$1$2;-><init>(Lcom/google/android/gms/internal/zzgw$1;)V

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzia;->zza(Lcom/google/android/gms/internal/zzia$zzd;Lcom/google/android/gms/internal/zzia$zza;)V

    return-void
.end method
