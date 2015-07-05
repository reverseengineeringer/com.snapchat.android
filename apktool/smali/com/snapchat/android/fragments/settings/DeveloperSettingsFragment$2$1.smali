.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2;I)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2$1;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2;

    iput p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->REGISTRATION_CONTACTBOOK_EXPERIMENT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2$1;->a:I

    invoke-static {v0, v1}, Lauc;->a(Ljava/lang/String;I)V

    .line 268
    return-void
.end method
