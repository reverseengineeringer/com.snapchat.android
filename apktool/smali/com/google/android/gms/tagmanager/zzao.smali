.class Lcom/google/android/gms/tagmanager/zzao;
.super Lcom/google/android/gms/tagmanager/zzaj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final zzayC:Ljava/lang/String;

.field private static final zzayE:Ljava/lang/String;

.field private static final zzayI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zza;->zzac:Lcom/google/android/gms/internal/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzao;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzb;->zzbw:Lcom/google/android/gms/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzao;->zzayC:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzb;->zzbn:Lcom/google/android/gms/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzao;->zzayI:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzb;->zzde:Lcom/google/android/gms/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzao;->zzayE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzao;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzao;->zzayC:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzaj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private zze(Ljava/lang/String;[B)[B
    .locals 1

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zzH(Ljava/util/Map;)Lcom/google/android/gms/internal/zzd$zza;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzd$zza;",
            ">;)",
            "Lcom/google/android/gms/internal/zzd$zza;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzao;->zzayC:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzde;->zzuf()Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzde;->zzuf()Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzde;->zzg(Lcom/google/android/gms/internal/zzd$zza;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzao;->zzayI:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_2

    const-string v0, "MD5"

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzao;->zzayE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_3

    const-string v0, "text"

    :goto_2
    const-string v3, "text"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_3
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/tagmanager/zzao;->zze(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzj;->zze([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzde;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzd$zza;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzde;->zzg(Lcom/google/android/gms/internal/zzd$zza;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzde;->zzg(Lcom/google/android/gms/internal/zzd$zza;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v3, "base16"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzj;->zzcL(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hash: unknown input format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzde;->zzuf()Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Hash: unknown algorithm: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzde;->zzuf()Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    goto :goto_0
.end method

.method public zzsD()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
