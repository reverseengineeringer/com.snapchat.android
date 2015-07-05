.class public Lcom/google/android/gms/internal/zzce;
.super Ljava/lang/Object;


# instance fields
.field private final zzqZ:Ljava/lang/Long;

.field private final zzra:Ljava/lang/String;

.field private final zzrb:Lcom/google/android/gms/internal/zzce;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzce;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzqZ:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzce;->zzra:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzce;->zzrb:Lcom/google/android/gms/internal/zzce;

    return-void
.end method


# virtual methods
.method zzcn()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzqZ:Ljava/lang/Long;

    return-object v0
.end method

.method zzco()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzra:Ljava/lang/String;

    return-object v0
.end method

.method zzcp()Lcom/google/android/gms/internal/zzce;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzrb:Lcom/google/android/gms/internal/zzce;

    return-object v0
.end method
