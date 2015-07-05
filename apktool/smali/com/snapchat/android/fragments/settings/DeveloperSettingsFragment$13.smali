.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 383
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/snapchat/android/HttpMetricsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 386
    return-void
.end method
