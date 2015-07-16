.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 557
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->REGISTRATION_TESTING_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 558
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 559
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 552
    return-void
.end method
