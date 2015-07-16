.class final Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CardLinkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardNumberEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/ZipEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/ui/cash/ZipEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrm;)V

    .line 271
    return-void
.end method
