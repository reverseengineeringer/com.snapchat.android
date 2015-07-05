.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12$1;
.super Lapa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12$1;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lapa;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    invoke-static {}, Lbfr;->a()Lbfr;

    move-result-object v1

    iget-object v1, v1, Lbfr;->mProxyEndpoint:Lajd;

    iget-object v1, v1, Lajd;->mBaseUrl:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lazm;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12$1;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void

    .line 127
    :cond_0
    invoke-static {v0, p1}, Lazm;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method
