.class public final Lsw;
.super Ltb;
.source "SourceFile"


# instance fields
.field private mPaymentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lta;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lta;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 14
    invoke-direct {p0, p2}, Ltb;-><init>(Lta;)V

    .line 16
    iput-object p1, p0, Lsw;->mPaymentId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cash/payments/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsw;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
