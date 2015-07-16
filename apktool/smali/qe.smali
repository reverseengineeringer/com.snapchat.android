.class public final Lqe;
.super Ltx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqe$a;
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
    invoke-direct {p0}, Ltx;-><init>()V

    .line 23
    iput-object p1, p0, Lqe;->mGcmRegistrationId:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "/ph/device"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lqe$a;

    iget-object v1, p0, Lqe;->mGcmRegistrationId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lqe$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 2
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1}, Ltx;->onResult(Lus;)V

    .line 52
    invoke-virtual {p1}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lqe;->mGcmRegistrationId:Ljava/lang/String;

    invoke-static {v0}, Lakr;->f(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceSyncTask failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lus;->mResponseMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
