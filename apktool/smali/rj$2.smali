.class final Lrj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrj;

.field final synthetic val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lrj;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lrj$2;->this$0:Lrj;

    iput-object p2, p0, Lrj$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p3, p0, Lrj$2;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 228
    const-string v0, "SQConfirmBlocker"

    const-string v1, "CASH-LOG: SQConfirmBlocker SecurityCodeFragment CANCELED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lrj$2;->this$0:Lrj;

    invoke-static {v0}, Lrj;->f(Lrj;)V

    .line 230
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 158
    iget-object v0, p0, Lrj$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p1, v0, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 159
    const-string v0, "SQConfirmBlocker"

    const-string v1, "CASH-LOG: SQConfirmBlocker ENTERED security code"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lrj$2;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionId:Ljava/lang/String;

    new-instance v1, Lrj$2$1;

    invoke-direct {v1, p0}, Lrj$2$1;-><init>(Lrj$2;)V

    invoke-static {v0, p1, v1}, Lrj;->a(Ljava/lang/String;Ljava/lang/String;Lsh$a;)Lsa;

    move-result-object v0

    invoke-virtual {v0}, Lsa;->f()V

    .line 225
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lrj$2;->this$0:Lrj;

    const/4 v1, 0x1

    new-array v1, v1, [Lqv;

    const/4 v2, 0x0

    new-instance v3, Lrt;

    invoke-direct {v3}, Lrt;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lrj;->e(Lrj;Ljava/util/List;)V

    .line 236
    return-void
.end method
