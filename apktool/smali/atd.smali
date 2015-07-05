.class public final Latd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final OPT_OUT_RESPONSE:Ljava/lang/String; = "optout"

.field private static final TAG:Ljava/lang/String; = "DemographicsTrackingUtils"


# instance fields
.field public final mContext:Landroid/content/Context;

.field private final mDeviceUtils:Late;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-static {}, Late;->a()Late;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Latd;-><init>(Landroid/content/Context;Late;)V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Late;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Latd;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Latd;->mDeviceUtils:Late;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5
    .annotation build Lcgc;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 77
    iget-object v0, p0, Latd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 82
    :try_start_0
    iget-object v0, p0, Latd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 90
    if-eqz v1, :cond_0

    const-string v0, "optout"

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    :goto_1
    const-string v1, "DemographicsTrackingUtils"

    const-string v2, "Google advertising id lookup failed, by error %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Latd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
