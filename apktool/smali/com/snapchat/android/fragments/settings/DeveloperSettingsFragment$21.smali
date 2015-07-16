.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$21;
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
.field final synthetic a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$21;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$21;->a:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lbam;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbam;->b(Z)V

    .line 523
    return-void
.end method
