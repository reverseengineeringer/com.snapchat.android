.class public final Layr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final TRUSTED_SUBJECT_ALTERNATIVE_DNS_NAMES:[Ljava/lang/String;

.field private static final sTrustedSubjectAlternativeDNSNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "feelinsonice.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "www.feelinsonice.com"

    aput-object v2, v0, v1

    sput-object v0, Layr;->TRUSTED_SUBJECT_ALTERNATIVE_DNS_NAMES:[Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Layr;->TRUSTED_SUBJECT_ALTERNATIVE_DNS_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Layr;->sTrustedSubjectAlternativeDNSNames:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 30
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 31
    invoke-static {v0}, Layr;->a(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Layr;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 32
    iget-object v0, p0, Layr;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t find X509TrustManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 37
    :cond_0
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Layr;-><init>()V

    .line 42
    return-void
.end method

.method private static a(Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 5

    .prologue
    .line 92
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 93
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 94
    instance-of v4, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_0

    .line 95
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 98
    :goto_1
    return-object v0

    .line 93
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Client certificate checking is unsupported."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Layr;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 64
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    sget-object v1, Layr;->sTrustedSubjectAlternativeDNSNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 78
    :goto_0
    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Certificate did not match an expected DNS name."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Layr;->mDefaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
