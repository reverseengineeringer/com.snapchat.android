.class final Lagg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasp;

.field final synthetic b:Lagg;


# direct methods
.method constructor <init>(Lagg;Lasp;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lagg$1;->b:Lagg;

    iput-object p2, p0, Lagg$1;->a:Lasp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lagg$1;->a:Lasp;

    iget-object v0, v0, Lasp;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 132
    return-void
.end method
