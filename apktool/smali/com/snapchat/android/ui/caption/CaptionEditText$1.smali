.class final Lcom/snapchat/android/ui/caption/CaptionEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/CaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/CaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/CaptionEditText;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 104
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$1;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b(Z)V

    .line 107
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
