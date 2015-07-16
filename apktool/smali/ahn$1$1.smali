.class final Lahn$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/AlertDialogUtils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahn$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahn$1;


# direct methods
.method constructor <init>(Lahn$1;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lahn$1$1;->a:Lahn$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->YES:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    if-ne p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lahn$1$1;->a:Lahn$1;

    iget-object v0, v0, Lahn$1;->a:Lahn$b;

    iget-object v0, v0, Lahn$b;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lahn$1$1;->a:Lahn$1;

    iget-object v0, v0, Lahn$1;->a:Lahn$b;

    iget-object v0, v0, Lahn$b;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lahn$1$1;->a:Lahn$1;

    iget-object v0, v0, Lahn$1;->c:Lahn;

    invoke-static {v0}, Lahn;->d(Lahn;)Lahn$a;

    move-result-object v0

    iget-object v1, p0, Lahn$1$1;->a:Lahn$1;

    iget-object v1, v1, Lahn$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lahn$a;->a(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
