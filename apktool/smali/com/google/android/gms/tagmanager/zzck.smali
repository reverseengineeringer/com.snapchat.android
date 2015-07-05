.class Lcom/google/android/gms/tagmanager/zzck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile zzaxT:Ljava/lang/String;

.field private final zzaxw:Ljava/lang/String;

.field private final zzazL:Lcom/google/android/gms/internal/zzvs;

.field private final zzazM:Ljava/lang/String;

.field private zzazN:Lcom/google/android/gms/tagmanager/zzbe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzbe",
            "<",
            "Lcom/google/android/gms/internal/zzc$zzj;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzazO:Lcom/google/android/gms/tagmanager/zzr;

.field private volatile zzazP:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzvs;Lcom/google/android/gms/tagmanager/zzr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzck;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazL:Lcom/google/android/gms/internal/zzvs;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzck;->zzaxw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/r?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazM:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazM:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzaxT:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzr;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzvs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvs;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/tagmanager/zzck;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzvs;Lcom/google/android/gms/tagmanager/zzr;)V

    return-void
.end method

.method private zztA()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zztB()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzck;->zztA()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazN:Lcom/google/android/gms/tagmanager/zzbe;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbe$zza;->zzazg:Lcom/google/android/gms/tagmanager/zzbe$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbe;->zza(Lcom/google/android/gms/tagmanager/zzbe$zza;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Start loading resource from network ..."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzck;->zztC()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazL:Lcom/google/android/gms/internal/zzvs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzvs;->zzuO()Lcom/google/android/gms/internal/zzvr;

    move-result-object v2

    :try_start_0
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzvr;->zzdG(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzvl;->zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzc$zzj;->zzb([B)Lcom/google/android/gms/internal/zzc$zzj;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully loaded supplemented resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    array-length v3, v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No change for container: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzck;->zzaxw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazN:Lcom/google/android/gms/tagmanager/zzbe;

    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzo(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzvr;->close()V

    const-string v0, "Load resource from network finished."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No data is retrieved from the given url: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Make sure container_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzck;->zzaxw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is correct."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazN:Lcom/google/android/gms/tagmanager/zzbe;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbe$zza;->zzazi:Lcom/google/android/gms/tagmanager/zzbe$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbe;->zza(Lcom/google/android/gms/tagmanager/zzbe$zza;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzvr;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error when loading resources from url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazN:Lcom/google/android/gms/tagmanager/zzbe;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbe$zza;->zzazh:Lcom/google/android/gms/tagmanager/zzbe$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbe;->zza(Lcom/google/android/gms/tagmanager/zzbe$zza;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzvr;->close()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error when parsing downloaded resources from url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazN:Lcom/google/android/gms/tagmanager/zzbe;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbe$zza;->zzazi:Lcom/google/android/gms/tagmanager/zzbe$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbe;->zza(Lcom/google/android/gms/tagmanager/zzbe$zza;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzvr;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzvr;->close()V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazN:Lcom/google/android/gms/tagmanager/zzbe;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazN:Lcom/google/android/gms/tagmanager/zzbe;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzsR()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzck;->zztB()V

    return-void
.end method

.method zza(Lcom/google/android/gms/tagmanager/zzbe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzbe",
            "<",
            "Lcom/google/android/gms/internal/zzc$zzj;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazN:Lcom/google/android/gms/tagmanager/zzbe;

    return-void
.end method

.method zzcT(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazM:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzck;->zzaxT:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting CTFE URL path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzY(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzck;->zzaxT:Ljava/lang/String;

    goto :goto_0
.end method

.method zzdg(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting previous container version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzY(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazP:Ljava/lang/String;

    return-void
.end method

.method zztC()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazO:Lcom/google/android/gms/tagmanager/zzr;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzr;->zzsT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzck;->zzaxT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v=a65833898"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazP:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazP:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzck;->zzazP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzca;->zztx()Lcom/google/android/gms/tagmanager/zzca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzca;->zzty()Lcom/google/android/gms/tagmanager/zzca$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzca$zza;->zzazD:Lcom/google/android/gms/tagmanager/zzca$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/zzca$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&gtm_debug=x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
