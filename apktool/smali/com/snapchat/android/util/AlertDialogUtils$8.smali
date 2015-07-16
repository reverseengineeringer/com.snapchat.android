.class final Lcom/snapchat/android/util/AlertDialogUtils$8;
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
.field final synthetic val$listener:Lcom/snapchat/android/util/AlertDialogUtils$a;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/AlertDialogUtils$a;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$8;->val$listener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$8;->val$listener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->NO:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils$a;->a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V

    .line 392
    return-void
.end method
