.class final Lbwy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwy;


# direct methods
.method constructor <init>(Lbwy;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lbwy$1;->a:Lbwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbwy$1;->a:Lbwy;

    invoke-virtual {v0}, Lbwy;->b()V

    .line 118
    return-void
.end method
