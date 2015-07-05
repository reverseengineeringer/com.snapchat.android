.class public Lcom/google/android/gms/internal/zzef;
.super Lcom/google/android/gms/internal/zzeg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzmu:Lcom/google/android/gms/internal/zzic;

.field private final zznu:Landroid/view/WindowManager;

.field private final zztF:Lcom/google/android/gms/internal/zzbu;

.field zztG:Landroid/util/DisplayMetrics;

.field private zztH:F

.field zztI:I

.field zztJ:I

.field private zztK:I

.field zztL:I

.field zztM:I

.field zztN:I

.field zztO:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzic;Landroid/content/Context;Lcom/google/android/gms/internal/zzbu;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzeg;-><init>(Lcom/google/android/gms/internal/zzic;)V

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztI:I

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztJ:I

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztL:I

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztM:I

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztN:I

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztO:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzef;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzef;->zztF:Lcom/google/android/gms/internal/zzbu;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzef;->zznu:Landroid/view/WindowManager;

    return-void
.end method

.method private zzcS()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzef;->zztG:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zznu:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zztG:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zztG:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzef;->zztH:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztK:I

    return-void
.end method

.method private zzcX()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzic;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzef;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzhw;->zzc(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzef;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzhw;->zzc(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzef;->zzf(II)V

    return-void
.end method

.method private zzda()Lcom/google/android/gms/internal/zzee;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzee$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzee$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zztF:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbu;->zzbP()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzee$zza;->zzo(Z)Lcom/google/android/gms/internal/zzee$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zztF:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbu;->zzbQ()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzee$zza;->zzn(Z)Lcom/google/android/gms/internal/zzee$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zztF:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbu;->zzbU()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzee$zza;->zzp(Z)Lcom/google/android/gms/internal/zzee$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zztF:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbu;->zzbR()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzee$zza;->zzq(Z)Lcom/google/android/gms/internal/zzee$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zztF:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbu;->zzbS()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzee$zza;->zzr(Z)Lcom/google/android/gms/internal/zzee$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzee$zza;->zzcR()Lcom/google/android/gms/internal/zzee;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method zzcT()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zztG:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzef;->zztG:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhw;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztI:I

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zztG:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzef;->zztG:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhw;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztJ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeD()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzef;->zztI:I

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztL:I

    iget v0, p0, Lcom/google/android/gms/internal/zzef;->zztJ:I

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztM:I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaM()Lcom/google/android/gms/internal/zzho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzho;->zzg(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzef;->zztG:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzhw;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzef;->zztL:I

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzef;->zztG:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzhw;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztM:I

    goto :goto_0
.end method

.method zzcU()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzad()Lcom/google/android/gms/internal/zzba;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzba;->zzpb:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzef;->zztI:I

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztN:I

    iget v0, p0, Lcom/google/android/gms/internal/zzef;->zztJ:I

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztO:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/zzic;->measure(II)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzic;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhw;->zzc(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztN:I

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzic;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzhw;->zzc(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzef;->zztO:I

    goto :goto_0
.end method

.method public zzcV()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzef;->zzcS()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzef;->zzcT()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzef;->zzcU()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzef;->zzcY()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzef;->zzcZ()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzef;->zzcX()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzef;->zzcW()V

    return-void
.end method

.method zzcW()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeJ()Lcom/google/android/gms/internal/zzhy;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhy;->zzzH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzef;->zzI(Ljava/lang/String;)V

    return-void
.end method

.method zzcY()V
    .locals 7

    iget v1, p0, Lcom/google/android/gms/internal/zzef;->zztI:I

    iget v2, p0, Lcom/google/android/gms/internal/zzef;->zztJ:I

    iget v3, p0, Lcom/google/android/gms/internal/zzef;->zztL:I

    iget v4, p0, Lcom/google/android/gms/internal/zzef;->zztM:I

    iget v5, p0, Lcom/google/android/gms/internal/zzef;->zztH:F

    iget v6, p0, Lcom/google/android/gms/internal/zzef;->zztK:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzef;->zza(IIIIFI)V

    return-void
.end method

.method zzcZ()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzef;->zzda()Lcom/google/android/gms/internal/zzee;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzee;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzic;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzf(II)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaM()Lcom/google/android/gms/internal/zzho;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzho;->zzj(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzef;->zztN:I

    iget v2, p0, Lcom/google/android/gms/internal/zzef;->zztO:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzef;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzef;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzid;->zze(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
