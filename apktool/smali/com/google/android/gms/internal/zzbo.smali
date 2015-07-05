.class public final Lcom/google/android/gms/internal/zzbo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbo$zza;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;


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

.field private final zzh:Landroid/location/Location;

.field private final zzpn:Ljava/lang/String;

.field private final zzpo:I

.field private final zzpp:Z

.field private final zzpq:Landroid/os/Bundle;

.field private final zzpr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zzps:Ljava/lang/String;

.field private final zzpt:Ljava/lang/String;

.field private final zzpu:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final zzpv:I

.field private final zzpw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzpx:Landroid/os/Bundle;

.field private final zzpy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    const-string v1, "emulator"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhw;->zzX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbo;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbo$zza;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbo;-><init>(Lcom/google/android/gms/internal/zzbo$zza;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbo$zza;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zza(Lcom/google/android/gms/internal/zzbo$zza;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzd:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzb(Lcom/google/android/gms/internal/zzbo$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpn:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzc(Lcom/google/android/gms/internal/zzbo$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpo:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzd(Lcom/google/android/gms/internal/zzbo$zza;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzf:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zze(Lcom/google/android/gms/internal/zzbo$zza;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzh:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzf(Lcom/google/android/gms/internal/zzbo$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpp:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzg(Lcom/google/android/gms/internal/zzbo$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpq:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzh(Lcom/google/android/gms/internal/zzbo$zza;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpr:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzi(Lcom/google/android/gms/internal/zzbo$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzps:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzj(Lcom/google/android/gms/internal/zzbo$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpt:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbo;->zzpu:Lcom/google/android/gms/ads/search/SearchAdRequest;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzk(Lcom/google/android/gms/internal/zzbo$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpv:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzl(Lcom/google/android/gms/internal/zzbo$zza;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpw:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzm(Lcom/google/android/gms/internal/zzbo$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpx:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbo$zza;->zzn(Lcom/google/android/gms/internal/zzbo$zza;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpy:Ljava/util/Set;

    return-void
.end method

.method public static updateCorrelator()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbF()Lcom/google/android/gms/internal/zzbf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbf;->zzbG()V

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzd:Ljava/util/Date;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpn:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpq:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpx:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpo:I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzf:Ljava/util/Set;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzh:Landroid/location/Location;

    return-object v0
.end method

.method public final getManualImpressionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpp:Z

    return v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object v0
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpq:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzps:Ljava/lang/String;

    return-object v0
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpw:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzhw;->zzz(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zzbH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbI()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpu:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public final zzbJ()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpr:Ljava/util/Map;

    return-object v0
.end method

.method public final zzbK()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpq:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzbL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpv:I

    return v0
.end method

.method public final zzbM()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzpy:Ljava/util/Set;

    return-object v0
.end method
