.class final Lrv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrv;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrv;


# direct methods
.method constructor <init>(Lrv;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lrv$1;->this$0:Lrv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqv;)V
    .locals 1
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lrv$1;->this$0:Lrv;

    invoke-static {v0}, Lrv;->c(Lrv;)V

    .line 73
    return-void
.end method

.method public final a(Lqv;Ljava/util/List;Z)V
    .locals 3
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lrv$1$1;

    invoke-direct {v0, p0}, Lrv$1$1;-><init>(Lrv$1;)V

    invoke-static {v0}, Lrv;->a(Lss$a;)Lsq;

    move-result-object v0

    invoke-virtual {v0}, Lsq;->f()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lrv$1;->this$0:Lrv;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lrv;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final b(Lqv;)V
    .locals 1
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-object v0, p0, Lrv$1;->this$0:Lrv;

    invoke-static {v0}, Lrv;->d(Lrv;)V

    .line 78
    return-void
.end method

.method public final b(Lqv;Ljava/util/List;Z)V
    .locals 3
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lrv$1;->this$0:Lrv;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lrv;->b(Ljava/util/List;Z)V

    .line 84
    return-void
.end method
