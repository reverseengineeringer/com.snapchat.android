.class final Lcom/snapchat/android/util/AlertDialogUtils$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/snapchat/android/util/AlertDialogUtils$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dontAskAgainCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/snapchat/android/util/AlertDialogUtils$a;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Lcom/snapchat/android/util/AlertDialogUtils$a;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$9;->val$dontAskAgainCheckBox:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$9;->val$listener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$9;->val$dontAskAgainCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$9;->val$listener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->YES_DONT_ASK_AGAIN:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils$a;->a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$9;->val$listener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->YES:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils$a;->a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V

    goto :goto_0
.end method
