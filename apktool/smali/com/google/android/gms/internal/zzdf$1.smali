.class Lcom/google/android/gms/internal/zzdf$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzah$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdf;->zza(Lcom/google/android/gms/internal/zzia;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzrY:Lcom/google/android/gms/internal/zzia;

.field final synthetic zzrZ:Lcom/google/android/gms/internal/zzdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzia;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdf$1;->zzrZ:Lcom/google/android/gms/internal/zzdf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdf$1;->zzrY:Lcom/google/android/gms/internal/zzia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbk()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzdf$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdf$1$1;-><init>(Lcom/google/android/gms/internal/zzdf$1;)V

    sget v2, Lcom/google/android/gms/internal/zzdf$zza;->zzsd:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
