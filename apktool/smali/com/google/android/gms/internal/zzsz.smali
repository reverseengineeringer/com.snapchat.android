.class Lcom/google/android/gms/internal/zzsz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsz$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzmB:Lcom/google/android/gms/internal/zzta;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/internal/zzta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsz;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzsz;->zza(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/internal/zzta;)Lcom/google/android/gms/internal/zzta;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz;->zzmB:Lcom/google/android/gms/internal/zzta;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsz;->zzrw()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/internal/zzta;)Lcom/google/android/gms/internal/zzta;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzta$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzta;->zzrx()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzta$zza;-><init>(Ljava/lang/String;)V

    const-string v1, "trackingId"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzta$zza;->zzcA(Ljava/lang/String;)Lcom/google/android/gms/internal/zzta$zza;

    move-result-object v1

    const-string v2, "trackScreenViews"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tagmanager/Container;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzta$zza;->zzab(Z)Lcom/google/android/gms/internal/zzta$zza;

    move-result-object v1

    const-string v2, "collectAdIdentifiers"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tagmanager/Container;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzta$zza;->zzac(Z)Lcom/google/android/gms/internal/zzta$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta$zza;->zzrA()Lcom/google/android/gms/internal/zzta;

    move-result-object p1

    goto :goto_0
.end method

.method private zzrw()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->zzmB:Lcom/google/android/gms/internal/zzta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->zzmB:Lcom/google/android/gms/internal/zzta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzgL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->zzmB:Lcom/google/android/gms/internal/zzta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzta;->zzgL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzcz(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz;->zzmB:Lcom/google/android/gms/internal/zzta;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzta;->zzrz()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    new-instance v1, Lcom/google/android/gms/internal/zzsz$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzsz$zza;-><init>(Lcom/google/android/gms/analytics/Tracker;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzsz;->zzb(Lcom/google/android/gms/internal/zzre$zza;)V

    :cond_0
    return-void
.end method


# virtual methods
.method zzb(Lcom/google/android/gms/internal/zzre$zza;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzre;->zzag(Landroid/content/Context;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzre;->zzZ(Z)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzre;->zza(Lcom/google/android/gms/internal/zzre$zza;)V

    return-void
.end method

.method zzcz(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    return-object v0
.end method

.method public zzrv()Lcom/google/android/gms/internal/zzta;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->zzmB:Lcom/google/android/gms/internal/zzta;

    return-object v0
.end method
