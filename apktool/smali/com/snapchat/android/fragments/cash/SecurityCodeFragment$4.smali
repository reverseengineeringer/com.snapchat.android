.class final Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;->b:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;->c:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;->c:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Landroid/view/View;)V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;->c:Z

    .line 205
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method
