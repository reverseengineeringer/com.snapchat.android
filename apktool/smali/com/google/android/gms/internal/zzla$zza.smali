.class public final Lcom/google/android/gms/internal/zzla$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzlc;


# instance fields
.field final versionCode:I

.field final zzQN:Ljava/lang/String;

.field final zzQO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzlc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzla$zza;->CREATOR:Lcom/google/android/gms/internal/zzlc;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzla$zza;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzla$zza;->zzQN:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzla$zza;->zzQO:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzla$zza;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzla$zza;->zzQN:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzla$zza;->zzQO:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzlc;->zza(Lcom/google/android/gms/internal/zzla$zza;Landroid/os/Parcel;I)V

    return-void
.end method
