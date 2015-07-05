.class public final Lcom/google/android/gms/internal/zzbs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzbt;


# instance fields
.field public final backgroundColor:I

.field public final versionCode:I

.field public final zzpN:I

.field public final zzpO:I

.field public final zzpP:I

.field public final zzpQ:I

.field public final zzpR:I

.field public final zzpS:I

.field public final zzpT:I

.field public final zzpU:Ljava/lang/String;

.field public final zzpV:I

.field public final zzpW:Ljava/lang/String;

.field public final zzpX:I

.field public final zzpY:I

.field public final zzpZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbs;->CREATOR:Lcom/google/android/gms/internal/zzbt;

    return-void
.end method

.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbs;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbs;->zzpN:I

    iput p3, p0, Lcom/google/android/gms/internal/zzbs;->backgroundColor:I

    iput p4, p0, Lcom/google/android/gms/internal/zzbs;->zzpO:I

    iput p5, p0, Lcom/google/android/gms/internal/zzbs;->zzpP:I

    iput p6, p0, Lcom/google/android/gms/internal/zzbs;->zzpQ:I

    iput p7, p0, Lcom/google/android/gms/internal/zzbs;->zzpR:I

    iput p8, p0, Lcom/google/android/gms/internal/zzbs;->zzpS:I

    iput p9, p0, Lcom/google/android/gms/internal/zzbs;->zzpT:I

    iput-object p10, p0, Lcom/google/android/gms/internal/zzbs;->zzpU:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/zzbs;->zzpV:I

    iput-object p12, p0, Lcom/google/android/gms/internal/zzbs;->zzpW:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/zzbs;->zzpX:I

    iput p14, p0, Lcom/google/android/gms/internal/zzbs;->zzpY:I

    iput-object p15, p0, Lcom/google/android/gms/internal/zzbs;->zzpZ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getAnchorTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpN:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->backgroundColor:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientBottom()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpO:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpP:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpQ:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderThickness()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpR:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpS:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCallButtonColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpT:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCustomChannels()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpU:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getDescriptionTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpV:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getFontFace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpW:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpX:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpY:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbs;->zzpZ:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbt;->zza(Lcom/google/android/gms/internal/zzbs;Landroid/os/Parcel;I)V

    return-void
.end method
