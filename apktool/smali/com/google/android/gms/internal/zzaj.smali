.class public Lcom/google/android/gms/internal/zzaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzah;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zzmu:Lcom/google/android/gms/internal/zzic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhy;)V
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaN()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzba;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzba;-><init>()V

    const/4 v5, 0x0

    move-object v1, p1

    move v4, v3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzie;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;ZZLcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzhy;)Lcom/google/android/gms/internal/zzic;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaj;->zzmu:Lcom/google/android/gms/internal/zzic;

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaj;)Lcom/google/android/gms/internal/zzic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj;->zzmu:Lcom/google/android/gms/internal/zzic;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->destroy()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzah$zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaj$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzaj$5;-><init>(Lcom/google/android/gms/internal/zzaj;Lcom/google/android/gms/internal/zzah$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzid$zza;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzat;Lcom/google/android/gms/internal/zzep;Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzes;ZLcom/google/android/gms/internal/zzcw;Lcom/google/android/gms/internal/zzcy;Lcom/google/android/gms/internal/zzu;Lcom/google/android/gms/internal/zzeh;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/zzu;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/zzu;-><init>(Z)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzid;->zzb(Lcom/google/android/gms/internal/zzat;Lcom/google/android/gms/internal/zzep;Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzes;ZLcom/google/android/gms/internal/zzcw;Lcom/google/android/gms/internal/zzcy;Lcom/google/android/gms/internal/zzu;Lcom/google/android/gms/internal/zzeh;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzid;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaj$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaj$1;-><init>(Lcom/google/android/gms/internal/zzaj;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaj;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzid;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaj$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaj$2;-><init>(Lcom/google/android/gms/internal/zzaj;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaj;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzf(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaj$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzaj$3;-><init>(Lcom/google/android/gms/internal/zzaj;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaj;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzg(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaj$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaj$4;-><init>(Lcom/google/android/gms/internal/zzaj;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaj;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
