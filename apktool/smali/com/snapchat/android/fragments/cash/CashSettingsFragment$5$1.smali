.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->b(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    invoke-static {}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->l()Lsl;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;)V

    iput-object v1, v0, Lrl;->mListener:Lrl$a;

    .line 174
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsl;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 175
    return-void
.end method
