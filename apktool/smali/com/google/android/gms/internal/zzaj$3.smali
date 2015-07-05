.class Lcom/google/android/gms/internal/zzaj$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaj;->zzf(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zznS:Lcom/google/android/gms/internal/zzaj;

.field final synthetic zznU:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaj$3;->zznS:Lcom/google/android/gms/internal/zzaj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaj$3;->zznU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$3;->zznS:Lcom/google/android/gms/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaj;->zza(Lcom/google/android/gms/internal/zzaj;)Lcom/google/android/gms/internal/zzic;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$3;->zznU:Ljava/lang/String;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzic;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
