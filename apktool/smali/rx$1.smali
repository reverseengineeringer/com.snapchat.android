.class final Lrx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrm;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx;

.field final synthetic val$callback:Lrm;

.field final synthetic val$cvv:Ljava/lang/String;

.field final synthetic val$expiry:Ljava/lang/String;

.field final synthetic val$pan:Ljava/lang/String;

.field final synthetic val$zip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lrx;Lrm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lrx$1;->this$0:Lrx;

    iput-object p2, p0, Lrx$1;->val$callback:Lrm;

    iput-object p3, p0, Lrx$1;->val$pan:Ljava/lang/String;

    iput-object p4, p0, Lrx$1;->val$expiry:Ljava/lang/String;

    iput-object p5, p0, Lrx$1;->val$cvv:Ljava/lang/String;

    iput-object p6, p0, Lrx$1;->val$zip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lrl;)V
    .locals 2
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 181
    iget-object v0, p0, Lrx$1;->val$callback:Lrm;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-interface {v0, v1}, Lrm;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 185
    return-void
.end method

.method public final a(Lrl;Ljava/util/List;Z)V
    .locals 7
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
    .line 111
    new-instance v6, Lrx$1$1;

    invoke-direct {v6, p0}, Lrx$1$1;-><init>(Lrx$1;)V

    .line 171
    iget-object v0, p0, Lrx$1;->this$0:Lrx;

    invoke-static {v0}, Lrx;->a(Lrx;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx$1;->this$0:Lrx;

    invoke-static {v0}, Lrx;->a(Lrx;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lst;

    iget-object v1, p0, Lrx$1;->this$0:Lrx;

    invoke-static {v1}, Lrx;->a(Lrx;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    iget-object v2, p0, Lrx$1;->val$pan:Ljava/lang/String;

    iget-object v3, p0, Lrx$1;->val$expiry:Ljava/lang/String;

    iget-object v4, p0, Lrx$1;->val$cvv:Ljava/lang/String;

    iget-object v5, p0, Lrx$1;->val$zip:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lst;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsx$a;)V

    invoke-virtual {v0}, Lst;->execute()V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v1, Lst;

    iget-object v2, p0, Lrx$1;->val$pan:Ljava/lang/String;

    iget-object v3, p0, Lrx$1;->val$expiry:Ljava/lang/String;

    iget-object v4, p0, Lrx$1;->val$cvv:Ljava/lang/String;

    iget-object v5, p0, Lrx$1;->val$zip:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lst;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsx$a;)V

    invoke-virtual {v1}, Lst;->execute()V

    goto :goto_0
.end method

.method public final b(Lrl;)V
    .locals 2
    .param p1    # Lrl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 189
    iget-object v0, p0, Lrx$1;->val$callback:Lrm;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-interface {v0, v1}, Lrm;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 192
    return-void
.end method

.method public final b(Lrl;Ljava/util/List;Z)V
    .locals 2
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
    .line 198
    iget-object v0, p0, Lrx$1;->val$callback:Lrm;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-interface {v0, v1}, Lrm;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 202
    iget-object v0, p0, Lrx$1;->this$0:Lrx;

    invoke-static {v0, p2, p3}, Lrx;->a(Lrx;Ljava/util/List;Z)V

    .line 204
    return-void
.end method
