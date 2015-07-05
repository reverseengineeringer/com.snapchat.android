.class final Lahh$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/addlive/service/Responder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahh;->a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/addlive/service/Responder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/addlive/service/Responder;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/addlive/service/Responder;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lahh$2;->a:Landroid/os/Handler;

    iput-object p2, p0, Lahh$2;->b:Lcom/addlive/service/Responder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final errHandler(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lahh$2;->a:Landroid/os/Handler;

    new-instance v1, Lahh$2$2;

    invoke-direct {v1, p0, p1, p2}, Lahh$2$2;-><init>(Lahh$2;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public final resultHandler(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lahh$2;->a:Landroid/os/Handler;

    new-instance v1, Lahh$2$1;

    invoke-direct {v1, p0, p1}, Lahh$2$1;-><init>(Lahh$2;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method
