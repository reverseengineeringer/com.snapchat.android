.class public final Lsf;
.super Lsq;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsq;",
        "Lts$b",
        "<",
        "Lsw;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RetrieveCashCustomerStatusTask"


# instance fields
.field private mListener:Lsj;


# direct methods
.method public constructor <init>(Lsj;)V
    .locals 1
    .param p1    # Lsj;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Lsq;-><init>()V

    .line 25
    iput-object p1, p0, Lsf;->mListener:Lsj;

    .line 26
    const-class v0, Lsw;

    invoke-virtual {p0, v0, p0}, Lsf;->a(Ljava/lang/Class;Lts$b;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 5

    .prologue
    .line 18
    check-cast p1, Lsw;

    const-string v0, "RetrieveCashCustomerStatusTask"

    const-string v1, "CASH-LOG: RetrieveCashCustomerStatusTask finished with status code %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p2, Luc;->mResponseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Luc;->mResponseCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lsf;->mListener:Lsj;

    invoke-interface {v0, p1}, Lsj;->a(Lsw;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lsf;->mListener:Lsj;

    iget v1, p2, Luc;->mResponseCode:I

    invoke-interface {v0, v1}, Lsj;->a(I)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "cash"

    return-object v0
.end method
