.class final Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;
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
    .line 119
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->e(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->e(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->f(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    new-instance v0, Lcom/snapchat/android/model/Friend;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->g(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Lakr;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->g(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Lakr;

    invoke-static {}, Lakr;->y()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->a(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    .line 129
    new-instance v2, Lqg;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v2, v0, v3, v1}, Lqg;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$5;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    iput-object v0, v2, Lqg;->mFriendActionCompleteCallback:Lqg$a;

    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SETTINGS_DISPLAYNAME_CHANGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, v2, Lqg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-boolean v4, v2, Lqg;->mShowFailureDialog:Z

    invoke-virtual {v2}, Lqg;->execute()V

    .line 134
    return-void
.end method
