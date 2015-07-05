.class final Lcom/snapchat/android/ui/caption/CaptionEditText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/CaptionEditText;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/snapchat/android/ui/caption/CaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/CaptionEditText;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$3;->c:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-object p2, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$3;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$3;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$3;->c:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$3;->c:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setY(F)V

    .line 467
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$3;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$3;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
    return-void
.end method
