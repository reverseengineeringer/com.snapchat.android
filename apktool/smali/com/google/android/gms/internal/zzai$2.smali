.class Lcom/google/android/gms/internal/zzai$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzah$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzai;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;Lcom/google/android/gms/internal/zzhq;)Lcom/google/android/gms/internal/zzah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zznM:Lcom/google/android/gms/internal/zzhq;

.field final synthetic zznO:Lcom/google/android/gms/internal/zzai;

.field final synthetic zznP:Lcom/google/android/gms/internal/zzah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzai;Lcom/google/android/gms/internal/zzhq;Lcom/google/android/gms/internal/zzah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzai$2;->zznO:Lcom/google/android/gms/internal/zzai;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzai$2;->zznM:Lcom/google/android/gms/internal/zzhq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzai$2;->zznP:Lcom/google/android/gms/internal/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbk()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$2;->zznM:Lcom/google/android/gms/internal/zzhq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzai$2;->zznP:Lcom/google/android/gms/internal/zzah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhq;->zzb(Ljava/lang/Object;)V

    return-void
.end method
