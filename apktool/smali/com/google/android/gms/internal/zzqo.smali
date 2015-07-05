.class public Lcom/google/android/gms/internal/zzqo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzqp;

.field public static final zzaph:Lcom/google/android/gms/internal/zzqo;

.field public static final zzapi:Lcom/google/android/gms/internal/zzqo;


# instance fields
.field final zzFG:I

.field private final zzapj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzqp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzqp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzqo;->CREATOR:Lcom/google/android/gms/internal/zzqp;

    new-instance v0, Lcom/google/android/gms/internal/zzqo;

    const-string v1, "Home"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzqo;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzqo;->zzaph:Lcom/google/android/gms/internal/zzqo;

    new-instance v0, Lcom/google/android/gms/internal/zzqo;

    const-string v1, "Work"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzqo;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzqo;->zzapi:Lcom/google/android/gms/internal/zzqo;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzqo;->zzFG:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqo;->zzapj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzqo;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzqo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo;->zzapj:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzqo;->zzapj:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqo;->zzapj:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzk(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "alias"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqo;->zzapj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzqp;->zza(Lcom/google/android/gms/internal/zzqo;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzpY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo;->zzapj:Ljava/lang/String;

    return-object v0
.end method
