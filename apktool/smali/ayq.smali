.class public final Layq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PROTOCOL:Ljava/lang/String; = "TLS"

.field private static sInstance:Layq;


# instance fields
.field public final mSslContext:Ljavax/net/ssl/SSLContext;
    .annotation build Lchd;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Layr;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Layr;-><init>(B)V

    aput-object v3, v1, v2

    .line 46
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :goto_0
    iput-object v0, p0, Layq;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 48
    :goto_1
    new-instance v2, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v3, "Failed to initialize the client-side SSLContext"

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static declared-synchronized a()Layq;
    .locals 2

    .prologue
    .line 54
    const-class v1, Layq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Layq;->sInstance:Layq;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Layq;

    invoke-direct {v0}, Layq;-><init>()V

    sput-object v0, Layq;->sInstance:Layq;

    .line 57
    :cond_0
    sget-object v0, Layq;->sInstance:Layq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
