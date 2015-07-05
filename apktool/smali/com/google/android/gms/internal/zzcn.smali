.class public Lcom/google/android/gms/internal/zzcn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcn$zza;
    }
.end annotation


# instance fields
.field private zzrv:Lcom/google/android/gms/internal/zzt;

.field private zzrw:Lcom/google/android/gms/internal/zzah;

.field private zzrx:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzt;Lcom/google/android/gms/internal/zzah;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcn;->zzrv:Lcom/google/android/gms/internal/zzt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcn;->zzrw:Lcom/google/android/gms/internal/zzah;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcn;->zzrx:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcn;->zzrv:Lcom/google/android/gms/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzt;->zzan()V

    return-void
.end method

.method public zzb(Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "asset"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "template"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcn;->zzrx:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "click"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcn;->zzrw:Lcom/google/android/gms/internal/zzah;

    const-string v2, "google.afma.nativeAds.handleClick"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzah;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to create click JSON."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
