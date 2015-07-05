.class Lcom/google/android/gms/internal/zzow$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzpm",
        "<",
        "Lcom/google/android/gms/internal/zzpc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzamF:Lcom/google/android/gms/internal/zzow;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzow;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzow$1;->zzamF:Lcom/google/android/gms/internal/zzow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzfc()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzow$1;->zzamF:Lcom/google/android/gms/internal/zzow;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzow;->zza(Lcom/google/android/gms/internal/zzow;)V

    return-void
.end method

.method public synthetic zzjb()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzow$1;->zzpu()Lcom/google/android/gms/internal/zzpc;

    move-result-object v0

    return-object v0
.end method

.method public zzpu()Lcom/google/android/gms/internal/zzpc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzow$1;->zzamF:Lcom/google/android/gms/internal/zzow;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzow;->zzjb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpc;

    return-object v0
.end method
