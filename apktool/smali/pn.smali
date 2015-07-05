.class public final Lpn;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpn$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceSyncTask"


# instance fields
.field private final mGcmRegistrationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lth;-><init>()V

    .line 23
    iput-object p1, p0, Lpn;->mGcmRegistrationId:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 4
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1}, Lth;->a(Luc;)V

    .line 52
    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "DeviceSyncTask"

    const-string v1, "DeviceSyncTask succeeded."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lpn;->mGcmRegistrationId:Ljava/lang/String;

    invoke-static {v0}, Lajx;->f(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "DeviceSyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeviceSyncTask failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Luc;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lpn$a;

    iget-object v1, p0, Lpn;->mGcmRegistrationId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lpn$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "/ph/device"

    return-object v0
.end method
