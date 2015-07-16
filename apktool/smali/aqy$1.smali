.class final Laqy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqy;


# direct methods
.method constructor <init>(Laqy;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Laqy$1;->a:Laqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 43
    iget-object v0, p0, Laqy$1;->a:Laqy;

    invoke-virtual {v0}, Laqy;->a()V

    .line 44
    return-void
.end method
