.class final Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$10;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 317
    if-eqz p2, :cond_0

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$10;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    sget-object v1, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 319
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->i()V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$10;->a:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Z)Z

    goto :goto_0
.end method
