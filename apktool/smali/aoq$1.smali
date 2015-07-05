.class final Laoq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoq;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoq;


# direct methods
.method constructor <init>(Laoq;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Laoq$1;->a:Laoq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Lorg/lucasr/twowayview/TwoWayView;III)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final onScrollStateChanged(Lorg/lucasr/twowayview/TwoWayView;I)V
    .locals 1

    .prologue
    .line 62
    if-eqz p2, :cond_0

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Laoq$1;->a:Laoq;

    invoke-virtual {v0}, Laoq;->d()V

    goto :goto_0
.end method
