.class final Lcom/snapchat/android/ui/InAppPromptFlipper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/VerticalSwipeLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/InAppPromptFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/InAppPromptFlipper;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/InAppPromptFlipper;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/snapchat/android/ui/InAppPromptFlipper$1;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptFlipper$1;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-static {v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->a(Lcom/snapchat/android/ui/InAppPromptFlipper;)Z

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptFlipper$1;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-static {v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->b(Lcom/snapchat/android/ui/InAppPromptFlipper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/snapchat/android/ui/InAppPromptFlipper;->c()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptFlipper$1;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;->setVisibility(I)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
