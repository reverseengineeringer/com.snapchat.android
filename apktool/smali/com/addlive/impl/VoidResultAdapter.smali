.class Lcom/addlive/impl/VoidResultAdapter;
.super Lcom/addlive/impl/BaseResultAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/addlive/impl/BaseResultAdapter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/addlive/service/Responder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/addlive/service/Responder",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/addlive/impl/BaseResultAdapter;-><init>(Lcom/addlive/service/Responder;)V

    .line 692
    return-void
.end method


# virtual methods
.method handleSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/addlive/impl/VoidResultAdapter;->responder:Lcom/addlive/service/Responder;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/addlive/impl/VoidResultAdapter;->responder:Lcom/addlive/service/Responder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 699
    :cond_0
    return-void
.end method
