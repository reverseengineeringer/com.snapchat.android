.class final Lcom/snapchat/android/ui/ProfilePictureView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ProfilePictureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/ProfilePictureView;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/snapchat/android/ui/ProfilePictureView$7;->a:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView$7;->a:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-static {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->d(Lcom/snapchat/android/ui/ProfilePictureView;)Lcom/snapchat/android/ui/ProfilePictureView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/ui/ProfilePictureView$a;->q()V

    .line 413
    return-void
.end method
