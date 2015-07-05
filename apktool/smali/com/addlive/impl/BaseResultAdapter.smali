.class abstract Lcom/addlive/impl/BaseResultAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected responder:Lcom/addlive/service/Responder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/addlive/service/Responder",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method protected constructor <init>(Lcom/addlive/service/Responder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/addlive/impl/BaseResultAdapter;->responder:Lcom/addlive/service/Responder;

    .line 17
    return-void
.end method


# virtual methods
.method public getResponder()Lcom/addlive/service/Responder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/addlive/service/Responder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/addlive/impl/BaseResultAdapter;->responder:Lcom/addlive/service/Responder;

    return-object v0
.end method

.method public handleResponse(Lcom/addlive/impl/ServiceResponse;)V
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceResponse;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/addlive/impl/ServiceResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addlive/impl/BaseResultAdapter;->handleSuccess(Ljava/lang/Object;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/addlive/impl/BaseResultAdapter;->responder:Lcom/addlive/service/Responder;

    invoke-virtual {p1}, Lcom/addlive/impl/ServiceResponse;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/addlive/impl/ServiceResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    goto :goto_0
.end method

.method abstract handleSuccess(Ljava/lang/Object;)V
.end method
