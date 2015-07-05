.class final Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Lsu$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field final synthetic c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;ZLcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->a:Z

    iput-object p3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 393
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->a:Z

    invoke-static {v0}, Lajx;->n(Z)V

    .line 394
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->l()V

    .line 397
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 8

    .prologue
    const v7, 0x7f0c01c2

    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0c0036

    invoke-static {v3, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v7, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    .line 404
    sparse-switch p1, :sswitch_data_0

    move-object v6, v0

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->c:Lcom/snapchat/android/fragments/cash/CashSettingsFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-boolean v7, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->a:Z

    if-nez v7, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static/range {v0 .. v5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-virtual {v0, v6, p1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V

    .line 423
    :cond_1
    return-void

    .line 406
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0c0154

    invoke-static {v3, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v7, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 408
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->INVALID_PASSCODE:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    move-object v6, v0

    .line 409
    goto :goto_0

    .line 411
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0c02a0

    invoke-static {v3, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0c01c3

    invoke-static {v3, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 413
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    move-object v6, v0

    goto :goto_0

    .line 404
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x1ad -> :sswitch_1
    .end sparse-switch
.end method
