.class Lcom/google/android/gms/internal/zzaf$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zznI:Lcom/google/android/gms/internal/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaf$8;->zznI:Lcom/google/android/gms/internal/zzaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzic;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$8;->zznI:Lcom/google/android/gms/internal/zzaf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaf;->zza(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received request to untrack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$8;->zznI:Lcom/google/android/gms/internal/zzaf;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaf;->zzb(Lcom/google/android/gms/internal/zzaf;)Lcom/google/android/gms/internal/zzad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzad;->zzaZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$8;->zznI:Lcom/google/android/gms/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaf;->destroy()V

    goto :goto_0
.end method
