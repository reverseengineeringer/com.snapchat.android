.class public final Lcom/google/android/gms/internal/zzta;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzta$1;,
        Lcom/google/android/gms/internal/zzta$zza;
    }
.end annotation


# instance fields
.field private final zzFr:Ljava/lang/String;

.field private final zzatB:Z

.field private final zzatC:Z

.field private final zzatD:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzta$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzta$zza;->zza(Lcom/google/android/gms/internal/zzta$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzta;->zzatD:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzta$zza;->zzb(Lcom/google/android/gms/internal/zzta$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzta;->zzatB:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzta$zza;->zzc(Lcom/google/android/gms/internal/zzta$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzta;->zzatC:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzta$zza;->zzd(Lcom/google/android/gms/internal/zzta$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzta;->zzFr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzta$zza;Lcom/google/android/gms/internal/zzta$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzta;-><init>(Lcom/google/android/gms/internal/zzta$zza;)V

    return-void
.end method


# virtual methods
.method public final zzgL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzta;->zzFr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzrx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzta;->zzatD:Ljava/lang/String;

    return-object v0
.end method

.method public final zzry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzta;->zzatB:Z

    return v0
.end method

.method public final zzrz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzta;->zzatC:Z

    return v0
.end method
