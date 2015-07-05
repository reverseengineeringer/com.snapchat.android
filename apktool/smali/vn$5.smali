.class final Lvn$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvn;


# direct methods
.method constructor <init>(Lvn;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lvn$5;->a:Lvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lvn$5;->a:Lvn;

    iget-object v0, v0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(IZ)V

    .line 147
    return-void
.end method
