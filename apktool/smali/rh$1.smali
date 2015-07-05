.class final Lrh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lqw;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrh;

.field final synthetic val$callback:Lqw;

.field final synthetic val$cvv:Ljava/lang/String;

.field final synthetic val$expiry:Ljava/lang/String;

.field final synthetic val$pan:Ljava/lang/String;

.field final synthetic val$zip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lrh;Lqw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lrh$1;->this$0:Lrh;

    iput-object p2, p0, Lrh$1;->val$callback:Lqw;

    iput-object p3, p0, Lrh$1;->val$pan:Ljava/lang/String;

    iput-object p4, p0, Lrh$1;->val$expiry:Ljava/lang/String;

    iput-object p5, p0, Lrh$1;->val$cvv:Ljava/lang/String;

    iput-object p6, p0, Lrh$1;->val$zip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqv;)V
    .locals 3
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 181
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: SQCardFormBlocker dismissed when trying to get access token"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lrh$1;->val$callback:Lqw;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-interface {v0, v1}, Lqw;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 185
    return-void
.end method

.method public final a(Lqv;Ljava/util/List;Z)V
    .locals 7
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
    .line 111
    new-instance v6, Lrh$1$1;

    invoke-direct {v6, p0}, Lrh$1$1;-><init>(Lrh$1;)V

    .line 171
    iget-object v0, p0, Lrh$1;->this$0:Lrh;

    invoke-static {v0}, Lrh;->a(Lrh;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrh$1;->this$0:Lrh;

    invoke-static {v0}, Lrh;->a(Lrh;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    iget-boolean v0, v0, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lsd;

    iget-object v1, p0, Lrh$1;->this$0:Lrh;

    invoke-static {v1}, Lrh;->a(Lrh;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    iget-object v2, p0, Lrh$1;->val$pan:Ljava/lang/String;

    iget-object v3, p0, Lrh$1;->val$expiry:Ljava/lang/String;

    iget-object v4, p0, Lrh$1;->val$cvv:Ljava/lang/String;

    iget-object v5, p0, Lrh$1;->val$zip:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lsd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsh$a;)V

    invoke-virtual {v0}, Lsd;->f()V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v1, Lsd;

    iget-object v2, p0, Lrh$1;->val$pan:Ljava/lang/String;

    iget-object v3, p0, Lrh$1;->val$expiry:Ljava/lang/String;

    iget-object v4, p0, Lrh$1;->val$cvv:Ljava/lang/String;

    iget-object v5, p0, Lrh$1;->val$zip:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lsd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsh$a;)V

    invoke-virtual {v1}, Lsd;->f()V

    goto :goto_0
.end method

.method public final b(Lqv;)V
    .locals 3
    .param p1    # Lqv;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 189
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: SQCardFormBlocker hard failed when trying to get access token"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lrh$1;->val$callback:Lqw;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-interface {v0, v1}, Lqw;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 192
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
    .line 198
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: SQCardFormBlocker failed to get access token"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lrh$1;->val$callback:Lqw;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-interface {v0, v1}, Lqw;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 202
    iget-object v0, p0, Lrh$1;->this$0:Lrh;

    invoke-static {v0, p2, p3}, Lrh;->a(Lrh;Ljava/util/List;Z)V

    .line 204
    return-void
.end method
