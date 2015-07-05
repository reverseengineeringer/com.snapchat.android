.class final Lcom/snapchat/android/fragments/settings/SettingsFragment$15;
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
    .line 500
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$15;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment$15;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 504
    const v1, 0x7f07000e

    invoke-static {}, Lajx;->h()I

    move-result v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$15$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$15$1;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment$15;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 529
    return-void
.end method
