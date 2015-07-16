.class public abstract Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/EditText;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/view/View;

.field public d:Landroid/widget/Button;

.field public e:Landroid/widget/ProgressBar;

.field private f:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

.field private g:I

.field private h:Landroid/os/Handler;

.field private i:Lcom/snapchat/android/receiver/SmsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->h:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->g:I

    return p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->f:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->f:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->g:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 151
    if-nez p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->b:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :goto_1
    return-void

    .line 153
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BELOW_FOR_ADJUSTABLE_UI:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public abstract i()V
.end method

.method public abstract m()V
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->b:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c:Landroid/view/View;

    .line 66
    const v0, 0x7f0a03ef

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    invoke-static {v0}, Lauh;->a(Landroid/view/View;)V

    .line 68
    const v0, 0x7f0a00e3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->e:Landroid/widget/ProgressBar;

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lawf;->f(Landroid/content/Context;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->i:Lcom/snapchat/android/receiver/SmsReceiver;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->i:Lcom/snapchat/android/receiver/SmsReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->i:Lcom/snapchat/android/receiver/SmsReceiver;

    .line 137
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->i:Lcom/snapchat/android/receiver/SmsReceiver;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/snapchat/android/receiver/SmsReceiver;

    invoke-direct {v0}, Lcom/snapchat/android/receiver/SmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->i:Lcom/snapchat/android/receiver/SmsReceiver;

    .line 125
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->i:Lcom/snapchat/android/receiver/SmsReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    :cond_0
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lbfs;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    iget-object v1, p1, Lbfs;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 212
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$3;-><init>(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method public final r()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x1

    .line 145
    new-instance v1, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v3, v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->h:Landroid/os/Handler;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;-><init>(Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;IJLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->f:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->f:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;->e()V

    .line 148
    return-void
.end method

.method public final t()V
    .locals 4

    .prologue
    const v3, 0x7f0c01ba

    const/4 v2, 0x1

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    const v1, 0x7f0c01ec

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->f:Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment$a;

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/GenericCodeVerificationFragment;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
