.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20$1;
.super Lapw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 496
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;

    iput-object p5, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20$1;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, p4, v0}, Lapw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 500
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 501
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lbam;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbam;->a(I)V

    .line 502
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20$1;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-static {}, Lavw;->a()Lavw;

    move-result-object v0

    invoke-virtual {v0}, Lavw;->b()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    goto :goto_0
.end method
