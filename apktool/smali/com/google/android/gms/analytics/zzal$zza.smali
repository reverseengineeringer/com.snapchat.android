.class Lcom/google/android/gms/analytics/zzal$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/zzn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/zzal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/analytics/zzn$zza",
        "<",
        "Lcom/google/android/gms/analytics/zzam;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzFq:Lcom/google/android/gms/analytics/zzam;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/analytics/zzam;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/zzam;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzal$zza;->zzFq:Lcom/google/android/gms/analytics/zzam;

    return-void
.end method


# virtual methods
.method public zzc(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ga_sessionTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzal$zza;->zzFq:Lcom/google/android/gms/analytics/zzam;

    iput p2, v0, Lcom/google/android/gms/analytics/zzam;->zzFt:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "int configuration name not recognized:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzd(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "ga_autoActivityTracking"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzal$zza;->zzFq:Lcom/google/android/gms/analytics/zzam;

    if-eqz p2, :cond_0

    :goto_0
    iput v0, v2, Lcom/google/android/gms/analytics/zzam;->zzFu:I

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "ga_anonymizeIp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzal$zza;->zzFq:Lcom/google/android/gms/analytics/zzam;

    if-eqz p2, :cond_2

    :goto_2
    iput v0, v2, Lcom/google/android/gms/analytics/zzam;->zzFv:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    const-string v2, "ga_reportUncaughtExceptions"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzal$zza;->zzFq:Lcom/google/android/gms/analytics/zzam;

    if-eqz p2, :cond_4

    :goto_3
    iput v0, v2, Lcom/google/android/gms/analytics/zzam;->zzFw:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bool configuration name not recognized:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public synthetic zzfB()Lcom/google/android/gms/analytics/zzm;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzal$zza;->zzgJ()Lcom/google/android/gms/analytics/zzam;

    move-result-object v0

    return-object v0
.end method

.method public zzgJ()Lcom/google/android/gms/analytics/zzam;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzal$zza;->zzFq:Lcom/google/android/gms/analytics/zzam;

    return-object v0
.end method

.method public zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzal$zza;->zzFq:Lcom/google/android/gms/analytics/zzam;

    iget-object v0, v0, Lcom/google/android/gms/analytics/zzam;->zzFx:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "ga_trackingId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzal$zza;->zzFq:Lcom/google/android/gms/analytics/zzam;

    iput-object p2, v0, Lcom/google/android/gms/analytics/zzam;->zzFr:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_sampleFrequency"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzal$zza;->zzFq:Lcom/google/android/gms/analytics/zzam;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/analytics/zzam;->zzFs:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error parsing ga_sampleFrequency value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzZ(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string configuration name not recognized:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzac(Ljava/lang/String;)V

    goto :goto_0
.end method
