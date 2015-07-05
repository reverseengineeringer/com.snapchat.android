.class Lcom/google/android/gms/internal/zzai$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzai;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zznK:Landroid/content/Context;

.field final synthetic zznL:Lcom/google/android/gms/internal/zzhy;

.field final synthetic zznM:Lcom/google/android/gms/internal/zzhq;

.field final synthetic zznN:Ljava/lang/String;

.field final synthetic zznO:Lcom/google/android/gms/internal/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzai;Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;Lcom/google/android/gms/internal/zzhq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzai$1;->zznO:Lcom/google/android/gms/internal/zzai;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzai$1;->zznK:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzai$1;->zznL:Lcom/google/android/gms/internal/zzhy;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzai$1;->zznM:Lcom/google/android/gms/internal/zzhq;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzai$1;->zznN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzai$1;->zznO:Lcom/google/android/gms/internal/zzai;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzai$1;->zznK:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzai$1;->zznL:Lcom/google/android/gms/internal/zzhy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzai$1;->zznM:Lcom/google/android/gms/internal/zzhq;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzai;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;Lcom/google/android/gms/internal/zzhq;)Lcom/google/android/gms/internal/zzah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzai$1;->zznN:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzah;->zzg(Ljava/lang/String;)V

    return-void
.end method
