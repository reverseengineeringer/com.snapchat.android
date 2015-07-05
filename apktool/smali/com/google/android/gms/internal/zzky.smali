.class public Lcom/google/android/gms/internal/zzky;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzkz;


# instance fields
.field private final zzFG:I

.field private final zzQJ:Lcom/google/android/gms/internal/zzla;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzky;->CREATOR:Lcom/google/android/gms/internal/zzkz;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzla;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzky;->zzFG:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzky;->zzQJ:Lcom/google/android/gms/internal/zzla;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzla;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzky;->zzFG:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzky;->zzQJ:Lcom/google/android/gms/internal/zzla;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzld$zzb;)Lcom/google/android/gms/internal/zzky;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzld$zzb",
            "<**>;)",
            "Lcom/google/android/gms/internal/zzky;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/zzla;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzky;

    check-cast p0, Lcom/google/android/gms/internal/zzla;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzky;-><init>(Lcom/google/android/gms/internal/zzla;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzky;->zzFG:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzkz;->zza(Lcom/google/android/gms/internal/zzky;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzju()Lcom/google/android/gms/internal/zzla;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzky;->zzQJ:Lcom/google/android/gms/internal/zzla;

    return-object v0
.end method

.method public zzjv()Lcom/google/android/gms/internal/zzld$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzld$zzb",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzky;->zzQJ:Lcom/google/android/gms/internal/zzla;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzky;->zzQJ:Lcom/google/android/gms/internal/zzla;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
