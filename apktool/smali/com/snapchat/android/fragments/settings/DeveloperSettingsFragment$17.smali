.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lbal;

    invoke-static {}, Lbal;->d()Z

    move-result v0

    .line 426
    if-eq v0, p2, :cond_0

    .line 427
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lbal;

    invoke-static {p2}, Lbal;->b(Z)V

    .line 428
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;->a:Landroid/content/Context;

    const-string v1, "You will need to refresh your Stories page to see an update since you have changed your horizontal scroll setting! Thanks for testing TTV/HS :D"

    const-string v2, "OK"

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_0
    return-void
.end method
