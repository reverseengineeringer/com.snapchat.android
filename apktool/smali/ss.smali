.class public final Lss;
.super Lsq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlinkCardTask"


# instance fields
.field mCashCardManager:Lxr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUnlinkSuccessListener:Lss$a;


# direct methods
.method public constructor <init>(Lss$a;)V
    .locals 1
    .param p1    # Lss$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Lsq;-><init>()V

    .line 26
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lss;)V

    .line 27
    iput-object p1, p0, Lss;->mUnlinkSuccessListener:Lss$a;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 5
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 47
    const-string v0, "UnlinkCardTask"

    const-string v1, "CASH-LOG: UnlinkCardTask finished with status code %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Luc;->mResponseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget v0, p1, Luc;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {}, Lajx;->aj()V

    .line 50
    iget-object v0, p0, Lss;->mCashCardManager:Lxr;

    invoke-virtual {v0}, Lxr;->b()V

    .line 51
    iget-object v0, p0, Lss;->mUnlinkSuccessListener:Lss$a;

    invoke-interface {v0}, Lss$a;->a()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lss;->mUnlinkSuccessListener:Lss$a;

    iget v1, p1, Luc;->mResponseCode:I

    invoke-interface {v0, v1}, Lss$a;->a(I)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->DELETE:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "cash/card"

    return-object v0
.end method
