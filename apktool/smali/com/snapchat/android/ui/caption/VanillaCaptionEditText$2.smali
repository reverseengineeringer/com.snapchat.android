.class final Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->k:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    const/4 v1, -0x1

    iput v1, v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->d:I

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$2;->a:Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(Z)V

    .line 143
    :cond_0
    return-void
.end method
