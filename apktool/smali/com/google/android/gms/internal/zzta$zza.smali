.class public final Lcom/google/android/gms/internal/zzta$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzFr:Ljava/lang/String;

.field private zzatB:Z

.field private zzatC:Z

.field private final zzatD:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzta$zza;->zzatB:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzta$zza;->zzatC:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzta$zza;->zzatD:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzta$zza;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzta$zza;->zzatD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzta$zza;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzta$zza;->zzatB:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzta$zza;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzta$zza;->zzatC:Z

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzta$zza;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzta$zza;->zzFr:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final zzab(Z)Lcom/google/android/gms/internal/zzta$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzta$zza;->zzatB:Z

    return-object p0
.end method

.method public final zzac(Z)Lcom/google/android/gms/internal/zzta$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzta$zza;->zzatC:Z

    return-object p0
.end method

.method public final zzcA(Ljava/lang/String;)Lcom/google/android/gms/internal/zzta$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzta$zza;->zzFr:Ljava/lang/String;

    return-object p0
.end method

.method public final zzrA()Lcom/google/android/gms/internal/zzta;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzta;-><init>(Lcom/google/android/gms/internal/zzta$zza;Lcom/google/android/gms/internal/zzta$1;)V

    return-object v0
.end method
