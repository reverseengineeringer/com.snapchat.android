.class public final Lqj;
.super Ltx;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltx;",
        "Lui$b",
        "<",
        "Lqj$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/device_id"

.field private static final TAG:Ljava/lang/String; = "GetDeviceTokenTask"


# instance fields
.field private final mDeviceTokenManager:Layy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Layy;->a()Layy;

    move-result-object v0

    invoke-direct {p0, v0}, Lqj;-><init>(Layy;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Layy;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ltx;-><init>()V

    .line 28
    iput-object p1, p0, Lqj;->mDeviceTokenManager:Layy;

    .line 29
    const-class v0, Lqj$a;

    invoke-virtual {p0, v0, p0}, Lqj;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "/loq/device_id"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lqp;

    invoke-direct {v0}, Lqp;-><init>()V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 3

    .prologue
    .line 14
    check-cast p1, Lqj$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lqj$a;->mTokenId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lqj$a;->mTokenValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received new device token from the server "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Layx;

    iget-object v1, p1, Lqj$a;->mTokenId:Ljava/lang/String;

    iget-object v2, p1, Lqj$a;->mTokenValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Layx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lqj;->mDeviceTokenManager:Layy;

    invoke-virtual {v1, v0}, Layy;->a(Layx;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetDeviceTokenTask did not successfully return a new device token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
