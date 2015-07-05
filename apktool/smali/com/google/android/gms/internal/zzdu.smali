.class public final Lcom/google/android/gms/internal/zzdu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zzd:Ljava/util/Date;

.field private final zzf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Z

.field private final zzh:Landroid/location/Location;

.field private final zzpo:I

.field private final zzsQ:I


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdu;->zzd:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/zzdu;->zzpo:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdu;->zzf:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdu;->zzh:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzdu;->zzg:Z

    iput p6, p0, Lcom/google/android/gms/internal/zzdu;->zzsQ:I

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdu;->zzd:Ljava/util/Date;

    return-object v0
.end method

.method public final getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdu;->zzpo:I

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdu;->zzf:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdu;->zzh:Landroid/location/Location;

    return-object v0
.end method

.method public final isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzdu;->zzg:Z

    return v0
.end method

.method public final taggedForChildDirectedTreatment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdu;->zzsQ:I

    return v0
.end method
