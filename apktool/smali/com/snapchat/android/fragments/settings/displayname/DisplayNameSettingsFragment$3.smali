.class final Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$3;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$3;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->i()V

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$3;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->d(Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;)V

    .line 107
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
