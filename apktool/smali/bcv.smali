.class public final Lbcv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public event:Landroid/view/KeyEvent;

.field public keyCode:I


# direct methods
.method public constructor <init>(ILandroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lbcv;->keyCode:I

    .line 11
    iput-object p2, p0, Lbcv;->event:Landroid/view/KeyEvent;

    .line 12
    return-void
.end method
