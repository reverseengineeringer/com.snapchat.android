.class final Lin/srain/cube/views/ptr/header/MaterialHeader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/srain/cube/views/ptr/header/MaterialHeader;->setPtrFrameLayout(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbuu;

.field final synthetic b:Lin/srain/cube/views/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/header/MaterialHeader;Lbuu;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$3;->b:Lin/srain/cube/views/ptr/header/MaterialHeader;

    iput-object p2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$3;->a:Lbuu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$3;->a:Lbuu;

    invoke-virtual {v0}, Lbuu;->a()V

    .line 65
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
