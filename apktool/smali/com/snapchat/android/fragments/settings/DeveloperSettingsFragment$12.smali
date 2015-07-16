.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12$1;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;->c:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Change Endpoint"

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;->a:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12$1;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lapw;->show()V

    .line 131
    return-void
.end method
