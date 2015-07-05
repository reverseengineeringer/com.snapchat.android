.class public final Lcom/google/android/gms/internal/zzax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzay;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final versionCode:I

.field public final zzoL:J

.field public final zzoM:I

.field public final zzoN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzoO:Z

.field public final zzoP:I

.field public final zzoQ:Z

.field public final zzoR:Ljava/lang/String;

.field public final zzoS:Lcom/google/android/gms/internal/zzbs;

.field public final zzoT:Landroid/location/Location;

.field public final zzoU:Ljava/lang/String;

.field public final zzoV:Landroid/os/Bundle;

.field public final zzoW:Landroid/os/Bundle;

.field public final zzoX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzoY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzay;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzax;->CREATOR:Lcom/google/android/gms/internal/zzay;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzbs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbs;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzax;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzax;->zzoL:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzax;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/zzax;->zzoM:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzax;->zzoN:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzax;->zzoO:Z

    iput p8, p0, Lcom/google/android/gms/internal/zzax;->zzoP:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzax;->zzoQ:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/zzax;->zzoR:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzax;->zzoS:Lcom/google/android/gms/internal/zzbs;

    iput-object p12, p0, Lcom/google/android/gms/internal/zzax;->zzoT:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/zzax;->zzoU:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzoV:Landroid/os/Bundle;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzoW:Landroid/os/Bundle;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzoX:Ljava/util/List;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzoY:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzay;->zza(Lcom/google/android/gms/internal/zzax;Landroid/os/Parcel;I)V

    return-void
.end method
