.class public final Lcom/snapchat/android/api2/IpRoutingErrorTask;
.super Ltx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/IpRoutingErrorTask$a;,
        Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/bq/ip_routing_error"


# instance fields
.field final mErrorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ltx;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api2/IpRoutingErrorTask;->mErrorMap:Ljava/util/Map;

    .line 23
    iget-object v0, p0, Lcom/snapchat/android/api2/IpRoutingErrorTask;->mErrorMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "/bq/ip_routing_error"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/snapchat/android/api2/IpRoutingErrorTask$a;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/IpRoutingErrorTask$a;-><init>(Lcom/snapchat/android/api2/IpRoutingErrorTask;)V

    return-object v0
.end method
