.class public final Llx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static c:Llx;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final d:Laug;

.field private final e:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Llx;

    invoke-direct {v0}, Llx;-><init>()V

    sput-object v0, Llx;->c:Llx;

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

    new-instance v1, Laug;

    invoke-direct {v1}, Laug;-><init>()V

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

    invoke-direct {p0, v0, v1, v2}, Llx;-><init>(Landroid/content/Context;Laug;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Laug;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Llx;->a:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Llx;->b:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Llx;->f:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Llx;->d:Laug;

    .line 66
    iput-object p3, p0, Llx;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 67
    return-void
.end method

.method static synthetic a(Llx;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llx;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Llx;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Llx;->c:Llx;

    return-object v0
.end method

.method static synthetic b(Llx;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llx;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Llx;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Llx;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Llx;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Llx;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Llx;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Llx;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Lq;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 115
    const-string v1, "ie"

    .line 117
    :try_start_0
    iget-object v0, p0, Llx;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llx;->e:Lcom/google/android/gms/common/api/GoogleApiClient;

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
    iget-object v2, p0, Llx;->d:Laug;

    new-instance v3, Llx$2;

    invoke-direct {v3, p0, v0}, Llx$2;-><init>(Llx;[B)V

    invoke-virtual {v2, v3}, Laug;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :try_start_1
    const-string v1, "GoogleAuthManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSignedAttestation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 137
    :goto_1
    const-string v2, "GoogleAuthManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSignedAttestation Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Llx;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Llx;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "GoogleAuthManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GoogleOauthToken exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Llx;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Llx;->d:Laug;

    new-instance v1, Llx$1;

    invoke-direct {v1, p0}, Llx$1;-><init>(Llx;)V

    invoke-virtual {v0, v1}, Laug;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "GoogleAuthManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearGoogleOauthToken exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 8
    .annotation build Lq;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Llx;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 145
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 147
    const-string v0, "ng"

    .line 148
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v4, v1

    .line 149
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 152
    :try_start_0
    iget-object v3, p0, Llx;->d:Laug;

    new-instance v6, Llx$3;

    invoke-direct {v6, p0, v0}, Llx$3;-><init>(Llx;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Laug;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Llx;->a:Ljava/lang/String;

    .line 158
    const-string v0, "GoogleAuthManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "getGoogleOauthToken: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Llx;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Llx;->b:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Llx;->a:Ljava/lang/String;
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
    const-string v1, "GoogleAuthManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getGoogleOauthToken IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    throw v0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    const-string v1, "GoogleAuthManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getGoogleOauthToken GooglePlayServicesAvailabilityException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llx;->b:Ljava/lang/String;

    .line 167
    const-string v0, "pe"

    goto :goto_1

    .line 168
    :catch_2
    move-exception v0

    .line 169
    const-string v3, "GoogleAuthManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getGoogleOauthToken UserRecoverableAuthException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llx;->b:Ljava/lang/String;

    .line 172
    const-string v3, "ue"

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto/16 :goto_0

    .line 173
    :catch_3
    move-exception v0

    .line 174
    const-string v1, "GoogleAuthManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getGoogleOauthToken GoogleAuthException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llx;->b:Ljava/lang/String;

    .line 176
    const-string v0, "ae"

    goto/16 :goto_1
.end method
