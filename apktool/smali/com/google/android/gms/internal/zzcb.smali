.class public Lcom/google/android/gms/internal/zzcb;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zznf:Ljava/lang/String;

.field private zzqO:Z

.field private zzqP:I

.field private zzqQ:I

.field private zzqR:I

.field private zzqS:I

.field private zzqT:Ljava/lang/String;

.field private zzqU:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcb;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zznf:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzca;->zzqy:Lcom/google/android/gms/internal/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqO:Z

    sget-object v0, Lcom/google/android/gms/internal/zzca;->zzqA:Lcom/google/android/gms/internal/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqT:Ljava/lang/String;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqQ:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqR:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqS:I

    sget-object v0, Lcom/google/android/gms/internal/zzca;->zzqz:Lcom/google/android/gms/internal/zzbx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqP:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    const-string v1, "s"

    const-string v2, "gmob_sdk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    const-string v1, "v"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    const-string v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    const-string v1, "device"

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaM()Lcom/google/android/gms/internal/zzho;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzho;->zzev()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method zzaX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zznf:Ljava/lang/String;

    return-object v0
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcb;
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcb;->zznf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    const-string v1, "ua"

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaM()Lcom/google/android/gms/internal/zzho;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/zzho;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    const-string v1, "app"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v0, "Cannot get the application name. Set to null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    const-string v1, "app"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method zzcd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqO:Z

    return v0
.end method

.method zzce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqT:Ljava/lang/String;

    return-object v0
.end method

.method zzcf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqQ:I

    return v0
.end method

.method zzcg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqR:I

    return v0
.end method

.method zzch()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqS:I

    return v0
.end method

.method zzci()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqP:I

    return v0
.end method

.method zzcj()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcb;->zzqU:Ljava/util/Map;

    return-object v0
.end method
