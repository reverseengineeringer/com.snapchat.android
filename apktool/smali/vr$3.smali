.class final Lvr$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvr;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbcz;Lcom/squareup/otto/Bus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvr;


# direct methods
.method constructor <init>(Lvr;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lvr$3;->a:Lvr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lvr$3;->a:Lvr;

    invoke-static {v0}, Lvr;->a(Lvr;)V

    .line 72
    return-void
.end method
