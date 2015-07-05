.class Lcom/google/android/gms/analytics/zzw$zzc;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/zzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzCv:Lcom/google/android/gms/analytics/zzw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/zzw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzw$zzc;->zzCv:Lcom/google/android/gms/analytics/zzw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/zzw;Lcom/google/android/gms/analytics/zzw$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zzw$zzc;-><init>(Lcom/google/android/gms/analytics/zzw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw$zzc;->zzCv:Lcom/google/android/gms/analytics/zzw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzw;->zzb(Lcom/google/android/gms/analytics/zzw;)Lcom/google/android/gms/analytics/zzw$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/zzw$zza;->zzCx:Lcom/google/android/gms/analytics/zzw$zza;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw$zzc;->zzCv:Lcom/google/android/gms/analytics/zzw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzw;->zzc(Lcom/google/android/gms/analytics/zzw;)V

    :cond_0
    return-void
.end method
