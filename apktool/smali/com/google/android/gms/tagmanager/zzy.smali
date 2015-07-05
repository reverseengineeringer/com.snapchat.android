.class Lcom/google/android/gms/tagmanager/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzaq;


# static fields
.field private static final zzaxj:Ljava/lang/Object;

.field private static zzayy:Lcom/google/android/gms/tagmanager/zzy;


# instance fields
.field private zzaxM:Lcom/google/android/gms/tagmanager/zzcc;

.field private zzayA:Ljava/lang/String;

.field private zzayB:Lcom/google/android/gms/tagmanager/zzar;

.field private zzayz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzy;->zzaxj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzas;->zzam(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzas;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcr;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzcr;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzy;-><init>(Lcom/google/android/gms/tagmanager/zzar;Lcom/google/android/gms/tagmanager/zzcc;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzar;Lcom/google/android/gms/tagmanager/zzcc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzayB:Lcom/google/android/gms/tagmanager/zzar;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaxM:Lcom/google/android/gms/tagmanager/zzcc;

    return-void
.end method

.method public static zzak(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzaq;
    .locals 2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzy;->zzaxj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzy;->zzayy:Lcom/google/android/gms/tagmanager/zzy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzy;->zzayy:Lcom/google/android/gms/tagmanager/zzy;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzy;->zzayy:Lcom/google/android/gms/tagmanager/zzy;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zzcY(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzaxM:Lcom/google/android/gms/tagmanager/zzcc;

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/zzcc;->zzgv()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbf;->zzac(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzayz:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzy;->zzayA:Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzayz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzy;->zzayA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending wrapped url hit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzy;->zzayB:Lcom/google/android/gms/tagmanager/zzar;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzar;->zzdb(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error wrapping URL for testing."

    invoke-static {v2, v1}, Lcom/google/android/gms/tagmanager/zzbf;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
