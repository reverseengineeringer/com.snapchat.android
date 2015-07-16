.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;
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
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 494
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 495
    new-instance v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20$1;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Thumbnail Story Count"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20$1;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0}, Lapw;->show()V

    .line 512
    return-void
.end method
