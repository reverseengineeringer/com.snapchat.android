.class final Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$4;
.super Laqy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;

    invoke-direct {p0, p2, p3}, Laqy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$4;->dismiss()V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment$4;->a:Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/twofa/ForgetDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 170
    return-void
.end method
