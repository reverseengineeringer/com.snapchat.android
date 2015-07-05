.class final Lcom/snapchat/android/ui/InAppPromptFlipper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/InAppPromptFlipper;->a()V
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
    .line 76
    iput-object p1, p0, Lcom/snapchat/android/ui/InAppPromptFlipper$2;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptFlipper$2;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/InAppPromptFlipper$2;->a:Lcom/snapchat/android/ui/InAppPromptFlipper;

    new-instance v1, Lcom/snapchat/android/ui/InAppPromptFlipper$2$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/InAppPromptFlipper$2$1;-><init>(Lcom/snapchat/android/ui/InAppPromptFlipper$2;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
