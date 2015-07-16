.class final Lsf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsf;

.field final synthetic val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field final synthetic val$transaction:Lcom/snapchat/android/model/CashTransaction;


# direct methods
.method constructor <init>(Lsf;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lsf$1;->this$0:Lsf;

    iput-object p2, p0, Lsf$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p3, p0, Lsf$1;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lsf$1;->this$0:Lsf;

    invoke-static {v0}, Lsf;->b(Lsf;)V

    .line 47
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 38
    iget-object v0, p0, Lsf$1;->val$transaction:Lcom/snapchat/android/model/CashTransaction;

    iput-object p1, v0, Lcom/snapchat/android/model/CashTransaction;->mSecurityCode:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lsf$1;->val$fragment:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->l()V

    .line 41
    iget-object v0, p0, Lsf$1;->this$0:Lsf;

    invoke-static {v0}, Lsf;->a(Lsf;)V

    .line 42
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lsf$1;->this$0:Lsf;

    invoke-static {v0}, Lsf;->c(Lsf;)V

    .line 52
    return-void
.end method
