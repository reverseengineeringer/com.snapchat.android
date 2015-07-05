.class Lcom/google/android/gms/analytics/zzw$zze;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/zzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zze"
.end annotation


# instance fields
.field final synthetic zzCv:Lcom/google/android/gms/analytics/zzw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/zzw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzw$zze;->zzCv:Lcom/google/android/gms/analytics/zzw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/zzw;Lcom/google/android/gms/analytics/zzw$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zzw$zze;-><init>(Lcom/google/android/gms/analytics/zzw;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzw$zze;->zzCv:Lcom/google/android/gms/analytics/zzw;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzw;->zzd(Lcom/google/android/gms/analytics/zzw;)V

    return-void
.end method
