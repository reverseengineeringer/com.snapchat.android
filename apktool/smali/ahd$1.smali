.class final Lahd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lato;

.field final synthetic b:Lahd;


# direct methods
.method constructor <init>(Lahd;Lato;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lahd$1;->b:Lahd;

    iput-object p2, p0, Lahd$1;->a:Lato;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lahd$1;->a:Lato;

    iget-object v0, v0, Lato;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 132
    return-void
.end method
