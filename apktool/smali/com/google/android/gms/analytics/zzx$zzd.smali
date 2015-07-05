.class Lcom/google/android/gms/analytics/zzx$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzCP:Lcom/google/android/gms/analytics/zzx;

.field private final zzCQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzx;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    const-string v0, "&ht"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzA(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzx;->zza(Lcom/google/android/gms/analytics/zzx;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzgo()Lcom/google/android/gms/analytics/zzg;

    move-result-object v0

    const-string v1, "&an"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/analytics/zzq;)V

    const-string v1, "&av"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/analytics/zzq;)V

    const-string v1, "&aid"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/analytics/zzq;)V

    const-string v1, "&aiid"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/analytics/zzq;)V

    const-string v0, "&v"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zzB(Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const/4 v1, 0x0

    const-string v0, "&sf"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "&sf"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/lang/String;D)D

    move-result-wide v4

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "&cid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzx;->zzan(Ljava/lang/String;)I

    move-result v0

    rem-int/lit16 v0, v0, 0x2710

    int-to-double v6, v0

    mul-double/2addr v4, v8

    cmpl-double v0, v6, v4

    if-ltz v0, :cond_3

    const-string v0, "&t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    :goto_1
    const-string v3, "%s hit sampled out"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "&t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private zzy(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "useSecure"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "useSecure"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzan;->zze(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https:"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http:"

    goto :goto_0

    :cond_1
    const-string v0, "https:"

    goto :goto_0
.end method

.method private zzz(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzx;->zza(Lcom/google/android/gms/analytics/zzx;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getContext()Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzx;->zza(Lcom/google/android/gms/analytics/zzx;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzgq()Lcom/google/android/gms/analytics/zza;

    move-result-object v0

    const-string v1, "&adid"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/analytics/zzq;)V

    const-string v1, "&ate"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/analytics/zzan;->zza(Ljava/util/Map;Ljava/lang/String;Lcom/google/android/gms/analytics/zzq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzx$zzd;->zzz(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzx;->zza(Lcom/google/android/gms/analytics/zzx;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzgp()Lcom/google/android/gms/analytics/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    const-string v2, "&cid"

    const-string v3, "&cid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/zzk;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzx;->zza(Lcom/google/android/gms/analytics/zzx;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzx$zzd;->zzB(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzx;->zzb(Lcom/google/android/gms/analytics/zzx;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zzF(Z)V

    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzx;->zzb(Lcom/google/android/gms/analytics/zzx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/analytics/zzx;->zza(Lcom/google/android/gms/analytics/zzx;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/zzy;->zzF(Z)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/zzx$zzd;->zzA(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzac;->zzC(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzx;->zzd(Lcom/google/android/gms/analytics/zzx;)Lcom/google/android/gms/analytics/zzak;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCQ:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/google/android/gms/analytics/zzx$zzd;->zzy(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/analytics/zzx$zzd;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v5}, Lcom/google/android/gms/analytics/zzx;->zzc(Lcom/google/android/gms/analytics/zzx;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/zzak;->zzb(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
