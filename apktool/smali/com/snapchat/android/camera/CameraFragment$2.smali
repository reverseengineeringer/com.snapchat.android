.class final Lcom/snapchat/android/camera/CameraFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/CameraFragment;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/CameraFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/CameraFragment;)V
    .locals 0

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment$2;->a:Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 1134
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1135
    return-void
.end method
