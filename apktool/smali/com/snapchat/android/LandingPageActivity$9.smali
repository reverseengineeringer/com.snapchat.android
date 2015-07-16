.class final Lcom/snapchat/android/LandingPageActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/LandingPageActivity;->onForceVerificationEvent(Lbcm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbcm;

.field final synthetic b:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;Lbcm;)V
    .locals 0

    .prologue
    .line 2243
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$9;->b:Lcom/snapchat/android/LandingPageActivity;

    iput-object p2, p0, Lcom/snapchat/android/LandingPageActivity$9;->a:Lbcm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 2245
    const/4 v0, 0x0

    invoke-static {}, Lakr;->f()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics;->a(ZZ)V

    .line 2247
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$9;->b:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->r:Lcom/squareup/otto/Bus;

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;

    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity$9;->a:Lbcm;

    invoke-direct {v2, v3}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;-><init>(Lbcm;)V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 2248
    return-void
.end method
