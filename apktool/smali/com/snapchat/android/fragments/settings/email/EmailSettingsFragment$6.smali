.class final Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->g(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Laol;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->b(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laol;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->j(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->j(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment$6;->a:Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;->i(Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void
.end method
