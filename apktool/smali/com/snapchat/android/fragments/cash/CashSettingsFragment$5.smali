.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    const v1, 0x7f0c02cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 145
    const v1, 0x7f0c02cc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 146
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 148
    const v1, 0x7f0c02e3

    new-instance v2, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    const v1, 0x7f0c0180

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->b:Landroid/app/AlertDialog;

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;->a:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 180
    return-void
.end method
