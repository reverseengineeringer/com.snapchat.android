.class final Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$1;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$1;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$1;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$1;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 69
    return-void
.end method
