.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 194
    :goto_0
    return-void

    .line 162
    :cond_0
    if-eqz p2, :cond_1

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "This will also change the Snapchat endpoint to https://cash-dot-feelinsonice-hrd.appspot.com. Proceed?"

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27$1;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27$1;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;Landroid/widget/CompoundButton;)V

    invoke-static {v0, v3, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lazm;->a(Z)V

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, v3}, Lazm;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;->b:Landroid/widget/TextView;

    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v1

    iget-object v1, v1, Lbfr;->mProxyEndpoint:Lajd;

    iget-object v1, v1, Lajd;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {}, Lajx;->ai()V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->a:Lxn;

    invoke-virtual {v0, v3}, Lxn;->a(Lxq;)V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b:Lxr;

    invoke-virtual {v0}, Lxr;->b()V

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$27;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "The Snapchat endpoint has also been reset to default."

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
