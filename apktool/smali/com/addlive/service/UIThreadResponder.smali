.class public abstract Lcom/addlive/service/UIThreadResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/addlive/service/Responder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/addlive/service/UIThreadResponder;->activity:Landroid/app/Activity;

    .line 26
    return-void
.end method


# virtual methods
.method public errHandler(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/addlive/service/UIThreadResponder;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/addlive/service/UIThreadResponder$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/addlive/service/UIThreadResponder$2;-><init>(Lcom/addlive/service/UIThreadResponder;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method protected abstract handleError(ILjava/lang/String;)V
.end method

.method protected abstract handleResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public resultHandler(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/addlive/service/UIThreadResponder;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/addlive/service/UIThreadResponder$1;

    invoke-direct {v1, p0, p1}, Lcom/addlive/service/UIThreadResponder$1;-><init>(Lcom/addlive/service/UIThreadResponder;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method
