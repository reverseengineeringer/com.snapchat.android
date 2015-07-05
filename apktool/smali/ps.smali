.class public final Lps;
.super Lth;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lps$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lth;",
        "Lts$b",
        "<",
        "Lps$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "/loq/device_id"

.field private static final TAG:Ljava/lang/String; = "GetDeviceTokenTask"


# instance fields
.field private final mDeviceTokenManager:Laya;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    invoke-direct {p0, v0}, Lps;-><init>(Laya;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Laya;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lth;-><init>()V

    .line 28
    iput-object p1, p0, Lps;->mDeviceTokenManager:Laya;

    .line 29
    const-class v0, Lps$a;

    invoke-virtual {p0, v0, p0}, Lps;->a(Ljava/lang/Class;Lts$b;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 14
    check-cast p1, Lps$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lps$a;->mTokenId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lps$a;->mTokenValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v0, "GetDeviceTokenTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received new device token from the server "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Laxz;

    iget-object v1, p1, Lps$a;->mTokenId:Ljava/lang/String;

    iget-object v2, p1, Lps$a;->mTokenValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Laxz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lps;->mDeviceTokenManager:Laya;

    invoke-virtual {v1, v0}, Laya;->a(Laxz;)V

    return-void

    :cond_0
    const-string v1, "GetDeviceTokenTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetDeviceTokenTask did not successfully return a new device token "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lpz;

    invoke-direct {v0}, Lpz;-><init>()V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "/loq/device_id"

    return-object v0
.end method
