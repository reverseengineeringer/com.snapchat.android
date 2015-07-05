.class Lcom/google/android/gms/internal/zzgg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgg;->zzdw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzvQ:Lcom/google/android/gms/internal/zzhe;

.field final synthetic zzwa:Lcom/google/android/gms/internal/zzgg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgg;Lcom/google/android/gms/internal/zzhe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgg$1;->zzwa:Lcom/google/android/gms/internal/zzgg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgg$1;->zzvQ:Lcom/google/android/gms/internal/zzhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg$1;->zzwa:Lcom/google/android/gms/internal/zzgg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgg;->zza(Lcom/google/android/gms/internal/zzgg;)Lcom/google/android/gms/internal/zzgc$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg$1;->zzvQ:Lcom/google/android/gms/internal/zzhe;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgc$zza;->zza(Lcom/google/android/gms/internal/zzhe;)V

    return-void
.end method
