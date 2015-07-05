.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$8;
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
.field final synthetic a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$8;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 337
    :try_start_0
    new-instance v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$a;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$8;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    const-string v2, "bulba"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$a;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :catch_0
    move-exception v0

    .line 340
    :try_start_1
    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$b;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$8;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    const-string v3, "ivy ivy"

    invoke-direct {v1, v2, v3, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$b;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$a;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :catch_1
    move-exception v0

    .line 343
    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$c;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$8;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    const-string v3, "venusaur..."

    invoke-direct {v1, v2, v3, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$c;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
