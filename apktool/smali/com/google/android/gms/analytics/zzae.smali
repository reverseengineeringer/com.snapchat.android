.class public Lcom/google/android/gms/analytics/zzae;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzEN:Lcom/google/android/gms/analytics/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/zzp;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->setLogger(Lcom/google/android/gms/analytics/Logger;)V

    return-void
.end method

.method static getLogger()Lcom/google/android/gms/analytics/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/zzae;->zzEN:Lcom/google/android/gms/analytics/Logger;

    return-object v0
.end method

.method static setLogger(Lcom/google/android/gms/analytics/Logger;)V
    .locals 0

    sput-object p0, Lcom/google/android/gms/analytics/zzae;->zzEN:Lcom/google/android/gms/analytics/Logger;

    return-void
.end method

.method public static zzZ(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static zzaa(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static zzab(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->verbose(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static zzac(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static zzgw()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/analytics/zzae;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/Logger;->getLogLevel()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
