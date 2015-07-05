.class final Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

.field final synthetic b:I

.field final synthetic c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->a:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    iput p3, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Z

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->a:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    iget v2, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->b:I

    invoke-static {v1, v2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->a:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->isNonRecoverableError(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lavh;->g(Landroid/content/Context;)V

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->e(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0, v3}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Z

    .line 144
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;->c:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Z

    goto :goto_0
.end method
