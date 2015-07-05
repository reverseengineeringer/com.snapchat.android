.class final Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment$4;->a:Lcom/snapchat/android/fragments/settings/email/EmailVerificationSentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;-><init>()V

    const-class v3, Lcom/snapchat/android/fragments/settings/email/EmailSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v4}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
