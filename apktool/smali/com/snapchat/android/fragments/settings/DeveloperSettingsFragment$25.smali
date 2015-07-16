.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;
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
    .line 151
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 191
    :goto_0
    return-void

    .line 159
    :cond_0
    if-eqz p2, :cond_1

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "This will also change the Snapchat endpoint to https://cash-dot-feelinsonice-hrd.appspot.com. Proceed?"

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25$1;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;Landroid/widget/CompoundButton;)V

    invoke-static {v0, v3, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lbal;->a(Z)V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, v3}, Lbal;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->b:Landroid/widget/TextView;

    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v1

    iget-object v1, v1, Lbgr;->mProxyEndpoint:Lajz;

    iget-object v1, v1, Lajz;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {}, Lakr;->ah()V

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->a:Lyj;

    invoke-virtual {v0, v3}, Lyj;->a(Lym;)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b:Lyn;

    invoke-virtual {v0}, Lyn;->b()V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "The Snapchat endpoint has also been reset to default."

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
