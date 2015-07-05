.class Lcom/google/android/gms/analytics/Tracker$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/GoogleAnalytics$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private zzFk:Z

.field private zzFl:I

.field private zzFm:J

.field private zzFn:Z

.field private zzFo:J

.field final synthetic zzFp:Lcom/google/android/gms/analytics/Tracker;

.field private zzmW:Lcom/google/android/gms/internal/zzlv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/Tracker;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFm:J

    invoke-static {}, Lcom/google/android/gms/internal/zzlx;->zzkc()Lcom/google/android/gms/internal/zzlv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzmW:Lcom/google/android/gms/internal/zzlv;

    return-void
.end method

.method private zzgH()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFm:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFk:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzc(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zzb(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zza(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzc(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v1}, Lcom/google/android/gms/analytics/Tracker;->zzb(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzb(Lcom/google/android/gms/analytics/GoogleAnalytics$zza;)V

    goto :goto_0
.end method


# virtual methods
.method public enableAutoActivityTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFk:Z

    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzgH()V

    return-void
.end method

.method public setSessionTimeout(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFm:J

    invoke-direct {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzgH()V

    return-void
.end method

.method public zzgE()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFm:J

    return-wide v0
.end method

.method public zzgF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFk:Z

    return v0
.end method

.method public zzgG()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFn:Z

    return v0
.end method

.method zzgI()Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlv;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFo:J

    const-wide/16 v4, 0x3e8

    iget-wide v6, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFm:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzn(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzEd:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFl:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker$zza;->zzgI()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFn:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFl:I

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFk:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->setCampaignParamsOnNextHit(Landroid/net/Uri;)V

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "&t"

    const-string v2, "screenview"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/zzy;->zzF(Z)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    const-string v3, "&cd"

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzd(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/zzam;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    invoke-static {v0}, Lcom/google/android/gms/analytics/Tracker;->zzd(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/zzam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzam;->zzq(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&dr"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/android/gms/analytics/Tracker;->zzp(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "&dr"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFp:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zzF(Z)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public zzo(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/zzy$zza;->zzEe:Lcom/google/android/gms/analytics/zzy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzy;->zza(Lcom/google/android/gms/analytics/zzy$zza;)V

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFl:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFl:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFl:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFl:I

    iget v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFl:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlv;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/Tracker$zza;->zzFo:J

    :cond_0
    return-void
.end method
