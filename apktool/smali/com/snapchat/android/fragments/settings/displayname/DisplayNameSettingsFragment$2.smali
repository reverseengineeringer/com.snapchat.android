.class final Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$2;
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
    .line 80
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$2;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$2;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$2;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->b(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$2;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->c(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    return-void
.end method
