.class public abstract Lul;
.super Lui;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HyperRequestOperation"


# instance fields
.field public mNetworkInterface:Lur;

.field public final mUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lui;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lul;->mUUID:Ljava/util/UUID;

    .line 61
    iget-object v0, p0, Lul;->mProvider:Luj;

    invoke-virtual {v0}, Luj;->a()Lur;

    move-result-object v0

    iput-object v0, p0, Lul;->mNetworkInterface:Lur;

    .line 62
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lul$1;

    invoke-direct {v1, p0}, Lul$1;-><init>(Lul;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public executeSynchronously()Lus;
    .locals 6
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lbhp;->b()V

    .line 84
    invoke-static {}, Lakr;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Do not send any network request for Snapkidz "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lul;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v0, Lus;

    invoke-direct {v0}, Lus;-><init>()V

    .line 98
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lul;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lul;->getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;

    move-result-object v2

    .line 91
    invoke-virtual {p0}, Lul;->getResponseBuffer()Lbgk;

    move-result-object v4

    .line 92
    invoke-virtual {p0}, Lul;->getRequestPayload()Ljava/lang/Object;

    move-result-object v5

    .line 93
    invoke-virtual {p0, v5}, Lul;->getHeaders(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 96
    :try_start_0
    iget-object v0, p0, Lul;->mNetworkInterface:Lur;

    invoke-interface/range {v0 .. v5}, Lur;->a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lbgk;Ljava/lang/Object;)Lus;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lul;->onResult(Lus;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred while executing request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
