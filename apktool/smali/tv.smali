.class public abstract Ltv;
.super Lts;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HyperRequestOperation"


# instance fields
.field public mNetworkInterface:Lub;

.field public final mUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lts;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Ltv;->mUUID:Ljava/util/UUID;

    .line 61
    iget-object v0, p0, Ltv;->mProvider:Ltt;

    invoke-virtual {v0}, Ltt;->a()Lub;

    move-result-object v0

    iput-object v0, p0, Ltv;->mNetworkInterface:Lub;

    .line 62
    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ltv$1;

    invoke-direct {v1, p0}, Ltv$1;-><init>(Ltv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public i()Luc;
    .locals 6
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lbgp;->b()V

    .line 84
    invoke-static {}, Lajx;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "HyperRequestOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Do not send any network request for Snapkidz "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltv;->n_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v0, Luc;

    invoke-direct {v0}, Luc;-><init>()V

    .line 98
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Ltv;->n_()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Ltv;->c()Lcom/snapchat/android/api2/framework/HttpMethod;

    move-result-object v2

    .line 91
    invoke-virtual {p0}, Ltv;->g()Ljava/util/Map;

    move-result-object v3

    .line 92
    invoke-virtual {p0}, Ltv;->a_()Lbfk;

    move-result-object v4

    .line 93
    invoke-virtual {p0}, Ltv;->b()Ljava/lang/Object;

    move-result-object v5

    .line 96
    :try_start_0
    iget-object v0, p0, Ltv;->mNetworkInterface:Lub;

    invoke-interface/range {v0 .. v5}, Lub;->a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lbfk;Ljava/lang/Object;)Luc;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Ltv;->a(Luc;)V
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
