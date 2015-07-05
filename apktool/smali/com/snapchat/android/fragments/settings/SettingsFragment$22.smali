.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$22;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 252
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$22$1;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$22;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment$22$1;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$22;Landroid/content/Context;)V

    .line 253
    const v1, 0x7f0c0266

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 254
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$22;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    const v2, 0x7f0c0231

    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$22;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    const v3, 0x7f0c00e0

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$22$2;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$22$2;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$22;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 264
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$22;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    const v3, 0x7f0c0188

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$22$3;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$22$3;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$22;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 271
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 272
    return-void
.end method
