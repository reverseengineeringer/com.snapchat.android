.class public final Lcom/google/android/gms/maps/model/internal/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/internal/zzb;


# instance fields
.field private final zzFG:I

.field private zzarN:B

.field private zzarO:Landroid/os/Bundle;

.field private zzarP:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/internal/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/internal/zza;->CREATOR:Lcom/google/android/gms/maps/model/internal/zzb;

    return-void
.end method

.method constructor <init>(IBLandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/internal/zza;->zzFG:I

    iput-byte p2, p0, Lcom/google/android/gms/maps/model/internal/zza;->zzarN:B

    iput-object p3, p0, Lcom/google/android/gms/maps/model/internal/zza;->zzarO:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/internal/zza;->zzarP:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/zza;->zzarP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getType()B
    .locals 1

    iget-byte v0, p0, Lcom/google/android/gms/maps/model/internal/zza;->zzarN:B

    return v0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/internal/zza;->zzFG:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/internal/zzb;->zza(Lcom/google/android/gms/maps/model/internal/zza;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzqL()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/internal/zza;->zzarO:Landroid/os/Bundle;

    return-object v0
.end method
