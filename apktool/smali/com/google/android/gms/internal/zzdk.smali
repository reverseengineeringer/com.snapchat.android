.class public final Lcom/google/android/gms/internal/zzdk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field public final zzsr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzdj;",
            ">;"
        }
    .end annotation
.end field

.field public final zzss:J

.field public final zzst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzsu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzsv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzsw:Ljava/lang/String;

.field public final zzsx:J

.field public zzsy:I

.field public zzsz:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x2

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/zzhx;->zzA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mediation Response JSON: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzab(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ad_networks"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_2

    new-instance v7, Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/zzdj;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v1, :cond_1

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdj;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/google/android/gms/internal/zzdk;->zzsy:I

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzdk;->zzsz:I

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzsr:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdk;->zzsw:Ljava/lang/String;

    const-string v0, "settings"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "ad_network_timeout_millis"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzdk;->zzss:J

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaV()Lcom/google/android/gms/internal/zzdp;

    move-result-object v1

    const-string v4, "click_urls"

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/zzdp;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzst:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaV()Lcom/google/android/gms/internal/zzdp;

    move-result-object v1

    const-string v4, "imp_urls"

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/zzdp;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzsu:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaV()Lcom/google/android/gms/internal/zzdp;

    move-result-object v1

    const-string v4, "nofill_urls"

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/zzdp;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdk;->zzsv:Ljava/util/List;

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/zzdk;->zzsx:J

    :goto_2
    return-void

    :cond_3
    move-wide v0, v2

    goto :goto_1

    :cond_4
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzdk;->zzss:J

    iput-object v9, p0, Lcom/google/android/gms/internal/zzdk;->zzst:Ljava/util/List;

    iput-object v9, p0, Lcom/google/android/gms/internal/zzdk;->zzsu:Ljava/util/List;

    iput-object v9, p0, Lcom/google/android/gms/internal/zzdk;->zzsv:Ljava/util/List;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzdk;->zzsx:J

    goto :goto_2
.end method

.method private zza(Lcom/google/android/gms/internal/zzdj;)Z
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/zzdj;->zzsm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
