.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22$1;
.super Lapa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 519
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;

    iput-object p5, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22$1;->a:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, p4, v0}, Lapa;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 523
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 524
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lazn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lazn;->a(I)V

    .line 525
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22$1;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v0

    invoke-virtual {v0}, Lauy;->b()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    const-string v0, "DeveloperSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
