.class final Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;
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
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;->b:Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 454
    invoke-static {p2}, Lazm;->c(Z)V

    .line 455
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The app needs to be killed and restarted before this change comes into effect."

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    return-void
.end method
