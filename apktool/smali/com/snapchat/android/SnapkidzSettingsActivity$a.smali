.class final Lcom/snapchat/android/SnapkidzSettingsActivity$a;
.super Lara;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/SnapkidzSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapkidzSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V
    .locals 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$a;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    .line 98
    invoke-static {p1}, Lcom/snapchat/android/SnapkidzSettingsActivity;->b(Lcom/snapchat/android/SnapkidzSettingsActivity;)Lcom/snapchat/android/SnapkidzSettingsActivity;

    move-result-object v0

    const v1, 0x7f0c00c1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/SnapkidzSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lara;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$a;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-static {v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->c(Lcom/snapchat/android/SnapkidzSettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "SnapKidzLoginManager_numAccounts"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v0, v1

    .line 104
    :goto_0
    if-ge v0, v2, :cond_0

    .line 105
    iget-object v3, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$a;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-static {v3}, Lcom/snapchat/android/SnapkidzSettingsActivity;->d(Lcom/snapchat/android/SnapkidzSettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SnapKidzLoginManager_username_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$a;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-static {v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->d(Lcom/snapchat/android/SnapkidzSettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SnapKidzLoginManager_numAccounts"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$a;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-static {v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->d(Lcom/snapchat/android/SnapkidzSettingsActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$a;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-static {v0}, Lcom/snapchat/android/SnapkidzSettingsActivity;->a(Lcom/snapchat/android/SnapkidzSettingsActivity;)V

    .line 110
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
