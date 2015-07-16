.class final Lwn$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwn;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbdz;Lcom/squareup/otto/Bus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwn;


# direct methods
.method constructor <init>(Lwn;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lwn$3;->a:Lwn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lwn$3;->a:Lwn;

    invoke-static {v0}, Lwn;->a(Lwn;)V

    .line 72
    return-void
.end method
