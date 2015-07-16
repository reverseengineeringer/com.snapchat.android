.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19$1;
.super Lapw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 467
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19$1;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Lapw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19$1;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lbam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbam;->a(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19$1;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    return-void
.end method
