.class final Lcom/snapchat/android/ui/ProfilePictureView$6;
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
    .line 415
    iput-object p1, p0, Lcom/snapchat/android/ui/ProfilePictureView$6;->a:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 418
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 419
    return-void
.end method
