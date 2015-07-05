.class public Lcom/google/android/gms/common/zzc;
.super Ljava/lang/Object;


# static fields
.field private static final zzLH:Lcom/google/android/gms/common/zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzc;->zzLH:Lcom/google/android/gms/common/zzc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v3, Lcom/google/android/gms/common/zzb$zzb;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/zzb$zzb;-><init>([B)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/zzb;->zzhL()Ljava/util/Set;

    move-result-object v0

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/zzb;->zzhM()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "GoogleSignatureVerifier"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Signature not valid.  Found: \n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/zzb$zza;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static zzhP()Lcom/google/android/gms/common/zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/zzc;->zzLH:Lcom/google/android/gms/common/zzc;

    return-object v0
.end method


# virtual methods
.method varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzb$zza;)Lcom/google/android/gms/common/zzb$zza;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/google/android/gms/common/zzb$zzb;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/zzb$zzb;-><init>([B)V

    move v0, v1

    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_2

    aget-object v4, p2, v0

    invoke-virtual {v4, v3}, Lcom/google/android/gms/common/zzb$zza;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v0, p2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "GoogleSignatureVerifier"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Signature not valid.  Found: \n"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/zzb$zza;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public zza(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzc(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2, v2}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, v2}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/pm/PackageInfo;Z)Z

    goto :goto_0
.end method

.method public zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GoogleSignatureVerifier"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package manager can\'t find package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaulting to false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
