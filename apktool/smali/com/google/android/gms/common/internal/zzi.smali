.class public Lcom/google/android/gms/common/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final version:I

.field zzPA:I

.field zzPB:Ljava/lang/String;

.field zzPC:Landroid/os/IBinder;

.field zzPD:[Lcom/google/android/gms/common/api/Scope;

.field zzPE:Landroid/os/Bundle;

.field zzPF:Landroid/accounts/Account;

.field final zzPz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzi;->version:I

    const v0, 0x6c42d8

    iput v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzPA:I

    iput p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzPz:I

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zzi;->version:I

    iput p2, p0, Lcom/google/android/gms/common/internal/zzi;->zzPz:I

    iput p3, p0, Lcom/google/android/gms/common/internal/zzi;->zzPA:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/zzi;->zzPB:Ljava/lang/String;

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p5}, Lcom/google/android/gms/common/internal/zzi;->zzQ(Landroid/os/IBinder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzPF:Landroid/accounts/Account;

    :goto_0
    iput-object p6, p0, Lcom/google/android/gms/common/internal/zzi;->zzPD:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzi;->zzPE:Landroid/os/Bundle;

    return-void

    :cond_0
    iput-object p5, p0, Lcom/google/android/gms/common/internal/zzi;->zzPC:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/zzi;->zzPF:Landroid/accounts/Account;

    goto :goto_0
.end method

.method private zzQ(Landroid/os/IBinder;)Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzq$zza;->zzR(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zza;->zzc(Lcom/google/android/gms/common/internal/zzq;)Landroid/accounts/Account;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/internal/zzi;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza([Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/internal/zzi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzPD:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public zzb(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/zzi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzPF:Landroid/accounts/Account;

    return-object p0
.end method

.method public zzbg(Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzPB:Ljava/lang/String;

    return-object p0
.end method

.method public zzd(Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/internal/zzi;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzi;->zzPC:Landroid/os/IBinder;

    :cond_0
    return-object p0
.end method

.method public zzi(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/zzi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi;->zzPE:Landroid/os/Bundle;

    return-object p0
.end method
