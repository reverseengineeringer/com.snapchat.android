.class final Laqb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqb;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqb;


# direct methods
.method constructor <init>(Laqb;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Laqb$1;->a:Laqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 62
    iget-object v0, p0, Laqb$1;->a:Laqb;

    invoke-virtual {v0}, Laqb;->a()V

    .line 63
    return-void
.end method
