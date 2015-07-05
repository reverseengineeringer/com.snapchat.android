.class final Lcom/google/android/gms/internal/zzgw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zznK:Landroid/content/Context;

.field final synthetic zzxk:Lcom/google/android/gms/internal/zzgy;

.field final synthetic zzxl:Lcom/google/android/gms/internal/zzcf;

.field final synthetic zzxm:Lcom/google/android/gms/internal/zzce;

.field final synthetic zzxn:Ljava/lang/String;

.field final synthetic zzxq:Lcom/google/android/gms/internal/zzgo;

.field final synthetic zzxr:Lcom/google/android/gms/internal/zzbv;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;Ljava/lang/String;Lcom/google/android/gms/internal/zzbv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw$2;->zznK:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxq:Lcom/google/android/gms/internal/zzgo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxk:Lcom/google/android/gms/internal/zzgy;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxl:Lcom/google/android/gms/internal/zzcf;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxm:Lcom/google/android/gms/internal/zzce;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxn:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxr:Lcom/google/android/gms/internal/zzbv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaN()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$2;->zznK:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/zzba;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzba;-><init>()V

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxq:Lcom/google/android/gms/internal/zzgo;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzgo;->zzlP:Lcom/google/android/gms/internal/zzhy;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzie;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;ZZLcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzhy;)Lcom/google/android/gms/internal/zzic;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaP()Lcom/google/android/gms/internal/zzhg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhg;->zzem()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    :cond_0
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/zzic;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxk:Lcom/google/android/gms/internal/zzgy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzgy;->zza(Lcom/google/android/gms/internal/zzic;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxl:Lcom/google/android/gms/internal/zzcf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxm:Lcom/google/android/gms/internal/zzce;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "rwc"

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/zzcf;->zza(Lcom/google/android/gms/internal/zzce;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxl:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcf;->zzcq()Lcom/google/android/gms/internal/zzce;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxn:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxl:Lcom/google/android/gms/internal/zzcf;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/zzgw;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzcf;Lcom/google/android/gms/internal/zzce;)Lcom/google/android/gms/internal/zzid$zza;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    const-string v3, "/invalidRequest"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxk:Lcom/google/android/gms/internal/zzgy;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzgy;->zzxz:Lcom/google/android/gms/internal/zzcv;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzid;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    const-string v3, "/loadAdURL"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxk:Lcom/google/android/gms/internal/zzgy;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzgy;->zzxA:Lcom/google/android/gms/internal/zzcv;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzid;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    const-string v3, "/log"

    sget-object v4, Lcom/google/android/gms/internal/zzcu;->zzrG:Lcom/google/android/gms/internal/zzcv;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzid;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzid$zza;)V

    const-string v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$2;->zzxr:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbv;->zzbV()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzic;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
