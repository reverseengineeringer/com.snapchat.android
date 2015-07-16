.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;
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
    .line 346
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9$1;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9$1;->run()V

    .line 356
    return-void
.end method
