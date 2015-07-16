.class final Lcom/snapchat/android/LandingPageActivity$8;
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
.field final synthetic a:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 0

    .prologue
    .line 2250
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$8;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2252
    const/4 v0, 0x1

    invoke-static {}, Lakr;->f()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics;->a(ZZ)V

    .line 2254
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2255
    return-void
.end method
