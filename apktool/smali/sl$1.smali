.class final Lsl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsl;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsl;


# direct methods
.method constructor <init>(Lsl;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lsl$1;->this$0:Lsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lrl;)V
    .locals 1
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lsl$1;->this$0:Lsl;

    invoke-static {v0}, Lsl;->c(Lsl;)V

    .line 73
    return-void
.end method

.method public final a(Lrl;Ljava/util/List;Z)V
    .locals 3
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl;",
            "Ljava/util/List",
            "<",
            "Lrl;",
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
    new-instance v0, Lsl$1$1;

    invoke-direct {v0, p0}, Lsl$1$1;-><init>(Lsl$1;)V

    invoke-static {v0}, Lsl;->a(Lti$a;)Ltg;

    move-result-object v0

    invoke-virtual {v0}, Ltg;->execute()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lsl$1;->this$0:Lsl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsl;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final b(Lrl;)V
    .locals 1
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-object v0, p0, Lsl$1;->this$0:Lsl;

    invoke-static {v0}, Lsl;->d(Lsl;)V

    .line 78
    return-void
.end method

.method public final b(Lrl;Ljava/util/List;Z)V
    .locals 3
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl;",
            "Ljava/util/List",
            "<",
            "Lrl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lsl$1;->this$0:Lsl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsl;->b(Ljava/util/List;Z)V

    .line 84
    return-void
.end method
