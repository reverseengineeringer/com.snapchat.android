.class final Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 110
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$4;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 113
    if-eqz p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment$4;->a:Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/displayname/DisplayNameSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->g(Landroid/content/Context;)V

    .line 116
    :cond_0
    return-void
.end method
