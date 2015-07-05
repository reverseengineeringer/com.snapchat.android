.class final Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->g()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-direct {p0, p2, p3}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)Z

    .line 260
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 262
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method
