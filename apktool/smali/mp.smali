.class public final Lmp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static c:Lmp;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final d:Lave;

.field private final e:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lmp;

    invoke-direct {v0}, Lmp;-><init>()V

    sput-object v0, Lmp;->c:Lmp;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lave;

    invoke-direct {v1}, Lave;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/android/gms/safetynet/SafetyNet;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lmp;-><init>(Landroid/content/Context;Lave;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lave;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lmp;->a:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lmp;->b:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lmp;->f:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lmp;->d:Lave;

    .line 66
    iput-object p3, p0, Lmp;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 67
    return-void
.end method

.method static synthetic a(Lmp;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmp;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lmp;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lmp;->c:Lmp;

    return-object v0
.end method

.method static synthetic b(Lmp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lmp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lmp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lmp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lmp;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lmp;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmp;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Lq;
    .end annotation

    .prologue
    .line 115
    const-string v1, "ie"

    .line 117
    :try_start_0
    iget-object v0, p0, Lmp;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmp;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 120
    const-string v2, "|"

    invoke-static {p1, v2}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 121
    iget-object v2, p0, Lmp;->d:Lave;

    new-instance v3, Lmp$2;

    invoke-direct {v3, p0, v0}, Lmp$2;-><init>(Lmp;[B)V

    invoke-virtual {v2, v3}, Lave;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSignedAttestation Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lmp;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lmp;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lmp;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmp;->d:Lave;

    new-instance v1, Lmp$1;

    invoke-direct {v1, p0}, Lmp$1;-><init>(Lmp;)V

    invoke-virtual {v0, v1}, Lave;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearGoogleOauthToken exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 7
    .annotation build Lq;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lmp;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 145
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 147
    const-string v1, "ng"

    .line 148
    array-length v4, v3

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 149
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 152
    :try_start_0
    iget-object v2, p0, Lmp;->d:Lave;

    new-instance v5, Lmp$3;

    invoke-direct {v5, p0, v0}, Lmp$3;-><init>(Lmp;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lave;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmp;->a:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getGoogleOauthToken: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmp;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lmp;->b:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lmp;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 179
    :cond_0
    :goto_1
    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getGoogleOauthToken IOException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    throw v0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getGoogleOauthToken GooglePlayServicesAvailabilityException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmp;->b:Ljava/lang/String;

    .line 167
    const-string v0, "pe"

    goto :goto_1

    .line 168
    :catch_2
    move-exception v0

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "getGoogleOauthToken UserRecoverableAuthException: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmp;->b:Ljava/lang/String;

    .line 172
    const-string v2, "ue"

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 173
    :catch_3
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getGoogleOauthToken GoogleAuthException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmp;->b:Ljava/lang/String;

    .line 176
    const-string v0, "ae"

    goto :goto_1
.end method
